package org.spin.process;
/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import org.compiere.model.MAcctSchema;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MLocator;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPeriodControl;
import org.compiere.model.MProduct;
import org.compiere.model.MStorage;
import org.compiere.model.MTransaction;
import org.compiere.model.MWarehouse;
import org.compiere.model.Query;
import org.compiere.model.X_C_Order;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class StorageMaintaining extends SvrProcess {

	/**	Organization		*/
	private int 		p_AD_Org_ID 		= 0;
	/**	Warehouse			*/
	private int 		p_M_Warehouse_ID 	= 0;
	/** Product				*/
	private int			p_M_Product_ID 		= 0;
	/** Product	Category	*/
	// 2015-05-13 Carlos Parada Add Support to Product Category Filter 
	private int			p_M_Product_Category_ID = 0;
	//End Carlos Parada
	/** Autoperiod */
	boolean autoPeriod = false;
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("M_Product_ID"))
				p_M_Product_ID = para.getParameterAsInt();
			// 2015-05-13 Carlos Parada Add Support to Product Category Filter
			else if(name.equals("M_Product_Category_ID"))
				p_M_Product_Category_ID = para.getParameterAsInt();
			//End Carlos Parada
		}
	}

	@Override
	protected String doIt() throws Exception {
		//2015-05-11 Carlos Parada Evaluate Period Control 
		MAcctSchema as = MClient.get(getCtx(), getAD_Client_ID()).getAcctSchema();
		autoPeriod = as != null && as.isAutoPeriodControl();
		//End Carlos Parada
		//	Delete Warehouse
		StringBuffer deleteSQL = new StringBuffer("DELETE FROM M_Storage " +
				"WHERE QtyReserved <> 0 " +
				//"AND QtyOnHand = 0 " +
				"AND AD_Client_ID = ").append(getAD_Client_ID()).append(" ");
		//	Where
		//	Org
		if(p_AD_Org_ID != 0)
			deleteSQL.append("AND AD_Org_ID = ").append(p_AD_Org_ID).append(" ");
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			deleteSQL.append("AND EXISTS(SELECT 1 " +
					"FROM M_Locator l " +
					"WHERE l.M_Locator_ID = M_Storage.M_Locator_ID " +
					"AND l.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(") ");
		//Product
		if(p_M_Product_ID != 0)
			deleteSQL.append("AND M_Product_ID = ").append(p_M_Product_ID).append(" ");
		
		// 2015-05-13 Carlos Parada Add Support to Product Category Filter
		if(p_M_Product_Category_ID != 0)
			deleteSQL.append("AND EXISTS (SELECT 1 FROM M_Product WHERE M_Product.M_Product_Category_ID= ").append(p_M_Product_Category_ID).append(" AND M_Product.M_Product_ID = M_Storage.M_Product_ID ) ");
		//End Carlos Parada
		
		//	Log
		log.fine("deleteSQL=" + deleteSQL.toString());
		
		int storageUpdated = DB.executeUpdate(deleteSQL.toString(), get_TrxName());

		//	Log
		log.fine("Storage Updated=" + storageUpdated);
		
		//	Delete Bad transactions
		//2015-05-11 Carlos Parada All Documents And Open Period
		StringBuffer deleteTSQL = new StringBuffer("DELETE " +
				"FROM M_Transaction " +
				"WHERE M_Transaction.M_InOutLine_ID IS NOT NULL " +
				"AND (" +
				" 		EXISTS(SELECT 1 " + 
				"		FROM M_InOut io " + 
				"		INNER JOIN M_InOutLine iol ON(iol.M_InOut_ID = io.M_InOut_ID) " + 
				"		INNER JOIN M_Product p ON(iol.M_Product_ID = p.M_Product_ID) " +
				"		WHERE io.DocStatus NOT IN('CO', 'CL', 'RE') AND " + 
				"		iol.M_InOutLine_ID = M_Transaction.M_InOutLine_ID AND p.IsStocked = 'Y' AND p.ProductType = 'I' ) " +
				"	OR ( " +
				"			M_Transaction.M_InOutLine_ID IN (SELECT iol.M_InOutLine_ID " +  
				"			FROM M_InOut io  " +
				"			INNER JOIN M_InOutLine iol ON(iol.M_InOut_ID = io.M_InOut_ID) " +
				"			INNER JOIN M_Product p ON(iol.M_Product_ID = p.M_Product_ID) " +
				"			INNER JOIN M_Transaction t ON(t.M_InOutLine_ID = iol.M_InOutLine_ID) " + 
				"			WHERE io.DocStatus IN('CO', 'CL', 'RE') AND p.IsStocked = 'Y' AND p.ProductType = 'I' " +
				"			GROUP BY iol.M_InOutLine_ID,io.MovementType " +
				"			HAVING iol.MovementQty * (CASE WHEN io.MovementType IN ('C-','V-') THEN -1 ELSE 1 END) <> SUM(t.MovementQty)) " +
				"			AND " +
				"			EXISTS (SELECT 1 FROM C_PeriodControl pc " +
				"			INNER JOIN C_Period p ON (p.C_Period_ID=pc.C_Period_ID) " +
				"			WHERE M_Transaction.MovementDate Between p.StartDate AND p.EndDate " );
		
				
			if ( !autoPeriod )
				deleteTSQL.append(" AND pc.PeriodStatus = 'O'  AND pc.DocBaseType IN ('" + MPeriodControl.DOCBASETYPE_MaterialDelivery
				+ "','" + MPeriodControl.DOCBASETYPE_MaterialReceipt + "') ");
			
			deleteTSQL.append("		)");
			deleteTSQL.append(""
					+ ")");
			deleteTSQL.append(""
				+ ")");
			
		deleteTSQL.append("AND AD_Client_ID = ").append(getAD_Client_ID()).append(" ");
		//	Org
		if(p_AD_Org_ID != 0)
			deleteTSQL.append("AND AD_Org_ID = ").append(p_AD_Org_ID).append(" ");
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			deleteTSQL.append("AND EXISTS(SELECT 1 " +
					"FROM M_Locator l " +
					"WHERE l.M_Locator_ID = M_Transaction.M_Locator_ID " +
					"AND l.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(") ");
		//Product
		if(p_M_Product_ID != 0)
			deleteTSQL.append("AND M_Product_ID = ").append(p_M_Product_ID).append(" ");
		
		// 2015-05-13 Carlos Parada Add Support to Product Category Filter
		if(p_M_Product_Category_ID != 0)
			deleteTSQL.append("AND EXISTS (SELECT 1 FROM M_Product WHERE M_Product.M_Product_Category_ID= ").append(p_M_Product_Category_ID).append(" AND M_Product.M_Product_ID = M_Transaction.M_Product_ID ) ");
		//End Carlos Parada
				
		//	Execute
		int transactionDeleted = DB.executeUpdate(deleteTSQL.toString(), get_TrxName());
		//	Log
		log.fine("Transaction Deleted=" + transactionDeleted);
		recreateTransaction();
		recreateQtyOnHand();
		log.fine("Recreate QtyOnHand" );
		
		
		//	Process Orders
		StringBuffer orderSQL = new StringBuffer("SELECT o.C_Order_ID " +
				"FROM C_Order o " +
				"INNER JOIN C_OrderLine ol ON(ol.C_Order_ID = o.C_Order_ID) " +
				"INNER JOIN C_DocType dt ON(dt.C_DocType_ID = o.C_DocType_ID) " +
				"WHERE o.DocStatus IN('IP', 'CO') " +
				//"AND (ol.QtyOrdered - ol.QtyDelivered) <> 0 " +
				//"AND o.IsSOTrx = 'Y' " +
				"AND o.AD_Client_ID = ").append(getAD_Client_ID()).append(" ");
		//	Org
		if(p_AD_Org_ID != 0)
			orderSQL.append("AND o.AD_Org_ID = ").append(p_AD_Org_ID).append(" ");
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			orderSQL.append("AND ol.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(" ");
		
		//Product
		if(p_M_Product_ID != 0)
			orderSQL.append("AND ol.M_Product_ID = ").append(p_M_Product_ID).append(" ");
		
		// 2015-05-13 Carlos Parada Add Support to Product Category Filter
		if(p_M_Product_Category_ID != 0)
			deleteTSQL.append("AND EXISTS (SELECT 1 FROM M_Product WHERE M_Product.M_Product_Category_ID= ").append(p_M_Product_Category_ID).append(" AND M_Product.M_Product_ID = ol.M_Product_ID ) ");
		//End Carlos Parada
		
		//	Group By
		orderSQL.append("GROUP BY o.C_Order_ID ");
		//	Order By
		orderSQL.append("ORDER BY o.IsSOTrx, o.DateOrdered");
		//	Log
		log.fine("orderSQL=" + orderSQL.toString());
		//	Update
		
		
		PreparedStatement ps=null;
		ResultSet rs =null;
		ps = DB.prepareStatement(orderSQL.toString(), get_TrxName());
		rs = ps.executeQuery();
		//	Loop
		while(rs.next()){
			MOrder order = new MOrder(getCtx(), rs.getInt(1), get_TrxName());
			//	Message
			String message = null;
			try {
				reserveStock(order);
			} catch (Exception e) {
				message = e.getMessage();
			}
			//	Add Log
			addLog("@C_Order_ID@ " + order.getDocumentNo() + (message == null? " @Processed@": " @Error@" + message));
		}
		DB.close(rs, ps);
		
		return "@Updated@=" + storageUpdated + " @M_Transaction_ID@ @Deleted@=" + transactionDeleted;
	}
	
	private void recreateTransaction(){
		StringBuffer whereClause = new StringBuffer();
		whereClause.append("EXISTS(SELECT 1 FROM M_InOut io WHERE M_InOutLine.M_InOut_ID = io.M_InOut_ID AND io.DocStatus IN('CO', 'CL', 'RE')) " +
							" AND NOT EXISTS (SELECT 1 FROM M_Transaction tr WHERE tr.M_InOutLine_ID = M_InOutLine.M_InOutLine_ID)" +
							" AND EXISTS (SELECT 1 FROM M_Product p WHERE p.M_Product_ID = M_InOutLine.M_Product_ID AND p.ProductType ='I' AND p.IsStocked = 'Y' ) " +
							" AND EXISTS (SELECT 1 FROM C_PeriodControl pc " +
							" INNER JOIN C_Period p ON (p.C_Period_ID=pc.C_Period_ID) "+
							" ,M_InOut io " +
							" WHERE io.DateAcct Between p.StartDate AND p.EndDate AND M_InOutLine.M_InOut_ID= io.M_InOut_ID ");
		if ( !autoPeriod )
			whereClause.append(" AND pc.PeriodStatus = 'O'  AND pc.DocBaseType IN ('" + MPeriodControl.DOCBASETYPE_MaterialDelivery
			+ "','" + MPeriodControl.DOCBASETYPE_MaterialReceipt + "') ");
		
		whereClause.append(")");
		//		
		if(p_AD_Org_ID != 0)
			whereClause.append("AND AD_Org_ID = ").append(p_AD_Org_ID).append(" ");
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			whereClause.append("AND EXISTS(SELECT 1 " +
					"FROM M_InOut io " +
					"WHERE io.M_InOut_ID = M_InOutLine.M_InOut_ID " +
					"AND io.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(") ");
		//Product
		if(p_M_Product_ID != 0)
			whereClause.append("AND M_Product_ID = ").append(p_M_Product_ID).append(" ");
		
		// 2015-05-13 Carlos Parada Add Support to Product Category Filter
		if(p_M_Product_Category_ID != 0)
			whereClause.append("AND EXISTS (SELECT 1 FROM M_Product WHERE M_Product.M_Product_Category_ID= ").append(p_M_Product_Category_ID).append(" AND M_Product.M_Product_ID = M_InOutLine.M_Product_ID ) ");
		//End Carlos Parada
		
	
		List<MInOutLine> iols = new Query(getCtx(), MInOutLine.Table_Name, whereClause.toString(), get_TrxName()).list();
		int transactionCreated = 0;
		for (MInOutLine iol : iols) {
			MInOut io = new MInOut(getCtx(), iol.getM_InOut_ID(), get_TrxName());
			if (io.getM_InOut_ID()!=0){
			MTransaction mtrx = new MTransaction (getCtx(), iol.getAD_Org_ID(),
					io.getMovementType(), iol.getM_Locator_ID(),
					iol.getM_Product_ID(), iol.getM_AttributeSetInstance_ID(),
					(io.getMovementType().equals(MInOut.MOVEMENTTYPE_VendorReturns) ||io.getMovementType().equals(MInOut.MOVEMENTTYPE_CustomerShipment) ? iol.getMovementQty().negate() : iol.getMovementQty()), io.getMovementDate(), get_TrxName());
				mtrx.setM_InOutLine_ID(iol.getM_InOutLine_ID());
				if (!mtrx.save())
				{
					addLog("@M_Transaction_ID@ @Error@ " + io.getDocumentNo());
				}
				else{
					addLog("@M_Transaction_ID@ @Created@ " + io.getDocumentNo());
					transactionCreated++;
				}
					
			}
			
		}
		
			
			log.fine("Transaction Deleted=" + transactionCreated);
	}
	
	/**
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 24/05/2014, 14:12:07
	 * @return void
	 */
	private void recreateQtyOnHand() throws SQLException{
		
		
		StringBuffer deleteSQL = new StringBuffer("DELETE FROM M_Storage " +
				"WHERE (QtyOnHand <> 0 OR (QtyOnHand=0 AND QtyReserved = 0)) " +
				"AND AD_Client_ID = ").append(getAD_Client_ID()).append(" ");
		//	OrgCOM. MBO
		if(p_AD_Org_ID != 0)
			deleteSQL.append("AND AD_Org_ID = ").append(p_AD_Org_ID).append(" ");
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			deleteSQL.append("AND EXISTS(SELECT 1 " +
					"FROM M_Locator l " +
					"WHERE l.M_Locator_ID = M_Storage.M_Locator_ID " +
					"AND l.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(") ");
		//Product
		if(p_M_Product_ID != 0)
			deleteSQL.append("AND M_Product_ID = ").append(p_M_Product_ID).append(" ");
		//	Log
		log.fine("deleteSQL=" + deleteSQL.toString());
		
		int storageUpdated = DB.executeUpdate(deleteSQL.toString(), get_TrxName());
		//	Log
		log.fine("Storage Updated=" + storageUpdated);
		
		StringBuffer transactionSQL = new StringBuffer("SELECT mt.AD_Client_ID," +
														"mw.AD_Org_ID," +
														"mt.M_Product_ID," +
														"mt.M_Locator_ID," +
														"mt.M_AttributeSetInstance_ID," +
														"Sum(mt.MovementQty) MovementQty "+
														"FROM " + 
														"M_Transaction mt "+
														"INNER JOIN M_Locator ml ON mt.M_Locator_ID = ml.M_Locator_ID "+
														"INNER JOIN M_Warehouse mw ON mw.M_Warehouse_ID = ml.M_Warehouse_ID "+
														"WHERE mt.AD_Client_ID = ").append(getAD_Client_ID()).append(" ");
		
		//	Org
		if(p_AD_Org_ID != 0)
			transactionSQL.append("AND mw.AD_Org_ID = ").append(p_AD_Org_ID).append(" ");
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			transactionSQL.append("AND mw.M_Warehouse_ID = ").append(p_M_Warehouse_ID).append(" ");
		//Product
		if(p_M_Product_ID != 0)
			transactionSQL.append("AND mt.M_Product_ID = ").append(p_M_Product_ID).append(" ");
		//Group By
		transactionSQL.append("GROUP BY "+
		"mt.AD_Client_ID,mw.AD_Org_ID,mt.M_Product_ID,mt.M_Locator_ID,mt.M_AttributeSetInstance_ID ");
		
		transactionSQL.append("HAVING SUM(mt.MovementQty) <> 0 ");
		
		
		PreparedStatement ps=null;
		ResultSet rs =null;
		ps = DB.prepareStatement(transactionSQL.toString(), get_TrxName());
		rs = ps.executeQuery();
		//	Loop
		while(rs.next()){
			MStorage stg = new MStorage(getCtx(), 0, get_TrxName());
			stg.setAD_Org_ID(rs.getInt("AD_Org_ID"));
			stg.setM_Product_ID(rs.getInt("M_Product_ID"));
			stg.setM_Locator_ID(rs.getInt("M_Locator_ID"));
			stg.setM_AttributeSetInstance_ID(rs.getInt("M_AttributeSetInstance_ID"));
			stg.setQtyOnHand(rs.getBigDecimal("MovementQty"));
			stg.save(get_TrxName());
			addLog("@QtyOnHand@ " + stg.getQtyOnHand() + " @Processed@");
		}
		
		DB.close(rs, ps);
	}
	
	/**
	 * 	Reserve Inventory. (Copy from MOrder)
	 * 	Counterpart: MInOut.completeIt()
	 * 	@param dt document type or null
	 * 	@param order (ordered by M_Product_ID for deadlock prevention)
	 * 	@return true if (un) reserved
	 * @throws SQLException 
	 */
	private boolean reserveStock (MOrder order) throws Exception
	{
		if(order == null)
			return false;
		//	Document Type
		MDocType dt = MDocType.get(getCtx(), order.getC_DocType_ID());	
		//	Binding
		boolean binding = !dt.isProposal();
		//	Not binding - i.e. Target=0
		if (X_C_Order.DOCSTATUS_Voided.equals(order.getDocStatus())
				//	Closing Binding Quotation
				|| (MDocType.DOCSUBTYPESO_Quotation.equals(dt.getDocSubTypeSO()) 
					&& X_C_Order.DOCSTATUS_Closed.equals(order.getDocStatus())) 
				) // || isDropShip() )
			binding = false;
		boolean isSOTrx = order.isSOTrx();
		log.fine("Binding=" + binding + " - IsSOTrx=" + isSOTrx);
		//	Force same WH for all but SO/PO
		int header_M_Warehouse_ID = order.getM_Warehouse_ID();
		if (MDocType.DOCSUBTYPESO_StandardOrder.equals(dt.getDocSubTypeSO())
			|| MDocType.DOCBASETYPE_PurchaseOrder.equals(dt.getDocBaseType()))
			header_M_Warehouse_ID = 0;		//	don't enforce
		
		BigDecimal Volume = Env.ZERO;
		BigDecimal Weight = Env.ZERO;
		//	Get Lines.
		MOrderLine [] lines = order.getLines();
		
		//	Always check and (un) Reserve Inventory		
		for (int i = 0; i < lines.length; i++)
		{
			MOrderLine line = lines[i];
			
			BigDecimal m_DeliveredQty = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(iol.MovementQty) MovementQty "
					+ "FROM M_InOut io "
					+ "INNER JOIN M_InOutLine iol ON(iol.M_InOut_ID = io.M_InOut_ID) "
					+ "WHERE io.DocStatus IN('CO', 'CL') "
					+ "AND iol.C_OrderLine_ID = ?", line.getC_OrderLine_ID());
			//	Valid Quantity
			if(m_DeliveredQty == null)
				m_DeliveredQty = Env.ZERO;
			//	Get Old Delivered
			BigDecimal m_OldDeliveredQty = line.getQtyDelivered();
			if(m_OldDeliveredQty == null)
				m_OldDeliveredQty = Env.ZERO;
			//	Set Value
			line.setQtyDelivered(m_DeliveredQty);
			//	Set Reserved to Zero
			line.setQtyReserved(Env.ZERO);
			//	Check/set WH/Org
			if (header_M_Warehouse_ID != 0)	//	enforce WH
			{
				if (header_M_Warehouse_ID != line.getM_Warehouse_ID())
					line.setM_Warehouse_ID(header_M_Warehouse_ID);
				if (order.getAD_Org_ID() != line.getAD_Org_ID())
					line.setAD_Org_ID(order.getAD_Org_ID());
			}
			//	Binding
			BigDecimal target = binding ? line.getQtyOrdered() : Env.ZERO; 
			BigDecimal difference = target
				.subtract(line.getQtyReserved())
				.subtract(line.getQtyDelivered()); 
			if (difference.signum() <= 0)
			{
				MProduct product = line.getProduct();
				if (product != null)
				{
					Volume = Volume.add(product.getVolume().multiply(line.getQtyOrdered()));
					Weight = Weight.add(product.getWeight().multiply(line.getQtyOrdered()));
					//	Change Value in Line
					if(!m_DeliveredQty.equals(m_OldDeliveredQty)) {
						//	Set Reserved Quantity
						line.setQtyReserved(difference);
						//	Save Record
						line.saveEx(get_TrxName());
					}
				}
				continue;
			}
			
			log.fine("Line=" + line.getLine() 
				+ " - Target=" + target + ",Difference=" + difference
				+ " - Ordered=" + line.getQtyOrdered() 
				+ ",Reserved=" + line.getQtyReserved() + ",Delivered=" + line.getQtyDelivered());

			//	Check Product - Stocked and Item
			MProduct product = line.getProduct();
			if (product != null) 
			{
				if (product.isStocked())
				{
					BigDecimal ordered = isSOTrx ? Env.ZERO : difference;
					BigDecimal reserved = isSOTrx ? difference : Env.ZERO;
					int M_Locator_ID = 0; 
					//	Get Locator to reserve
					if (line.getM_AttributeSetInstance_ID() != 0)	//	Get existing Location
						M_Locator_ID = MStorage.getM_Locator_ID (line.getM_Warehouse_ID(), 
							line.getM_Product_ID(), line.getM_AttributeSetInstance_ID(), 
							ordered, get_TrxName());
					else{
						HashMap<Integer,Integer> m_Locator = MStorage.getM_Locator_ID (line.getM_Warehouse_ID(),
								line.getM_Product_ID(), ordered, get_TrxName());
						Iterator<?> items = m_Locator.entrySet().iterator();
						if (items.hasNext()){
							Entry<?, ?> item = (Entry<?, ?>) items.next();
							if (item.getKey()!= null)
								M_Locator_ID= (Integer)item.getKey();
							if (item.getValue()!= null)
								line.setM_AttributeSetInstance_ID((Integer)item.getValue());
						}
					}
					//	Get default Location
					if (M_Locator_ID == 0)
					{
						// try to take default locator for product first
						// if it is from the selected warehouse
						MWarehouse wh = MWarehouse.get(getCtx(), line.getM_Warehouse_ID());
						M_Locator_ID = product.getM_Locator_ID();
						if (M_Locator_ID!=0) {
							MLocator locator = new MLocator(getCtx(), product.getM_Locator_ID(), get_TrxName());
							//product has default locator defined but is not from the order warehouse
							if(locator.getM_Warehouse_ID()!=wh.get_ID()) {
								M_Locator_ID = wh.getDefaultLocator().getM_Locator_ID();
							}
						} else {
							M_Locator_ID = wh.getDefaultLocator().getM_Locator_ID();
						}
					}
					//	Update Storage
					if (!MStorage.add(getCtx(), line.getM_Warehouse_ID(), M_Locator_ID, 
						line.getM_Product_ID(), 
						line.getM_AttributeSetInstance_ID(), line.getM_AttributeSetInstance_ID(),
						Env.ZERO, reserved, ordered, get_TrxName()))
						return false;
				}	//	stockec
				//	update line
				line.setQtyReserved(line.getQtyReserved().add(difference));
				//	Save Record
				line.saveEx(get_TrxName());
				//
				Volume = Volume.add(product.getVolume().multiply(line.getQtyOrdered()));
				Weight = Weight.add(product.getWeight().multiply(line.getQtyOrdered()));
			}	//	product
		}	//	reverse inventory
		
		order.setVolume(Volume);
		order.setWeight(Weight);
		//	Update Is Delivered Flag
		order.setIsDelivered(false);
		order.updateIsDelivered();
		//	Save
		order.saveEx();
		return true;
	}	//	reserveStock

}

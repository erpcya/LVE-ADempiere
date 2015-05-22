/**
 * @finalidad Launch Report view for Produts
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 2012-10-02
 */
package org.spin.report;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.compiere.model.MCurrency;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author Yamel Senih 10/02/2012, 01:25:45
 *
 */
public class AnalyticalInventory extends SvrProcess {
	
	/**	Organization			*/
	private int 				p_AD_Org_ID = 0;
	/**	Warehouse				*/
	private int 				p_M_Warehouse_ID = 0;
	/**	Locator From			*/
	private int 				p_M_Locator_ID = 0;
	/**	Product Category		*/
	private int					p_M_Product_Category_ID = 0;
	/**	Product	From			*/
	private int 				p_M_Product_ID = 0;
	/**	Movement Type			*/
	private String				p_MovementType = null;
	/**	Date From 				*/
	private Timestamp			p_MovementDate = null;
	/**	Date To		 			*/
	private Timestamp			p_MovementDate_To = null;
	/**	Is Moved				*/
	private boolean				p_IsMoved = false;
	/**	Show Cost				*/
	private boolean				p_IsShowCost = false;
	
	/**	Parameter Where Clause	*/
	private StringBuffer		m_optionalWhere = new StringBuffer();
	
	/**	Start Time				*/
	private long 				m_start = System.currentTimeMillis();
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if (name.equals("M_Locator_ID"))
				p_M_Locator_ID = para.getParameterAsInt();
			else if (name.equals("M_Product_Category_ID"))
				p_M_Product_Category_ID = para.getParameterAsInt();
			else if (name.equals("M_Product_ID"))
				p_M_Product_ID = para.getParameterAsInt();
			else if (name.equals("MovementType"))
				p_MovementType = (String)para.getParameter();
			else if(name.equals("IsMoved"))
				p_IsMoved = para.getParameterAsBoolean();
			else if(name.equals("IsShowCost"))
				p_IsShowCost = para.getParameterAsBoolean();
			else if (name.equals("MovementDate")){
				p_MovementDate = (Timestamp)para.getParameter();
				p_MovementDate_To = (Timestamp)para.getParameter_To();
			}
		}
		//	Optional Organization
		if (p_AD_Org_ID != 0){
			m_optionalWhere.append(" AND w.AD_Org_ID = ? ");
		}
		//	Optional Warehouse
		if (p_M_Warehouse_ID != 0){
			m_optionalWhere.append(" AND l.M_Warehouse_ID = ? ");
		}
		//	Optional Locator
		if (p_M_Locator_ID != 0){
			m_optionalWhere.append(" AND t.M_Locator_ID = ? ");
		}
		//	Optional Product Category
		if (p_M_Product_Category_ID != 0){
			m_optionalWhere.append(" AND p.M_Product_Category_ID = ? ");
		}
		//	Optional Product
		if (p_M_Product_ID != 0){
			m_optionalWhere.append(" AND t.M_Product_ID = ? ");
		}
		//	Optional Movement
		if (p_MovementType != null){
			m_optionalWhere.append(" AND t.MovementType = ? ");
		}
	}	//	prepare	
	
	@Override
	protected String doIt() throws SQLException{
	//	Get Precision
		MCurrency currency = MCurrency.get(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		int precision = currency.getCostingPrecision();		
		StringBuffer sql = new StringBuffer();	
		//	Select for Previous Balance
		sql.append("SELECT " +
				"w.M_Warehouse_ID, " +
				"w.Name Warehouse, " +
				"l.M_Locator_ID, " +
				"l.Value Locator, " +
				"c.M_Product_Category_ID, " +
				"(c.Value || '-' || c.Name) Category, " +
				"p.M_Product_ID, " +
				"(p.Value || '-' || p.Name) Product, " +
				"p.C_UOM_ID, " +
				//	Sum Quantity Out
				"SUM(coalesce(" +
				"	CASE " +
				"		WHEN t.MovementQty < 0 THEN Abs(t.MovementQty) " +
				"		ELSE 0 " +
				"	END" +
				", 0)) QtyOut, " +
				//	Sum Quantity In
				"SUM(coalesce(" +
				"	CASE " +
				"		WHEN t.MovementQty > 0 THEN t.MovementQty " +
				"		ELSE 0 " +
				"	END" +
				", 0)) QtyIn, ");
		//	Add Current Cost Price
		if(p_IsShowCost) {
			sql.append("productCostPriceAt(p.M_Product_ID, ?) CurrentCostPrice, ");
		} else {
			sql.append("0 CurrentCostPrice, ");
		}
		//	Movement Date
		sql.append(DB.TO_DATE(p_MovementDate, true) + " MovementDate, " +
				"'PB' MovementType, ");
		//	Validate Multiplier
		if(p_MovementDate_To != null)
			sql.append("0 Multiply, ");
		else
			sql.append("1 Multiply, ");
				//	
				sql.append("'" + Msg.translate(getCtx(), (p_MovementDate_To != null
													? "PreviousBalance"
															: "Balance")) + "' DocumentNo, " +
				"0 seqNo, " +
				"t.AD_Client_ID, " +
				"w.AD_Org_ID, " +
				getAD_PInstance_ID() + " AD_PInstance_ID, " +
				//	Jorge Colmenarez 2014-04-10
				//	Add Support for Created Date for Sort
				DB.TO_DATE(p_MovementDate, true) + " Created " +
				//	End Jorge Colmenarez
				//	From
				"FROM M_Transaction t " +
				"INNER JOIN M_Product p ON(t.M_Product_ID = p.M_Product_ID) " +
				"INNER JOIN M_Product_Category c ON(c.M_Product_Category_ID = p.M_Product_Category_ID) " +
				"INNER JOIN M_Locator l ON(l.M_Locator_ID = t.M_Locator_ID) " +
				"INNER JOIN M_Warehouse w ON(w.M_Warehouse_ID = l.M_Warehouse_ID) " +
				//	Where
				"WHERE t.AD_Client_ID = " + getAD_Client_ID() + " ");
		//	Add Movement Date
		if(p_MovementDate_To != null)
			sql.append("AND t.MovementDate < ? ");
		else
			sql.append("AND t.MovementDate <= ? ");
		//	Add Validation for Just "Is Moved"
		if(p_IsMoved) {
			sql.append("AND EXISTS(SELECT 1 "
					+ "FROM M_Transaction tr "
					+ "WHERE tr.M_Product_ID = t.M_Product_ID "
					+ "AND tr.M_Locator_ID = t.M_Locator_ID "
					+ "AND tr.MovementDate BETWEEN ? AND ? ) ");
		}
		//	Clause Where Add
		sql.append(m_optionalWhere);
		//	Group By
		if(p_MovementDate_To != null) {
			sql.append("GROUP BY " +
					"w.AD_Org_ID, " +
					"w.M_Warehouse_ID, " +
					"w.Name, " +
					"l.M_Locator_ID, " +
					"l.Value, " +
					"c.M_Product_Category_ID, " +
					"c.Value, " +
					"c.Name, " +
					"p.M_Product_ID, " +
					"p.Value, " +
					"p.Name, " +
					"p.C_UOM_ID, " +
					"t.AD_Client_ID ");
		} else {
			sql.append("GROUP BY " +
					"t.AD_Client_ID, " +
					"c.M_Product_Category_ID, " +
					"c.Value, " +
					"c.Name, " +
					"p.M_Product_ID, " +
					"p.Value, " +
					"p.Name, " +
					"p.C_UOM_ID, " +
					"w.AD_Org_ID, " +
					"w.M_Warehouse_ID, " +
					"w.Name, " +
					"l.M_Locator_ID ");
		}
		//	Union
		if(p_MovementDate_To != null) {
			sql.append("UNION ALL ");
			//	Transaction
			sql.append("SELECT " +
					"w.M_Warehouse_ID, " +
					"w.Name Warehouse, " +
					"l.M_Locator_ID, " +
					"l.Value Locator, " +
					"c.M_Product_Category_ID, " +
					"(c.Value || '-' || c.Name) Category, " +
					"p.M_Product_ID, " +
					"(p.Value || '-' || p.Name) Product, " +
					"p.C_UOM_ID, " +
					//	Quantity Out
					"coalesce(CASE " +
					"	WHEN t.MovementQty < 0 THEN Abs(t.MovementQty) " +
					"	ELSE 0 " +
					"END, 0) " +
					"QtyOut, " +
					//	Quantity In
					"coalesce(CASE " +
					"	WHEN t.MovementQty > 0 THEN t.MovementQty " +
					"	ELSE 0 " +
					"END, 0) " +
					"QtyIn, ");
			//	Add Show Cost
			if(p_IsShowCost) {
				sql.append("productCostPriceAt(t.M_Product_ID, t.MovementDate) CurrentCostPrice, ");
			} else {
				sql.append("0 CurrentCostPrice, ");
			}
			//	
			sql.append("t.MovementDate, " +
					"t.MovementType, " +
					"1 Multiply, " +
					//	Document No
					"CASE " +
					"	WHEN mio.DocumentNo IS NOT NULL THEN mio.DocumentNo " +
					"	WHEN mi.DocumentNo IS NOT NULL THEN mi.DocumentNo " +
					"	WHEN mo.DocumentNo IS NOT NULL THEN mo.DocumentNo " +
					"	ELSE mppp.Name " +
					"END " +
					"DocumentNo, " +
					"1 SeqNo, " +
					"t.AD_Client_ID, " +
					"w.AD_Org_ID, " +
					getAD_PInstance_ID() + " AD_PInstance_ID " +
					//	Jorge Colmenarez 2014-04-10
					//	Add Support for Created Date for Sort
					",t.Created " +
					//	End Jorge Colmenarez
					//	From
					"FROM M_Transaction t " +
					"INNER JOIN M_Product p ON(t.M_Product_ID = p.M_Product_ID) " +
					"INNER JOIN M_Product_Category c ON(c.M_Product_Category_ID = p.M_Product_Category_ID) " +
					"INNER JOIN M_Locator l ON(l.M_Locator_ID = t.M_Locator_ID) " +
					"INNER JOIN M_Warehouse w ON(w.M_Warehouse_ID = l.M_Warehouse_ID) " +
					"LEFT JOIN M_InoutLine miol ON(miol.M_InoutLine_ID = t.M_InoutLine_ID) " +
					"LEFT JOIN M_Inout mio ON(miol.M_Inout_ID = mio.M_Inout_ID) " +
					"LEFT JOIN M_InventoryLine mil ON(mil.M_InventoryLine_ID = t.M_InventoryLine_ID) " +
					"LEFT JOIN M_Inventory mi ON(mi.M_Inventory_ID = mil.M_Inventory_ID) " +
					"LEFT JOIN M_MovementLine mol ON(mol.M_MovementLine_ID = t.M_MovementLine_ID) " +
					"LEFT JOIN M_Movement mo ON(mo.M_Movement_ID = mol.M_Movement_ID) " +
					"LEFT JOIN M_ProductionLine mpl ON(mpl.M_ProductionLine_ID = t.M_ProductionLine_ID) " +
					"LEFT JOIN M_ProductionPlan mpp ON(mpp.M_ProductionPlan_ID = mpl.M_ProductionPlan_ID) " +
					"LEFT JOIN M_Production mppp ON(mppp.M_Production_ID = mpp.M_Production_ID) " +
					//	Where
					"WHERE t.MovementDate BETWEEN ? AND ? ");
					//	Clause Where Add
			sql.append(m_optionalWhere);	
			//	Order By
			sql.append("ORDER BY Warehouse, Locator, Category, Product, SeqNo, MovementDate, Created");
		} else {
			//	Order By
			sql.append("ORDER BY Category, Product, Warehouse, Locator ");
		}
		//	
		log.fine("SQL = " + sql.toString());
		//	
		int i = 1;
		int noInserts = 0;
		PreparedStatement pstmt = null;
		PreparedStatement pstmtInsert = null;
		ResultSet rs = null;
		//	
		try{
			//	
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			//	Query 1 
			//	Validate Cost for Show
			if(p_IsShowCost) {
				//	Movement Date for Cost
				pstmt.setTimestamp(i++, p_MovementDate);
			}
			//	Movement Date Where
			pstmt.setTimestamp(i++, p_MovementDate);
			//	Optional Validation for Just "Is Moved"
			if(p_IsMoved) {
				//	Movement Date from
				pstmt.setTimestamp(i++, p_MovementDate);
				//	Movement Date to
				pstmt.setTimestamp(i++, p_MovementDate_To);
			}
			//	Optional Organization
			if (p_AD_Org_ID != 0){
				pstmt.setInt(i++, p_AD_Org_ID);
			}
			//	Optional Warehouse
			if (p_M_Warehouse_ID != 0){
				pstmt.setInt(i++, p_M_Warehouse_ID);
			}
			//	Optional Locator
			if (p_M_Locator_ID != 0){
				pstmt.setInt(i++, p_M_Locator_ID);
			}
			//	Optional Product Category
			if (p_M_Product_Category_ID != 0){
				pstmt.setInt(i++, p_M_Product_Category_ID);
			}
			//	Optional Product
			if (p_M_Product_ID != 0){
				pstmt.setInt(i++, p_M_Product_ID);
			}
			//	Optional Movement
			if (p_MovementType != null){
				pstmt.setString(i++, p_MovementType);
			}
			//	Query 2
			if(p_MovementDate_To != null) {
				//	Movement Date
				pstmt.setTimestamp(i++, p_MovementDate);
				//	Movement Date To
				pstmt.setTimestamp(i++, p_MovementDate_To);			
				//	Optional Organization
				if (p_AD_Org_ID != 0){
					pstmt.setInt(i++, p_AD_Org_ID);
				}
				//	Optional Warehouse
				if (p_M_Warehouse_ID != 0){
					pstmt.setInt(i++, p_M_Warehouse_ID);
				}
				//	Optional Locator
				if (p_M_Locator_ID != 0){
					pstmt.setInt(i++, p_M_Locator_ID);
				}
				//	Optional Product Category
				if (p_M_Product_Category_ID != 0){
					pstmt.setInt(i++, p_M_Product_Category_ID);
				}
				//	Optional Product
				if (p_M_Product_ID != 0){
					pstmt.setInt(i++, p_M_Product_ID);
				}
				//	Optional Movement
				if (p_MovementType != null){
					pstmt.setString(i++, p_MovementType);
				}
			}
			//	
			rs = pstmt.executeQuery();
			BigDecimal v_QtyOut = Env.ZERO;
			BigDecimal v_QtyIn = Env.ZERO;
			BigDecimal v_Balance = Env.ZERO;
			BigDecimal v_LinealBalance = Env.ZERO;
			BigDecimal v_CurrentCostPrice = Env.ZERO;
			BigDecimal v_CumulatedAmt = Env.ZERO;
			BigDecimal v_Multiply = Env.ZERO;
			//	Loop
			while (rs.next()){
				i = 1;
				v_QtyOut = rs.getBigDecimal("QtyOut");
				v_QtyIn = rs.getBigDecimal("QtyIn");
				v_Multiply = rs.getBigDecimal("Multiply");
				v_CurrentCostPrice = rs.getBigDecimal("CurrentCostPrice");
				//	Calculate Balance
				v_Balance = v_Balance.multiply(v_Multiply);
				v_LinealBalance = v_QtyIn.subtract(v_QtyOut);
				v_Balance = v_Balance.add(v_LinealBalance);
				//	Calculate Cumulated Cost
				v_CumulatedAmt = v_CurrentCostPrice.multiply(v_LinealBalance);
				//	Sql Insert
				sql = new StringBuffer("INSERT INTO T_AnalyticalInventory(" +
						"M_Warehouse_ID, " +
						"M_Locator_ID, " +
						"M_Product_Category_ID, " +
						"M_Product_ID, " +
						"C_UOM_ID, " +
						"QtyOut, " +
						"QtyIn, " +
						"CurrentCostPrice, " +
						"CumulatedAmt, " +
						"Balance, " +
						"LinealBalance, " +
						"MovementDate, " +
						"MovementType, " +
						"DocumentNo, " +
						"SeqNo, " +
						"AD_Client_ID, " +
						"AD_Org_ID, " +
						"AD_PInstance_ID, " +
						"IsMoved, " +
						"IsShowCost) " +
						"VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
				//	
				noInserts++;
				log.fine("SQL Insert = " + sql);
				//	
				pstmtInsert = DB.prepareStatement (sql.toString(), get_TrxName());
				//	Add Parameters
				pstmtInsert.setInt(i++, rs.getInt("M_Warehouse_ID"));
				pstmtInsert.setInt(i++, rs.getInt("M_Locator_ID"));
				pstmtInsert.setInt(i++, rs.getInt("M_Product_Category_ID"));
				pstmtInsert.setInt(i++, rs.getInt("M_Product_ID"));
				pstmtInsert.setInt(i++, rs.getInt("C_UOM_ID"));
				pstmtInsert.setBigDecimal(i++, rs.getBigDecimal("QtyOut").setScale(precision, BigDecimal.ROUND_HALF_UP));
				pstmtInsert.setBigDecimal(i++, rs.getBigDecimal("QtyIn").setScale(precision, BigDecimal.ROUND_HALF_UP));
				pstmtInsert.setBigDecimal(i++, v_CurrentCostPrice.setScale(precision, BigDecimal.ROUND_HALF_UP));
				pstmtInsert.setBigDecimal(i++, v_CumulatedAmt.setScale(precision, BigDecimal.ROUND_HALF_UP));
				pstmtInsert.setBigDecimal(i++, v_Balance.setScale(precision, BigDecimal.ROUND_HALF_UP));
				pstmtInsert.setBigDecimal(i++, v_LinealBalance.setScale(precision, BigDecimal.ROUND_HALF_UP));
				pstmtInsert.setTimestamp(i++, rs.getTimestamp("MovementDate"));
				pstmtInsert.setString(i++, rs.getString("MovementType"));
				pstmtInsert.setString(i++, rs.getString("DocumentNo"));
				pstmtInsert.setInt(i++, rs.getInt("seqNo"));
				pstmtInsert.setInt(i++, rs.getInt("AD_Client_ID"));
				pstmtInsert.setInt(i++, rs.getInt("AD_Org_ID"));
				pstmtInsert.setInt(i++, rs.getInt("AD_PInstance_ID"));
				pstmtInsert.setString(i++, p_IsMoved? "Y": "N");
				pstmtInsert.setString(i++, p_IsShowCost? "Y": "N");
				//	
				pstmtInsert.executeUpdate();
			}
			//	
			log.fine("No Inserts = " + noInserts);
			//	
		} catch(Exception e){
			log.severe(e.getMessage() + " SQL=" + sql);
			return e.getMessage();
		} finally {
			DB.close(rs, pstmt);
			DB.close(pstmtInsert);
		}
		//	
		log.fine((System.currentTimeMillis() - m_start) + " ms");
		//	
		return "@Created@ = " + 0;//noInserts;
	}	//	doIt

}

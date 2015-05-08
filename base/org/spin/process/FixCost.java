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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpcya.com               				  *
 *****************************************************************************/

package org.spin.process;

import java.math.BigDecimal;
import java.math.MathContext;
import java.util.List;

import org.compiere.model.MAcctSchema;
import org.compiere.model.MCost;
import org.compiere.model.MCostDetail;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MLVECostVersion;
import org.spin.model.X_LVE_CostVersion;
public class FixCost extends SvrProcess{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			//	Added By Jorge Colmenarez 2015-05-04 
			//	Add Support for Filter by Product Category
			else if (name.equals("M_Product_Category_ID"))
				p_M_Product_Category_ID = para.getParameterAsInt();
			//	End Jorge Colmenarez
			else if (name.equals("M_Product_ID"))
				p_M_Product_ID = para.getParameterAsInt();
			
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			
			/*else if (name.equals("M_CostElement_ID"))
				p_M_CostElement_ID = para.getParameterAsInt();
			*/
			else if (name.equals("C_AcctSchema_ID"))
				p_C_AcctSchema_ID = para.getParameterAsInt();
			//	Added By Jorge Colmenarez 2015-05-04 
			//	Add Support for Delete Old Records
			else if (name.equals("DeleteOld"))
				p_DeleteOld = para.getParameterAsBoolean();
			//	End Jorge Colmenarez
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		String resp = new String();
		
		//Get Produts to Fix Cost
		List<MProduct>products = new Query(getCtx(), MProduct.Table_Name, "(M_Product_ID=? OR ?=0) AND (M_Product_Category_ID=? OR ?=0) AND AD_Client_ID=? AND ProductType='I'", get_TrxName())
								//	Added By Jorge Colmenarez 2015-05-04 
								//	Add Support for Filter by Product Category
								.setParameters(p_M_Product_ID,p_M_Product_ID,p_M_Product_Category_ID,p_M_Product_Category_ID,getAD_Client_ID())
								//	End Jorge Colmenarez
								.setOnlyActiveRecords(true)
								.list();

		for (MProduct product: products){
			//	Added by Jorge Colmenarez 2015-05-04
			//	Delete Records
			if(p_DeleteOld){
				DB.executeUpdateEx("DELETE FROM M_CostDetail WHERE M_Product_ID=? " +
						"AND M_InventoryLine_ID IS NOT NULL"
						, new Object[]{product.getM_Product_ID()}, get_TrxName());
			}
			//	End Jorge Colmenarez

			MAcctSchema as = new MAcctSchema(getCtx(), p_C_AcctSchema_ID, get_TrxName());
			/*
			MCost cost = MCost.get(product, 0, as, p_AD_Org_ID, p_M_CostElement_ID, get_TrxName());
			//Advance for Zero Costing
			if (cost.getCurrentCostPrice()==Env.ZERO){
				addLog("@NotFound@ "+Msg.translate(getCtx(), "M_Cost_ID") +" "+ product.getValue() + " " + product.getName());
				continue;
			}
			*/
			//Advance for InOut IsSOTrx Movements not In Cost Detail
			if (new Query(getCtx(), MInOutLine.Table_Name, 
					"QtyEntered<>0 AND " +
					"M_Product_ID=? AND " +
					"NOT EXISTS (SELECT 1 FROM M_CostDetail WHERE M_CostDetail.M_InOutLine_ID=M_InOutLine.M_InOutLine_ID) AND " +
					"EXISTS (SELECT 1 FROM M_Product WHERE M_Product.M_Product_ID=M_InOutLine.M_Product_ID AND M_Product.ProductType ='I') AND " +
					"EXISTS (SELECT 1 FROM M_InOut WHERE M_InOutLine.M_InOut_ID=M_InOut.M_InOut_ID AND M_InOut.DocStatus NOT IN ('DR','IN','IP') AND M_InOut.IsSoTrx='Y')"
					, get_TrxName())
			.setParameters(product.getM_Product_ID())
			.setOnlyActiveRecords(true)
			.match()){
				addLog(Msg.translate(getCtx(), "M_InOutLine_ID") + " " + "@NotFound@" + " " + Msg.translate(getCtx(), "M_CostDetail_ID") +" "+ product.getValue() + " " + product.getName());
				continue;
			}
			
			
			//Advance for Unprocessed Cost Detail
			if (new Query(getCtx(), MCostDetail.Table_Name, 
					"Processed = 'N' AND " +  
					"M_Product_ID = ? "  
					, get_TrxName())
				.setOnlyActiveRecords(true)
				.setParameters(product.getM_Product_ID())
				.match()){
				addLog("@NotValid@" + " " + Msg.translate(getCtx(), "M_CostDetail_ID") +" "+ product.getValue() + " " + product.getName());
				continue;
			}
			
			//Update Zero Cost Line Based In Current Cost Price
			List<MCostDetail> costdetails = new Query(getCtx(), MCostDetail.Table_Name, "M_InventoryLine_ID IS NOT NULL AND Amt=0 AND M_Product_ID=?", get_TrxName())
										.setOnlyActiveRecords(true)
										.setParameters(product.getM_Product_ID())
										.list();
			for (MCostDetail costdetail : costdetails){
				//Unprocessed for Set Amt
				//Update From Sql Query for Don't Change Update Date
				MCost currCost = MLVECostVersion.getCurrentCost(product, 0, p_AD_Org_ID, p_C_AcctSchema_ID, costdetail.getCreated(), get_TrxName());
				DB.executeUpdateEx("Update M_CostDetail Set Amt= ? Where M_CostDetail_ID=?", new Object[]{costdetail.getQty().multiply(currCost.getCurrentCostPrice()).abs(),costdetail.getM_CostDetail_ID()}, get_TrxName());				
			}
			
			//Create Costs Lines From Inventory Line
			List<MInventoryLine> inventorylines = new Query(getCtx(), MInventoryLine.Table_Name, 
							"NOT EXISTS(SELECT 1  FROM M_CostDetail WHERE M_CostDetail.M_InventoryLine_ID = M_InventoryLine.M_InventoryLine_ID) AND " +
							"EXISTS(SELECT 1 FROM M_Inventory WHERE M_Inventory.M_Inventory_ID=M_InventoryLine.M_Inventory_ID AND DocStatus NOT IN ('DR','IN','IP')) AND " +
							"M_Product_ID =? AND " +
							"((QtyCount-QtyBook)<>0 OR QtyInternalUse<>0)"
							, get_TrxName())
							.setOnlyActiveRecords(true)
							.setParameters(product.getM_Product_ID())
							.list();
			for (MInventoryLine iLine : inventorylines){
				MCostDetail costDet = new MCostDetail(getCtx(), 0, get_TrxName());
				MCost currCost = MLVECostVersion.getCurrentCost(product, 0, p_AD_Org_ID, p_C_AcctSchema_ID, iLine.getCreated(), get_TrxName());
				costDet.setAD_Org_ID(iLine.getAD_Org_ID());
				costDet.setC_AcctSchema_ID(as.getC_AcctSchema_ID());
				costDet.setM_Product_ID(product.getM_Product_ID());
				costDet.setM_AttributeSetInstance_ID(iLine.getM_AttributeSetInstance_ID());
				costDet.set_ValueOfColumn("Created", iLine.getCreated());
				costDet.set_ValueOfColumn("Updated", iLine.getUpdated());
				costDet.setM_InventoryLine_ID(iLine.getM_InventoryLine_ID());
				costDet.setIsSOTrx(false);
				costDet.setAmt(iLine.getMovementQty().multiply(currCost.getCurrentCostPrice()));
				costDet.setQty(iLine.getMovementQty());
				costDet.setCurrentCostPrice(currCost.getCurrentCostPrice());
				costDet.setCurrentQty(costDet.getQty());
				costDet.setCumulatedAmt(costDet.getAmt());
				costDet.setCumulatedQty(costDet.getQty());
				costDet.saveEx(get_TrxName());
				
				//Update Date Update
				DB.executeUpdateEx("Update M_CostDetail Set Processed=?,Updated=? Where M_CostDetail_ID=?", new Object[]{"Y",iLine.getUpdated(),costDet.getM_CostDetail_ID()}, get_TrxName());				
			}
			
			BigDecimal cumulatedAmt = Env.ZERO;
			BigDecimal cumulatedQty = Env.ZERO;
			BigDecimal currentQty	= Env.ZERO;
			
			BigDecimal sumAmt		= Env.ZERO;
			BigDecimal sumQty		= Env.ZERO;
			
			BigDecimal currentCost	= Env.ZERO;
			
			int costingPrecision = as.getCostingPrecision();
			
			List<MCostDetail> costToFix =  new Query(getCtx(), MCostDetail.Table_Name, "M_Product_ID=?", get_TrxName())
							.setOnlyActiveRecords(true)
							.setParameters(product.getM_Product_ID())
							.setOrderBy("Created")
							.list();
			try{
					
				for (MCostDetail cd: costToFix){
					
					
					MCost cost = MLVECostVersion.getCurrentCost(product, 0, p_AD_Org_ID, p_C_AcctSchema_ID, cd.getCreated(), get_TrxName());
					if (cost.getCurrentCostPrice()==Env.ZERO){
						addLog("@NotFound@ "+Msg.translate(getCtx(), "M_Cost_ID") +" "+ product.getValue() + " " + product.getName());
						continue;
					}
					
					//currentCost = cost.getCurrentCostPrice();
					
					//Inventory OR Receipt / Shipment Movement 
					if (cd.getM_InOutLine_ID()!=0 || cd.getM_InventoryLine_ID()!=0){
						if (cd.getM_InventoryLine_ID()!=0){
							if (cd.getM_InventoryLine().getQtyInternalUse().setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)==Env.ZERO.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP))
							{	
								cumulatedAmt = cumulatedAmt.add(cd.getAmt());
								cumulatedQty = cumulatedQty.add(cd.getQty());
								currentQty = currentQty.add(cd.getQty());
								
								sumQty =sumQty.add(cd.getQty());
								sumAmt = cd.getAmt().divide(cd.getQty(),MathContext.DECIMAL128).multiply(sumQty);
								
								//Only Calculate When Sum Qty Nt Equals to Zero
								if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AverageInvoice)
										|| cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO)){
									if (!sumQty.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(Env.ZERO.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
										currentCost = sumAmt.divide(sumQty, costingPrecision);
								}else if(cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_LastPOPrice) && currentCost.equals(Env.ZERO))
									currentCost = cd.getCurrentCostPrice();
								
								DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=?,CurrentQty=?,CurrentCostPrice=? Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
							}
							else{
								currentQty = currentQty.add(cd.getQty());
								sumQty = sumQty.add(cd.getQty());
								
								//if (!currentCost.abs().setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(cd.getAmt().divide(cd.getQty(),MathContext.DECIMAL128).abs().setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
									sumAmt = sumAmt.add(currentCost.multiply(cd.getQty()));
								//else
									//sumAmt = sumAmt.add(cd.getAmt().multiply(new BigDecimal(cd.getQty().signum())));
								
								//Only Calculate When Sum Qty Nt Equals to Zero
								if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AverageInvoice)
										|| cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO)){
									if (!sumQty.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(Env.ZERO.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
										currentCost = sumAmt.divide(sumQty, costingPrecision);
								}else if(cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_LastPOPrice) && currentCost.equals(Env.ZERO))
									currentCost = cd.getCurrentCostPrice();
								
								DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=?, CurrentQty=?,Amt=Abs(Qty * ?),CurrentCostPrice=? Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
							}
								
						}
						else if (cd.getM_InOutLine_ID()!=0){
							
							currentQty = currentQty.add(cd.getQty());
							sumQty = sumQty.add(cd.getQty());
							
							if (!currentCost.abs().setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(cd.getAmt().divide(cd.getQty(),MathContext.DECIMAL128).abs().setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
								sumAmt = sumAmt.add(currentCost.multiply(cd.getQty()));
							else
								sumAmt = sumAmt.add(cd.getAmt().multiply(new BigDecimal(cd.getQty().signum())));
							
							//Only Calculate When Sum Qty Nt Equals to Zero
							if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AverageInvoice)
									|| cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO))
								if (!sumQty.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(Env.ZERO.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
									currentCost = sumAmt.divide(sumQty, costingPrecision);
							
							DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=?, CurrentQty=?,Amt=Abs(Qty * ?),CurrentCostPrice=? Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
						}
						
					}//End Inventory Receipt / Shipment Movement
					//Order Movements 
					else if (cd.getC_OrderLine_ID()!=0){
						/*2015-01-05 Add Support to Average PO*/
						if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AverageInvoice))
							DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=?, CurrentQty=? ,CurrentCostPrice=? Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
						else if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO)
									|| cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_LastPOPrice)){
							BigDecimal qty = Env.ZERO;
							BigDecimal amt = Env.ZERO;
							if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_LastPOPrice)){
								MOrderLine ol = new MOrderLine(getCtx(), cd.getC_OrderLine_ID(), get_TrxName());
								BigDecimal matchQty = DB.getSQLValueBD(get_TrxName(), "SELECT SUM(Qty) FROM M_MatchPO WHERE C_OrderLine_ID = ? ", cd.getC_InvoiceLine_ID());
								if (matchQty==null)
									matchQty = Env.ZERO;
								
								qty = matchQty;
								amt =matchQty.multiply(ol.getPriceEntered());
								currentCost = ol.getPriceEntered();
							}
							else if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO)){
								qty=cd.getQty();
								amt=cd.getAmt();
							}
									
							cumulatedAmt = cumulatedAmt.add(amt);
							cumulatedQty = cumulatedQty.add(qty);
							currentQty = currentQty.add(qty);
							
							sumQty = sumQty.add(qty);
							sumAmt = sumAmt.add(amt.multiply(new BigDecimal(qty.signum())));
							//Only Calculate When Sum Qty Nt Equals to Zero
							if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO))
								if (!sumQty.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(Env.ZERO.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
									currentCost = sumAmt.divide(sumQty, costingPrecision);
							
							DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=? ,CurrentQty=? ,CurrentCostPrice=?  Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
						}
							
					}//End Order Movements
					//Invoice
					else if (cd.getC_InvoiceLine_ID()!=0){
						if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AverageInvoice)){
							cumulatedAmt = cumulatedAmt.add(cd.getAmt());
							cumulatedQty = cumulatedQty.add(cd.getQty());
							currentQty = currentQty.add(cd.getQty());
							
							sumQty = sumQty.add(cd.getQty());
							sumAmt = sumAmt.add(cd.getAmt().multiply(new BigDecimal(cd.getQty().signum())));
							//Only Calculate When Sum Qty Nt Equals to Zero
							if (!sumQty.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP).equals(Env.ZERO.setScale(costingPrecision,BigDecimal.ROUND_HALF_UP)))
								currentCost = sumAmt.divide(sumQty, costingPrecision);
							
							DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=? ,CurrentQty=? ,CurrentCostPrice=?  Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
						}
						else if (cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_AveragePO) || cost.getCostingMethod().equals(X_LVE_CostVersion.COSTINGMETHOD_LastPOPrice))
							DB.executeUpdateEx("Update M_CostDetail Set CumulatedAmt=?, CumulatedQty=?, CurrentQty=? ,CurrentCostPrice=? Where M_CostDetail_ID=?", new Object[]{cumulatedAmt,cumulatedQty,currentQty,currentCost,cd.getM_CostDetail_ID()}, get_TrxName());
					}
					
					//Update Current Cost
					if (!currentCost.equals(Env.ZERO)){
						cost.setCurrentCostPrice(currentCost.setScale(costingPrecision, BigDecimal.ROUND_HALF_UP));
						cost.setCumulatedAmt(cumulatedAmt);
						cost.setCumulatedQty(cumulatedQty);
						cost.setCurrentQty(sumQty);
						cost.saveEx(get_TrxName());
						
					}
				}
			}
			catch(Exception e){
				addLog(e.getMessage() +" "+ product.getValue() + " " + product.getName() );
				e.printStackTrace();
			}
			m_Updated ++;
			resp = "@Updated@ " + m_Updated;
			
		}
			
		return resp;
	}	

	/** Product Category to Fix Cost*/ 
	//	Added By Jorge Colmenarez 2015-05-04 
	//	Add Support for Filter by Product Category
	int p_M_Product_Category_ID = 0;
	//	Delete Old Records
	boolean p_DeleteOld = false;
	//	End Jorge Colmenarez
	/** Product to Fix Cost*/ 
	int p_M_Product_ID = 0;
	
	/** Cost Element*/
	//int p_M_CostElement_ID = 0;

	/** Organization*/
	int p_AD_Org_ID = 0;
	
	/** Acct Schema*/
	int p_C_AcctSchema_ID = 0;

	/**Updated*/
	int m_Updated = 0;
}

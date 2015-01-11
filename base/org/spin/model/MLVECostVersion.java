package org.spin.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MAcctSchema;
import org.compiere.model.MCost;
import org.compiere.model.MCostElement;
import org.compiere.model.MProduct;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Cost Version Managment
 * @author carlos
 */
public class MLVECostVersion extends X_LVE_CostVersion {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MLVECostVersion(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLVECostVersion(Properties ctx, int LVE_CostVersion_ID,
			String trxName) {
		super(ctx, LVE_CostVersion_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		MAcctSchema as = new MAcctSchema(getCtx(), getC_AcctSchema_ID(), get_TrxName());
		as.setCostingMethod(getCostingMethod());
		as.save(get_TrxName());
		return as.save(get_TrxName());
	}
	
	/**
	 * get Current Cost Method
	 * @param C_AcctSchema_ID
	 * @return
	 */
	public static String getCurrentCostMethod(int C_AcctSchema_ID,Timestamp validFrom,String trxName){
		String costingMehod = null;
		MAcctSchema as;
		String sql = "SELECT CostingMethod FROM LVE_CostVersion WHERE IsActive = ? AND C_AcctSchema_ID = ? AND  ValidFrom <= ?  Order By ValidFrom Desc";
		
		costingMehod =  DB.getSQLValueString(trxName, sql, new Object[]{"Y",C_AcctSchema_ID,validFrom});
		if (costingMehod == null){
			as = new MAcctSchema(Env.getCtx(), C_AcctSchema_ID, trxName);
			if (as !=null)
				costingMehod = as.getCostingMethod();
		}
		
		return costingMehod;
	}
	
	/**
	 * get Current Cost Method
	 * @param C_AcctSchema_ID
	 * @return
	 */
	public static MCost getCurrentCost(MProduct product,int M_AttributeSetInstance_ID ,int AD_Org_ID,int C_AcctSchema_ID,Timestamp validFrom,String trxName){
		String costingMethod = MLVECostVersion.getCurrentCostMethod(C_AcctSchema_ID, validFrom, trxName);
		//String sql = "Select * FROM "
		List<MCostElement> elements = MCostElement.getByCostingMethod(Env.getCtx(), costingMethod);
		MAcctSchema as = new MAcctSchema(Env.getCtx(), C_AcctSchema_ID, trxName);
		MCost currentCost = null;
		for (MCostElement mCostElement : elements) {
			currentCost = MCost.get(product, M_AttributeSetInstance_ID, as, AD_Org_ID, mCostElement.getM_CostElement_ID(), trxName);
			break;
		}
		
		return currentCost;
	}
	
}

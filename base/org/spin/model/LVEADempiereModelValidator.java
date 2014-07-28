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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.math.BigDecimal;

import org.compiere.model.I_C_Cash;
import org.compiere.model.MCash;
import org.compiere.model.MClient;
import org.compiere.model.MColumn;
import org.compiere.model.MInvoice;
import org.compiere.model.MStorage;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.X_C_Invoice;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class LVEADempiereModelValidator implements ModelValidator {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 01/07/2014, 10:30:05
	 */
	public LVEADempiereModelValidator() {
		super();
	}

	/** Logger */
	private static CLogger log = CLogger.getCLogger(LVEADempiereModelValidator.class);
	/** Client */
	private int m_AD_Client_ID = -1;
	
	@Override
	public void initialize(ModelValidationEngine engine, MClient client) {
		// client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		} else {
			log.info("Initializing global validator: " + this.toString());
		}
		//	Add Timing change in C_Order and C_Invoice
		engine.addDocValidate(MInvoice.Table_Name, this);
		engine.addDocValidate(I_C_Cash.Table_Name, this);
		//	Add Warehouse Product Listener
		addWPListener(engine, this);
	}

	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}

	@Override
	public String modelChange(PO po, int type) throws Exception {
		String msg = validWarehouseProduct(po, type);
		return msg;
	}

	@Override
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_BEFORE_REVERSECORRECT){
			if(po.get_TableName().equals(X_C_Invoice.Table_Name)){
				return validCashLineReference(po.get_TrxName(), po.get_ID());
			}
		}else if (timing==TIMING_BEFORE_PREPARE)
		{	//	Dixon Martinez Add Tax in Cash
				  
			if(po.get_TableName().equals(MCash.Table_Name))
			{
				log.fine(MCash.Table_Name + " -- TIMING_BEFORE_PREPARE");
				if (MSysConfig.getBooleanValue("TAX_ACCT_CASH", false))
				{
					MCash cash = (MCash) po;
					if (!MLVECashTax.calculateTaxTotal(cash)) // setTotals
						return Msg.translate(Env.getLanguage(Env.getCtx()), "TaxCalculatingError");
				}
			}
		}
		//
		return null;
	}

	/**
	 * Valid Reference in other record
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 01/07/2014, 10:45:30
	 * @param get_TrxName
	 * @param get_ID
	 * @return
	 * @return String
	 */
	private String validCashLineReference(String get_TrxName, int get_ID) {
		
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName, "SELECT MAX(c.DocumentNo) " +
				"FROM C_Cash c " +
				"INNER JOIN C_CashLine cl ON (c.C_Cash_ID = cl.C_Cash_ID) " +
				"WHERE c.DocStatus IN('CO', 'CL') " +
				"AND cl.C_Invoice_ID = ?", get_ID);
		
		if(m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @C_Cash_ID@: " + m_ReferenceNo;
		//	Return
		return null;	
	}
	
	/**
	 * Valid Warehouse Product Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/07/2014, 13:17:14
	 * @param po
	 * @param type
	 * @return
	 * @return String
	 */
	private String validWarehouseProduct(PO po, int type) {
		//	Valid Null
		if(po == null)
			return null;
		//	
		if(type != TYPE_BEFORE_NEW
				&& type != TYPE_BEFORE_CHANGE)
			return null;
		//	
		String msg = null;
		//	do It
		//	Get From Table
		MLVEWarehouseProduct wProductConfig = MLVEWarehouseProduct
				.getFromTable(po.getCtx(), po.get_Table_ID());
		//	Valid Null
		if(wProductConfig == null)
			return null;
		//	Get Column Names
		String m_Product_Column = MColumn.getColumnName(po.getCtx(), wProductConfig.getProduct_Column_ID());
		String m_Attribute_Column = MColumn.getColumnName(po.getCtx(), wProductConfig.getAttribute_Column_ID());
		String m_Warehouse_Column = MColumn.getColumnName(po.getCtx(), wProductConfig.getWarehouse_Column_ID());
		String m_Qty_Column = MColumn.getColumnName(po.getCtx(), wProductConfig.getQty_Column_ID());
		//	Get Values
		int m_AD_Org_ID = po.getAD_Org_ID();
		int m_M_Product_ID = po.get_ValueAsInt(m_Product_Column);
		int m_M_AttributeSetInstance_ID = po.get_ValueAsInt(m_Attribute_Column);
		int m_M_Warehouse_ID = po.get_ValueAsInt(m_Warehouse_Column);
		int m_OldWarehouse_ID = po.get_ValueOldAsInt(m_Warehouse_Column);
		BigDecimal m_Qty = (BigDecimal) po.get_Value(m_Qty_Column);
		if(m_Qty == null)
			m_Qty = Env.ZERO;
		//	Valid Configuration
		MLVEWarehouseProductLine configLine = MLVEWarehouseProduct
				.getWarehouseProduct(po.getCtx(), po.get_Table_ID(), m_AD_Org_ID, m_M_Product_ID, 0,po.get_TrxName());
		if(configLine == null)
			return null;
		//	Before New
		if(type == TYPE_BEFORE_NEW) {
			//	Set Warehouse
			po.set_ValueOfColumn(m_Warehouse_Column, configLine.getM_Warehouse_ID());
			//	Valid Stock
		} else if(type == TYPE_BEFORE_CHANGE) {
			configLine = MLVEWarehouseProduct.getWarehouseProduct(po.getCtx(), po.get_Table_ID(), 
					m_AD_Org_ID, m_M_Product_ID, m_OldWarehouse_ID,po.get_TrxName());
			if(configLine == null)
				return null;
			m_M_Warehouse_ID = configLine.getM_Warehouse_ID();
			//	Valid Mandatory
			if(configLine.isAlwaysSetMandatory())
				po.set_ValueOfColumn(m_Warehouse_Column, m_OldWarehouse_ID);
		}
		//	Valid Stock
		if(configLine.isMustBeStocked()) {
			BigDecimal available = MStorage.getQtyAvailable
					(m_M_Warehouse_ID, 0, m_M_Product_ID, m_M_AttributeSetInstance_ID, null);
			if (available == null)
				available = Env.ZERO;
			if (available.signum() == 0)
				msg = "@NoQtyAvailable@";
			else if (available.compareTo(m_Qty) < 0)
				msg = "@InsufficientQtyAvailable@ [@QtyAvailable@ = " + available.toString() 
							+ " @Qty@ = " + m_Qty + " @Difference@ = " + m_Qty.subtract(available) + "]";
		}
		//	Return
		return Msg.parseTranslation(po.getCtx(), msg);
	}
	
	/**
	 * Add Warehouse Product Listener
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/07/2014, 17:29:30
	 * @param engine
	 * @param listener
	 * @return void
	 */
	private void addWPListener(ModelValidationEngine engine, ModelValidator listener) {
		//	Valid Null
		if(engine == null
				|| listener == null)
			return;
		KeyNamePair [] tables = DB.getKeyNamePairs("SELECT t.AD_Table_ID, t.TableName " +
				"FROM LVE_WarehouseProduct wp " +
				"INNER JOIN AD_Table t ON(t.AD_Table_ID = wp.AD_Table_ID) " +
				"WHERE wp.AD_Client_ID = ? " +
				"GROUP BY t.AD_Table_ID, t.TableName " +
				"ORDER BY t.TableName", false, getAD_Client_ID());
		//	Valid Tables
		if(tables == null)
			return;
		//	Iterate over tables
		for (KeyNamePair table : tables) {
			//	Add Listener
			engine.addModelChange(table.getName(), listener);
			log.fine("Table Added=" + table.toString());
		}
	}
}

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

import org.compiere.model.I_C_Cash;
import org.compiere.model.MBPartner;
import org.compiere.model.MCash;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_Order;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
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
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_BEFORE_REVERSECORRECT){
			if(po.get_TableName().equals(X_C_Invoice.Table_Name)){
				return validCashLineReference(po.get_TrxName(), po.get_ID());
			}
		}else if (timing==TIMING_BEFORE_PREPARE)	{	//	Dixon Martinez Add Tax in Cash
			if(po.get_TableName().equals(MCash.Table_Name))
			{
				log.fine(MCash.Table_Name + " -- TIMING_BEFORE_PREPARE");
				if (MSysConfig.getBooleanValue("TAX_ACCT_CASH", false))
				{
					MCash cash = (MCash) po;
					if (!MLVECashTax.calculateTaxTotal(cash)) // setTotals
						return Msg.translate(Env.getLanguage(Env.getCtx()), "TaxCalculatingError");
				}
			} /*else if(po.get_TableName().equals(X_C_Order.Table_Name)) {
				//	Dixon Martinez 2014-09-25
				//	Add support for check credit
				log.fine(X_C_Order.Table_Name + " -- TIMING_BEFORE_PREPARE");
				X_C_Order order = (X_C_Order) po;
				int countOverdueInvoices = overdueInvoices(order.getC_BPartner_ID()) ;
				int countCheckReturn = checkReturn(order.getC_BPartner_ID());
						
				if(countOverdueInvoices > 0
						|| countCheckReturn > 0) {
					MBPartner bp = new MBPartner (order.getCtx(), order.getC_BPartner_ID(), order.get_TrxName());
					bp.setSOCreditStatus(MBPartner.SOCREDITSTATUS_CreditStop);
					bp.saveEx();
				}
				//	End Dixon Martinez
			}*/
		}	
		//
		return null;
	}
	/**
	 * Verify Overdue Invoices
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 6/10/2014, 11:21:23
	 * @param c_BPartner_ID
	 * @return
	 * @return int
	 */
	private int overdueInvoices(int c_BPartner_ID) {
		String sql = "SELECT COUNT(*) "
				+ " FROM LVE_RV_OpenItem "
				+ " WHERE "
				+ "		C_BPartner_ID = ?"
				+ "		AND DaysDue > 0";
		
		int count = DB.getSQLValue(null, sql, c_BPartner_ID);
		return count;
	}
	
	/**
	 * Verify Check Returns 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 6/10/2014, 11:21:23
	 * @param c_BPartner_ID
	 * @return
	 * @return int
	 */
	private int checkReturn(int c_BPartner_ID) {
		String sql = "SELECT COUNT(*) "
				+ "	FROM LVE_RV_OpenItem oi"
				+ "	INNER JOIN C_DocType dt ON (oi.C_DocType_ID = oi.C_DocType_ID)"
				+ "	WHERE"
				+ "		C_BPartner_ID = ?"
				+ "		AND dt.IsCheckReturn = 'Y'";
		int count = DB.getSQLValue(null, sql, c_BPartner_ID);
		return count;
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

	@Override
	public String modelChange(PO po, int type) throws Exception {
		return null;
	}
}

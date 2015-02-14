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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.spin.model.ValidateRifSeniat;

/**
 * @author <a href="mailto:carlosaparadam@gmail.com">Dixon Martinez</a>
 * @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 * <li> Add Comments
 * <li> Change for Tax ID for Validation
 */
public class ValidateSeniat extends SvrProcess {

	/**	Business Partner		*/
	private int 	p_C_BPartner_ID 		= 0;
	/** Over Write BPartner		*/ 		
	boolean 		p_OverwriteBPartner		= false;
	
	@Override
	protected void prepare() {
		for(ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();
			if(para.getParameter() == null)
				;
			else if(name.equals("OverwriteBPartner"))
				p_OverwriteBPartner = para.getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);				
		}	
		//	Get Record Identifier
		p_C_BPartner_ID = getRecord_ID();
	}// End Prepare
	
	@Override
	protected String doIt() throws Exception {
		//	Validate Business Partner
		if(p_C_BPartner_ID == 0)
			throw new AdempiereException("@C_BPartner_ID@ @NotFound@");
		//	Do
		MBPartner m_BPartner = MBPartner.get(getCtx(), p_C_BPartner_ID);
		//	
		String m_TaxID = m_BPartner.getTaxID();
		//	Validate Tax ID
		if(m_TaxID == null 
				|| m_TaxID.length() == 0)
			throw new AdempiereException("@TaxID@ @NotFound@"); 
		//	
		ValidateRifSeniat validate = new ValidateRifSeniat(m_TaxID);
		//	Valid if Exists
		if(validate.isM_exists()) {			
			String newName = null;
			String newName2 = null ;
			//	
			String name = validate.getM_Name();			
			if(name != null &&
					name.length() > 60) {
				int lastIndexOf = name.lastIndexOf(" ", 59);
				newName = name.substring(0, lastIndexOf).trim();
				newName2 = name.substring(lastIndexOf);
			} else {
				newName = name;
				newName2 = "";
			}
			//	Overwrite Business Partner
			if(p_OverwriteBPartner){
				m_BPartner.setName(newName);
				m_BPartner.setName2(newName2);
				m_BPartner.saveEx();
			}
			//	Set Message
			String msg = "@Value@ : " +validate.getM_Rif()+"\n"+
					 "@Name@: "+validate.getM_Name()+"\n"+
					 "@RetentionAgent@: " +validate.getM_Agent()+"\n"+
					 "@IVATaxpayer@: " + validate.getM_Contributor();
			
			addLog(msg);
			return msg;
		} else {
			throw new AdempiereException(validate.getM_error());
		}//	End DoIt
	}	
}

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
package org.spin.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutInvoice extends CalloutEngine {
	
	/**
	 * Set Field AffectsBook depend of Doc Type Affects Books.
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/04/2011, 20:31:33
	 * @contributor <a href="mailto:dixon22ma@gmail.com">Dixon Martinez</a> 13/12/2013, 06:22:01
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String docType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){		
		//	Set Variable of Doc Type ID of Context
		Integer p_DocType_ID = (Integer) value;
		
		if (p_DocType_ID == null || p_DocType_ID.intValue() == 0)
			return "";
		
		//	Dixon Martinez 20/12/2013
		//	Create object Doc Type
		MDocType m_DocType = new MDocType(ctx, p_DocType_ID.intValue(), null);
	
		//	Set value Affects Book
		mTab.setValue("AffectsBook", m_DocType.get_ValueAsBoolean("AffectsBook"));
		
		//	Set value Is Manual
		mTab.setValue("IsManual", m_DocType.get_ValueAsBoolean("IsManual"));
		//	End Dixon Martinez
		return "";
	}
	
	
}

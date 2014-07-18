/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * Custom-ANCA
 * CalloutMovement
 * CalloutMovement.java
 * 12/02/2014
 */
package org.spin.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutMovement extends CalloutEngine
{

	/**
	 * Set Field Is Transit depend of Doc Type Is Transit.
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String doctype (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){		
		//	Set Variable of Doc Type ID of Context
		Integer p_DocType_ID = (Integer) value;
		
		if (p_DocType_ID == null || p_DocType_ID.intValue() == 0)
			return "";
		
		//	Create object Doc Type
		MDocType m_DocType = new MDocType(ctx, p_DocType_ID.intValue(), null);
	
		//	Set value Affects Book
		mTab.setValue("IsInTransit", m_DocType.get_ValueAsBoolean("IsInTransit"));
		
		return "";
	}


}

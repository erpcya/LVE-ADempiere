/*************************************************************************************
 * Product: ADempiere ERP, CRM & SCM                                                 *
 * This program is free software; you can redistribute it and/or modify it           *
 * under the terms version 2 of the GNU General Public License as published          *
 * by the Free Software Foundation. This program is distributed in the hope          *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *
 * See the GNU General Public License for more details.                              *
 * You should have received a copy of the GNU General Public License along           *
 * with this program; if not, write to the Free Software Foundation, Inc.,           *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                            *
 * For the text or an alternative of this public license, you may reach us           *
 * Copyright (C) 2012-2014 E.R.P. Consultores y Asociados, S.A. All Rights Reserved. *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com                      *
 *************************************************************************************/
package org.spin.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MProduct;
import org.compiere.model.MProductCategory;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutProductReport extends CalloutEngine {

	/**
	 * Set Field Name from Product.
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){		
		//	Set Variable of Doc Type ID of Context
		Integer p_M_Product_ID = (Integer) value;
		
		if (p_M_Product_ID == null 
				|| p_M_Product_ID.intValue() == 0){
			mTab.setValue("PrintName", "");
			return "";
		}
		//	Set Product
		MProduct product = MProduct.get(ctx, p_M_Product_ID.intValue());
		//	
		mTab.setValue("PrintName", product.getValue() + " - " + product.getName());
		//
		return "";
	}
	
	/**
	 * Set Field Name from Product Category.
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String category (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){		
		//	Set Variable of Doc Type ID of Context
		Integer p_M_Product_Category_ID = (Integer) value;
		
		if (p_M_Product_Category_ID == null 
				|| p_M_Product_Category_ID.intValue() == 0){
			mTab.setValue("PrintName", "");
			return "";
		}
		//	Set Product
		MProductCategory productCategory = MProductCategory.get(ctx, p_M_Product_Category_ID.intValue());
		//	
		mTab.setValue("PrintName", productCategory.getName());
		//
		return "";
	}
	
}

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

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.CCache;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEWarehouseProduct extends X_LVE_WarehouseProduct {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1994668061472867078L;
	
	/** Cache */
	private static CCache<Integer, MLVEWarehouseProduct> s_cacheByTable = new CCache<Integer, MLVEWarehouseProduct>(Table_Name, 10);

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/07/2014, 17:26:18
	 * @param ctx
	 * @param LVE_WarehouseProduct_ID
	 * @param trxName
	 */
	public MLVEWarehouseProduct(Properties ctx, int LVE_WarehouseProduct_ID,
			String trxName) {
		super(ctx, LVE_WarehouseProduct_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/07/2014, 17:26:18
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWarehouseProduct(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/***************************************************************************
	 * Helper Methods                                                          *
	 ***************************************************************************/

	/**
	 * Get Default Warehouse from Product
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/07/2014, 19:25:27
	 * @param cxt
	 * @param p_AD_Table_ID
	 * @param p_AD_Org_ID
	 * @param p_M_Product_ID
	 * @param p_M_Warehouse_ID
	 * @param trxName
	 * @return
	 * @return MLVEWarehouseProductLine
	 */
	public static MLVEWarehouseProductLine getWarehouseProduct(Properties ctx, int p_AD_Table_ID, 
			int p_AD_Org_ID, int p_M_Product_ID, int p_M_Warehouse_ID, String trxName) {
		//	Get Warehouse Configuration
		int m_LVE_WarehouseProductLine_ID = DB.getSQLValue(trxName, "SELECT wpl.LVE_WarehouseProductLine_ID " +
				"FROM LVE_WarehouseProduct wp " +
				"INNER JOIN LVE_WarehouseProductLine wpl ON(wp.LVE_WarehouseProduct_ID = wpl.LVE_WarehouseProduct_ID) " +
				"WHERE wp.AD_Table_ID = ? " +
				"AND wpl.AD_Org_ID = ? " +
				"AND wpl.M_Product_ID = ? " +
				(p_M_Warehouse_ID != 0? "AND wpl.M_Warehouse_ID = " + p_M_Warehouse_ID + " ": "") +
				"AND wpl.IsActive = 'Y' " +
				"ORDER BY wpl.SeqNo", new Object[]{p_AD_Table_ID, p_AD_Org_ID, p_M_Product_ID});
		//	Return
		if(m_LVE_WarehouseProductLine_ID <= 0)
			return null;
		//	
		return MLVEWarehouseProductLine.get(ctx, m_LVE_WarehouseProductLine_ID);
	}
	
	/**
	 * Get from Table
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/07/2014, 00:16:54
	 * @param ctx
	 * @param p_AD_Table_ID
	 * @return
	 * @return MLVEWarehouseProduct
	 */
	public static MLVEWarehouseProduct getFromTable(Properties ctx, int p_AD_Table_ID) {
		if (p_AD_Table_ID <= 0)
			return null;
		//
		MLVEWarehouseProduct wProduct = s_cacheByTable.get(p_AD_Table_ID);
		if (wProduct != null)
			return wProduct;
		//	Get From DB
		int m_LVE_WarehouseProduct_ID = DB.getSQLValue(null, "SELECT wp.LVE_WarehouseProduct_ID " +
				"FROM LVE_WarehouseProduct wp " + 
				"WHERE wp.AD_Table_ID = ? " +
				"AND wp.IsActive = 'Y' ", p_AD_Table_ID);
		//	
		wProduct = new MLVEWarehouseProduct(ctx, m_LVE_WarehouseProduct_ID, null);
		if (wProduct.get_ID() == m_LVE_WarehouseProduct_ID) {
			s_cacheByTable.put(p_AD_Table_ID, wProduct);
		} else {
			wProduct = null;
		}
		//	Return
		return wProduct;
	}
}

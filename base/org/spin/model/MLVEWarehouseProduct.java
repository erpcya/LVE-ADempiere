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
	 * @param p_AD_Org_ID
	 * @param p_M_Product_ID
	 * @param trxName
	 * @return
	 * @return int
	 */
	public static int getDefaultWarehouse(Properties cxt, int p_AD_Org_ID, int p_M_Product_ID, String trxName) {
		//	Get Warehouse
		int m_M_Warehouse_ID = DB.getSQLValue(trxName, "SELECT wpl.M_Warehouse_ID " +
				"FROM LVE_WarehouseProductLine wpl " +
				"WHERE wpl.AD_Org_ID = ? " +
				"AND wpl.M_Product_ID = ? " +
				"ORDER BY wpl.SeqNo", new Object[]{p_AD_Org_ID, p_M_Product_ID});
		//	Return
		return m_M_Warehouse_ID;
	}
}

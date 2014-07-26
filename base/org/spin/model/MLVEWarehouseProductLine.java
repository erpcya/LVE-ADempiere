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

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEWarehouseProductLine extends X_LVE_WarehouseProductLine {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1186809613100119541L;
	/** Cache */
	private static CCache<Integer, MLVEWarehouseProductLine> s_cache = new CCache<Integer, MLVEWarehouseProductLine>(Table_Name, 10);

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/07/2014, 17:27:11
	 * @param ctx
	 * @param LVE_WarehouseProductLine_ID
	 * @param trxName
	 */
	public MLVEWarehouseProductLine(Properties ctx,
			int LVE_WarehouseProductLine_ID, String trxName) {
		super(ctx, LVE_WarehouseProductLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/07/2014, 17:27:11
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWarehouseProductLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get from ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/07/2014, 12:58:13
	 * @param ctx
	 * @param LVE_WarehouseProductLine_ID
	 * @return
	 * @return MLVEWarehouseProductLine
	 */
	public static MLVEWarehouseProductLine get(Properties ctx, int LVE_WarehouseProductLine_ID) {
		if (LVE_WarehouseProductLine_ID <= 0)
			return null;
		//
		MLVEWarehouseProductLine wpLine = s_cache.get(LVE_WarehouseProductLine_ID);
		if (wpLine != null)
			return wpLine;
		//
		wpLine = new MLVEWarehouseProductLine(ctx, LVE_WarehouseProductLine_ID, null);
		if (wpLine.get_ID() == LVE_WarehouseProductLine_ID) {
			s_cache.put(LVE_WarehouseProductLine_ID, wpLine);
		} else {
			wpLine = null;
		}
		//	Return
		return wpLine;
	}
}

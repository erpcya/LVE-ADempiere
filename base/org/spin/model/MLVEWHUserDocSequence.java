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

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class MLVEWHUserDocSequence extends X_LVE_WH_UserDocSequence{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7382481760642659569L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 11/02/2014, 20:52:00
	 * @param ctx
	 * @param LVE_WH_UserDocSequence_ID
	 * @param trxName
	 */
	public MLVEWHUserDocSequence(Properties ctx, int LVE_WH_UserDocSequence_ID,
			String trxName)
	{
		super(ctx, LVE_WH_UserDocSequence_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 11/02/2014, 20:52:00
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEWHUserDocSequence(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**
	 * Get User Doc Sequence from SQL Where
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 11/02/2014, 21:49:46
	 * @param ctx
	 * @param p_DocType_ID
	 * @param p_User_ID
	 * @param trxName
	 * @return
	 * @return List<MLVEWHUserDocSequence>
	 */
	public static MLVEWHUserDocSequence get(Properties ctx, int p_DocType_ID, int p_User_ID, String trxName){
		//	Get User Doc Sequence
		StringBuffer where =  new StringBuffer();
		//	Criteria
		if(p_DocType_ID != 0)
			where.append(COLUMNNAME_C_DocType_ID)
			.append("=")
			.append(p_DocType_ID);
		if(p_User_ID != 0)
			where.append((where.length() != 0? " AND ": "")).append(COLUMNNAME_AD_User_ID)
			.append("=")
			.append(p_User_ID);
		//	
		//	Lists User Doc Sequence
		MLVEWHUserDocSequence m_UserDocSequence = new Query(ctx,Table_Name,where.toString(), trxName)
			.setOnlyActiveRecords(true)
			.first();

		return m_UserDocSequence;
	}

	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 11/02/2014, 21:50:10
	 * @param ad_User_ID
	 * @param get_ID
	 * @return
	 * @return int
	 */
	public static int getControlNoSequence_ID(int p_User_ID, int p_DocType_ID)
	{
		MLVEWHUserDocSequence m_Seq =get(Env.getCtx(), p_DocType_ID, p_User_ID, null); 
		
		if(m_Seq == null)
			return 0;
		
		return m_Seq.get_ValueAsInt("ControlNoSequence_ID");
	}//	getControlNoSequence_ID

}

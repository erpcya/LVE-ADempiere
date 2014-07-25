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
package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.spin.model.MLVEWarehouseProductLine;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class WarehouseProductCreate extends SvrProcess {

	/**	Organization		*/
	private int 		p_AD_Org_ID 				= 0;
	/**	Warehouse			*/
	private int 		p_M_Warehouse_ID 			= 0;
	/** Product Category	*/
	private int			p_M_Product_Category_ID 	= 0;
	/**	Record Identifier	*/
	private int 		p_Record_ID					= 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("p_M_Product_Category_ID"))
				p_M_Product_Category_ID = para.getParameterAsInt();
		}
		//	Get Record Identifier
		p_Record_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		//	SQL
		StringBuffer sql = new StringBuffer("SELECT s.AD_Org_ID, l.M_Warehouse_ID, w.Name Warehouse, " +
				"s.M_Product_ID, (p.Value || '-' || p.Name) Product, MAX(s.QtyOnHand - s.QtyReserved) QtyAvailable " +
				"FROM M_Storage s " +
				"INNER JOIN M_Locator l ON(l.M_Locator_ID = s.M_Locator_ID) " +
				"INNER JOIN M_Warehouse w ON(w.M_Warehouse_ID = l.M_Warehouse_ID) " +
				"INNER JOIN M_Product p ON(p.M_Product_ID = s.M_Product_ID) " +
				"WHERE s.AD_Client_ID = ").append(getAD_Client_ID());
		//	Add Parameters
		//	Organization
		if(p_AD_Org_ID != 0)
			sql.append(" AND s.AD_Org_ID = ").append(p_AD_Org_ID);
		//	Warehouse
		if(p_M_Warehouse_ID != 0)
			sql.append(" AND l.M_Warehouse_ID = ").append(p_M_Warehouse_ID);
		//	Product Category
		if(p_M_Product_Category_ID != 0)
			sql.append(" AND p.M_Product_Category_ID = ").append(p_M_Product_Category_ID);
		//	
		//	Group By
		sql.append(" GROUP BY s.AD_Org_ID, l.M_Warehouse_ID, w.Name, s.M_Product_ID, p.Value, p.Name");
		//	Order By
		sql.append(" ORDER BY s.AD_Org_ID, s.M_Product_ID, QtyAvailable DESC");
		
		//	Log
		log.fine("SQL=" + sql.toString());
		//	
		int m_SeqNo = DB.getSQLValue(get_TrxName(), "SELECT MAX(SeqNo) " +
				"FROM LVE_WarehouseProductLine " +
				"WHERE LVE_WarehouseProduct_ID = ?", p_Record_ID);
		//	Add Value
		m_SeqNo += 10;
		//	Update
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		rs = ps.executeQuery();
		//	
		int m_Created = 0;
		//	Loop
		while(rs.next()){
			//	Instance Line
			MLVEWarehouseProductLine line = new MLVEWarehouseProductLine(getCtx(), 0, get_TrxName());
			//	
			line.setLVE_WarehouseProduct_ID(p_Record_ID);
			line.setAD_Org_ID(rs.getInt("AD_Org_ID"));
			line.setM_Warehouse_ID(rs.getInt("M_Warehouse_ID"));
			line.setM_Product_ID(rs.getInt("M_Product_ID"));
			line.setSeqNo(m_SeqNo);
			line.saveEx();
			//	Add Sequence
			m_SeqNo += 10;
			//	Add Created
			m_Created++;
			//	
			addLog("[@M_Warehouse_ID@ = " + rs.getString("Warehouse") 
					+ "] [@M_Product_ID@ = " + rs.getString("Product") 
					+ "] [@QtyAvailable@ = " + rs.getDouble("QtyAvailable") + "]");
		}
		DB.close(rs, ps);
		//	
		return "@Created@=" + m_Created;
	}

}

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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpcya.com               				  *
 *****************************************************************************/
package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.model.MRequisitionLine;
import org.compiere.model.MRfQ;
import org.compiere.model.MRfQLine;
import org.compiere.model.MRfQLineQty;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

public class CreateFromRequisition extends SvrProcess{

	
	StringBuffer sql = new StringBuffer();
	private int lines = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		sql.append("Select T_Selection_ID From T_Selection Where AD_PInstance_ID=?");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		MRequisitionLine rl = null;
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		ps.setInt(1, getAD_PInstance_ID());
		rs = ps.executeQuery();
		
		while (rs.next()){
			rl = new MRequisitionLine(getCtx(), rs.getInt("T_Selection_ID"), get_TrxName());
			MRfQ rfq = new MRfQ(getCtx(),getRecord_ID(),get_TrxName());
			MRfQLine rfqline = new MRfQLine(rfq);
			rfqline.setM_Product_ID(rl.getM_Product_ID());
			rfqline.setDescription(rl.getDescription());
			rfqline.saveEx(get_TrxName());
			
			MRfQLineQty rfqlineqty = new MRfQLineQty(rfqline);
			rfqlineqty.setQty(rl.getQty());
			rfqlineqty.setC_UOM_ID(rl.getC_UOM_ID());
			rfqlineqty.setIsPurchaseQty(true);
			rfqlineqty.saveEx(get_TrxName());
			lines++;
		}
		
		DB.close(rs, ps);
		
		return "@Created@ " + lines;
	}

}

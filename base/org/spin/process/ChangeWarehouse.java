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

import java.math.BigDecimal;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.X_C_Order;
import org.compiere.model.X_C_OrderLine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class ChangeWarehouse extends SvrProcess {

	/**	Warehouse					*/
	int	p_M_Warehouse_ID			=	0;
	/**	Order Line					*/
	int	p_C_OrderLine_ID			=	0;
	/**	Record ID					*/
	int p_Record_ID					= 	0;
	/**	Qty Entered					*/
	private BigDecimal qtyEntereds[]= 	null;
	/**	Lines Array					*/
	private MOrderLine[] m_lines	= 	null;
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			//	
			if (para.getParameter() == null)
				;
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID	= para.getParameterAsInt();
			else if(name.equals("C_OrderLine_ID"))
				p_C_OrderLine_ID	= para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_Record_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		if(p_Record_ID < 0) 
			throw new AdempiereException("@C_Order_ID@ @NotFound@");
			
		MOrder m_Order = 
				new MOrder(getCtx(), p_Record_ID, get_TrxName());
		//	Validate status of order
		if(m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_InProgress)){
			changeWarehouse(m_Order);
		}else if(m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_Completed)){
			m_Order.processIt(X_C_Order.DOCACTION_Re_Activate);
			changeWarehouse(m_Order);
		}
		return "";
	}

	/**
	 * Change Warehouse 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 12/12/2014, 16:43:55
	 * @param m_Order
	 * @return void
	 */
	private void changeWarehouse(MOrder m_Order) {
		String sqlWhere = "";
		if(p_C_OrderLine_ID > 0) {
			sqlWhere = " AND C_OrderLine_ID = " + p_C_OrderLine_ID;
			m_lines = m_Order.getLines(sqlWhere,X_C_OrderLine.COLUMNNAME_Line);
		} else 
			m_lines = m_Order.getLines(true,X_C_OrderLine.COLUMNNAME_Line);
		
		qtyEntereds = null;
		qtyEntereds = new BigDecimal[m_lines.length];
		
		for(int i = 0; i < m_lines.length; i++) {
			MOrderLine mOrderLine = m_lines[i];
			qtyEntereds[i] = mOrderLine.getQtyEntered();
			mOrderLine.setQty(Env.ZERO);
			mOrderLine.saveEx();
		}
		m_Order.processIt(X_C_Order.DOCACTION_Prepare);
		m_Order.saveEx();
		m_lines = null;
		if(p_C_OrderLine_ID > 0) {
			sqlWhere = " AND C_OrderLine_ID = " + p_C_OrderLine_ID;
			m_lines = m_Order.getLines(sqlWhere,X_C_OrderLine.COLUMNNAME_Line);
		} else 
			m_lines = m_Order.getLines(true,X_C_OrderLine.COLUMNNAME_Line);

		for(int i = 0; i < m_lines.length; i++) {
			MOrderLine mOrderLine = m_lines[i];
			mOrderLine.setM_Warehouse_ID(p_M_Warehouse_ID);
			mOrderLine.setQty(qtyEntereds[i]);
			mOrderLine.saveEx();
		}
		m_Order.processIt(X_C_Order.DOCACTION_Prepare);
		m_Order.saveEx();
		m_Order.setDocAction(X_C_Order.DOCACTION_Complete);
		m_Order.saveEx();
		m_Order.processIt(X_C_Order.DOCACTION_Complete);
		m_Order.saveEx();
	}

}

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
	private int	p_M_Warehouse_ID			=	0;
	/**	Organization					*/
	private int	p_AD_Org_ID					=	0;
	/**	Order Line					*/
	private int	p_C_OrderLine_ID			=	0;
	/**	Record ID					*/
	private int p_C_Order_ID				= 	0;
	/**	Qty Entered					*/
	private BigDecimal m_QtyEntereds[]		= 	null;
	/**	Lines Array					*/
	private MOrderLine[] m_lines			= 	null;
	/** Document Status Old			*/
	private String m_OldDocStatus			=	null;
	
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
			else if(name.equals("C_Order_ID"))
				p_C_Order_ID = para.getParameterAsInt();
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = para.getParameterAsInt();
			else if(name.equals("C_OrderLine_ID"))
				p_C_OrderLine_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//	Get from Record Identifier
		if(p_C_Order_ID <= 0)
			p_C_Order_ID = getRecord_ID();
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Valid Order
		if(p_C_Order_ID <= 0) 
			throw new AdempiereException("@C_Order_ID@ @NotFound@");
		//	
		MOrder m_Order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
		//	Get Current Document Status
		m_OldDocStatus = m_Order.getDocStatus();
		//	Validate status of order
		if(m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_InProgress)){
			changeWarehouse(m_Order);
		} else if(m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_Completed)){
			m_Order.processIt(X_C_Order.DOCACTION_Re_Activate);
			m_Order.saveEx();
			changeWarehouse(m_Order);
		}
		//	
		if(m_Order.getDocStatus().equals(X_C_Order.DOCSTATUS_Invalid))
			throw new AdempiereException(m_Order.getProcessMsg());
		//	Process
		m_Order.processIt(m_OldDocStatus);
		m_Order.saveEx();
		//	
		return "Ok";
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
		} else {
			m_lines = m_Order.getLines(true,X_C_OrderLine.COLUMNNAME_Line);
		}
		//	
		m_QtyEntereds = new BigDecimal[m_lines.length];
		//	
		for(int i = 0; i < m_lines.length; i++) {
			MOrderLine mOrderLine = m_lines[i];
			m_QtyEntereds[i] = mOrderLine.getQtyEntered();
			mOrderLine.setQty(Env.ZERO);
			mOrderLine.saveEx();
		}
		//	
		m_Order.processIt(X_C_Order.DOCACTION_Prepare);
		m_Order.saveEx();
		//	
		if(p_C_OrderLine_ID > 0) {
			sqlWhere = " AND C_OrderLine_ID = " + p_C_OrderLine_ID;
			m_lines = m_Order.getLines(sqlWhere,X_C_OrderLine.COLUMNNAME_Line);
		} else {
			m_lines = m_Order.getLines(true,X_C_OrderLine.COLUMNNAME_Line);
		}
		//	
		for(int i = 0; i < m_lines.length; i++) {
			MOrderLine mOrderLine = m_lines[i];
			mOrderLine.setM_Warehouse_ID(p_M_Warehouse_ID);
			mOrderLine.setQty(m_QtyEntereds[i]);
			mOrderLine.saveEx();
		}
		//	
		m_Order.processIt(X_C_Order.DOCACTION_Prepare);
		m_Order.saveEx();
	}

}

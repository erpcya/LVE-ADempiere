/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
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
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.I_C_Order;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 *	Re-Price Order or Invoice
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderRePrice.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 *  @contributor <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/10/2014, 20:36:57
 */
public class OrderRePrice extends SvrProcess
{
	/**	Order to re-price		*/
	private int 		p_C_Order_ID = 0;
	/** Invoice to re-price		*/
	private int 		p_C_Invoice_ID = 0;
	/**	Document Type			*/
	private int 		p_C_DocType_ID 	= 0;
	/**	Date Ordered			*/
	private Timestamp 	p_DateOrdered = null;
	/**	Document Date			*/
	private Timestamp 	p_DateOrdered_To = null;
	
	String retValue = "";
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = ((BigDecimal)para[i].getParameter()).intValue();
			//	Dixon Martinez 06/05/2014 11:07:00
			//	Adding support to recalculate price orders depending on the type of document
			else if(name.equals("C_DocType_ID"))
				p_C_DocType_ID = para[i].getParameterAsInt();
			//	End Dixon Martinez
			else if(name.equals("DateOrdered")) {
				p_DateOrdered = (Timestamp) para[i].getParameter();
				p_DateOrdered_To = (Timestamp) para[i].getParameter_To();
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("C_Order_ID=" + p_C_Order_ID + ", C_Invoice_ID=" + p_C_Invoice_ID);
		if (p_C_Order_ID == 0 && p_C_Invoice_ID == 0 &&	p_C_DocType_ID == 0 )
			throw new IllegalArgumentException("Nothing to do");

		//	Dixon Martinez 06/05/2014 11:07:00
		//	Adding support to recalculate price orders depending on the type of document
		if(p_C_DocType_ID != 0){
			//
			ArrayList<Object> params = new ArrayList<Object>();
			//	Add Document Type
			StringBuffer whereClause = new StringBuffer(" C_DocType_ID = ?");
			params.add(p_C_DocType_ID);
			//	Add Date Ordered
			if(p_DateOrdered != null) {
				whereClause.append(" AND DateOrdered >= ?");
				params.add(p_DateOrdered);
			}
			//	Add Date Ordered
			if(p_DateOrdered_To != null) {
				whereClause.append(" AND DateOrdered <= ?");
				params.add(p_DateOrdered_To);
			}
			//	Add Parameters
			List<MOrder> list = new Query(getCtx(), I_C_Order.Table_Name, whereClause.toString(), get_TrxName())
							.setParameters(params)
							.list();
			
			for (MOrder mOrder : list) {		
				addLog(processOrder(mOrder.get_ID()));
			}
		}
		if (p_C_Order_ID != 0)
		{
			addLog(processOrder(p_C_Order_ID));
		}//	End Dixon Martinez
		if (p_C_Invoice_ID != 0)
		{
			MInvoice invoice = new MInvoice (getCtx(), p_C_Invoice_ID, null);
			BigDecimal oldPrice = invoice.getGrandTotal();
			MInvoiceLine[] lines = invoice.getLines(false);
			for (int i = 0; i < lines.length; i++)
			{
				lines[i].setPrice(invoice.getM_PriceList_ID(), invoice.getC_BPartner_ID());
				lines[i].save();
			}
			invoice = new MInvoice (getCtx(), p_C_Invoice_ID, null);
			BigDecimal newPrice = invoice.getGrandTotal();
			if (retValue.length() > 0)
				retValue += Env.NL;
			retValue += invoice.getDocumentNo() + ":  " + oldPrice + " -> " + newPrice;
		}
		//
		return retValue;
	}	//	doIt

	//	Dixon Martinez 06/05/2014 11:07:00
	//	Adding support to recalculate price orders depending on the type of document
	/**
	 * 
	 * @param get_ID
	 * @return
	 */
	private String processOrder(int get_ID) {

		MOrder order = new MOrder (getCtx(), get_ID, get_TrxName());
		BigDecimal oldPrice = order.getGrandTotal();
		MOrderLine[] lines = order.getLines();
		for (int i = 0; i < lines.length; i++)
		{
			lines[i].setPrice(order.getM_PriceList_ID());
			lines[i].save();
		}
		order = new MOrder (getCtx(), get_ID, get_TrxName());
		BigDecimal newPrice = order.getGrandTotal();
		return order.getDocumentNo() + ":  " + oldPrice + " -> " + newPrice;
		
	}
	//	End Dixon Martinez
}	//	OrderRePrice

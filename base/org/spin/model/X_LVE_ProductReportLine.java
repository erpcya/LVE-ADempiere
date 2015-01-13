/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LVE_ProductReportLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_LVE_ProductReportLine extends PO implements I_LVE_ProductReportLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150113L;

    /** Standard Constructor */
    public X_LVE_ProductReportLine (Properties ctx, int LVE_ProductReportLine_ID, String trxName)
    {
      super (ctx, LVE_ProductReportLine_ID, trxName);
      /** if (LVE_ProductReportLine_ID == 0)
        {
			setLVE_ProductReport_ID (0);
			setLVE_ProductReportLine_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_ProductReportLine (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LVE_ProductReportLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.spin.model.I_LVE_ProductReport getLVE_ProductReport() throws RuntimeException
    {
		return (org.spin.model.I_LVE_ProductReport)MTable.get(getCtx(), org.spin.model.I_LVE_ProductReport.Table_Name)
			.getPO(getLVE_ProductReport_ID(), get_TrxName());	}

	/** Set Product Report ID.
		@param LVE_ProductReport_ID Product Report ID	  */
	public void setLVE_ProductReport_ID (int LVE_ProductReport_ID)
	{
		if (LVE_ProductReport_ID < 1) 
			set_Value (COLUMNNAME_LVE_ProductReport_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_ProductReport_ID, Integer.valueOf(LVE_ProductReport_ID));
	}

	/** Get Product Report ID.
		@return Product Report ID	  */
	public int getLVE_ProductReport_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_ProductReport_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Product Report Line ID.
		@param LVE_ProductReportLine_ID Product Report Line ID	  */
	public void setLVE_ProductReportLine_ID (int LVE_ProductReportLine_ID)
	{
		if (LVE_ProductReportLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_ProductReportLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_ProductReportLine_ID, Integer.valueOf(LVE_ProductReportLine_ID));
	}

	/** Get Product Report Line ID.
		@return Product Report Line ID	  */
	public int getLVE_ProductReportLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_ProductReportLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Product_Category getM_Product_Category() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product_Category)MTable.get(getCtx(), org.compiere.model.I_M_Product_Category.Table_Name)
			.getPO(getM_Product_Category_ID(), get_TrxName());	}

	/** Set Product Category.
		@param M_Product_Category_ID 
		Category of a Product
	  */
	public void setM_Product_Category_ID (int M_Product_Category_ID)
	{
		if (M_Product_Category_ID < 1) 
			set_Value (COLUMNNAME_M_Product_Category_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_Category_ID, Integer.valueOf(M_Product_Category_ID));
	}

	/** Get Product Category.
		@return Category of a Product
	  */
	public int getM_Product_Category_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_Category_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Print Text.
		@param PrintName 
		The label text to be printed on a document or correspondence.
	  */
	public void setPrintName (String PrintName)
	{
		set_Value (COLUMNNAME_PrintName, PrintName);
	}

	/** Get Print Text.
		@return The label text to be printed on a document or correspondence.
	  */
	public String getPrintName () 
	{
		return (String)get_Value(COLUMNNAME_PrintName);
	}

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}
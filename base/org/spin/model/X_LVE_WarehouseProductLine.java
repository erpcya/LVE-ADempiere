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
import org.compiere.util.KeyNamePair;

/** Generated Model for LVE_WarehouseProductLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_WarehouseProductLine extends PO implements I_LVE_WarehouseProductLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140725L;

    /** Standard Constructor */
    public X_LVE_WarehouseProductLine (Properties ctx, int LVE_WarehouseProductLine_ID, String trxName)
    {
      super (ctx, LVE_WarehouseProductLine_ID, trxName);
      /** if (LVE_WarehouseProductLine_ID == 0)
        {
			setLVE_WarehouseProduct_ID (0);
			setLVE_WarehouseProductLine_ID (0);
			setM_Product_ID (0);
			setM_Warehouse_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_WarehouseProductLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WarehouseProductLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Is Always Set Mandatory.
		@param IsAlwaysSetMandatory Is Always Set Mandatory	  */
	public void setIsAlwaysSetMandatory (boolean IsAlwaysSetMandatory)
	{
		set_Value (COLUMNNAME_IsAlwaysSetMandatory, Boolean.valueOf(IsAlwaysSetMandatory));
	}

	/** Get Is Always Set Mandatory.
		@return Is Always Set Mandatory	  */
	public boolean isAlwaysSetMandatory () 
	{
		Object oo = get_Value(COLUMNNAME_IsAlwaysSetMandatory);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.spin.model.I_LVE_WarehouseProduct getLVE_WarehouseProduct() throws RuntimeException
    {
		return (org.spin.model.I_LVE_WarehouseProduct)MTable.get(getCtx(), org.spin.model.I_LVE_WarehouseProduct.Table_Name)
			.getPO(getLVE_WarehouseProduct_ID(), get_TrxName());	}

	/** Set Warehouse of Product.
		@param LVE_WarehouseProduct_ID Warehouse of Product	  */
	public void setLVE_WarehouseProduct_ID (int LVE_WarehouseProduct_ID)
	{
		if (LVE_WarehouseProduct_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WarehouseProduct_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WarehouseProduct_ID, Integer.valueOf(LVE_WarehouseProduct_ID));
	}

	/** Get Warehouse of Product.
		@return Warehouse of Product	  */
	public int getLVE_WarehouseProduct_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WarehouseProduct_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Warehouse Product Line.
		@param LVE_WarehouseProductLine_ID Warehouse Product Line	  */
	public void setLVE_WarehouseProductLine_ID (int LVE_WarehouseProductLine_ID)
	{
		if (LVE_WarehouseProductLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_WarehouseProductLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_WarehouseProductLine_ID, Integer.valueOf(LVE_WarehouseProductLine_ID));
	}

	/** Get Warehouse Product Line.
		@return Warehouse Product Line	  */
	public int getLVE_WarehouseProductLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_WarehouseProductLine_ID);
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
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getM_Product_ID()));
    }

	/** Set Product quantity must be in stock.
		@param MustBeStocked 
		If not sufficient in stock in the warehouse, the BOM is not produced
	  */
	public void setMustBeStocked (boolean MustBeStocked)
	{
		set_Value (COLUMNNAME_MustBeStocked, Boolean.valueOf(MustBeStocked));
	}

	/** Get Product quantity must be in stock.
		@return If not sufficient in stock in the warehouse, the BOM is not produced
	  */
	public boolean isMustBeStocked () 
	{
		Object oo = get_Value(COLUMNNAME_MustBeStocked);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.compiere.model.I_M_Warehouse getM_Warehouse() throws RuntimeException
    {
		return (org.compiere.model.I_M_Warehouse)MTable.get(getCtx(), org.compiere.model.I_M_Warehouse.Table_Name)
			.getPO(getM_Warehouse_ID(), get_TrxName());	}

	/** Set Warehouse.
		@param M_Warehouse_ID 
		Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		if (M_Warehouse_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Warehouse_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Warehouse_ID, Integer.valueOf(M_Warehouse_ID));
	}

	/** Get Warehouse.
		@return Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Warehouse_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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
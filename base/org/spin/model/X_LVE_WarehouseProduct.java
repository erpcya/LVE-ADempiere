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

/** Generated Model for LVE_WarehouseProduct
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_WarehouseProduct extends PO implements I_LVE_WarehouseProduct, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140727L;

    /** Standard Constructor */
    public X_LVE_WarehouseProduct (Properties ctx, int LVE_WarehouseProduct_ID, String trxName)
    {
      super (ctx, LVE_WarehouseProduct_ID, trxName);
      /** if (LVE_WarehouseProduct_ID == 0)
        {
			setAD_Table_ID (0);
			setAttribute_Column_ID (0);
			setLVE_WarehouseProduct_ID (0);
			setName (null);
			setProduct_Column_ID (0);
			setQty_Column_ID (0);
			setWarehouse_Column_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_WarehouseProduct (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_WarehouseProduct[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_Table getAD_Table() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Table)MTable.get(getCtx(), org.compiere.model.I_AD_Table.Table_Name)
			.getPO(getAD_Table_ID(), get_TrxName());	}

	/** Set Table.
		@param AD_Table_ID 
		Database Table information
	  */
	public void setAD_Table_ID (int AD_Table_ID)
	{
		if (AD_Table_ID < 1) 
			set_Value (COLUMNNAME_AD_Table_ID, null);
		else 
			set_Value (COLUMNNAME_AD_Table_ID, Integer.valueOf(AD_Table_ID));
	}

	/** Get Table.
		@return Database Table information
	  */
	public int getAD_Table_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Table_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Column getAttribute_Column() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Column)MTable.get(getCtx(), org.compiere.model.I_AD_Column.Table_Name)
			.getPO(getAttribute_Column_ID(), get_TrxName());	}

	/** Set Attribute Column.
		@param Attribute_Column_ID Attribute Column	  */
	public void setAttribute_Column_ID (int Attribute_Column_ID)
	{
		if (Attribute_Column_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Attribute_Column_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Attribute_Column_ID, Integer.valueOf(Attribute_Column_ID));
	}

	/** Get Attribute Column.
		@return Attribute Column	  */
	public int getAttribute_Column_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Attribute_Column_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.compiere.model.I_AD_Column getProduct_Column() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Column)MTable.get(getCtx(), org.compiere.model.I_AD_Column.Table_Name)
			.getPO(getProduct_Column_ID(), get_TrxName());	}

	/** Set Product Column.
		@param Product_Column_ID Product Column	  */
	public void setProduct_Column_ID (int Product_Column_ID)
	{
		if (Product_Column_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Product_Column_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Product_Column_ID, Integer.valueOf(Product_Column_ID));
	}

	/** Get Product Column.
		@return Product Column	  */
	public int getProduct_Column_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Product_Column_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Column getQty_Column() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Column)MTable.get(getCtx(), org.compiere.model.I_AD_Column.Table_Name)
			.getPO(getQty_Column_ID(), get_TrxName());	}

	/** Set Qty Column.
		@param Qty_Column_ID Qty Column	  */
	public void setQty_Column_ID (int Qty_Column_ID)
	{
		if (Qty_Column_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Qty_Column_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Qty_Column_ID, Integer.valueOf(Qty_Column_ID));
	}

	/** Get Qty Column.
		@return Qty Column	  */
	public int getQty_Column_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Qty_Column_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_AD_Column getWarehouse_Column() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Column)MTable.get(getCtx(), org.compiere.model.I_AD_Column.Table_Name)
			.getPO(getWarehouse_Column_ID(), get_TrxName());	}

	/** Set Warehouse Column.
		@param Warehouse_Column_ID Warehouse Column	  */
	public void setWarehouse_Column_ID (int Warehouse_Column_ID)
	{
		if (Warehouse_Column_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_Warehouse_Column_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_Warehouse_Column_ID, Integer.valueOf(Warehouse_Column_ID));
	}

	/** Get Warehouse Column.
		@return Warehouse Column	  */
	public int getWarehouse_Column_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Warehouse_Column_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}
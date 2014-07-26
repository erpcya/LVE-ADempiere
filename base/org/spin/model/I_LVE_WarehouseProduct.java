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
package org.spin.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LVE_WarehouseProduct
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765)
 */
public interface I_LVE_WarehouseProduct 
{

    /** TableName=LVE_WarehouseProduct */
    public static final String Table_Name = "LVE_WarehouseProduct";

    /** AD_Table_ID=53847 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name AD_Table_ID */
    public static final String COLUMNNAME_AD_Table_ID = "AD_Table_ID";

	/** Set Table.
	  * Database Table information
	  */
	public void setAD_Table_ID (int AD_Table_ID);

	/** Get Table.
	  * Database Table information
	  */
	public int getAD_Table_ID();

	public org.compiere.model.I_AD_Table getAD_Table() throws RuntimeException;

    /** Column name Attribute_Column_ID */
    public static final String COLUMNNAME_Attribute_Column_ID = "Attribute_Column_ID";

	/** Set Attribute Column	  */
	public void setAttribute_Column_ID (int Attribute_Column_ID);

	/** Get Attribute Column	  */
	public int getAttribute_Column_ID();

	public org.compiere.model.I_AD_Column getAttribute_Column() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LVE_WarehouseProduct_ID */
    public static final String COLUMNNAME_LVE_WarehouseProduct_ID = "LVE_WarehouseProduct_ID";

	/** Set Warehouse of Product	  */
	public void setLVE_WarehouseProduct_ID (int LVE_WarehouseProduct_ID);

	/** Get Warehouse of Product	  */
	public int getLVE_WarehouseProduct_ID();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name Product_Column_ID */
    public static final String COLUMNNAME_Product_Column_ID = "Product_Column_ID";

	/** Set Product Column	  */
	public void setProduct_Column_ID (int Product_Column_ID);

	/** Get Product Column	  */
	public int getProduct_Column_ID();

	public org.compiere.model.I_AD_Column getProduct_Column() throws RuntimeException;

    /** Column name Qty_Column_ID */
    public static final String COLUMNNAME_Qty_Column_ID = "Qty_Column_ID";

	/** Set Qty Column	  */
	public void setQty_Column_ID (int Qty_Column_ID);

	/** Get Qty Column	  */
	public int getQty_Column_ID();

	public org.compiere.model.I_AD_Column getQty_Column() throws RuntimeException;

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name Warehouse_Column_ID */
    public static final String COLUMNNAME_Warehouse_Column_ID = "Warehouse_Column_ID";

	/** Set Warehouse Column	  */
	public void setWarehouse_Column_ID (int Warehouse_Column_ID);

	/** Get Warehouse Column	  */
	public int getWarehouse_Column_ID();

	public org.compiere.model.I_AD_Column getWarehouse_Column() throws RuntimeException;
}

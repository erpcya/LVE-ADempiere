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
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.model.ImportValidator;
import org.adempiere.process.ImportProcess;
import org.compiere.model.MProductCategory;
import org.compiere.model.ModelValidationEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.spin.model.X_I_Product_Category;

/**
 *	Import Products Category from I_Product_Category
 *
 * 	@author 	Carlos Parada
 * 	@version 	$Id: ImportProductCategory.java,v 1.0 2013/08/08 00:00:00
 */
public class ImportProductCategory extends SvrProcess implements ImportProcess
{
	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	/**	Delete old Imported				*/
	private boolean			m_deleteOldImported = false;

	/** Effective						*/
	private Timestamp		m_DateValue = null;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		if (m_DateValue == null)
			m_DateValue = new Timestamp (System.currentTimeMillis());
	}	//	prepare


	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception
	 */
	protected String doIt() throws java.lang.Exception
	{
		StringBuffer sql = null;
		int no = 0;
		String clientCheck = getWhereClause();

		//	****	Prepare	****

		//	Delete Old Imported
		if (m_deleteOldImported)
		{
			sql = new StringBuffer ("DELETE I_Product_Category "
				+ "WHERE I_IsImported='Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.info("Delete Old Imported =" + no);
		}

		//	Set Client, Org, IaActive, Created/Updated, 
		sql = new StringBuffer ("UPDATE I_Product_Category "
			+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ").append(m_AD_Client_ID).append("),"
			+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
			+ " IsActive = COALESCE (IsActive, 'Y'),"
			+ " Created = COALESCE (Created, SysDate),"
			+ " CreatedBy = COALESCE (CreatedBy, 0),"
			+ " Updated = COALESCE (Updated, SysDate),"
			+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
			+ " I_ErrorMsg = ' ',"
			+ " I_IsImported = 'N' "
			+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL");
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Reset=" + no);

		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_BEFORE_VALIDATE);
		

		//	****	Find Product Category
		//	Value
		sql = new StringBuffer ("UPDATE I_Product_Category i "
			+ "SET M_Product_Category_ID=(SELECT M_Product_Category_ID FROM M_Product_Category p"
			+ " WHERE i.Value=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
			+ "WHERE M_Product_Category_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Product Category Existing UPC=" + no);


		//	Unique UPC/Value
		sql = new StringBuffer ("UPDATE I_Product_Category i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Value not unique,' "
			+ "WHERE I_IsImported<>'Y'"
			+ " AND Value IN (SELECT Value FROM I_Product_Category ii WHERE i.AD_Client_ID=ii.AD_Client_ID GROUP BY Value HAVING COUNT(*) > 1)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Not Unique Value=" + no);

		
		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_AFTER_VALIDATE);

		commitEx();
		
		//	-------------------------------------------------------------------
		int noInsert = 0;
		int noUpdate = 0;
		
		//	Go through Records
		log.fine("start inserting/updating ...");
		sql = new StringBuffer ("SELECT * FROM I_Product_Category WHERE I_IsImported='N'")
			.append(clientCheck)
			.append(" Order By I_Product_Category_ID");
		try
		{
			//	Set Imported = Y
			PreparedStatement pstmt_setImported = DB.prepareStatement
				("UPDATE I_Product_Category SET I_IsImported='Y', M_Product_Category_ID=?, "
				+ "Updated=SysDate, Processed='Y' WHERE I_Product_Category_ID=?", get_TrxName());

			//
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				X_I_Product_Category imp = new X_I_Product_Category(getCtx(), rs, get_TrxName());
				int I_Product_Category_ID = imp.getI_Product_Category_ID();
				int M_Product_Category_ID = imp.getM_Product_Category_ID();
				
				boolean newProductCategory = M_Product_Category_ID == 0;
				log.fine("I_Product_Category_ID=" + I_Product_Category_ID + ", M_Category_Product_ID=" + M_Product_Category_ID );

				//	Product Category
				if (newProductCategory)			//	Insert new Product Category
				{
					MProductCategory productcategory = new MProductCategory(getCtx(), 0, get_TrxName());
					productcategory.setValue(imp.getValue());
					productcategory.setName(imp.getName());
					ModelValidationEngine.get().fireImportValidate(this, imp, productcategory, ImportValidator.TIMING_AFTER_IMPORT);
					if (productcategory.save())
					{
						M_Product_Category_ID = productcategory.getM_Product_Category_ID();
						log.finer("Insert Product Category");
						noInsert++;
					}
					else
					{
						StringBuffer sql0 = new StringBuffer ("UPDATE I_Product_Category i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Insert Product Category failed"))
							.append("WHERE I_Product_Category_ID=").append(I_Product_Category_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
				}
				else//	Update Product Category		
				{
					String sqlt = "UPDATE M_Product_Category "
						+ "SET (Value,Name)= "
						+ "(SELECT Value,Name "
						+ " FROM I_Product_Category WHERE I_Product_Category_ID="+I_Product_Category_ID+") "
						+ "WHERE M_Product_Category_ID="+M_Product_Category_ID;
					PreparedStatement pstmt_updateProduct = DB.prepareStatement
						(sqlt, get_TrxName());

					try
					{
						no = pstmt_updateProduct.executeUpdate();
						log.finer("Update Product Category= " + no);
						noUpdate++;
					}
					catch (SQLException ex)
					{
						log.warning("Update Product Category- " + ex.toString());
						StringBuffer sql0 = new StringBuffer ("UPDATE I_Product_Category i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Update Product Category: " + ex.toString()))
							.append("WHERE I_Product_Category_ID=").append(I_Product_Category_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
					pstmt_updateProduct.close();
				}


				//	Update I_Product_Category
				pstmt_setImported.setInt(1, M_Product_Category_ID);
				pstmt_setImported.setInt(2, I_Product_Category_ID);
				no = pstmt_setImported.executeUpdate();
				//
				commitEx();
			}	//	for all I_Product_Category
			rs.close();
			pstmt.close();

			pstmt_setImported.close();
			//
		}
		catch (SQLException e)
		{
		}

		//	Set Error to indicator to not imported
		sql = new StringBuffer ("UPDATE I_Product_Category "
			+ "SET I_IsImported='N', Updated=SysDate "
			+ "WHERE I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@M_Product_Category_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdate), "@M_Product_Category_ID@: @Updated@");
		
		return "";
	}	//	doIt


	@Override
	public String getImportTableName() {
		return X_I_Product_Category.Table_Name;
	}


	@Override
	public String getWhereClause() {
		return " AND AD_Client_ID=" + m_AD_Client_ID;
	}

}	//	ImportProductCategory

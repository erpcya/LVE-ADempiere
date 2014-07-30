package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

public class BPSalesRegionReport extends SvrProcess{

	/** Organization*/
	int p_AD_Org_ID = 0;
	
	/** Bussiness Partner Group*/
	int p_C_BP_Group_ID = 0;
	
	/** Bussiness Partner*/
	int p_C_BPartner_ID = 0;
	
	/** Sales Region*/
	int p_C_SalesRegion_ID = 0;
	
	/** Record Affected*/ 
	int p_RecordAffected = 0;
	
	/** Sql */
	StringBuffer sql = new StringBuffer();
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			//	
			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID	= para.getParameterAsInt();
			else if(name.equals("C_BP_Group_ID"))
				p_C_BP_Group_ID	= para.getParameterAsInt();
			else if(name.equals("C_BPartner_ID"))
				p_C_BPartner_ID	= para.getParameterAsInt();
			else if(name.equals("C_SalesRegion_ID"))
				p_C_SalesRegion_ID	= para.getParameterAsInt();
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		String in ="";
		sql.append("INSERT INTO T_LVE_BP_SalesRegion(AD_Client_ID,AD_Org_ID,AD_PInstance_ID,C_BPartner_ID,C_BPartner_Location_ID,C_SalesRegion_ID) ");
		
		sql.append("SELECT " +
				"bp.AD_Client_ID, " + 
				"bp.AD_Org_ID, " +
				getAD_PInstance_ID() + " AD_PInstance_ID, " +
				"bp.C_BPartner_ID, " +
				"bpl.C_BPartner_Location_ID, " +
				(p_C_SalesRegion_ID ==0 ? null : p_C_SalesRegion_ID)+" C_SalesRegion_ID " +
				"FROM " + 
				"C_BPartner bp " + 
				"INNER JOIN C_BPartner_Location bpl ON bp.C_BPartner_ID = bpl.C_BPartner_ID " + 
				"LEFT  JOIN C_SalesRegion sr ON sr.C_SalesRegion_ID = bpl.C_SalesRegion_ID ");
		
		in =getIN(p_C_SalesRegion_ID) + (p_C_SalesRegion_ID==0?"":p_C_SalesRegion_ID);
		
		if (!in.equals(""))
			sql.append("WHERE bpl.C_SalesRegion_ID IN (" + in + ")");
		
		pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
		pstmt.execute();
		
		p_RecordAffected = pstmt.getUpdateCount();
		
		DB.close(pstmt);
		
		return "@Updated@ " +p_RecordAffected;
	}
	
	
	/**
	 * Get Sales Region 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 04/06/2014, 12:07:10
	 * @param p_C_SalesRegion_ID
	 * @return
	 * @return String
	 * @throws SQLException 
	 */
	private String getIN(int p_C_SalesRegion_ID) throws SQLException{
		String result ="";
		String in = ""; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sqlwhere = new StringBuffer();
		int p_Node = 0;
		sqlwhere.append("SELECT Node_ID FROM " + 
						"AD_TreeNode " +
						"WHERE " + 
						"AD_Tree_ID IN( " +
						"SELECT " + 
						"AD_Tree_ID " + 
						"FROM " +
						"AD_Tree tree " + 
						"INNER JOIN AD_Table tab ON tree.AD_Table_ID = tab.AD_Table_ID " +
						"WHERE tab.TableName = 'C_SalesRegion' " +
						"AND tree.AD_Client_ID = "+getAD_Client_ID()+")" +
						"AND Parent_ID = " + p_C_SalesRegion_ID );
		
		pstmt = DB.prepareStatement(sqlwhere.toString(), get_TrxName());
		rs = pstmt.executeQuery();
		
		while (rs.next()){
			p_Node = rs.getInt("Node_ID");
			result +=(result.equals("") ? p_Node : "," + p_Node );
			in = getIN(p_Node);
			if (!in.equals(""))
			result +=(result.equals("") ? in : "," + in);
		}
		return result;
	}
}

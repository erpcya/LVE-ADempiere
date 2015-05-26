package org.spin.minigrid;

import java.awt.Insets;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.swing.AbstractButton;
import javax.swing.DefaultCellEditor;
import javax.swing.SwingConstants;
import javax.swing.table.TableColumn;

import org.compiere.grid.ed.VCellRenderer;
import org.compiere.grid.ed.VHeaderRenderer;
import org.compiere.minigrid.CheckRenderer;
import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IDColumnEditor;
import org.compiere.minigrid.IDColumnRenderer;
import org.compiere.minigrid.MiniCellEditor;
import org.compiere.minigrid.MiniTable;
import org.compiere.minigrid.ROCellEditor;
import org.compiere.model.MRole;
import org.compiere.swing.CCheckBox;
import org.compiere.util.DisplayType;
import org.compiere.util.Util;

public class MiniTableHeaderCheck extends MiniTable implements ItemListener{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int dynamicSelectedRow= -1;
	
	ItemListener iListener = null ;  
	
	public MiniTableHeaderCheck() {
		iListener = this;
	}
	
	public MiniTableHeaderCheck(ItemListener il) {	
		iListener = il;
	}
	
	/**************************************************************************
	 *  Prepare Table and return SQL
	 *
	 *  @param layout    array of column info
	 *  @param from      SQL FROM content
	 *  @param where     SQL WHERE content
	 *  @param multiSelection multiple selections
	 *  @param tableName table name
	 *  @return SQL
	 */
	public String prepareTable(ColumnInfo[] layout, 
		String from, String where, boolean multiSelection, String tableName
		//2015-05-23 Carlos Parada Add Support to Header Multiple Selection 
		,boolean headerSelection
		//End Carlos Parada
		)
	{
		m_layout = layout;
		m_multiSelection = multiSelection;
		//
		StringBuffer sql = new StringBuffer ("SELECT ");
		//  add columns & sql
		for (int i = 0; i < layout.length; i++)
		{
			//  create sql
			if (i > 0)
				sql.append(", ");
			sql.append(layout[i].getColSQL());
			//  adding ID column
			if (layout[i].isKeyPairCol())
				sql.append(",").append(layout[i].getKeyPairColSQL());

			//  add to model
			addColumn(layout[i].getColHeader());
			if (layout[i].isColorColumn())
				setColorColumn(i);
			if (layout[i].getColClass() == IDColumn.class)
				p_keyColumnIndex = i;
		}
		//  set editors (two steps)
		for (int i = 0; i < layout.length; i++)
			if(layout[i].getColClass() == IDColumn.class && headerSelection)
				setColumnClass(i, layout[i].getColClass(),0, layout[i].isReadOnly(), layout[i].getColHeader(),true);
			else
				setColumnClass(i, layout[i].getColClass(), layout[i].isReadOnly(), layout[i].getColHeader());

		sql.append( " FROM ").append(from);
		sql.append(" WHERE ").append(where);

		//  Table Selection
		setRowSelectionAllowed(true);
		
		//	org.compiere.apps.form.VMatch.dynInit calls routine for initial init only
		if (from.length() == 0)
			return sql.toString();
		//
		String finalSQL = MRole.getDefault().addAccessSQL(sql.toString(), 
			tableName, MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);
		log.finest(finalSQL);
		return finalSQL;
	}   //  prepareTable
	
	/**
	 *  Set Column Editor & Renderer to Class
	 *  (after all columns were added)
	 *  Lauout of IDColumn depemds on multiSelection
	 *  @param index column index
	 *  @param c   class of column - determines renderere/editors supported:
	 *  @param DisplayType define Type Value
	 *  IDColumn, Boolean, Double (Quantity), BigDecimal (Amount), Integer, Timestamp, String (default)
	 *  @param readOnly read only flag
	 *  @param header optional header value
	 */
	public void setColumnClass (int index, Class c, int displayType ,boolean readOnly, String header
			//2015-05-23 Carlos Parada Add Support to Header Multiple Selection 
			,boolean headerSelection
			//End Carlos Parada
			)
	{
	//	log.config( "MiniTable.setColumnClass - " + index, c.getName() + ", r/o=" + readOnly);
		TableColumn tc = getColumnModel().getColumn(index);
		if (tc == null)
			return;
		//  Set R/O
		setColumnReadOnly(index, readOnly);

		//  Header
		if (header != null && header.length() > 0)
			tc.setHeaderValue(Util.cleanAmp(header));

		//  ID Column & Selection
		if (c == IDColumn.class)
		{
			tc.setCellRenderer(new IDColumnRenderer(m_multiSelection));
			if (m_multiSelection)
			{
				tc.setCellEditor(new IDColumnEditor());
				setColumnReadOnly(index, false);
			}
			else
			{
				tc.setCellEditor(new ROCellEditor());
			}
			m_minWidth.add(new Integer(10));
			tc.setMaxWidth(20);
			tc.setPreferredWidth(20);
			tc.setResizable(false);
			if (headerSelection)
				tc.setHeaderRenderer(new CheckBoxHeaderRendered(iListener) );
			else
				tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.Number));
		}
		//  Boolean
		else if (DisplayType.YesNo == displayType || c == Boolean.class )
		{
			tc.setCellRenderer(new CheckRenderer());
			if (readOnly)
				tc.setCellEditor(new ROCellEditor());
			else
			{
				CCheckBox check = new CCheckBox();
				check.setMargin(new Insets(0,0,0,0));
				check.setHorizontalAlignment(SwingConstants.CENTER);
				tc.setCellEditor(new DefaultCellEditor(check));
			}
			m_minWidth.add(new Integer(30));
			
			tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.YesNo));
		}
		//  Date
		else if (DisplayType.Date == displayType || DisplayType.DateTime == displayType ||  c == Timestamp.class )
		{
			if(DisplayType.DateTime == displayType)
				tc.setCellRenderer(new VCellRenderer(DisplayType.DateTime));
			else 
				tc.setCellRenderer(new VCellRenderer(DisplayType.Date));
			
			if (readOnly)
				tc.setCellEditor(new ROCellEditor());
			else if (DisplayType.Date == displayType || DisplayType.DateTime == displayType)
				tc.setCellEditor(new MiniCellEditor(c, displayType));
			else 
				tc.setCellEditor(new MiniCellEditor(c));
			
			m_minWidth.add(new Integer(30));
			if (DisplayType.DateTime == displayType)
				tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.DateTime));
			else 
				tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.Date));
		}
		//  Amount
		else if (DisplayType.Amount == displayType || c == BigDecimal.class )
		{
			tc.setCellRenderer(new VCellRenderer(DisplayType.Amount));
			if (readOnly)
			{
				tc.setCellEditor(new ROCellEditor());
				m_minWidth.add(new Integer(70));
			}
			else
			{
				tc.setCellEditor(new MiniCellEditor(c));
				m_minWidth.add(new Integer(80));
			}
			
			tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.Number));
		}
		//  Number
		else if (DisplayType.Number == displayType || c == Double.class)
		{
			tc.setCellRenderer(new VCellRenderer(DisplayType.Number));
			if (readOnly)
			{
				tc.setCellEditor(new ROCellEditor());
				m_minWidth.add(new Integer(70));
			}
			else
			{
				tc.setCellEditor(new MiniCellEditor(c));
				m_minWidth.add(new Integer(80));
			}
			
			tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.Number));
		}
		//  Integer
		else if (DisplayType.Integer == displayType || c == Integer.class )
		{
			tc.setCellRenderer(new VCellRenderer(DisplayType.Integer));
			if (readOnly)
				tc.setCellEditor(new ROCellEditor());
			else
				tc.setCellEditor(new MiniCellEditor(c));
			m_minWidth.add(new Integer(30));
			
			tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.Number));
		}
		//  String
		else
		{
			tc.setCellRenderer(new VCellRenderer(DisplayType.String));
			if (readOnly)
				tc.setCellEditor(new ROCellEditor());
			else
				tc.setCellEditor(new MiniCellEditor(String.class));
			m_minWidth.add(new Integer(30));
			
			tc.setHeaderRenderer(new VHeaderRenderer(DisplayType.String));
		}
	//	log.fine( "Renderer=" + tc.getCellRenderer().toString() + ", Editor=" + tc.getCellEditor().toString());
	}   //  setColumnClass

	@Override
	public void itemStateChanged(ItemEvent e) {
		Object source = e.getSource();   
	      if (source instanceof AbstractButton == false) return;   
	      boolean checked = e.getStateChange() == ItemEvent.SELECTED;   
	      for(int x = 0, y = this.getRowCount(); x < y; x++)   
	      {   
	    	  setDynamicSelectedRow(x);
	    	  IDColumn col = (IDColumn)getValueAt(x, 0);
	    	  col.setSelected(checked);
	    	  this.setValueAt(col,x,0);  
	      } 
	}
	
	public int getDynamicSelectedRow() {
		return dynamicSelectedRow;
	}
	
	public void setDynamicSelectedRow(int dynamicSelectedRow) {
		this.dynamicSelectedRow = dynamicSelectedRow;
	}
}

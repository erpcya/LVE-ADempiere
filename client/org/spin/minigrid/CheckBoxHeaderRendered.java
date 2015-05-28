package org.spin.minigrid;

import java.awt.Component;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JCheckBox;
import javax.swing.JTable;
import javax.swing.UIManager;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumnModel;

import org.compiere.swing.CTable;

public class CheckBoxHeaderRendered extends JCheckBox implements TableCellRenderer, MouseListener {   
	private static final long serialVersionUID = 1L;
	private CheckBoxHeaderRendered rendererComponent;   
	private int column;   
	private boolean mousePressed = false;
	private JTable m_Table = null; 

	public CheckBoxHeaderRendered(ItemListener itemListener ,JTable table) {   
		rendererComponent = this;   
		rendererComponent.addItemListener(itemListener); 
		rendererComponent.setHorizontalAlignment(JCheckBox.CENTER);
		m_Table = table;
		
	}   
	public Component getTableCellRendererComponent(JTable table, Object value,   
			boolean isSelected, boolean hasFocus, int row, int column) {   
		
		if (table != null) {   
			JTableHeader header = table.getTableHeader();   
			if (header != null) {   
				rendererComponent.setForeground(header.getForeground());   
			    rendererComponent.setBackground(header.getBackground());   
			    rendererComponent.setFont(header.getFont());   
			    
			    header.addMouseListener(rendererComponent);   
			}   
		}   
		setColumn(column);  
		setBorder(UIManager.getBorder("TableHeader.cellBorder"));   
		return rendererComponent;   
	}   

	protected void setColumn(int column) {   
		this.column = column;   
	}
	
	public int getColumn() {   
		return column;   
	}
	
	protected void handleClickEvent(MouseEvent e) {   
		
		if (mousePressed) {   
			mousePressed=false;   
			//JTableHeader header = (JTableHeader)(e.getSource());   
			//JTable tableView = header.getTable();   
			TableColumnModel columnModel = m_Table.getColumnModel();   
			int viewColumn = columnModel.getColumnIndexAtX(e.getX());   
			int column = m_Table.convertColumnIndexToModel(viewColumn);   
 
			if (viewColumn == this.column && e.getClickCount() == 1 && column != -1) {   
				doClick();   
			}   
		}   
	}
	
	public void mouseClicked(MouseEvent e) {   
		handleClickEvent(e);   
		((JTableHeader)e.getSource()).repaint();   
	}
	
	public void mousePressed(MouseEvent e) {   
		mousePressed = true;   
	}
	@Override
	public void mouseReleased(MouseEvent e) {		
	}
	@Override
	public void mouseEntered(MouseEvent e) {		
	}
	@Override
	public void mouseExited(MouseEvent e) {		
	}
	
	public JTable getM_Table() {
		return m_Table;
	}
}  


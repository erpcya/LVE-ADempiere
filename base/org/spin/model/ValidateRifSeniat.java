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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpconsultoresyasociados.com             *
 *****************************************************************************/
package org.spin.model;

import java.io.IOException;
import java.net.URISyntaxException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.compiere.model.MSysConfig;
import org.w3c.dom.Document;

import org.xml.sax.SAXException;

public class ValidateRifSeniat {

	public ValidateRifSeniat(String p_Rif) {
		m_Rif=p_Rif;
		m_exists = false;
		try {
			readXML(p_Rif);
		} catch (ParserConfigurationException e) {
			m_error=e.getMessage();
		} catch (SAXException e) {
			m_error=e.getMessage();
		} catch (IOException e) {
			m_error= e.getMessage();
		} catch (URISyntaxException e) {
			m_error=e.getMessage();
		}
	}
	
	private boolean readXML(String p_Rif) throws ParserConfigurationException, SAXException, IOException, URISyntaxException
	{
		
		xmlBuilder = xmlParser.newDocumentBuilder();
		String url = MSysConfig.getValue("URL_SENIAT", "http://localhost/"); 
		Document xml = xmlBuilder.parse(url+p_Rif);
		//Normalizing XML	
		xml.getDocumentElement().normalize();
		m_Rif = xml.getDocumentElement().getAttributes().item(0).getNodeValue();
		m_Name = xml.getDocumentElement().getChildNodes().item(0).getTextContent();
		m_Agent=xml.getDocumentElement().getChildNodes().item(1).getTextContent();
		m_Contributor=xml.getDocumentElement().getChildNodes().item(2).getTextContent();
		m_exists = true;
		return m_exists;
	}
	
	public String getM_Rif() {
		return m_Rif;
	}
	public String getM_Name() {
		return m_Name;
	}
	public String getM_Contributor() {
		return m_Contributor;
	}
	public String getM_Agent() {
		return m_Agent;
	}
	public boolean isM_exists() {
		return m_exists;
	}
	
	public String getM_error() {
		return m_error;
	}

	private DocumentBuilderFactory xmlParser=DocumentBuilderFactory.newInstance();
	private DocumentBuilder xmlBuilder ;
	private String m_Rif;
	private String m_Name;
	private String m_Agent;
	private String m_Contributor;
	private boolean m_exists;
	private String m_error;
	
}

/**
 * 
 */
package org.spin.scriptlet;


import org.compiere.util.AmtInWords;
import org.compiere.util.Env;
import org.compiere.util.Language;

import net.sf.jasperreports.engine.JRDefaultScriptlet;
import net.sf.jasperreports.engine.JRScriptletException;

/**
 * Scriptlet Amt In Words
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 */
public class AmtInWordsScriptlet extends JRDefaultScriptlet {

	/**	Resource for Class AmtInWords				*/
	protected static final String RESOURCE			 = "org.compiere.util.AmtInWords";
	
	/**
	 * Amount In Words
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 07/05/2014, 12:07:50
	 * @param amount
	 * @param lang
	 * @return Amount In Words
	 * @throws JRScriptletException
	 * @throws Exception
	 */
	public String amtInWords(String amount, String lang) throws JRScriptletException, Exception{
		AmtInWords amt = null;
		//	Get Language
		System.out.println(lang);
		if(lang.equals("null"))
			lang = Env.getAD_Language(Env.getCtx());
		
		Language language = Language.getLanguage(lang);
		System.out.println(language);
		//	Instanced AmtInWords
		if(lang != null )
			amt = (AmtInWords) Class.forName(RESOURCE +"_"+language.getLanguageCode().toUpperCase()).newInstance();
		
		//	Evaluate amount
		if(amount.equals("null"))
			amount = "0.0";
		
		//amount = amount.replace(".", ",");
		
		System.out.println(amt.getAmtInWords(amount));
		return amt.getAmtInWords(amount);
				
	}
	
}

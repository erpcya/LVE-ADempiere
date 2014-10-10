/**
 * 
 */
package org.spin.scriptlet;


import net.sf.jasperreports.engine.JRDefaultScriptlet;
import net.sf.jasperreports.engine.JRScriptletException;

import org.compiere.util.AmtInWords;
import org.compiere.util.Env;
import org.compiere.util.Language;

/**
 * Scriptlet Amt In Words
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 */
public class AmtInWordsScriptlet extends JRDefaultScriptlet {
	
	public AmtInWordsScriptlet() {
	}
	/**	Resource for Class AmtInWords							*/
	protected static final String RESOURCE			 			= "org.compiere.util.AmtInWords";
	/**	Amount in words Scriptlet								*/
	private static AmtInWordsScriptlet AMT_IN_WORDS_SCRIPTLET	= null	;
	
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
		if(lang == null)
			lang = Env.getAD_Language(Env.getCtx());
		//
		Language language = Language.getLanguage(lang);
		//	Instanced AmtInWords
		if(lang != null)
			amt = (AmtInWords) Class.forName(RESOURCE +"_"+language.getLanguageCode().toUpperCase()).newInstance();
		//	Evaluate amount
		if(amount == null)
			amount = String.valueOf(Env.ZERO);
		//	Get Amount in Word
		String amtInWords = amt.getAmtInWords(amount);
		//	
		return amtInWords;
	}

	public static void main(String []arg) {
		AMT_IN_WORDS_SCRIPTLET = new AmtInWordsScriptlet(); 
		
		try {
			System.out.println(AMT_IN_WORDS_SCRIPTLET.amtInWords("12.4", "es_VE"));
		} catch (JRScriptletException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

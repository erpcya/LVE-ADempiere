-- Dec 17, 2014 10:12:52 AM VET
-- LVE ADempiere
UPDATE AD_Val_Rule SET Code='C_Invoice.C_BPartner_ID= @C_BPartner_ID@ AND DocStatus IN (''CO'') AND IsSOTrx = ''@IsSOTrx@'' AND C_DocTypeTarget_ID <> @C_DocTypeTarget_ID@ AND C_Invoice.IsPaid=''N''',Updated=TO_TIMESTAMP('2014-12-17 10:12:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52280
;


-- Dec 16, 2014 5:03:35 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almacén',Updated=TO_TIMESTAMP('2014-12-16 17:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53725 AND AD_Language='es_VE'
;

-- Dec 16, 2014 5:03:38 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almac',Updated=TO_TIMESTAMP('2014-12-16 17:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53725 AND AD_Language='es_MX'
;

-- Dec 16, 2014 5:03:42 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almacén',Updated=TO_TIMESTAMP('2014-12-16 17:03:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53725 AND AD_Language='es_MX'
;

-- Dec 16, 2014 5:05:48 PM VET
-- LVE ADempiere
UPDATE AD_Column SET DefaultValue='@M_Product_ID@!0', MandatoryLogic=NULL,Updated=TO_TIMESTAMP('2014-12-16 17:05:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74987
;

-- Dec 16, 2014 5:05:53 PM VET
-- LVE ADempiere
UPDATE AD_Column SET DefaultValue='@M_Product_Category_ID@!0', ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2014-12-16 17:05:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74988
;

-- Dec 16, 2014 5:06:49 PM VET
-- LVE ADempiere
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-12-16 17:06:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74988
;

-- Dec 16, 2014 5:07:45 PM VET
-- LVE ADempiere
UPDATE AD_Column SET DefaultValue='-1', ReadOnlyLogic='@M_Product_ID@!0',Updated=TO_TIMESTAMP('2014-12-16 17:07:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74987
;

-- Dec 16, 2014 5:07:54 PM VET
-- LVE ADempiere
UPDATE AD_Column SET ReadOnlyLogic='@M_Product_ID@!0',Updated=TO_TIMESTAMP('2014-12-16 17:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74988
;

-- Dec 16, 2014 5:08:03 PM VET
-- LVE ADempiere
UPDATE AD_Column SET ReadOnlyLogic='@M_Product_Category_ID@!0',Updated=TO_TIMESTAMP('2014-12-16 17:08:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74988
;

-- Dec 16, 2014 5:09:28 PM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_TIMESTAMP('2014-12-16 17:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53901
;

-- Dec 16, 2014 5:09:29 PM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=11,Updated=TO_TIMESTAMP('2014-12-16 17:09:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53901
;

-- Dec 16, 2014 6:00:22 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET MandatoryLogic=NULL, ReadOnlyLogic='@M_Product_ID@!0',Updated=TO_TIMESTAMP('2014-12-16 18:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74987
;

-- Dec 16, 2014 6:00:37 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.spin.model.CalloutProductReport.product',Updated=TO_TIMESTAMP('2014-12-16 18:00:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74988
;

-- Dec 16, 2014 6:00:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-12-16 18:00:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74989
;


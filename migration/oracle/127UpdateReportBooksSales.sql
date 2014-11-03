-- Sep 8, 2013 12:39:15 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:39:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67231
;

-- Sep 8, 2013 12:39:30 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-08 12:39:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67230
;

-- Sep 8, 2013 12:39:36 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-08 12:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67229
;

-- Sep 8, 2013 12:40:11 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=135,Updated=TO_DATE('2013-09-08 12:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67245
;

-- Sep 8, 2013 12:40:36 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:40:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67232
;

-- Sep 8, 2013 12:40:50 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_DATE('2013-09-08 12:40:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67237
;

-- Sep 8, 2013 12:41:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_DATE('2013-09-08 12:41:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67236
;

-- Sep 8, 2013 12:41:20 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, FieldLength=2,Updated=TO_DATE('2013-09-08 12:41:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67246
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='RetDocumentNo', Name='Ret Document No', PrintName='Ret Document No',Updated=TO_DATE('2013-09-08 12:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56252
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56252
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='RetDocumentNo', Name='Ret Document No', Description=NULL, Help=NULL WHERE AD_Element_ID=56252
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='RetDocumentNo', Name='Ret Document No', Description=NULL, Help=NULL, AD_Element_ID=56252 WHERE UPPER(ColumnName)='RETDOCUMENTNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='RetDocumentNo', Name='Ret Document No', Description=NULL, Help=NULL WHERE AD_Element_ID=56252 AND IsCentrallyMaintained='Y'
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Ret Document No', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56252) AND IsCentrallyMaintained='Y'
;

-- Sep 8, 2013 12:42:02 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Ret Document No', Name='Ret Document No' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56252)
;

-- Sep 8, 2013 12:42:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='No. Doc. Retenido.',PrintName='No. Doc. Retenido.',Updated=TO_DATE('2013-09-08 12:42:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56252 AND AD_Language='es_MX'
;

-- Sep 8, 2013 12:42:17 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67242
;

-- Sep 8, 2013 12:42:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:42:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67298
;

-- Sep 8, 2013 12:42:53 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:42:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67299
;

-- Sep 8, 2013 12:43:03 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67300
;

-- Sep 8, 2013 12:44:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67301
;

-- Sep 8, 2013 12:44:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67303
;

-- Sep 8, 2013 12:44:34 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=10, FieldLength=60,Updated=TO_DATE('2013-09-08 12:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67304
;

-- Sep 8, 2013 12:44:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_DATE('2013-09-08 12:44:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67247
;

-- Sep 8, 2013 12:45:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=18, AD_Val_Rule_ID=129,Updated=TO_DATE('2013-09-08 12:45:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67224
;

-- Sep 8, 2013 12:45:17 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=18, AD_Val_Rule_ID=130,Updated=TO_DATE('2013-09-08 12:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67225
;

-- Sep 8, 2013 12:45:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=30, AD_Val_Rule_ID=220,Updated=TO_DATE('2013-09-08 12:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67226
;


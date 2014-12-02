-- Jul 30, 2013 10:17:46 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56067,0,'DocAffected',TO_DATE('2013-07-30 10:17:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Doc Affected','Doc Affected',TO_DATE('2013-07-30 10:17:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 10:17:46 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56067 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 10:18:00 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Documento Afectado',PrintName='Documento Afectado',Updated=TO_DATE('2013-07-30 10:18:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067 AND AD_Language='es_MX'
;

-- Jul 30, 2013 10:18:39 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66490,56067,0,18,170,333,'DocAffected',TO_DATE('2013-07-30 10:18:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Affected',0,TO_DATE('2013-07-30 10:18:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 30, 2013 10:18:39 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66490 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


-- 30/07/2013 04:36:55 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='DocAffected_ID',Updated=TO_DATE('2013-07-30 16:36:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067
;

-- 30/07/2013 04:36:55 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067
;


-- Jul 30, 2013 10:18:39 AM VET
-- LVE Withholding
--INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66490,56067,0,18,170,333,'DocAffected',TO_TIMESTAMP('2013-07-30 10:18:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Affected',0,TO_TIMESTAMP('2013-07-30 10:18:39','YYYY-MM-DD HH24:MI:SS'),100,0)
--;

-- Jul 30, 2013 10:18:39 AM VET
-- LVE Withholding
--INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66490 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
--;


-- Dec 12, 2013 8:32:49 PM VET
-- LVE Withholding
UPDATE AD_Element SET AD_Reference_ID=18, AD_Reference_Value_ID=336,Updated=TO_TIMESTAMP('2013-12-12 20:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067
;

-- Dec 12, 2013 8:33:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70655,56067,0,18,336,318,52280,'DocAffected_ID',TO_TIMESTAMP('2013-12-12 20:33:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Affected',0,TO_TIMESTAMP('2013-12-12 20:33:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 12, 2013 8:33:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70655 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 12, 2013 8:33:47 PM VET
-- LVE Withholding
UPDATE AD_Element SET AD_Reference_ID=20,Updated=TO_TIMESTAMP('2013-12-12 20:33:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56127
;

-- Dec 12, 2013 8:34:59 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70655,71645,0,263,TO_TIMESTAMP('2013-12-12 20:34:57','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Affected',TO_TIMESTAMP('2013-12-12 20:34:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 12, 2013 8:34:59 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71645 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;


-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71646
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71648
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71647
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71649
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2775
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2764
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2768
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6935
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7794
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7795
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2786
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2780
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2778
;

-- Dec 12, 2013 8:35:43 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2013-12-12 20:35:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2771
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8657
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10485
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6564
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2777
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3663
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3899
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13700
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53257
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53258
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 8:35:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_TIMESTAMP('2013-12-12 20:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71644
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71644
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6935
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7794
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7795
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2786
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2780
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2778
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2771
;

-- Dec 12, 2013 8:38:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2013-12-12 20:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8657
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10485
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6564
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2777
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3663
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3899
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13700
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53257
;

-- Dec 12, 2013 8:38:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_TIMESTAMP('2013-12-12 20:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53258
;

-- Dec 12, 2013 8:39:11 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-12-12 20:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71644
;

-- Dec 12, 2013 8:40:05 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='DocStatus ! ''PR''',Updated=TO_TIMESTAMP('2013-12-12 20:40:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70655
;

-- Dec 12, 2013 8:41:00 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='DocStatus=''PR''',Updated=TO_TIMESTAMP('2013-12-12 20:41:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70655
;

-- Dec 12, 2013 8:44:02 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ IN (''API'',''ARI'',''APC'',''ARC)',Updated=TO_TIMESTAMP('2013-12-12 20:44:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68059
;

-- Dec 12, 2013 8:44:07 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ IN (''API'',''ARI'',''APC'',''ARC)',Updated=TO_TIMESTAMP('2013-12-12 20:44:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68748
;

-- Dec 12, 2013 8:45:22 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  |@DocBaseType@ = ''APC'' |@DocBaseType@ =''ARC''',Updated=TO_TIMESTAMP('2013-12-12 20:45:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68059
;

-- Dec 12, 2013 8:45:29 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  |@DocBaseType@ = ''APC'' |@DocBaseType@ =''ARC''',Updated=TO_TIMESTAMP('2013-12-12 20:45:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68748
;


-- Dec 12, 2013 8:46:26 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70655,71651,0,290,TO_TIMESTAMP('2013-12-12 20:46:24','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Affected',TO_TIMESTAMP('2013-12-12 20:46:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 12, 2013 8:46:26 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71651 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71650
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6936
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7796
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7797
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3343
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3337
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3335
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3329
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10486
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6532
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3334
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3670
;

-- Dec 12, 2013 8:47:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_TIMESTAMP('2013-12-12 20:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3900
;

-- Dec 12, 2013 8:47:25 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-12-12 20:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71650
;

-- Dec 12, 2013 8:47:32 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2013-12-12 20:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 8:47:32 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2013-12-12 20:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71650
;

-- Dec 12, 2013 8:48:06 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-12-12 20:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71650
;

-- Dec 12, 2013 9:00:11 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  |@DocBaseType@ = ''APC'' |@DocBaseType@ =''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:00:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:01:12 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='!@DocBaseType@ =''API'' | !@DocBaseType@ =''ARI''  | !@DocBaseType@ = ''APC'' | !@DocBaseType@ =''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:01:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 9:10:46 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI''  | @DocBaseType@=''APC'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:11:45 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI''  | @DocBaseType@=''APC'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:11:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 9:12:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''APC'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:12:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 9:16:34 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''APC'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:16:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:17:38 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''APC'' | @DocBaseType@=''ARC'' | @DocBaseType@=''ARI''',Updated=TO_TIMESTAMP('2013-12-12 21:17:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:18:16 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''APC'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:18:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:19:26 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:19:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:22:48 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''APC''',Updated=TO_TIMESTAMP('2013-12-12 21:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 9:19:26 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2013-12-12 21:19:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71645
;

-- Dec 12, 2013 9:22:48 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2013-12-12 21:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71651
;

-- Dec 12, 2013 9:24:41 PM VET
-- LVE Withholding
UPDATE AD_Column SET MandatoryLogic=' @DocBaseType@=''APC'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-12-12 21:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70655
;

-- Dec 13, 2013 6:43:43 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-12-13 06:43:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70656
;

-- Dec 13, 2013 6:54:42 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsAlwaysUpdateable='N',Updated=TO_TIMESTAMP('2013-12-13 06:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70656
;

-- Dec 13, 2013 6:55:20 AM VET
-- LVE Withholding
UPDATE AD_Column SET MandatoryLogic=NULL,Updated=TO_TIMESTAMP('2013-12-13 06:55:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70655
;

-- Dec 13, 2013 7:03:48 AM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='C_Invoice.C_BPartner_ID=@C_BPartner_ID@ 
AND C_Invoice.IsPaid=''N'' 
AND IsSOTrx = ''@IsSOTrx@'' 
AND C_DocTypeTarget_ID IN (SELECT C_DocType_ID FROM C_DocType WHERE C_Invoice.C_DocTypeTarget_ID = C_DocType.C_DocType_ID AND DocBaseType IN (''API'',''ARI''))',Updated=TO_TIMESTAMP('2013-12-13 07:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52280
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='DocAffected_ID',Updated=TO_TIMESTAMP('2013-08-02 12:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL, AD_Element_ID=56067 WHERE UPPER(ColumnName)='DOCAFFECTED_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067 AND IsCentrallyMaintained='Y'
;

-- 2/08/2013 12:18:56 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Doc. Afectado',PrintName='Doc. Afectado',Updated=TO_TIMESTAMP('2013-08-02 12:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067 AND AD_Language='es_MX'
;

-- Nov 27, 2014 4:21:50 PM VET
-- LVE-Withholding
UPDATE AD_Val_Rule SET Code='C_Invoice.C_BPartner_ID= @C_BPartner_ID@ AND C_Invoice.IsPaid=''N'' AND DocStatus IN (''CO'') AND IsSOTrx = ''@IsSOTrx@'' AND C_DocTypeTarget_ID <> @C_DocTypeTarget_ID@',Updated=TO_DATE('2014-11-27 16:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52280
;

-- Nov 27, 2014 6:14:04 PM VET
-- LVE-Withholding
UPDATE AD_Val_Rule SET Code='C_Invoice.C_BPartner_ID= @C_BPartner_ID@ 
	AND DocStatus IN (''CO'') 
	AND IsSOTrx = ''@IsSOTrx@'' 
	AND C_DocTypeTarget_ID <> @C_DocTypeTarget_ID@
	AND DocAffected_ID IS NULL',Updated=TO_DATE('2014-11-27 18:14:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52280
;

-- Nov 27, 2014 8:15:09 PM VET
-- LVE-Withholding
UPDATE AD_Val_Rule SET Code='C_Invoice.C_BPartner_ID= @C_BPartner_ID@ AND DocStatus IN (''CO'') AND IsSOTrx = ''@IsSOTrx@'' AND C_DocTypeTarget_ID <> @C_DocTypeTarget_ID@ AND DocAffected_ID IS NULL',Updated=TO_DATE('2014-11-27 20:15:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52280
;


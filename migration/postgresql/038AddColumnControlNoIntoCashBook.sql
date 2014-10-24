-- 22/08/2013 06:24:40 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66863,56068,0,10,410,'ControlNo',TO_TIMESTAMP('2013-08-22 18:24:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',15,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No',0,TO_TIMESTAMP('2013-08-22 18:24:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/08/2013 06:24:40 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66863 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/08/2013 06:24:56 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66863,68280,0,339,TO_TIMESTAMP('2013-08-22 18:24:55','YYYY-MM-DD HH24:MI:SS'),100,15,'ECA02','Y','Y','Y','N','N','N','N','N','Control No',TO_TIMESTAMP('2013-08-22 18:24:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 06:24:56 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68280 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/08/2013 06:25:08 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68280
;

-- 22/08/2013 06:25:08 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=4250
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=4194
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68273
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68270
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=4197
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=4193
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=68275
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=5119
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=5120
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=68267
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=68278
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=68279
;

-- 22/08/2013 06:25:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=68274
;

-- 22/08/2013 06:25:20 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-08-22 18:25:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68277
;

-- 22/08/2013 06:25:24 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-22 18:25:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68280
;

-- 22/08/2013 06:27:30 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-22 18:27:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68270
;

-- 22/08/2013 06:27:44 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-22 18:27:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- 22/08/2013 06:27:55 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-22 18:27:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;


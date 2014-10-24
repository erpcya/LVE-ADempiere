-- 2/08/2013 09:14:59 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66494,56068,0,10,318,'ControlNo',TO_TIMESTAMP('2013-08-02 09:14:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No',0,TO_TIMESTAMP('2013-08-02 09:14:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 2/08/2013 09:14:59 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66494 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 2/08/2013 09:15:51 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66494,67958,0,290,TO_TIMESTAMP('2013-08-02 09:15:50','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Control No',TO_TIMESTAMP('2013-08-02 09:15:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/08/2013 09:15:51 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67958 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67958
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3344
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=67902
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3348
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3333
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3325
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3326
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3324
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3350
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3328
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=8649
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3322
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3355
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3354
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3346
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3353
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3331
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=4246
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=4247
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=3332
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3323
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3327
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=6936
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7796
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7797
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3343
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3337
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3335
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3329
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=10486
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=6532
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3334
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3670
;

-- 2/08/2013 09:16:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3900
;

-- 2/08/2013 09:16:17 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-02 09:16:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67958
;

-- 2/08/2013 09:19:10 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-02 09:19:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67934
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67937
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3371
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3360
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3366
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=56252
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=56253
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=5825
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=56254
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=10823
;

-- 2/08/2013 09:22:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3365
;

-- 2/08/2013 09:22:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3374
;

-- 2/08/2013 09:22:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=10824
;

-- 2/08/2013 09:22:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3372
;

-- 2/08/2013 09:22:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3373
;

-- 2/08/2013 09:22:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3364
;

-- 2/08/2013 09:22:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=6430
;


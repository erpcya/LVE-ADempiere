-- Jul 30, 2014 12:11:49 PM CEST
-- Custom User File Path
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73997,50022,0,38,114,'File_Directory',TO_DATE('2014-07-30 12:11:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','File_Directory',0,TO_DATE('2014-07-30 12:11:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 30, 2014 12:11:49 PM CEST
-- Custom User File Path
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73997 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 30, 2014 12:12:37 PM CEST
-- Custom User File Path
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73997,74275,0,118,TO_DATE('2014-07-30 12:12:35','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','N','Y','Y','N','N','N','N','N','File_Directory',0,310,0,TO_DATE('2014-07-30 12:12:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2014 12:12:37 PM CEST
-- Custom User File Path
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74275 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 30, 2014 12:13:03 PM CEST
-- Custom User File Path
UPDATE AD_Field SET DisplayLength=60,Updated=TO_DATE('2014-07-30 12:13:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74275
;

-- Jul 30, 2014 12:13:57 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2014-07-30 12:13:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=52010
;

-- Jul 30, 2014 12:13:57 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2014-07-30 12:13:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6515
;

-- Jul 30, 2014 12:13:57 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2014-07-30 12:13:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6517
;

-- Jul 30, 2014 12:13:57 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-07-30 12:13:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6514
;

-- Jul 30, 2014 12:13:57 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-07-30 12:13:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6518
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11679
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12324
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12323
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74275
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5883
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5884
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4261
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10491
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6511
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12640
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6513
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11525
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6520
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8342
;

-- Jul 30, 2014 12:13:58 PM CEST
-- Custom User File Path
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2014-07-30 12:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6519
;


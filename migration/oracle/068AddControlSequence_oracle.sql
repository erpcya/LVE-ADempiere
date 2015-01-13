-- Nov 3, 2013 11:27:23 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56588,0,'ControlNoSequence_ID',TO_DATE('2013-11-03 11:27:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','Control No Sequence','Control No Sequence',TO_DATE('2013-11-03 11:27:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 3, 2013 11:27:23 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56588 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 3, 2013 11:27:38 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Secuencia Nro de Control',PrintName='Secuencia Nro de Control',Updated=TO_DATE('2013-11-03 11:27:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56588 AND AD_Language='es_MX'
;

-- Nov 3, 2013 11:27:44 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Secuencia Nro de Control',PrintName='Secuencia Nro de Control',Updated=TO_DATE('2013-11-03 11:27:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56588 AND AD_Language='es_VE'
;

-- Nov 3, 2013 11:28:47 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69768,56588,0,18,128,217,'ControlNoSequence_ID',TO_DATE('2013-11-03 11:28:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No Sequence',TO_DATE('2013-11-03 11:28:44','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 3, 2013 11:28:47 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69768 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 3, 2013 11:28:57 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD ControlNoSequence_ID NUMBER(10) DEFAULT NULL 
;

-- Nov 3, 2013 11:29:23 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,69768,70260,0,167,TO_DATE('2013-11-03 11:29:19','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','Y','N','N','N','N','N','Control No Sequence',TO_DATE('2013-11-03 11:29:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 3, 2013 11:29:23 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70260 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 3, 2013 11:29:26 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70261 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 3, 2013 11:30:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-11-03 11:30:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70261
;

-- Nov 3, 2013 11:30:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-11-03 11:30:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=807
;

-- Nov 3, 2013 11:30:12 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-03 11:30:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=808
;

-- Nov 3, 2013 11:30:12 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-03 11:30:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70260
;

-- Nov 3, 2013 11:55:57 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66494,70262,0,263,TO_DATE('2013-11-03 11:55:55','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','N','Y','Y','Y','N','N','N','N','N','Control No',0,460,0,TO_DATE('2013-11-03 11:55:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 3, 2013 11:55:57 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=70262 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Nov 3, 2013 11:56:53 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-11-03 11:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70262
;

-- Nov 3, 2013 11:56:53 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-11-03 11:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2962
;

-- Nov 3, 2013 11:56:53 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-11-03 11:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2959
;

-- Nov 3, 2013 11:56:53 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-11-03 11:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2954
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6565
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2958
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2776
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2766
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2767
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2765
;

-- Nov 3, 2013 11:56:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2013-11-03 11:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2961
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2770
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8648
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2763
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3273
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2953
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2956
;

-- Nov 3, 2013 11:56:55 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_DATE('2013-11-03 11:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3112
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2774
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69300
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70216
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2775
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2764
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2768
;

-- Nov 3, 2013 11:56:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2013-11-03 11:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6935
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7794
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7795
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2786
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2780
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2778
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2771
;

-- Nov 3, 2013 11:56:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_DATE('2013-11-03 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8657
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10485
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6564
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2777
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3663
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3899
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13700
;

-- Nov 3, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_DATE('2013-11-03 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53257
;

-- Nov 3, 2013 11:56:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_DATE('2013-11-03 11:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69662
;

-- Nov 3, 2013 11:56:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460,Updated=TO_DATE('2013-11-03 11:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=53258
;

-- Nov 3, 2013 11:59:51 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-11-03 11:59:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70262
;


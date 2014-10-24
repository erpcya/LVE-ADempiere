-- Oct 23, 2014 4:09:37 PM VET
-- LVE ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57525,0,28,'ChangeWarehouse',TO_TIMESTAMP('2014-10-23 16:09:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Change Warehouse','Change Warehouse',TO_TIMESTAMP('2014-10-23 16:09:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:09:37 PM VET
-- LVE ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57525 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 23, 2014 4:09:54 PM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET Name='Cambiar Almacén',PrintName='Cambiar Almacén',Updated=TO_TIMESTAMP('2014-10-23 16:09:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57525 AND AD_Language='es_MX'
;

-- Oct 23, 2014 4:09:58 PM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET Name='Cambiar Almacén',PrintName='Cambiar Almacén',Updated=TO_TIMESTAMP('2014-10-23 16:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57525 AND AD_Language='es_VE'
;

-- Oct 23, 2014 4:10:31 PM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74601,57525,0,28,259,'ChangeWarehouse',TO_TIMESTAMP('2014-10-23 16:10:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Change Warehouse',0,TO_TIMESTAMP('2014-10-23 16:10:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 23, 2014 4:10:31 PM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74601 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 23, 2014 4:11:34 PM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,74601,74737,0,186,TO_TIMESTAMP('2014-10-23 16:11:24','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','Y','N','N','N','N','N','Change Warehouse',0,540,0,TO_TIMESTAMP('2014-10-23 16:11:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:11:34 PM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74737 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 23, 2014 4:12:25 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-10-23 16:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74737
;

-- Oct 23, 2014 4:12:25 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-10-23 16:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2877
;

-- Oct 23, 2014 4:12:25 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-10-23 16:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1110
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1114
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10124
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55410
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55411
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=55412
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1108
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1109
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2878
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56446
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1107
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1104
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1077
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1103
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8653
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1098
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3272
;

-- Oct 23, 2014 4:12:26 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350,Updated=TO_TIMESTAMP('2014-10-23 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2112
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2109
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=370,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3113
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=380,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1099
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=390,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56906
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=400,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2593
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=410,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2589
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1324
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7038
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7826
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7825
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1112
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=470,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1113
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=480,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1082
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=490,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1084
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=500,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6560
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=510,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1083
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=520,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3660
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=530,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=52014
;

-- Oct 23, 2014 4:12:27 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=540,Updated=TO_TIMESTAMP('2014-10-23 16:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58037
;

-- Oct 23, 2014 4:12:28 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=550,Updated=TO_TIMESTAMP('2014-10-23 16:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000447
;

-- Oct 23, 2014 4:12:28 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=560,Updated=TO_TIMESTAMP('2014-10-23 16:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000448
;

-- Oct 23, 2014 4:12:28 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=570,Updated=TO_TIMESTAMP('2014-10-23 16:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000450
;

-- Oct 23, 2014 4:12:28 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=580,Updated=TO_TIMESTAMP('2014-10-23 16:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000451
;

-- Oct 23, 2014 4:12:28 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=590,Updated=TO_TIMESTAMP('2014-10-23 16:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000452
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53708,'org.spin.process.ChangeWarehouse','N',TO_TIMESTAMP('2014-10-23 16:16:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Change Warehouse','Y',0,0,TO_TIMESTAMP('2014-10-23 16:16:23','YYYY-MM-DD HH24:MI:SS'),100,'prc_ChangeWarehouse ChangeWarehouse')
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53708 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53708,0,TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53708,102,TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53708,103,TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53708,50001,TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:16:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53708,50002,TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-10-23 16:16:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:19:13 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53708,54994,19,'M_Warehouse_ID',TO_TIMESTAMP('2014-10-23 16:19:09','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','Y','N','Warehouse',10,TO_TIMESTAMP('2014-10-23 16:19:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:19:13 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54994 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 23, 2014 4:19:27 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,561,0,53708,54995,19,'C_OrderLine_ID',TO_TIMESTAMP('2014-10-23 16:19:25','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02',22,'The Sales Order Line is a unique identifier for a line in an order.','Y','Y','N','N','Sales Order Line',20,TO_TIMESTAMP('2014-10-23 16:19:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 23, 2014 4:19:27 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54995 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Oct 23, 2014 4:37:26 PM VET
-- LVE ADempiere
UPDATE AD_Column SET AD_Process_ID=53708,Updated=TO_TIMESTAMP('2014-10-23 16:37:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74601
;

-- Oct 23, 2014 4:38:00 PM VET
-- LVE ADempiere
UPDATE AD_Field SET DisplayLogic='@DocStatus@ = ''CO''',Updated=TO_TIMESTAMP('2014-10-23 16:38:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74737
;

-- Oct 23, 2014 4:42:24 PM VET
-- LVE ADempiere
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2014-10-23 16:42:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74601
;

-- Oct 23, 2014 4:47:09 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=203,Updated=TO_TIMESTAMP('2014-10-23 16:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Oct 23, 2014 9:15:01 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-10-23 21:15:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Oct 23, 2014 9:16:30 PM VET
-- LVE ADempiere
ALTER TABLE C_Order ADD COLUMN ChangeWarehouse CHAR(1) DEFAULT NULL 
;


-- Jan 13, 2015 3:58:58 PM VET
-- LVE ADempiere
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53731,'org.spin.process.CategoryProductionReverse','N',TO_DATE('2015-01-13 15:58:50','YYYY-MM-DD HH24:MI:SS'),100,'Create a Reverse Document from Production','ECA02','Y','N','N','N','N','Production Reverse','Y',0,0,TO_DATE('2015-01-13 15:58:50','YYYY-MM-DD HH24:MI:SS'),100,'M_ProductionReverse')
;

-- Jan 13, 2015 3:58:58 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53731 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 13, 2015 3:58:58 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53731,0,TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 3:58:58 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53731,102,TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 3:58:58 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53731,103,TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 3:58:58 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53731,50001,TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 3:58:59 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53731,50002,TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2015-01-13 15:58:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 3:59:12 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Anular Producción',Updated=TO_DATE('2015-01-13 15:59:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53731 AND AD_Language='es_MX'
;

-- Jan 13, 2015 3:59:18 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Anular Producción',Description='Crea un Documento de Anulación',Updated=TO_DATE('2015-01-13 15:59:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53731 AND AD_Language='es_VE'
;

-- Jan 13, 2015 3:59:25 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Description='Crea un Documento de Anulación',Help='En Base al Documento Actual se crea un Documento de Anulación, la Fecha del Movimiento es Opcional',Updated=TO_DATE('2015-01-13 15:59:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53731 AND AD_Language='es_MX'
;

-- Jan 13, 2015 3:59:28 PM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Help='En Base al Documento Actual se crea un Documento de Anulación, la Fecha del Movimiento es Opcional',Updated=TO_DATE('2015-01-13 15:59:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53731 AND AD_Language='es_VE'
;

-- Jan 13, 2015 3:59:55 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1037,0,53731,55102,15,'MovementDate',TO_DATE('2015-01-13 15:59:53','YYYY-MM-DD HH24:MI:SS'),100,'Date a product was moved in or out of inventory','ECA02',7,'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Y','Y','N','N','Movement Date',10,TO_DATE('2015-01-13 15:59:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 3:59:55 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55102 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 13, 2015 4:00:12 PM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75412,1476,0,53731,28,325,'IsReversal',TO_DATE('2015-01-13 16:00:10','YYYY-MM-DD HH24:MI:SS'),100,'N','This is a reversing transaction','U',1,'The Reversal check box indicates if this is a reversal of a prior transaction.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reversal',0,TO_DATE('2015-01-13 16:00:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 13, 2015 4:00:12 PM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75412 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 13, 2015 4:00:22 PM VET
-- LVE ADempiere
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2015-01-13 16:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75412
;

-- Jan 13, 2015 4:31:51 PM VET
-- LVE ADempiere
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53768,TO_DATE('2015-01-13 16:31:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','M_Production',TO_DATE('2015-01-13 16:31:50','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Jan 13, 2015 4:31:51 PM VET
-- LVE ADempiere
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53768 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jan 13, 2015 4:32:30 PM VET
-- LVE ADempiere
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,3604,3596,0,53768,325,TO_DATE('2015-01-13 16:32:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2015-01-13 16:32:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 4:32:47 PM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75413,53457,0,18,53768,325,'Reversal_ID',TO_DATE('2015-01-13 16:32:44','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal','U',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reversal ID',0,TO_DATE('2015-01-13 16:32:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 13, 2015 4:32:47 PM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75413 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 13, 2015 4:32:54 PM VET
-- LVE ADempiere
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2015-01-13 16:32:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75413
;

-- Jan 13, 2015 4:34:43 PM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75412,75290,0,319,TO_DATE('2015-01-13 16:34:40','YYYY-MM-DD HH24:MI:SS'),100,'This is a reversing transaction',0,'@IsReversal@=N','ECA02','The Reversal check box indicates if this is a reversal of a prior transaction.','N','Y','N','Y','Y','N','N','N','N','Y','Reversal',0,180,0,TO_DATE('2015-01-13 16:34:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 4:34:43 PM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75290 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 13, 2015 4:35:38 PM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75413,75291,0,319,TO_DATE('2015-01-13 16:35:35','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal',0,'@Reversal_ID@ > 0','ECA02','N','Y','N','Y','Y','N','N','N','Y','Y','Reversal ID',0,190,0,TO_DATE('2015-01-13 16:35:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 13, 2015 4:35:38 PM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75291 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 13, 2015 4:38:40 PM VET
-- LVE ADempiere
ALTER TABLE M_Production ADD IsReversal CHAR(1) DEFAULT 'N'
;

-- Jan 13, 2015 4:38:46 PM VET
-- LVE ADempiere
ALTER TABLE M_Production ADD Reversal_ID NUMBER(10) DEFAULT NULL 
;


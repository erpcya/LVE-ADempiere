-- Apr 3, 2014 4:22:43 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57110,0,20,'IsPrintSetControlNo',TO_DATE('2014-04-03 16:22:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Print Set Control No','Print Set Control No',TO_DATE('2014-04-03 16:22:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 3, 2014 4:22:44 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57110 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 3, 2014 4:32:12 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Impresión Sobreescribe No. Control',PrintName='Impresión Sobreescribe No. Control',Updated=TO_DATE('2014-04-03 16:32:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57110 AND AD_Language='es_MX'
;

-- Apr 3, 2014 4:32:19 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Impresión Sobreescribe No. Control',PrintName='Impresión Sobreescribe No. Control',Updated=TO_DATE('2014-04-03 16:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57110 AND AD_Language='es_VE'
;

-- Apr 3, 2014 4:33:06 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72596,57110,0,20,217,'IsPrintSetControlNo',TO_DATE('2014-04-03 16:33:04','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Print Set Control No',0,TO_DATE('2014-04-03 16:33:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 3, 2014 4:33:06 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72596 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 3, 2014 4:33:20 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72596,73267,0,167,TO_DATE('2014-04-03 16:33:18','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Print Set Control No',TO_DATE('2014-04-03 16:33:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 3, 2014 4:33:20 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73267 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 3, 2014 4:33:59 PM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD IsPrintSetControlNo CHAR(1) DEFAULT 'N' CHECK (IsPrintSetControlNo IN ('Y','N'))
;

-- Apr 3, 2014 4:35:25 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72597,57110,0,20,53751,'IsPrintSetControlNo',TO_DATE('2014-04-03 16:35:21','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Print Set Control No',0,TO_DATE('2014-04-03 16:35:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 3, 2014 4:35:25 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72597 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 3, 2014 4:35:47 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72597,73268,0,53893,TO_DATE('2014-04-03 16:35:45','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Print Set Control No',TO_DATE('2014-04-03 16:35:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 3, 2014 4:35:47 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73268 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 3, 2014 4:36:01 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-04-03 16:36:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73268
;

-- Apr 3, 2014 4:36:23 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72597,73269,0,53894,TO_DATE('2014-04-03 16:36:21','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Print Set Control No',TO_DATE('2014-04-03 16:36:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 3, 2014 4:36:23 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73269 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 3, 2014 4:36:33 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-04-03 16:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73269
;

-- Apr 3, 2014 5:09:01 PM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.SetControlNo',Updated=TO_DATE('2014-04-03 17:09:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=116
;

-- Apr 3, 2014 5:26:41 PM VET
-- LVE Withholding
UPDATE AD_Process SET IsReport='N',Updated=TO_DATE('2014-04-03 17:26:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=116
;

-- Apr 3, 2014 5:50:34 PM VET
-- LVE Withholding
UPDATE AD_Process SET IsReport='Y',Updated=TO_DATE('2014-04-03 17:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=116
;

-- Apr 4, 2014 10:47:01 AM VET
-- LVE Withholding
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53122,516,TO_DATE('2014-04-04 10:46:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Invoice Completed or Closed',TO_DATE('2014-04-04 10:46:57','YYYY-MM-DD HH24:MI:SS'),100,'DocStatus IN (''CO'',''CL'')')
;

-- Apr 4, 2014 10:47:10 AM VET
-- LVE Withholding
UPDATE AD_Process SET AD_ReportView_ID=53122,Updated=TO_DATE('2014-04-04 10:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=116
;

-- Apr 4, 2014 10:47:15 AM VET
-- LVE Withholding
UPDATE AD_Process SET ShowHelp='S',Updated=TO_DATE('2014-04-04 10:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=116
;


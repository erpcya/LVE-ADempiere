-- Feb 9, 2015 9:16:45 AM VET
-- LVE ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57841,0,20,'IsAutoAllocation',TO_DATE('2015-02-09 09:16:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Auto Allocation','Auto Allocation',TO_DATE('2015-02-09 09:16:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 9, 2015 9:16:45 AM VET
-- LVE ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57841 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 9, 2015 9:16:52 AM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET Name='Asignación automática',PrintName='Asignación automática',Updated=TO_DATE('2015-02-09 09:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57841 AND AD_Language='es_MX'
;

-- Feb 9, 2015 9:16:56 AM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET Name='Asignación automática',PrintName='Asignación automática',Updated=TO_DATE('2015-02-09 09:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57841 AND AD_Language='es_VE'
;

-- Feb 9, 2015 9:18:21 AM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75754,57841,0,20,217,'IsAutoAllocation',TO_DATE('2015-02-09 09:18:19','YYYY-MM-DD HH24:MI:SS'),100,'D',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Auto Allocation',0,TO_DATE('2015-02-09 09:18:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 9, 2015 9:18:21 AM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75754 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 9, 2015 9:18:31 AM VET
-- LVE ADempiere
ALTER TABLE C_DocType ADD IsAutoAllocation CHAR(1) DEFAULT 'Y'  CHECK (IsAutoAllocation IN ('Y','N'))
;

-- Feb 9, 2015 9:18:45 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75754,76063,0,167,TO_DATE('2015-02-09 09:18:44','YYYY-MM-DD HH24:MI:SS'),100,1,'D','Y','Y','Y','N','N','N','N','N','Auto Allocation',TO_DATE('2015-02-09 09:18:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 9, 2015 9:18:45 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=76063 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 9, 2015 9:18:46 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,15806,76064,0,167,TO_DATE('2015-02-09 09:18:45','YYYY-MM-DD HH24:MI:SS'),100,'Index the document for the internal search engine',1,'D','For cross document search, the document can be indexed for faster search (Container, Document Type, Request Type)','Y','Y','Y','N','N','N','N','N','Indexed',TO_DATE('2015-02-09 09:18:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 9, 2015 9:18:46 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=76064 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 9, 2015 9:21:49 AM VET
-- LVE ADempiere
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ = ''API'' | @DocBaseType@ = ''ARI'' | @DocBaseType@ = '''' | @DocBaseType@ = ''''',Updated=TO_DATE('2015-02-09 09:21:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=76063
;

-- Feb 9, 2015 9:22:43 AM VET
-- LVE ADempiere
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ = ''API'' | @DocBaseType@ = ''ARI'' | @DocBaseType@ = ''APC'' | @DocBaseType@ = ''ARC''',Updated=TO_DATE('2015-02-09 09:22:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=76063
;


-- Feb 11, 2014 5:25:01 PM VET
-- LVE Withholding
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53751,'N',TO_DATE('2014-02-11 17:24:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'WH User Doc Sequence','L','LVE_WH_UserDocSequence',TO_DATE('2014-02-11 17:24:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:25:01 PM VET
-- LVE Withholding
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53751 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Feb 11, 2014 5:25:03 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71589,102,0,19,53751,129,'AD_Client_ID',TO_DATE('2014-02-11 17:25:01','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_DATE('2014-02-11 17:25:01','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:03 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71589 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:05 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71590,113,0,19,53751,104,'AD_Org_ID',TO_DATE('2014-02-11 17:25:03','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_DATE('2014-02-11 17:25:03','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:05 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71590 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:08 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71591,348,0,20,53751,'IsActive',TO_DATE('2014-02-11 17:25:05','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2014-02-11 17:25:05','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:08 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71591 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:10 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71592,245,0,16,53751,'Created',TO_DATE('2014-02-11 17:25:08','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_DATE('2014-02-11 17:25:08','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:10 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71592 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:12 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71593,607,0,16,53751,'Updated',TO_DATE('2014-02-11 17:25:10','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_DATE('2014-02-11 17:25:10','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:12 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71593 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71594,246,0,19,110,53751,'CreatedBy',TO_DATE('2014-02-11 17:25:12','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_DATE('2014-02-11 17:25:12','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71594 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:16 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71595,608,0,19,110,53751,'UpdatedBy',TO_DATE('2014-02-11 17:25:14','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_DATE('2014-02-11 17:25:14','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:16 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71595 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:17 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57035,0,'LVE_WH_UserDocSequence_ID',TO_DATE('2014-02-11 17:25:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','WH User Doc Sequence ID','WH User Doc Sequence ID',TO_DATE('2014-02-11 17:25:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:25:17 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57035 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 11, 2014 5:25:19 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,71596,57035,0,13,53751,'LVE_WH_UserDocSequence_ID',TO_DATE('2014-02-11 17:25:17','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',22,'Y','Y','N','N','N','Y','Y','N','N','N','N','WH User Doc Sequence ID',TO_DATE('2014-02-11 17:25:17','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Feb 11, 2014 5:25:19 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71596 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:25:20 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53893,TO_DATE('2014-02-11 17:25:19','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_WH_UserDocSequence',1,'Y','N','Y','Y','LVE_WH_UserDocSequence','N',1000000,TO_DATE('2014-02-11 17:25:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:25:45 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71597,196,0,19,53751,'C_DocType_ID',TO_DATE('2014-02-11 17:25:43','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type',0,TO_DATE('2014-02-11 17:25:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 11, 2014 5:25:45 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71597 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:26:31 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y', IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2014-02-11 17:26:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71597
;

-- Feb 11, 2014 5:26:43 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71598,138,0,19,53751,'AD_User_ID',TO_DATE('2014-02-11 17:26:41','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact','ECA02',22,'The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','Y','N','N','N','N','N','Y','Y','N','N','N','N','Usuario',0,TO_DATE('2014-02-11 17:26:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 11, 2014 5:26:43 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71598 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:26:54 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71599,124,0,19,53751,'AD_Sequence_ID',TO_DATE('2014-02-11 17:26:52','YYYY-MM-DD HH24:MI:SS'),100,'Document Sequence','ECA02',22,'The Sequence defines the numbering sequence to be used for documents.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Sequence',0,TO_DATE('2014-02-11 17:26:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 11, 2014 5:26:54 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71599 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:27:05 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2014-02-11 17:27:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71599
;

-- Feb 11, 2014 5:28:27 PM VET
-- LVE Withholding
UPDATE AD_Element SET AD_Reference_ID=22,Updated=TO_DATE('2014-02-11 17:28:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56588
;

-- Feb 11, 2014 5:28:41 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71600,56588,0,22,53751,'ControlNoSequence_ID',TO_DATE('2014-02-11 17:28:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No Sequence',0,TO_DATE('2014-02-11 17:28:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 11, 2014 5:28:41 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71600 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 11, 2014 5:29:13 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=128,Updated=TO_DATE('2014-02-11 17:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71600
;

-- Feb 11, 2014 5:29:38 PM VET
-- LVE Withholding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=71596
;

-- Feb 11, 2014 5:29:38 PM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=71596
;

-- Feb 11, 2014 5:29:44 PM VET
-- LVE Withholding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=57035
;

-- Feb 11, 2014 5:29:44 PM VET
-- LVE Withholding
DELETE FROM AD_Element WHERE AD_Element_ID=57035
;

-- Feb 11, 2014 5:31:00 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_DATE('2014-02-11 17:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71594
;

-- Feb 11, 2014 5:31:09 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_DATE('2014-02-11 17:31:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71595
;

-- Feb 11, 2014 5:32:16 PM VET
-- LVE Withholding
UPDATE AD_Table SET AD_Window_ID=135,Updated=TO_DATE('2014-02-11 17:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53751
;

-- Feb 11, 2014 5:33:06 PM VET
-- LVE Withholding
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,71597,0,53893,53751,135,TO_DATE('2014-02-11 17:33:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','N','N','User Doc Sequence','N',30,1,TO_DATE('2014-02-11 17:33:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:06 PM VET
-- LVE Withholding
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53893 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Feb 11, 2014 5:33:14 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71591,72288,0,53893,TO_DATE('2014-02-11 17:33:13','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2014-02-11 17:33:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:14 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72288 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:16 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71589,72289,0,53893,TO_DATE('2014-02-11 17:33:14','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2014-02-11 17:33:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:16 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72289 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:17 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71600,72290,0,53893,TO_DATE('2014-02-11 17:33:16','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','Y','N','N','N','N','N','Control No Sequence',TO_DATE('2014-02-11 17:33:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:17 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72290 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:19 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71597,72291,0,53893,TO_DATE('2014-02-11 17:33:17','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',22,'ECA02','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',TO_DATE('2014-02-11 17:33:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:19 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72291 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:21 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71590,72292,0,53893,TO_DATE('2014-02-11 17:33:19','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2014-02-11 17:33:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:21 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72292 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:22 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71599,72293,0,53893,TO_DATE('2014-02-11 17:33:21','YYYY-MM-DD HH24:MI:SS'),100,'Document Sequence',22,'ECA02','The Sequence defines the numbering sequence to be used for documents.','Y','Y','Y','N','N','N','N','N','Sequence',TO_DATE('2014-02-11 17:33:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:22 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72293 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:24 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,71598,72294,0,53893,TO_DATE('2014-02-11 17:33:22','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact',22,'ECA02','The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','Y','Y','N','N','N','N','N','Usuario',TO_DATE('2014-02-11 17:33:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:33:24 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72294 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:33:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2014-02-11 17:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72289
;

-- Feb 11, 2014 5:33:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2014-02-11 17:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72292
;

-- Feb 11, 2014 5:33:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-02-11 17:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72291
;

-- Feb 11, 2014 5:33:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-02-11 17:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72294
;

-- Feb 11, 2014 5:33:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-02-11 17:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72293
;

-- Feb 11, 2014 5:33:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-02-11 17:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72290
;

-- Feb 11, 2014 5:33:51 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-02-11 17:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72288
;

-- Feb 11, 2014 5:33:58 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-11 17:33:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72292
;

-- Feb 11, 2014 5:34:02 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-11 17:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72294
;

-- Feb 11, 2014 5:34:10 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-02-11 17:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72290
;

-- Feb 11, 2014 5:34:17 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-02-11 17:34:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72291
;

-- Feb 11, 2014 5:34:30 PM VET
-- LVE Withholding
UPDATE AD_Table SET PO_Window_ID=112,Updated=TO_DATE('2014-02-11 17:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53751
;

-- Feb 11, 2014 5:35:36 PM VET
-- LVE Withholding
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,71598,0,53894,53751,108,TO_DATE('2014-02-11 17:35:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','N','N','User Doc Sequence','N',90,1,TO_DATE('2014-02-11 17:35:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:36 PM VET
-- LVE Withholding
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53894 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Feb 11, 2014 5:35:47 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71589,72295,0,53894,TO_DATE('2014-02-11 17:35:45','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N','Y','Y','Y','N','N','N','N','N','Client',10,TO_DATE('2014-02-11 17:35:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:47 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72295 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:35:49 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71590,72296,0,53894,TO_DATE('2014-02-11 17:35:47','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_DATE('2014-02-11 17:35:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:49 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72296 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:35:50 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71597,72297,0,53894,TO_DATE('2014-02-11 17:35:49','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',22,'ECA02','The Document Type determines document sequence and processing rules','N','Y','Y','Y','N','N','N','Y','N','Document Type',30,TO_DATE('2014-02-11 17:35:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:50 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72297 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:35:52 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71598,72298,0,53894,TO_DATE('2014-02-11 17:35:50','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact',22,'ECA02','The User identifies a unique user in the system. This could be an internal user or a business partner contact','N','Y','Y','Y','N','N','N','N','Y','Usuario',40,TO_DATE('2014-02-11 17:35:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:52 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72298 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:35:53 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71599,72299,0,53894,TO_DATE('2014-02-11 17:35:52','YYYY-MM-DD HH24:MI:SS'),100,'Document Sequence',22,'ECA02','The Sequence defines the numbering sequence to be used for documents.','N','Y','Y','Y','N','N','N','N','N','Sequence',50,TO_DATE('2014-02-11 17:35:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:53 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72299 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:35:55 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71600,72300,0,53894,TO_DATE('2014-02-11 17:35:53','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','N','Y','Y','Y','N','N','N','N','Y','Control No Sequence',60,TO_DATE('2014-02-11 17:35:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:55 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72300 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:35:57 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,71591,72301,0,53894,TO_DATE('2014-02-11 17:35:55','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N','Y','Y','Y','N','N','N','N','N','Active',70,TO_DATE('2014-02-11 17:35:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 11, 2014 5:35:57 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72301 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 11, 2014 5:36:17 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-02-11 17:36:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72298
;

-- Feb 11, 2014 5:36:17 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-02-11 17:36:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72297
;

-- Feb 11, 2014 5:36:29 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='N',Updated=TO_DATE('2014-02-11 17:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72298
;

-- Feb 11, 2014 5:36:33 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='N', IsSameLine='Y',Updated=TO_DATE('2014-02-11 17:36:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72297
;

-- Feb 11, 2014 5:36:37 PM VET
-- LVE Withholding
UPDATE AD_Table SET PO_Window_ID=108,Updated=TO_DATE('2014-02-11 17:36:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53751
;

-- Feb 11, 2014 5:39:08 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-02-11 17:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=71599
;


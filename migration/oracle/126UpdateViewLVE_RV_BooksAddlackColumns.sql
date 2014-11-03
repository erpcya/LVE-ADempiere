-- 7/09/2013 04:26:48 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56254,0,'CreditNote',TO_DATE('2013-09-07 16:26:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Note','Credit Note',TO_DATE('2013-09-07 16:26:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:26:48 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56254 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 7/09/2013 04:27:02 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Nota de Credito',PrintName='Nota de Credito',Updated=TO_DATE('2013-09-07 16:27:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56254 AND AD_Language='es_MX'
;

-- 7/09/2013 04:27:59 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67298,56254,0,22,53571,'CreditNote','(CASE WHEN  DocTypeDeclare = ''03'' THEN LVE_RV_Books.DocumentNO ELSE null END)',TO_DATE('2013-09-07 16:27:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Credit Note',0,TO_DATE('2013-09-07 16:27:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:27:59 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67298 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/09/2013 04:28:28 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56255,0,'DebittNote',TO_DATE('2013-09-07 16:28:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Debit Note','Debit Note',TO_DATE('2013-09-07 16:28:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:28:28 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56255 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 7/09/2013 04:29:03 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='DebitNote',Updated=TO_DATE('2013-09-07 16:29:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56255
;

-- 7/09/2013 04:29:03 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='DebitNote', Name='Debit Note', Description=NULL, Help=NULL WHERE AD_Element_ID=56255
;

-- 7/09/2013 04:29:03 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DebitNote', Name='Debit Note', Description=NULL, Help=NULL, AD_Element_ID=56255 WHERE UPPER(ColumnName)='DEBITNOTE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 7/09/2013 04:29:03 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DebitNote', Name='Debit Note', Description=NULL, Help=NULL WHERE AD_Element_ID=56255 AND IsCentrallyMaintained='Y'
;

-- 7/09/2013 04:29:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67299,56255,0,22,53571,'DebitNote','(CASE WHEN  DocTypeDeclare = ''02'' THEN LVE_RV_Books.DocumentNO ELSE null END)',TO_DATE('2013-09-07 16:29:12','YYYY-MM-DD HH24:MI:SS'),100,'U',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Debit Note',0,TO_DATE('2013-09-07 16:29:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:29:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67299 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/09/2013 04:29:55 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56256,0,'InvoiceAffected',TO_DATE('2013-09-07 16:29:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Invoice Affected','Invoice Affected',TO_DATE('2013-09-07 16:29:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:29:55 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56256 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 7/09/2013 04:30:05 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Factura Afectada',PrintName='Factura Afectada',Updated=TO_DATE('2013-09-07 16:30:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56256 AND AD_Language='es_MX'
;

-- 7/09/2013 04:31:05 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67300,56256,0,22,53571,'InvoiceAffected','(CASE  WHEN  DocTypeDeclare = ''02'' OR DocTypeDeclare = ''03'' THEN (SELECT C_Invoice.DocumentNo FROM C_Invoice WHERE LVE_RV_Books.DocAffected_ID = C_Invoice.C_Invoice_ID) ELSE null END)',TO_DATE('2013-09-07 16:31:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Invoice Affected',0,TO_DATE('2013-09-07 16:31:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:31:05 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67300 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/09/2013 04:31:52 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56257,0,'InvoiceNO',TO_DATE('2013-09-07 16:31:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','No. Invoice','No. Invoice',TO_DATE('2013-09-07 16:31:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:31:52 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56257 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 7/09/2013 04:32:06 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='No. Factura',PrintName='No. Factura',Updated=TO_DATE('2013-09-07 16:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56257 AND AD_Language='es_MX'
;

-- 7/09/2013 04:32:39 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67301,56257,0,22,53571,'InvoiceNO','(CASE  WHEN  DocTypeDeclare = ''01''  THEN LVE_RV_Books.DocumentNO ELSE null END)',TO_DATE('2013-09-07 16:32:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','No. Invoice',0,TO_DATE('2013-09-07 16:32:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:32:39 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67301 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/09/2013 04:33:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67302,2818,0,10,53571,'Base','('''')',TO_DATE('2013-09-07 16:33:13','YYYY-MM-DD HH24:MI:SS'),100,'Calculation Base','ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Base',0,TO_DATE('2013-09-07 16:33:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:33:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67302 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/09/2013 04:33:40 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56258,0,'ImportTax',TO_DATE('2013-09-07 16:33:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Import Tax','Import Tax',TO_DATE('2013-09-07 16:33:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:33:40 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56258 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 7/09/2013 04:33:51 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Imp. Import',PrintName='Imp. Import',Updated=TO_DATE('2013-09-07 16:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56258 AND AD_Language='es_MX'
;

-- 7/09/2013 04:35:28 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67303,56258,0,12,53571,'ImportTax','('''')',TO_DATE('2013-09-07 16:35:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Import Tax',0,TO_DATE('2013-09-07 16:35:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:35:28 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67303 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/09/2013 04:36:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67304,2004,0,22,53571,'Percentage','('''')',TO_DATE('2013-09-07 16:36:13','YYYY-MM-DD HH24:MI:SS'),100,'Percent of the entire amount','ECA02',14,'Percentage of an amount (up to 100)','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Percentage',0,TO_DATE('2013-09-07 16:36:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/09/2013 04:36:14 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67304 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


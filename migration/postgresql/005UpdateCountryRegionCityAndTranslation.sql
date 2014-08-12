-- Jun 26, 2014 9:58:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,237,1000000,17,131,'DocStatus',TO_TIMESTAMP('2014-06-26 09:58:10','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','D',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',90,TO_TIMESTAMP('2014-06-26 09:58:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 26, 2014 9:58:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1000000 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 26, 2014 9:58:23 AM VET
-- LVE ADempiere
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1000000
;

-- Jun 26, 2014 9:58:23 AM VET
-- LVE ADempiere
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1000000
;

-- Jun 26, 2014 9:59:52 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,237,1000001,17,131,'DocStatus',TO_TIMESTAMP('2014-06-26 09:59:52','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','D',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',90,TO_TIMESTAMP('2014-06-26 09:59:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 26, 2014 9:59:52 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1000001 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 26, 2014 10:00:58 AM VET
-- LVE ADempiere
UPDATE AD_Tab SET AD_Column_ID=866,Updated=TO_TIMESTAMP('2014-06-26 10:00:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=136
;

-- Jun 26, 2014 10:01:05 AM VET
-- LVE ADempiere
UPDATE AD_Tab SET AD_Column_ID=7053,Updated=TO_TIMESTAMP('2014-06-26 10:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=215
;

-- Jun 26, 2014 10:02:46 AM VET
-- LVE ADempiere
UPDATE C_Country SET HasRegion='Y', RegionName='State',Updated=TO_TIMESTAMP('2014-06-26 10:02:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339
;

-- Jun 26, 2014 10:02:46 AM VET
-- LVE ADempiere
UPDATE C_Country_Trl SET IsTranslated='N' WHERE C_Country_ID=339
;

-- Jun 26, 2014 10:03:08 AM VET
-- LVE ADempiere
UPDATE AD_Language SET IsSystemLanguage='Y',Updated=TO_TIMESTAMP('2014-06-26 10:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Language_ID=151
;

-- Jun 26, 2014 10:57:53 AM VET
-- LVE ADempiere
UPDATE C_Country_Trl SET RegionName='Estado',Updated=TO_TIMESTAMP('2014-06-26 10:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339 AND AD_Language='es_MX'
;

-- Jun 26, 2014 10:57:58 AM VET
-- LVE ADempiere
UPDATE C_Country_Trl SET RegionName='Estado',Updated=TO_TIMESTAMP('2014-06-26 10:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339 AND AD_Language='es_VE'
;

-- Jun 26, 2014 10:58:56 AM VET
-- LVE ADempiere
UPDATE C_Country SET DisplaySequence='@R@ @C@, @P@', CaptureSequence='@CO@ @R@ @C@, @A1@ @A2@ @A3@ @A4@ @P@',Updated=TO_TIMESTAMP('2014-06-26 10:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339
;


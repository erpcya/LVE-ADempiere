-- 7/09/2013 04:04:47 PM VET
-- LVE Withholding
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53059,53571,TO_DATE('2013-09-07 16:04:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_Books Sales',TO_DATE('2013-09-07 16:04:46','YYYY-MM-DD HH24:MI:SS'),100,'IsSOTrx = ''Y''')
;

-- 7/09/2013 04:05:03 PM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53447,53059,'N',TO_DATE('2013-09-07 16:05:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Books Sales','Y',0,0,TO_DATE('2013-09-07 16:05:02','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_Books BooksSales')
;

-- 7/09/2013 04:05:03 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53447 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 7/09/2013 04:05:11 PM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Libro de Ventas',Updated=TO_DATE('2013-09-07 16:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53447 AND AD_Language='es_MX'
;

-- 7/09/2013 04:05:43 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,53447,53965,15,'DateAcct',TO_DATE('2013-09-07 16:05:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','Account Date',10,TO_DATE('2013-09-07 16:05:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:05:43 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53965 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 7/09/2013 04:06:05 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,267,0,53447,53966,15,'DateInvoiced',TO_DATE('2013-09-07 16:06:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','Date Invoiced',20,TO_DATE('2013-09-07 16:06:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:06:05 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53966 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 7/09/2013 04:06:37 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53610,0,53447,TO_DATE('2013-09-07 16:06:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Books Sales',TO_DATE('2013-09-07 16:06:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:06:37 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53610 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 7/09/2013 04:06:37 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53610, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53610)
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53610
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1500001
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=272
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=457
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=459
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=458
;

-- 7/09/2013 04:06:40 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=100
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53610
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53610
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1500001
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=272
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=457
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=459
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=458
;

-- 7/09/2013 04:06:52 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=100
;

-- 7/09/2013 04:06:54 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=1500001, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53610
;

-- 7/09/2013 04:06:54 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=1500001, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1500000
;

-- 7/09/2013 04:07:03 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Libro de Ventas',Updated=TO_DATE('2013-09-07 16:07:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53610 AND AD_Language='es_MX'
;


-- Sep 12, 2013 2:49:02 PM VET
-- SFAndroid Contribution
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53063,53571,TO_TIMESTAMP('2013-09-12 14:48:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_Books Purchasse',TO_TIMESTAMP('2013-09-12 14:48:56','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_Books.IsSOTrx = ''N''')
;

-- Sep 12, 2013 2:50:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53457,53063,'N',TO_TIMESTAMP('2013-09-12 14:50:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Books Purchases','Y',0,0,TO_TIMESTAMP('2013-09-12 14:50:25','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_Books BooksPurchases')
;

-- Sep 12, 2013 2:50:26 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53457 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 12, 2013 2:50:39 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53059, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_TIMESTAMP('2013-09-12 14:50:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53457
;

-- Sep 12, 2013 2:50:39 PM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53457
;

-- Sep 12, 2013 2:50:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,53457,53991,15,'DateAcct',TO_TIMESTAMP('2013-09-12 14:50:39','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',0,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','N','Y','Account Date',10,TO_TIMESTAMP('2013-09-12 14:50:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 2:50:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53991 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 12, 2013 2:50:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,267,0,53457,53992,15,'DateInvoiced',TO_TIMESTAMP('2013-09-12 14:50:41','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02',0,'The Date Invoice indicates the date printed on the invoice.','Y','Y','N','Y','Date Invoiced',20,TO_TIMESTAMP('2013-09-12 14:50:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 2:50:41 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53992 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 12, 2013 2:50:53 PM VET
-- SFAndroid Contribution
UPDATE AD_Process SET AD_ReportView_ID=53063,Updated=TO_TIMESTAMP('2013-09-12 14:50:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53457
;

-- Sep 12, 2013 2:51:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53619,0,53457,TO_TIMESTAMP('2013-09-12 14:51:20','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Y','N','N','N','Books Purchases',TO_TIMESTAMP('2013-09-12 14:51:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 12, 2013 2:51:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53619 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 12, 2013 2:51:21 PM VET
-- SFAndroid Contribution
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53619, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53619)
;

-- Sep 12, 2013 2:51:28 PM VET
-- SFAndroid Contribution
UPDATE AD_Menu_Trl SET Name='Libro de Compras',Updated=TO_TIMESTAMP('2013-09-12 14:51:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53619 AND AD_Language='es_MX'
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53619
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=452
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=454
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=466
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=468
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=467
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=463
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=549
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=471
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=205
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=204
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=493
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=206
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=360
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=516
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=312
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=316
;

-- Sep 12, 2013 2:51:38 PM VET
-- SFAndroid Contribution
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=17, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=315
;


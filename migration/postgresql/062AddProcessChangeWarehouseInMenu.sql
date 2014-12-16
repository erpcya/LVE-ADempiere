-- Dec 16, 2014 12:38:08 AM VET
-- LVE ADempiere
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53725,'org.spin.process.ChangeWarehouse','N',TO_TIMESTAMP('2014-12-16 00:38:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Change Warehouse','Y',0,0,TO_TIMESTAMP('2014-12-16 00:38:02','YYYY-MM-DD HH24:MI:SS'),100,'prc_ChangeWarehouse ChangeWarehouseOrder')
;

-- Dec 16, 2014 12:38:08 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53725 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Dec 16, 2014 12:38:09 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53725,0,TO_TIMESTAMP('2014-12-16 00:38:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-16 00:38:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:09 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53725,102,TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:09 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53725,103,TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:09 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53725,50001,TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:09 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53725,50002,TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-12-16 00:38:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:30 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53725,55073,19,'M_Warehouse_ID',TO_TIMESTAMP('2014-12-16 00:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','N','N','Warehouse',10,TO_TIMESTAMP('2014-12-16 00:38:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:30 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55073 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 16, 2014 12:38:45 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,558,0,53725,55074,19,'C_Order_ID',TO_TIMESTAMP('2014-12-16 00:38:44','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',22,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','N','N','Order',20,TO_TIMESTAMP('2014-12-16 00:38:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:38:45 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55074 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 16, 2014 12:39:47 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=134,Updated=TO_TIMESTAMP('2014-12-16 00:39:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 12:41:01 AM VET
-- LVE ADempiere
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52412,'C_Order.IsSoTrx=''Y''',TO_TIMESTAMP('2014-12-16 00:41:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Order  SO','S',TO_TIMESTAMP('2014-12-16 00:41:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:41:07 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52412,Updated=TO_TIMESTAMP('2014-12-16 00:41:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 12:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2014-12-16 00:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 12:41:16 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52412,Updated=TO_TIMESTAMP('2014-12-16 00:41:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55074
;

-- Dec 16, 2014 12:41:27 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,561,0,53725,55075,19,203,'C_OrderLine_ID',TO_TIMESTAMP('2014-12-16 00:41:26','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','ECA02',22,'The Sales Order Line is a unique identifier for a line in an order.','Y','Y','N','N','Sales Order Line',30,TO_TIMESTAMP('2014-12-16 00:41:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:41:27 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55075 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 16, 2014 12:41:30 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-12-16 00:41:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 12:42:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53900,0,53725,TO_TIMESTAMP('2014-12-16 00:42:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Change Warehouse',TO_TIMESTAMP('2014-12-16 00:42:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:42:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53900 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Dec 16, 2014 12:42:11 AM VET
-- LVE ADempiere
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-12-16 00:42:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',53900,0,999,TO_TIMESTAMP('2014-12-16 00:42:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 12:42:47 AM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almacen',Updated=TO_TIMESTAMP('2014-12-16 00:42:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53708 AND AD_Language='es_MX'
;

-- Dec 16, 2014 12:42:50 AM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almacen',Updated=TO_TIMESTAMP('2014-12-16 00:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53708 AND AD_Language='es_VE'
;

-- Dec 16, 2014 12:42:55 AM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almacen',Updated=TO_TIMESTAMP('2014-12-16 00:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53725 AND AD_Language='es_MX'
;

-- Dec 16, 2014 12:42:57 AM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Cambiar Almacen',Updated=TO_TIMESTAMP('2014-12-16 00:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53725 AND AD_Language='es_VE'
;

-- Dec 16, 2014 12:43:16 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=0,Updated=TO_TIMESTAMP('2014-12-16 00:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53900
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=0,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53900
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=1,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=52001
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=2,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=460
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=3,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=301
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=4,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53249
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=5,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=129
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=6,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=543
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=7,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=195
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=8,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53223
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=9,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=407
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=10,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=406
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=11,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=335
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=12,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=436
;

-- Dec 16, 2014 12:43:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=13,Updated=TO_TIMESTAMP('2014-12-16 00:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=507
;

-- Dec 16, 2014 12:43:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=14,Updated=TO_TIMESTAMP('2014-12-16 00:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=448
;

-- Dec 16, 2014 12:43:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=15,Updated=TO_TIMESTAMP('2014-12-16 00:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=449
;

-- Dec 16, 2014 12:43:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=16,Updated=TO_TIMESTAMP('2014-12-16 00:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=492
;

-- Dec 16, 2014 12:43:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=17,Updated=TO_TIMESTAMP('2014-12-16 00:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53269
;

-- Dec 16, 2014 12:43:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=18,Updated=TO_TIMESTAMP('2014-12-16 00:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=491
;

-- Dec 16, 2014 12:43:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=19,Updated=TO_TIMESTAMP('2014-12-16 00:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=419
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=9,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53900
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=10,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=407
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=11,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=406
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=12,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=335
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=13,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=436
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=14,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=507
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=15,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=448
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=16,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=449
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=17,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=492
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=18,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53269
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=19,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=491
;

-- Dec 16, 2014 12:43:26 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=457, SeqNo=20,Updated=TO_TIMESTAMP('2014-12-16 00:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=419
;


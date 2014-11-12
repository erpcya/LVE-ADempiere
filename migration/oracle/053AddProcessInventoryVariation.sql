-- Nov 12, 2014 10:47:50 AM VET
-- LVE ADempiere
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53718,'N',TO_DATE('2014-11-12 10:47:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:AnalyticalInventory.jrxml','Inventory Variation','Y',0,0,TO_DATE('2014-11-12 10:47:44','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_Inventory InventoryVariation')
;

-- Nov 12, 2014 10:47:50 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53718 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 12, 2014 10:47:50 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53718,0,TO_DATE('2014-11-12 10:47:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-12 10:47:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:47:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53718,102,TO_DATE('2014-11-12 10:47:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-12 10:47:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:47:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53718,103,TO_DATE('2014-11-12 10:47:51','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-12 10:47:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:47:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53718,50001,TO_DATE('2014-11-12 10:47:51','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-12 10:47:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:47:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53718,50002,TO_DATE('2014-11-12 10:47:51','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-11-12 10:47:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:48:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,102,0,53718,55033,19,'AD_Client_ID',TO_DATE('2014-11-12 10:48:10','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','Client',10,TO_DATE('2014-11-12 10:48:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:48:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55033 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:48:29 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53718,55034,19,'AD_Org_ID',TO_DATE('2014-11-12 10:48:27','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',20,TO_DATE('2014-11-12 10:48:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:48:29 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55034 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:48:41 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,459,0,53718,55035,19,'M_Warehouse_ID',TO_DATE('2014-11-12 10:48:40','YYYY-MM-DD HH24:MI:SS'),100,'-1','Storage Warehouse and Service Point','ECA02',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','N','N','Warehouse',30,TO_DATE('2014-11-12 10:48:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:48:41 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55035 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:49:00 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,448,0,53718,55036,19,127,'M_Locator_ID',TO_DATE('2014-11-12 10:48:57','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse Locator','ECA02',22,'The Locator indicates where in a Warehouse a product is located.','Y','Y','N','N','Locator',40,TO_DATE('2014-11-12 10:48:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:49:00 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55036 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:49:07 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2014-11-12 10:49:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55036
;

-- Nov 12, 2014 10:49:21 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,453,0,53718,55037,19,163,'M_Product_Category_ID',TO_DATE('2014-11-12 10:49:19','YYYY-MM-DD HH24:MI:SS'),100,'-1','Category of a Product','ECA02',22,'Identifies the category which this product belongs to.  Product categories are used for pricing and selection.','Y','Y','N','N','Product Category',50,TO_DATE('2014-11-12 10:49:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:49:21 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55037 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:49:32 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,454,0,53718,55038,19,'M_Product_ID',TO_DATE('2014-11-12 10:49:29','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02',22,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','Product',60,TO_DATE('2014-11-12 10:49:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:49:32 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55038 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:49:36 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Reference_ID=30,Updated=TO_DATE('2014-11-12 10:49:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55038
;

-- Nov 12, 2014 10:49:55 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1037,0,53718,55039,15,'MovementDate',TO_DATE('2014-11-12 10:49:53','YYYY-MM-DD HH24:MI:SS'),100,'Date a product was moved in or out of inventory','ECA02',7,'The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','Y','Y','N','Y','Movement Date',70,TO_DATE('2014-11-12 10:49:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:49:55 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55039 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 10:50:09 AM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Variación de Inventario',Updated=TO_DATE('2014-11-12 10:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53718 AND AD_Language='es_MX'
;

-- Nov 12, 2014 10:50:12 AM VET
-- LVE ADempiere
UPDATE AD_Process_Trl SET Name='Variación de Inventario',Updated=TO_DATE('2014-11-12 10:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53718 AND AD_Language='es_VE'
;

-- Nov 12, 2014 10:50:46 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Reference_ID=21,Updated=TO_DATE('2014-11-12 10:50:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55036
;

-- Nov 12, 2014 10:50:55 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Reference_ID=30, AD_Reference_Value_ID=NULL,Updated=TO_DATE('2014-11-12 10:50:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55037
;

-- Nov 12, 2014 10:51:38 AM VET
-- LVE ADempiere
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53892,0,53718,TO_DATE('2014-11-12 10:51:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Inventory Variation',TO_DATE('2014-11-12 10:51:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:51:38 AM VET
-- LVE ADempiere
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53892 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 12, 2014 10:51:38 AM VET
-- LVE ADempiere
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-11-12 10:51:38','YYYY-MM-DD HH24:MI:SS'),100,'Y',53892,0,999,TO_DATE('2014-11-12 10:51:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:51:45 AM VET
-- LVE ADempiere
UPDATE AD_Menu_Trl SET Name='Variación de Inventario',Updated=TO_DATE('2014-11-12 10:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53892 AND AD_Language='es_MX'
;

-- Nov 12, 2014 10:51:47 AM VET
-- LVE ADempiere
UPDATE AD_Menu_Trl SET Name='Variación de Inventario',Updated=TO_DATE('2014-11-12 10:51:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53892 AND AD_Language='es_VE'
;

-- Nov 12, 2014 10:51:58 AM VET
-- LVE ADempiere
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53893,0,TO_DATE('2014-11-12 10:51:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Reports',TO_DATE('2014-11-12 10:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:51:58 AM VET
-- LVE ADempiere
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53893 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 12, 2014 10:51:58 AM VET
-- LVE ADempiere
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-11-12 10:51:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',53893,0,999,TO_DATE('2014-11-12 10:51:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 10:52:07 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=167
;

-- Nov 12, 2014 10:52:07 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=357
;

-- Nov 12, 2014 10:52:07 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53893
;

-- Nov 12, 2014 10:52:10 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:12 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:12 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:14 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:14 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:14 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:17 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:17 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:17 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:17 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:20 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:20 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:20 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:20 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:20 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- Nov 12, 2014 10:52:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:22 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:23 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=5,Updated=TO_DATE('2014-11-12 10:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=5,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:25 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=6,Updated=TO_DATE('2014-11-12 10:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=5,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=6,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:27 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=7,Updated=TO_DATE('2014-11-12 10:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53253
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=5,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=6,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=7,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:30 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=8,Updated=TO_DATE('2014-11-12 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53253
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=5,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=6,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=7,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=8,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:33 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=9,Updated=TO_DATE('2014-11-12 10:52:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:52:37 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=0,Updated=TO_DATE('2014-11-12 10:52:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=515
;

-- Nov 12, 2014 10:52:37 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=1,Updated=TO_DATE('2014-11-12 10:52:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=2,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53253
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=3,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=4,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=5,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=6,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=7,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=8,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=9,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- Nov 12, 2014 10:52:38 AM VET
-- LVE ADempiere
UPDATE AD_TreeNodeMM SET Parent_ID=53893, SeqNo=10,Updated=TO_DATE('2014-11-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53892
;

-- Nov 12, 2014 10:55:02 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Reference_ID=31,Updated=TO_DATE('2014-11-12 10:55:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55036
;

-- Nov 12, 2014 11:48:57 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,109,0,53718,55040,10,'AD_Language',TO_DATE('2014-11-12 11:48:54','YYYY-MM-DD HH24:MI:SS'),100,'Language for this entity','ECA02',6,'The Language identifies the language to use for display and formatting','Y','Y','N','N','Language',80,TO_DATE('2014-11-12 11:48:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 11:48:57 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55040 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 11:50:13 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='@AD_Language@', ReadOnlyLogic='1=1',Updated=TO_DATE('2014-11-12 11:50:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55040
;

-- Nov 12, 2014 4:14:56 PM VET
-- LVE ADempiere
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=55040
;

-- Nov 12, 2014 4:14:56 PM VET
-- LVE ADempiere
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=55040
;


-- 14/07/2014 11:19:49 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57266,0,'CreateFromRequisition',TO_TIMESTAMP('2014-07-14 11:19:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Create From Requisition','Create From Requisition',TO_TIMESTAMP('2014-07-14 11:19:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:19:49 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57266 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/07/2014 11:23:59 AM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Element_Trl SET Name='Crear Desde Requisición',PrintName='Crear Desde Requisición',Updated=TO_TIMESTAMP('2014-07-14 11:23:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57266 AND AD_Language='es_MX'
;

-- 14/07/2014 11:26:08 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53654,'N',TO_TIMESTAMP('2014-07-14 11:26:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Create From Requisition Browse','Y',0,0,TO_TIMESTAMP('2014-07-14 11:26:05','YYYY-MM-DD HH24:MI:SS'),100,'LVE_CreateFromRequisition Browse')
;

-- 14/07/2014 11:26:08 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53654 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 14/07/2014 11:26:09 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53654,0,TO_TIMESTAMP('2014-07-14 11:26:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:26:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:26:10 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53654,102,TO_TIMESTAMP('2014-07-14 11:26:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:26:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:26:10 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53654,103,TO_TIMESTAMP('2014-07-14 11:26:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:26:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:26:11 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53654,50001,TO_TIMESTAMP('2014-07-14 11:26:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:26:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:26:11 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53654,50002,TO_TIMESTAMP('2014-07-14 11:26:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:26:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:26:44 AM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Process_Trl SET Name='Crear Desde Requisición Vista',Description='Crear Desde Requisición Vista',Updated=TO_TIMESTAMP('2014-07-14 11:26:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53654 AND AD_Language='es_MX'
;

-- 14/07/2014 11:27:03 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73422,57266,0,53654,28,677,'CreateFromRequisition',TO_TIMESTAMP('2014-07-14 11:27:00','YYYY-MM-DD HH24:MI:SS'),100,'N','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Create From Requisition',0,TO_TIMESTAMP('2014-07-14 11:27:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/07/2014 11:27:03 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73422 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/07/2014 11:27:09 AM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-07-14 11:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73422
;

-- 14/07/2014 11:31:14 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50028,TO_TIMESTAMP('2014-07-14 11:31:12','YYYY-MM-DD HH24:MI:SS'),100,'RV_M_Requisition Requisition View','ECA02','Y','RV_M_Requisition Requisition View',TO_TIMESTAMP('2014-07-14 11:31:12','YYYY-MM-DD HH24:MI:SS'),100,'RV_M_Requisition')
;

-- 14/07/2014 11:31:14 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50028 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- 14/07/2014 11:31:38 AM VET
-- Request for Quotation Create From Requisition
UPDATE AD_View_Trl SET Name='RV_M_Requisition Vista Requisición',Description='RV_M_Requisition Vista Requisición',Updated=TO_TIMESTAMP('2014-07-14 11:31:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50028
;

-- 14/07/2014 11:32:00 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,711,50065,50028,TO_TIMESTAMP('2014-07-14 11:31:57','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'MR',TO_TIMESTAMP('2014-07-14 11:31:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:07 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11751,0,52440,50065,50028,'MR_AD_Client_ID','MR.AD_Client_ID',TO_TIMESTAMP('2014-07-14 11:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2014-07-14 11:32:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:09 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11745,0,52441,50065,50028,'MR_AD_Org_ID','MR.AD_Org_ID',TO_TIMESTAMP('2014-07-14 11:32:07','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2014-07-14 11:32:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:10 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11752,0,52442,50065,50028,'MR_AD_User_ID','MR.AD_User_ID',TO_TIMESTAMP('2014-07-14 11:32:09','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact','ECA02','The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','Usuario',TO_TIMESTAMP('2014-07-14 11:32:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:12 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11742,0,52443,50065,50028,'MR_Created','MR.Created',TO_TIMESTAMP('2014-07-14 11:32:10','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2014-07-14 11:32:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:13 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11749,0,52444,50065,50028,'MR_CreatedBy','MR.CreatedBy',TO_TIMESTAMP('2014-07-14 11:32:12','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2014-07-14 11:32:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:15 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,11746,0,52445,50065,50028,'MR_DateRequired','MR.DateRequired',TO_TIMESTAMP('2014-07-14 11:32:13','YYYY-MM-DD HH24:MI:SS'),100,'Date when required','ECA02','Y','Date Required',TO_TIMESTAMP('2014-07-14 11:32:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:18 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11767,0,52446,50065,50028,'MR_Description','MR.Description',TO_TIMESTAMP('2014-07-14 11:32:15','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','Description',TO_TIMESTAMP('2014-07-14 11:32:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:21 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11762,0,52447,50065,50028,'MR_DocAction','MR.DocAction',TO_TIMESTAMP('2014-07-14 11:32:18','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_TIMESTAMP('2014-07-14 11:32:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:24 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11763,0,52448,50065,50028,'MR_DocStatus','MR.DocStatus',TO_TIMESTAMP('2014-07-14 11:32:21','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_TIMESTAMP('2014-07-14 11:32:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:28 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11765,0,52449,50065,50028,'MR_DocumentNo','MR.DocumentNo',TO_TIMESTAMP('2014-07-14 11:32:24','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_TIMESTAMP('2014-07-14 11:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:30 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11764,0,52450,50065,50028,'MR_Help','MR.Help',TO_TIMESTAMP('2014-07-14 11:32:28','YYYY-MM-DD HH24:MI:SS'),100,'Comment or Hint','ECA02','The Help field contains a hint, comment or help about the use of this item.','Y','Comment/Help',TO_TIMESTAMP('2014-07-14 11:32:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:35 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11757,0,52451,50065,50028,'MR_IsActive','MR.IsActive',TO_TIMESTAMP('2014-07-14 11:32:30','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_TIMESTAMP('2014-07-14 11:32:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:38 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11748,0,52452,50065,50028,'MR_IsApproved','MR.IsApproved',TO_TIMESTAMP('2014-07-14 11:32:35','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Approved',TO_TIMESTAMP('2014-07-14 11:32:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:40 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11756,0,52453,50065,50028,'MR_Line','MR.Line',TO_TIMESTAMP('2014-07-14 11:32:38','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','Line No',TO_TIMESTAMP('2014-07-14 11:32:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:41 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,11755,0,52454,50065,50028,'MR_LineDescription','MR.LineDescription',TO_TIMESTAMP('2014-07-14 11:32:40','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line','ECA02','Y','Line Description',TO_TIMESTAMP('2014-07-14 11:32:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:42 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11750,0,52455,50065,50028,'MR_LineNetAmt','MR.LineNetAmt',TO_TIMESTAMP('2014-07-14 11:32:41','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','Line Amount',TO_TIMESTAMP('2014-07-14 11:32:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:44 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11753,0,52456,50065,50028,'MR_M_PriceList_ID','MR.M_PriceList_ID',TO_TIMESTAMP('2014-07-14 11:32:43','YYYY-MM-DD HH24:MI:SS'),100,'Unique identifier of a Price List','ECA02','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Y','Price List',TO_TIMESTAMP('2014-07-14 11:32:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:47 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11747,0,52457,50065,50028,'MR_M_Product_ID','MR.M_Product_ID',TO_TIMESTAMP('2014-07-14 11:32:44','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','Product',TO_TIMESTAMP('2014-07-14 11:32:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:48 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,11761,0,52458,50065,50028,'MR_M_Requisition_ID','MR.M_Requisition_ID',TO_TIMESTAMP('2014-07-14 11:32:47','YYYY-MM-DD HH24:MI:SS'),100,'Material Requisition','ECA02','Y','Requisition',TO_TIMESTAMP('2014-07-14 11:32:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:50 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,11766,0,52459,50065,50028,'MR_M_RequisitionLine_ID','MR.M_RequisitionLine_ID',TO_TIMESTAMP('2014-07-14 11:32:48','YYYY-MM-DD HH24:MI:SS'),100,'Material Requisition Line','ECA02','Y','Requisition Line',TO_TIMESTAMP('2014-07-14 11:32:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:51 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11760,0,52460,50065,50028,'MR_M_Warehouse_ID','MR.M_Warehouse_ID',TO_TIMESTAMP('2014-07-14 11:32:50','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Warehouse',TO_TIMESTAMP('2014-07-14 11:32:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:53 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11754,0,52461,50065,50028,'MR_PriceActual','MR.PriceActual',TO_TIMESTAMP('2014-07-14 11:32:51','YYYY-MM-DD HH24:MI:SS'),100,'Actual Price ','ECA02','The Actual or Unit Price indicates the Price for a product in source currency.','Y','Unit Price',TO_TIMESTAMP('2014-07-14 11:32:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:54 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11741,0,52462,50065,50028,'MR_PriorityRule','MR.PriorityRule',TO_TIMESTAMP('2014-07-14 11:32:53','YYYY-MM-DD HH24:MI:SS'),100,'Priority of a document','ECA02','The Priority indicates the importance (high, medium, low) of this document','Y','Priority',TO_TIMESTAMP('2014-07-14 11:32:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:55 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11758,0,52463,50065,50028,'MR_Processed','MR.Processed',TO_TIMESTAMP('2014-07-14 11:32:54','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','Processed',TO_TIMESTAMP('2014-07-14 11:32:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:57 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11744,0,52464,50065,50028,'MR_Qty','MR.Qty',TO_TIMESTAMP('2014-07-14 11:32:55','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','Quantity',TO_TIMESTAMP('2014-07-14 11:32:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:58 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,57956,0,52465,50065,50028,'MR_QtyOrdered','MR.QtyOrdered',TO_TIMESTAMP('2014-07-14 11:32:57','YYYY-MM-DD HH24:MI:SS'),100,'Ordered Quantity','ECA02','The Ordered Quantity indicates the quantity of a product that was ordered.','Y','Ordered Quantity',TO_TIMESTAMP('2014-07-14 11:32:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:32:59 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11759,0,52466,50065,50028,'MR_TotalLines','MR.TotalLines',TO_TIMESTAMP('2014-07-14 11:32:58','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines','ECA02','The Total amount displays the total of all lines in document currency','Y','Total Lines',TO_TIMESTAMP('2014-07-14 11:32:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:33:01 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11743,0,52467,50065,50028,'MR_Updated','MR.Updated',TO_TIMESTAMP('2014-07-14 11:32:59','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2014-07-14 11:32:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:33:02 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,11740,0,52468,50065,50028,'MR_UpdatedBy','MR.UpdatedBy',TO_TIMESTAMP('2014-07-14 11:33:01','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2014-07-14 11:33:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:34:59 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50035,0,0,53654,50028,TO_TIMESTAMP('2014-07-14 11:34:58','YYYY-MM-DD HH24:MI:SS'),100,'Request for Quotation Create From Requisition','ECA02','Y','N','Request for Quotation Create From Requisition','N',TO_TIMESTAMP('2014-07-14 11:34:58','YYYY-MM-DD HH24:MI:SS'),100,'RfQ_CreateFromRequisition')
;

-- 14/07/2014 11:34:59 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50035 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- 14/07/2014 11:36:04 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53655,'org.spin.process.CreateFromRequisition','N',TO_TIMESTAMP('2014-07-14 11:36:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Create From Requisition Process','Y',0,0,TO_TIMESTAMP('2014-07-14 11:36:01','YYYY-MM-DD HH24:MI:SS'),100,'LVE_CreateFromRequisition Process')
;

-- 14/07/2014 11:36:04 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53655 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 14/07/2014 11:36:05 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53655,0,TO_TIMESTAMP('2014-07-14 11:36:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:36:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:36:06 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53655,102,TO_TIMESTAMP('2014-07-14 11:36:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:36:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:36:07 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53655,103,TO_TIMESTAMP('2014-07-14 11:36:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:36:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:36:07 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53655,50001,TO_TIMESTAMP('2014-07-14 11:36:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:36:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:36:08 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53655,50002,TO_TIMESTAMP('2014-07-14 11:36:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-14 11:36:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:36:39 AM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Process_Trl SET Name='Crear Desde Requisición',Description='Crear Desde Requisición',Updated=TO_TIMESTAMP('2014-07-14 11:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53655 AND AD_Language='es_MX'
;

-- 14/07/2014 11:36:51 AM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse SET AD_Process_ID=53655,Updated=TO_TIMESTAMP('2014-07-14 11:36:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50035
;

-- 14/07/2014 11:37:05 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53610,50035,0,102,0,19,52440,TO_TIMESTAMP('2014-07-14 11:36:58','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_TIMESTAMP('2014-07-14 11:36:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:05 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53610 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:08 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53611,50035,0,113,0,19,52441,TO_TIMESTAMP('2014-07-14 11:37:05','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_TIMESTAMP('2014-07-14 11:37:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:08 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53611 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:10 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53612,50035,0,138,0,30,52442,TO_TIMESTAMP('2014-07-14 11:37:08','YYYY-MM-DD HH24:MI:SS'),100,'User within the system - Internal or Business Partner Contact','ECA02','The User identifies a unique user in the system. This could be an internal user or a business partner contact','Y','N','N','N','N','N','N','Usuario',12,TO_TIMESTAMP('2014-07-14 11:37:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:10 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53612 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:12 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53613,50035,0,245,0,16,52443,TO_TIMESTAMP('2014-07-14 11:37:10','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',13,TO_TIMESTAMP('2014-07-14 11:37:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:12 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53613 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:15 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53614,50035,0,246,0,18,110,52444,TO_TIMESTAMP('2014-07-14 11:37:12','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',14,TO_TIMESTAMP('2014-07-14 11:37:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:15 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53614 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:17 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53615,50035,0,2451,0,15,52445,TO_TIMESTAMP('2014-07-14 11:37:15','YYYY-MM-DD HH24:MI:SS'),100,'Date when required','ECA02','Y','N','N','N','N','N','N','Date Required',15,TO_TIMESTAMP('2014-07-14 11:37:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:17 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53615 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:20 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53616,50035,0,275,0,10,52446,TO_TIMESTAMP('2014-07-14 11:37:17','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','N','N','N','N','N','N','Description',16,TO_TIMESTAMP('2014-07-14 11:37:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:20 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53616 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:22 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53617,50035,0,287,0,17,135,52447,TO_TIMESTAMP('2014-07-14 11:37:20','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',17,TO_TIMESTAMP('2014-07-14 11:37:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:22 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53617 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:25 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53618,50035,0,289,0,17,131,52448,TO_TIMESTAMP('2014-07-14 11:37:22','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',18,TO_TIMESTAMP('2014-07-14 11:37:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:25 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53618 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:27 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53619,50035,0,290,0,10,52449,TO_TIMESTAMP('2014-07-14 11:37:25','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Document No',19,TO_TIMESTAMP('2014-07-14 11:37:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:27 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53619 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:29 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53620,50035,0,326,0,10,52450,TO_TIMESTAMP('2014-07-14 11:37:27','YYYY-MM-DD HH24:MI:SS'),100,'Comment or Hint','ECA02','The Help field contains a hint, comment or help about the use of this item.','Y','N','N','N','N','N','N','Comment/Help',20,TO_TIMESTAMP('2014-07-14 11:37:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:29 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53620 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:32 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53621,50035,0,348,0,20,52451,TO_TIMESTAMP('2014-07-14 11:37:29','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',21,TO_TIMESTAMP('2014-07-14 11:37:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:32 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53621 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:34 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53622,50035,0,351,0,20,52452,TO_TIMESTAMP('2014-07-14 11:37:32','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','N','N','N','N','N','N','Approved',22,TO_TIMESTAMP('2014-07-14 11:37:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:34 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53622 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:36 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53623,50035,0,439,0,11,52453,TO_TIMESTAMP('2014-07-14 11:37:34','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','N','N','N','N','N','N','Line No',23,TO_TIMESTAMP('2014-07-14 11:37:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:37 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53623 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:39 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53624,50035,0,2108,0,10,52454,TO_TIMESTAMP('2014-07-14 11:37:37','YYYY-MM-DD HH24:MI:SS'),100,'Description of the Line','ECA02','Y','N','N','N','N','N','N','Line Description',24,TO_TIMESTAMP('2014-07-14 11:37:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:39 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53624 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:41 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53625,50035,0,441,0,12,52455,TO_TIMESTAMP('2014-07-14 11:37:39','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','N','N','N','N','N','N','Line Amount',25,TO_TIMESTAMP('2014-07-14 11:37:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:41 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53625 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:44 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53626,50035,0,449,0,19,52456,TO_TIMESTAMP('2014-07-14 11:37:41','YYYY-MM-DD HH24:MI:SS'),100,'Unique identifier of a Price List','ECA02','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','Y','N','N','N','N','N','N','Price List',26,TO_TIMESTAMP('2014-07-14 11:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:44 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53626 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:46 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53627,50035,0,454,0,30,52457,TO_TIMESTAMP('2014-07-14 11:37:44','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','ECA02','Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','Product',27,TO_TIMESTAMP('2014-07-14 11:37:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:46 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53627 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:49 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53628,50035,0,2452,0,19,52458,TO_TIMESTAMP('2014-07-14 11:37:46','YYYY-MM-DD HH24:MI:SS'),100,'Material Requisition','ECA02','Y','N','N','N','N','N','N','Requisition',28,TO_TIMESTAMP('2014-07-14 11:37:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:49 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53628 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:51 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53629,50035,0,2453,0,19,52459,TO_TIMESTAMP('2014-07-14 11:37:49','YYYY-MM-DD HH24:MI:SS'),100,'Material Requisition Line','ECA02','Y','N','N','N','N','N','N','Requisition Line',29,TO_TIMESTAMP('2014-07-14 11:37:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:51 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53629 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:53 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53630,50035,0,459,0,19,52460,TO_TIMESTAMP('2014-07-14 11:37:51','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','ECA02','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','Warehouse',30,TO_TIMESTAMP('2014-07-14 11:37:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:53 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53630 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:56 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53631,50035,0,519,0,37,52461,TO_TIMESTAMP('2014-07-14 11:37:53','YYYY-MM-DD HH24:MI:SS'),100,'Actual Price ','ECA02','The Actual or Unit Price indicates the Price for a product in source currency.','Y','N','N','N','N','N','N','Unit Price',31,TO_TIMESTAMP('2014-07-14 11:37:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:56 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53631 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:37:59 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53632,50035,0,522,0,17,154,52462,TO_TIMESTAMP('2014-07-14 11:37:56','YYYY-MM-DD HH24:MI:SS'),100,'Priority of a document','ECA02','The Priority indicates the importance (high, medium, low) of this document','Y','N','N','N','N','N','N','Priority',32,TO_TIMESTAMP('2014-07-14 11:37:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:37:59 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53632 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:38:02 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53633,50035,0,1047,0,20,52463,TO_TIMESTAMP('2014-07-14 11:37:59','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','Processed',33,TO_TIMESTAMP('2014-07-14 11:37:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:38:02 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53633 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:38:04 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53634,50035,0,526,0,29,52464,TO_TIMESTAMP('2014-07-14 11:38:02','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02','The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','Quantity',34,TO_TIMESTAMP('2014-07-14 11:38:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:38:04 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53634 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:38:06 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53635,50035,0,531,0,29,52465,TO_TIMESTAMP('2014-07-14 11:38:04','YYYY-MM-DD HH24:MI:SS'),100,'Ordered Quantity','ECA02','The Ordered Quantity indicates the quantity of a product that was ordered.','Y','N','N','N','N','N','N','Ordered Quantity',35,TO_TIMESTAMP('2014-07-14 11:38:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:38:06 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53635 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:38:09 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53636,50035,0,598,0,12,52466,TO_TIMESTAMP('2014-07-14 11:38:07','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines','ECA02','The Total amount displays the total of all lines in document currency','Y','N','N','N','N','N','N','Total Lines',36,TO_TIMESTAMP('2014-07-14 11:38:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:38:09 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53636 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:38:11 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53637,50035,0,607,0,16,52467,TO_TIMESTAMP('2014-07-14 11:38:09','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',37,TO_TIMESTAMP('2014-07-14 11:38:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:38:11 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53637 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 11:38:14 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53638,50035,0,608,0,18,110,52468,TO_TIMESTAMP('2014-07-14 11:38:11','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',38,TO_TIMESTAMP('2014-07-14 11:38:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 11:38:14 AM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53638 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- 14/07/2014 04:49:41 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53610
;

-- 14/07/2014 04:49:41 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53611
;

-- 14/07/2014 04:49:42 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53612
;

-- 14/07/2014 04:49:42 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53614
;

-- 14/07/2014 04:49:42 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53613
;

-- 14/07/2014 04:49:42 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53615
;

-- 14/07/2014 04:49:42 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53617
;

-- 14/07/2014 04:49:43 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53618
;

-- 14/07/2014 04:49:43 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53620
;

-- 14/07/2014 04:49:43 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53621
;

-- 14/07/2014 04:49:43 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53622
;

-- 14/07/2014 04:49:44 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53624
;

-- 14/07/2014 04:49:44 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53626
;

-- 14/07/2014 04:49:44 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53630
;

-- 14/07/2014 04:49:44 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53632
;

-- 14/07/2014 04:49:45 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53633
;

-- 14/07/2014 04:49:45 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53635
;

-- 14/07/2014 04:49:45 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53636
;

-- 14/07/2014 04:49:45 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53638
;

-- 14/07/2014 04:49:45 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-14 16:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53637
;

-- 14/07/2014 04:49:46 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-07-14 16:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53629
;

-- 14/07/2014 04:49:46 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-07-14 16:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53619
;

-- 14/07/2014 04:49:46 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-07-14 16:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53616
;

-- 14/07/2014 04:49:46 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-07-14 16:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53623
;

-- 14/07/2014 04:49:47 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-07-14 16:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53627
;

-- 14/07/2014 04:49:47 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-07-14 16:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53634
;

-- 14/07/2014 04:49:47 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-07-14 16:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53631
;

-- 14/07/2014 04:49:47 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-14 16:49:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53625
;

-- 14/07/2014 04:49:48 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-14 16:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53628
;

-- 14/07/2014 04:50:15 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-07-14 16:50:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53615
;

-- 14/07/2014 04:50:23 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-07-14 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53628
;

-- 14/07/2014 04:50:23 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-07-14 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53615
;

-- 14/07/2014 04:50:23 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-07-14 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53629
;

-- 14/07/2014 04:50:23 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-07-14 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53619
;

-- 14/07/2014 04:50:24 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-07-14 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53616
;

-- 14/07/2014 04:50:24 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-07-14 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53623
;

-- 14/07/2014 04:50:24 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-07-14 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53627
;

-- 14/07/2014 04:50:24 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-14 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53634
;

-- 14/07/2014 04:50:24 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-14 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53631
;

-- 14/07/2014 04:50:25 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-07-14 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53625
;

-- 14/07/2014 04:50:35 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-07-14 16:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53615
;

-- 14/07/2014 04:50:36 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-07-14 16:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53628
;

-- 14/07/2014 04:50:48 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_TIMESTAMP('2014-07-14 16:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53628
;

-- 14/07/2014 04:50:48 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_TIMESTAMP('2014-07-14 16:50:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53629
;

-- 14/07/2014 04:51:05 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y', IsQueryCriteria='Y', IsRange='Y',Updated=TO_TIMESTAMP('2014-07-14 16:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53615
;

-- 14/07/2014 04:51:18 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsDisplayed='N', IsIdentifier='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-07-14 16:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53628
;

-- 14/07/2014 04:51:25 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y',Updated=TO_TIMESTAMP('2014-07-14 16:51:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53629
;

-- 14/07/2014 04:55:11 PM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73422,74036,0,613,TO_TIMESTAMP('2014-07-14 16:55:02','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Create From Requisition',TO_TIMESTAMP('2014-07-14 16:55:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/07/2014 04:55:11 PM VET
-- Request for Quotation Create From Requisition
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74036 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/07/2014 06:09:22 PM VET
-- Request for Quotation Create From Requisition
UPDATE AD_Process SET AD_Browse_ID=50035,Updated=TO_TIMESTAMP('2014-07-14 18:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53654
;


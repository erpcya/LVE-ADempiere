-- Dec 16, 2014 11:27:08 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=5,Updated=TO_TIMESTAMP('2014-12-16 11:27:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Dec 16, 2014 11:28:12 AM VET
-- LVE ADempiere
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52413,'EXISTS (SELECT 1 FROM  C_OrderLine ol WHERE ol.C_OrderLine_ID =  @C_OrderLine_ID@ AND M_Warehouse.AD_Org_ID = ol.AD_Org_ID)
',TO_TIMESTAMP('2014-12-16 11:28:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','M_Warehouse Org of Line','S',TO_TIMESTAMP('2014-12-16 11:28:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 11:28:20 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52413,Updated=TO_TIMESTAMP('2014-12-16 11:28:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54994
;

-- Dec 16, 2014 11:28:41 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52413,Updated=TO_TIMESTAMP('2014-12-16 11:28:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 11:28:49 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET IsMandatory='Y', SeqNo=5,Updated=TO_TIMESTAMP('2014-12-16 11:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55074
;

-- Dec 16, 2014 11:28:53 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=15,Updated=TO_TIMESTAMP('2014-12-16 11:28:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 11:29:01 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2014-12-16 11:29:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55075
;

-- Dec 16, 2014 11:49:47 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53725,55076,19,'AD_Org_ID',TO_TIMESTAMP('2014-12-16 11:49:40','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',25,TO_TIMESTAMP('2014-12-16 11:49:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 11:49:47 AM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55076 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 16, 2014 11:50:01 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2014-12-16 11:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55075
;

-- Dec 16, 2014 11:50:05 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2014-12-16 11:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55074
;

-- Dec 16, 2014 11:50:10 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_TIMESTAMP('2014-12-16 11:50:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 11:50:28 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=40,Updated=TO_TIMESTAMP('2014-12-16 11:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 11:50:33 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_TIMESTAMP('2014-12-16 11:50:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55075
;

-- Dec 16, 2014 11:50:36 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2014-12-16 11:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55076
;

-- Dec 16, 2014 11:51:55 AM VET
-- LVE ADempiere
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52414,'EXISTS (SELECT 1 FROM C_OrderLine ol WHERE ol.C_Order_ID = @C_Order_ID@ AND AD_Org.AD_Org_ID = ol.AD_Org_ID)',TO_TIMESTAMP('2014-12-16 11:51:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AD_Org In Sales Order Line','S',TO_TIMESTAMP('2014-12-16 11:51:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 11:52:06 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52414,Updated=TO_TIMESTAMP('2014-12-16 11:52:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55076
;

-- Dec 16, 2014 11:52:12 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-12-16 11:52:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55076
;

-- Dec 16, 2014 11:52:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52415,'C_OrderLine.C_Order_ID=@C_Order_ID@',TO_TIMESTAMP('2014-12-16 11:52:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_OrderLine of Order And Organization','S',TO_TIMESTAMP('2014-12-16 11:52:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 11:53:31 AM VET
-- LVE ADempiere
UPDATE AD_Val_Rule SET Code='C_OrderLine.C_Order_ID=@C_Order_ID@
EXISTS ( SELECT 1 FROM  C_OrderLine WHERE ol.C_OrderLine_ID = C_OrderLine.C_OrderLine_ID AND C_OrderLine.AD_Org_ID = @AD_Org_ID@ AND C_OrderLine.C_Order_ID=@C_Order_ID@)',Updated=TO_TIMESTAMP('2014-12-16 11:53:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52415
;

-- Dec 16, 2014 11:53:43 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52415,Updated=TO_TIMESTAMP('2014-12-16 11:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55075
;

-- Dec 16, 2014 11:53:50 AM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=189,Updated=TO_TIMESTAMP('2014-12-16 11:53:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;

-- Dec 16, 2014 11:54:40 AM VET
-- LVE ADempiere
UPDATE AD_Val_Rule SET Code='C_OrderLine.C_Order_ID=@C_Order_ID@
EXIST ( SELECT 1 FROM  C_OrderLine WHERE ol.C_OrderLine_ID = C_OrderLine.C_OrderLine_ID AND C_OrderLine.AD_Org_ID = @AD_Org_ID@ AND C_OrderLine.C_Order_ID=@C_Order_ID@)',Updated=TO_TIMESTAMP('2014-12-16 11:54:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52415
;

-- Dec 16, 2014 11:55:10 AM VET
-- LVE ADempiere
UPDATE AD_Val_Rule SET Code='EXISTS ( SELECT 1 FROM  C_OrderLine WHERE ol.C_OrderLine_ID = C_OrderLine.C_OrderLine_ID AND C_OrderLine.AD_Org_ID = @AD_Org_ID@ AND C_OrderLine.C_Order_ID=@C_Order_ID@)',Updated=TO_TIMESTAMP('2014-12-16 11:55:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52415
;

-- Dec 16, 2014 11:56:18 AM VET
-- LVE ADempiere
UPDATE AD_Val_Rule SET Code='EXISTS ( SELECT 1 FROM  C_OrderLine ol WHERE ol.C_OrderLine_ID = C_OrderLine.C_OrderLine_ID AND C_OrderLine.AD_Org_ID = @AD_Org_ID@ AND ol.C_Order_ID=@C_Order_ID@)',Updated=TO_TIMESTAMP('2014-12-16 11:56:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52415
;

-- Dec 16, 2014 2:02:57 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2014-12-16 14:02:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54994
;

-- Dec 16, 2014 2:03:02 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2014-12-16 14:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Dec 16, 2014 2:03:05 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_TIMESTAMP('2014-12-16 14:03:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54994
;

-- Dec 16, 2014 2:03:08 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_TIMESTAMP('2014-12-16 14:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Dec 16, 2014 2:03:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53708,55077,19,52414,'AD_Org_ID',TO_TIMESTAMP('2014-12-16 14:03:32','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2014-12-16 14:03:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 2:03:33 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55077 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 16, 2014 2:03:48 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET AD_Val_Rule_ID=189,Updated=TO_TIMESTAMP('2014-12-16 14:03:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54994
;

-- Dec 16, 2014 2:04:45 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-12-16 14:04:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55077
;

-- Dec 16, 2014 2:05:33 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-12-16 14:05:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55077
;

-- Dec 16, 2014 2:06:15 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-12-16 14:06:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Dec 16, 2014 2:06:18 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-12-16 14:06:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54994
;

-- Dec 16, 2014 2:06:29 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='-1', IsMandatory='Y',Updated=TO_TIMESTAMP('2014-12-16 14:06:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55076
;

-- Dec 16, 2014 2:06:37 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-12-16 14:06:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55073
;


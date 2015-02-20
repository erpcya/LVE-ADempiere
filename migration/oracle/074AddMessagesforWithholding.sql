-- 22/08/2013 04:41:34 PM VET
-- LVE Withholding
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53231,0,TO_DATE('2013-08-22 16:41:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Retention Agent','I',TO_DATE('2013-08-22 16:41:32','YYYY-MM-DD HH24:MI:SS'),100,'RetentionAgent')
;

-- 22/08/2013 04:41:34 PM VET
-- LVE Withholding
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53231 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 22/08/2013 04:41:54 PM VET
-- LVE Withholding
UPDATE AD_Message_Trl SET MsgText='Agente de Retencion',Updated=TO_DATE('2013-08-22 16:41:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53231 AND AD_Language='es_MX'
;

-- 22/08/2013 04:43:09 PM VET
-- LVE Withholding
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,53232,0,TO_DATE('2013-08-22 16:42:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','IVATaxpayer',NULL,'I',TO_DATE('2013-08-22 16:42:58','YYYY-MM-DD HH24:MI:SS'),100,'IVATaxpayer')
;

-- 22/08/2013 04:43:09 PM VET
-- LVE Withholding
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53232 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 22/08/2013 04:43:29 PM VET
-- LVE Withholding
UPDATE AD_Message_Trl SET MsgText='Contribuyente IVA',Updated=TO_DATE('2013-08-22 16:43:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53232 AND AD_Language='es_MX'
;


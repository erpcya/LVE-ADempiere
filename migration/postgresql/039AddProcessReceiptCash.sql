-- Aug 26, 2013 7:53:59 AM VET
-- LVE Withholding
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53058,407,TO_TIMESTAMP('2013-08-26 07:53:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_ViewCash',TO_TIMESTAMP('2013-08-26 07:53:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 26, 2013 7:54:15 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53440,53058,'N',TO_TIMESTAMP('2013-08-26 07:54:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Receipt Cash','Y',0,0,TO_TIMESTAMP('2013-08-26 07:54:14','YYYY-MM-DD HH24:MI:SS'),100,'LVE_Cash ReceiptCash')
;

-- Aug 26, 2013 7:54:15 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53440 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 26, 2013 7:54:28 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Recibo de Caja',Updated=TO_TIMESTAMP('2013-08-26 07:54:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53440 AND AD_Language='es_MX'
;

-- Aug 26, 2013 7:55:29 AM VET
-- LVE Withholding
UPDATE AD_Tab SET AD_Process_ID=53440,Updated=TO_TIMESTAMP('2013-08-26 07:55:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=338
;


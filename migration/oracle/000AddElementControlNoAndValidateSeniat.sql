-- 2/08/2013 09:14:11 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56068,0,'ControlNo',TO_DATE('2013-08-02 09:14:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Control No','Control No',TO_DATE('2013-08-02 09:14:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/08/2013 09:14:11 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56068 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 2/08/2013 09:14:27 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='No. Control',PrintName='No. Control',Updated=TO_DATE('2013-08-02 09:14:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56068 AND AD_Language='es_MX'
;

-- 16-ago-2013 12:01:05 VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56121,0,'ValidateSeniat',TO_DATE('2013-08-16 12:01:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Validate Seniat','Validate Seniat',TO_DATE('2013-08-16 12:01:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16-ago-2013 12:01:05 VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56121 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 16-ago-2013 12:01:13 VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Validar R.I.F. Seniat',PrintName='Validar R.I.F. Seniat',Updated=TO_DATE('2013-08-16 12:01:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56121 AND AD_Language='es_MX'
;

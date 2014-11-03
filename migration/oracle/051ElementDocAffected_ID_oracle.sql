-- Jul 30, 2013 10:17:46 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56067,0,'DocAffected',TO_DATE('2013-07-30 10:17:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Doc Affected','Doc Affected',TO_DATE('2013-07-30 10:17:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 10:17:46 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56067 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 10:18:00 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Documento Afectado',PrintName='Documento Afectado',Updated=TO_DATE('2013-07-30 10:18:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067 AND AD_Language='es_MX'
;

-- Nov 3, 2014 3:56:57 PM VET
-- LVE ADempiere
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2014-11-03 15:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67223
;

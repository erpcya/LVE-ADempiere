-- Feb 20, 2015 3:22:25 PM VET
-- LVE-ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57875,0,20,'IsValidateReference',TO_DATE('2015-02-20 15:22:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Validate Reference','Validate Reference',TO_DATE('2015-02-20 15:22:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 20, 2015 3:22:25 PM VET
-- LVE-ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57875 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 20, 2015 3:22:34 PM VET
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Validar Referencia',PrintName='Validar Referencia',Updated=TO_DATE('2015-02-20 15:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57875 AND AD_Language='es_MX'
;

-- Feb 20, 2015 3:22:41 PM VET
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Validar Referencia',PrintName='Validar Referencia',Updated=TO_DATE('2015-02-20 15:22:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57875 AND AD_Language='es_VE'
;

-- Feb 20, 2015 3:23:08 PM VET
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75905,57875,0,20,217,'IsValidateReference',TO_DATE('2015-02-20 15:23:07','YYYY-MM-DD HH24:MI:SS'),100,'D',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Validate Reference',0,TO_DATE('2015-02-20 15:23:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 20, 2015 3:23:08 PM VET
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75905 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 20, 2015 3:26:44 PM VET
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75905,76219,0,167,TO_DATE('2015-02-20 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,0,'D','N','Y','N','Y','Y','N','N','N','N','N','Validate Reference',0,330,0,TO_DATE('2015-02-20 15:26:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 20, 2015 3:26:44 PM VET
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=76219 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 20, 2015 3:35:40 PM VET
-- LVE-ADempiere
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2015-02-20 15:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75905
;

-- Feb 20, 2015 3:39:00 PM VET
-- LVE-ADempiere
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''ARI'' | @DocBaseType@ =''API'' | @DocBaseType@ =''ARC'' | @DocBaseType@ =''APC''',Updated=TO_DATE('2015-02-20 15:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=76219
;


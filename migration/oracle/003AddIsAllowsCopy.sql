-- Jun 16, 2014 10:15:47 AM VET
-- LVE ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000255,0,20,'IsAllowCopy',TO_DATE('2014-06-16 10:15:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Allow Copy','Allow Copy',TO_DATE('2014-06-16 10:15:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 10:15:47 AM VET
-- LVE ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000255 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 16, 2014 10:15:55 AM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET Name='Permite Copiar',PrintName='Permite Copiar',Updated=TO_DATE('2014-06-16 10:15:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000255 AND AD_Language='es_MX'
;

-- Jun 16, 2014 10:15:59 AM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET Name='Permite Copiar',PrintName='Permite Copiar',Updated=TO_DATE('2014-06-16 10:15:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000255 AND AD_Language='es_VE'
;

-- Jun 16, 2014 10:16:12 AM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000455,3000255,0,20,107,'IsAllowCopy',TO_DATE('2014-06-16 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Allow Copy',0,TO_DATE('2014-06-16 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 16, 2014 10:16:12 AM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000455 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 16, 2014 10:16:42 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000455,3000442,0,107,TO_DATE('2014-06-16 10:16:41','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Allow Copy',TO_DATE('2014-06-16 10:16:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 10:16:42 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000442 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 16, 2014 10:16:43 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,54359,3000443,0,107,TO_DATE('2014-06-16 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,'Fully qualified class name that implements the InfoFactory interface',255,'D','Fully qualified class name that implements the InfoFactory interface. This can be use to provide custom Info class for column.','Y','Y','Y','N','N','N','N','N','Info Factory Class',TO_DATE('2014-06-16 10:16:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 10:16:43 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000443 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 16, 2014 10:16:49 AM VET
-- LVE ADempiere
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=3000443
;

-- Jun 16, 2014 10:16:49 AM VET
-- LVE ADempiere
DELETE FROM AD_Field WHERE AD_Field_ID=3000443
;

-- Jun 16, 2014 10:17:29 AM VET
-- LVE ADempiere
UPDATE AD_SysConfig SET Value='I',Updated=TO_DATE('2014-06-16 10:17:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=50034
;


-- 27/07/2014 12:25:49 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57334,0,18,3,'Product_Column_ID',TO_TIMESTAMP('2014-07-27 00:25:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Product Column','Product Column',TO_TIMESTAMP('2014-07-27 00:25:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:25:49 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57334 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/07/2014 12:26:12 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Producto',PrintName='Columna Producto',Description='Columna de Referencia de Producto',Updated=TO_TIMESTAMP('2014-07-27 00:26:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57334 AND AD_Language='es_MX'
;

-- 27/07/2014 12:27:18 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57335,0,18,3,'Attribute_Column_ID',TO_TIMESTAMP('2014-07-27 00:27:12','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Attribute Column','Attribute Column',TO_TIMESTAMP('2014-07-27 00:27:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:27:18 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57335 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/07/2014 12:27:26 AM CEST
-- LVE-ADempiere
UPDATE AD_Element SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-07-27 00:27:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57335
;

-- 27/07/2014 12:27:31 AM CEST
-- LVE-ADempiere
UPDATE AD_Element SET FieldLength=10,Updated=TO_TIMESTAMP('2014-07-27 00:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57335
;

-- 27/07/2014 12:27:36 AM CEST
-- LVE-ADempiere
UPDATE AD_Element SET FieldLength=10,Updated=TO_TIMESTAMP('2014-07-27 00:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57334
;

-- 27/07/2014 12:28:10 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Atributo',PrintName='Columna Atributo',Description='Columna de Referencia de Atributo',Updated=TO_TIMESTAMP('2014-07-27 00:28:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57335 AND AD_Language='es_MX'
;

-- 27/07/2014 12:30:11 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57336,0,18,3,'Warehouse_Column_ID',TO_TIMESTAMP('2014-07-27 00:30:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Warehouse Column','Warehouse Column',TO_TIMESTAMP('2014-07-27 00:30:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:30:11 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57336 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/07/2014 12:30:39 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Almacén',PrintName='Columna Almacén',Description='Columna de Referencia de Almacén',Updated=TO_TIMESTAMP('2014-07-27 00:30:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57336 AND AD_Language='es_MX'
;

-- 27/07/2014 12:31:17 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57337,0,18,3,'Qty_Column_ID',TO_TIMESTAMP('2014-07-27 00:31:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Qty Column','Qty Column',TO_TIMESTAMP('2014-07-27 00:31:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:31:17 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57337 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/07/2014 12:31:40 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Cantidad',PrintName='Columna Cantidad',Description='Columna de Referencia de Cantidad',Updated=TO_TIMESTAMP('2014-07-27 00:31:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57337 AND AD_Language='es_MX'
;

-- 27/07/2014 12:32:09 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Cantidad',PrintName='Columna Cantidad',Description='Columna de Referencia de Cantidad',Updated=TO_TIMESTAMP('2014-07-27 00:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57337 AND AD_Language='es_VE'
;

-- 27/07/2014 12:32:32 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna de Almacén',PrintName='Columna de Almacén',Description='Columna de Referencia de Almacén',Updated=TO_TIMESTAMP('2014-07-27 00:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57336 AND AD_Language='es_VE'
;

-- 27/07/2014 12:32:55 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Atributo',PrintName='Columna Atributo',Description='Columna de Referencia de Atributo',Updated=TO_TIMESTAMP('2014-07-27 00:32:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57335 AND AD_Language='es_VE'
;

-- 27/07/2014 12:33:15 AM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Columna Producto',PrintName='Columna Producto',Description='Columna de Referencia de Producto',Updated=TO_TIMESTAMP('2014-07-27 00:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57334 AND AD_Language='es_VE'
;

-- 27/07/2014 12:34:30 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73850,57334,0,18,3,53847,100,'Product_Column_ID',TO_TIMESTAMP('2014-07-27 00:34:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Product Column',0,TO_TIMESTAMP('2014-07-27 00:34:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/07/2014 12:34:30 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73850 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/07/2014 12:35:03 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73851,57335,0,18,3,53847,100,'Attribute_Column_ID',TO_TIMESTAMP('2014-07-27 00:35:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Attribute Column',0,TO_TIMESTAMP('2014-07-27 00:35:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/07/2014 12:35:03 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73851 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/07/2014 12:35:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-27 00:35:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73850
;

-- 27/07/2014 12:35:23 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73852,57336,0,18,3,53847,100,'Warehouse_Column_ID',TO_TIMESTAMP('2014-07-27 00:35:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Warehouse Column',0,TO_TIMESTAMP('2014-07-27 00:35:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/07/2014 12:35:23 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73852 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/07/2014 12:35:43 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73853,57337,0,18,3,53847,100,'Qty_Column_ID',TO_TIMESTAMP('2014-07-27 00:35:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Qty Column',0,TO_TIMESTAMP('2014-07-27 00:35:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/07/2014 12:35:43 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73853 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/07/2014 12:35:48 AM CEST
-- LVE-ADempiere
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-27 00:35:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73852
;

-- 27/07/2014 12:37:26 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73851,74160,0,53987,TO_TIMESTAMP('2014-07-27 00:37:24','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Attribute Column',TO_TIMESTAMP('2014-07-27 00:37:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:37:26 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74160 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/07/2014 12:37:28 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73850,74161,0,53987,TO_TIMESTAMP('2014-07-27 00:37:26','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Product Column',TO_TIMESTAMP('2014-07-27 00:37:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:37:28 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74161 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/07/2014 12:37:29 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73853,74162,0,53987,TO_TIMESTAMP('2014-07-27 00:37:28','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Qty Column',TO_TIMESTAMP('2014-07-27 00:37:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:37:29 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74162 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/07/2014 12:37:31 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73852,74163,0,53987,TO_TIMESTAMP('2014-07-27 00:37:29','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Warehouse Column',TO_TIMESTAMP('2014-07-27 00:37:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/07/2014 12:37:31 AM CEST
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74163 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74147
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74142
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74161
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74160
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74163
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74162
;

-- 27/07/2014 12:38:06 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-07-27 00:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74146
;

-- 27/07/2014 12:38:19 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-07-27 00:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74142
;

-- 27/07/2014 12:38:24 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-07-27 00:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74160
;

-- 27/07/2014 12:38:32 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-07-27 00:38:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74162
;

-- 27/07/2014 12:38:36 AM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-07-27 00:38:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74146
;


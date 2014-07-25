-- 25/07/2014 04:24:15 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73849,57331,0,19,53848,'LVE_WarehouseProduct_ID',TO_DATE('2014-07-25 16:24:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','Y','Y','N','N','N','N','Warehouse of Product',0,TO_DATE('2014-07-25 16:24:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/07/2014 04:24:15 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73849 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/07/2014 04:25:00 PM CEST
-- LVE-ADempiere
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2014-07-25 16:25:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53988
;

-- 25/07/2014 04:26:33 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73849,74159,0,53988,TO_DATE('2014-07-25 16:26:31','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Warehouse of Product',TO_DATE('2014-07-25 16:26:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/07/2014 04:26:33 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74159 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74159
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74149
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74157
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74154
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74156
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74152
;

-- 25/07/2014 04:27:11 PM CEST
-- LVE-ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-07-25 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74155
;

-- 25/07/2014 04:27:44 PM CEST
-- LVE-ADempiere
UPDATE AD_Window_Trl SET Name='Almacén por Producto',Updated=TO_DATE('2014-07-25 16:27:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53379 AND AD_Language='es_VE'
;

-- 25/07/2014 04:27:55 PM CEST
-- LVE-ADempiere
UPDATE AD_Tab_Trl SET Name='Almacén por Producto',Updated=TO_DATE('2014-07-25 16:27:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53987 AND AD_Language='es_VE'
;

-- 25/07/2014 04:28:04 PM CEST
-- LVE-ADempiere
UPDATE AD_Tab_Trl SET Name='Línea',Updated=TO_DATE('2014-07-25 16:28:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53988 AND AD_Language='es_VE'
;

-- 25/07/2014 04:28:20 PM CEST
-- LVE-ADempiere
UPDATE AD_Table_Trl SET Name='Línea de Almacén por Producto',Updated=TO_DATE('2014-07-25 16:28:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53848 AND AD_Language='es_VE'
;

-- 25/07/2014 04:28:41 PM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Siempre Establece el Almacén',PrintName='Siempre Establece el Almacén',Updated=TO_DATE('2014-07-25 16:28:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57333 AND AD_Language='es_VE'
;

-- 25/07/2014 04:29:13 PM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Línea de Almacén por Producto',PrintName='Línea de Almacén por Producto',Updated=TO_DATE('2014-07-25 16:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57332 AND AD_Language='es_VE'
;

-- 25/07/2014 04:29:34 PM CEST
-- LVE-ADempiere
UPDATE AD_Table_Trl SET Name='Almacén por Producto',Updated=TO_DATE('2014-07-25 16:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53847 AND AD_Language='es_VE'
;

-- 25/07/2014 04:29:55 PM CEST
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Almacén por Producto',PrintName='Almacén por Producto',Updated=TO_DATE('2014-07-25 16:29:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57331 AND AD_Language='es_VE'
;


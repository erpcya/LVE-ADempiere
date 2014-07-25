-- 25/07/2014 05:10:13 PM CEST
-- LVE-ADempiere
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-07-25 17:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73842
;

-- 25/07/2014 05:11:15 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52386,'EXISTS (SELECT 1 FROM AD_Column c WHERE AD_Table.AD_Table_ID=c.AD_Table_ID AND c.IsActive=''Y'' AND c.ColumnName=''M_Product_ID'') AND AD_Table.IsView=''N''',TO_TIMESTAMP('2014-07-25 17:11:14','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','AD_Table with Product','S',TO_TIMESTAMP('2014-07-25 17:11:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/07/2014 05:11:30 PM CEST
-- LVE-ADempiere
UPDATE AD_Column SET AD_Val_Rule_ID=52386,Updated=TO_TIMESTAMP('2014-07-25 17:11:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73832
;

-- 25/07/2014 05:12:08 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Tab (AD_Client_ID,AD_ColumnSortOrder_ID,AD_ColumnSortYesNo_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,73844,73836,0,53989,53848,53379,TO_TIMESTAMP('2014-07-25 17:12:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','N','Y','N','Sequence','N',30,1,TO_TIMESTAMP('2014-07-25 17:12:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/07/2014 05:12:08 PM CEST
-- LVE-ADempiere
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53989 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 25/07/2014 05:12:15 PM CEST
-- LVE-ADempiere
UPDATE AD_Tab_Trl SET Name='Secuencia',Updated=TO_TIMESTAMP('2014-07-25 17:12:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53989 AND AD_Language='es_MX'
;

-- 25/07/2014 05:12:21 PM CEST
-- LVE-ADempiere
UPDATE AD_Tab_Trl SET Name='Secuencia',Updated=TO_TIMESTAMP('2014-07-25 17:12:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53989 AND AD_Language='es_VE'
;

-- 25/07/2014 05:14:38 PM CEST
-- LVE-ADempiere
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-25 17:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73835
;

-- 25/07/2014 05:14:48 PM CEST
-- LVE-ADempiere
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-25 17:14:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73842
;

-- 25/07/2014 05:14:54 PM CEST
-- LVE-ADempiere
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-25 17:14:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73843
;


-- Dec 15, 2014 4:25:26 PM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66490,74926,0,270,TO_TIMESTAMP('2014-12-15 16:25:20','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','N','Y','Y','N','N','N','N','N','Doc Affected',0,280,0,TO_TIMESTAMP('2014-12-15 16:25:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 4:25:26 PM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74926 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 15, 2014 4:25:33 PM VET
-- LVE ADempiere
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2014-12-15 16:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74926
;

-- Dec 15, 2014 4:27:28 PM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsAllowsCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66490,104,74927,0,291,TO_TIMESTAMP('2014-12-15 16:27:27','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','N','Y','Y','N','N','N','N','N','Doc Affected',0,330,0,TO_TIMESTAMP('2014-12-15 16:27:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 15, 2014 4:27:28 PM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74927 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 15, 2014 4:27:37 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-12-15 16:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74927
;

-- Dec 15, 2014 4:28:31 PM VET
-- LVE ADempiere
UPDATE AD_Val_Rule SET Code='C_Invoice.C_BPartner_ID= @C_BPartner_ID@ AND DocStatus IN (''CO'') AND IsSOTrx = ''@IsSOTrx@'' AND C_DocTypeTarget_ID <> @C_DocTypeTarget_ID@',Updated=TO_TIMESTAMP('2014-12-15 16:28:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52280
;

-- Dec 15, 2014 4:28:34 PM VET
-- LVE ADempiere
UPDATE AD_Column SET AD_Reference_Value_ID=336,Updated=TO_TIMESTAMP('2014-12-15 16:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66490
;

-- Dec 15, 2014 4:30:05 PM VET
-- LVE ADempiere
ALTER TABLE C_InvoiceLine ADD COLUMN DocAffected_ID NUMERIC(10) DEFAULT NULL 
;

-- Dec 15, 2014 4:38:19 PM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-12-15 16:38:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74926
;


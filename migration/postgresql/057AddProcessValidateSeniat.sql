-- 24/09/2013 10:35:29 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53465,'org.spin.process.ValidateSeniat','N',TO_TIMESTAMP('2013-09-24 10:35:26','YYYY-MM-DD HH24:MI:SS'),100,'Validate Seniat','ECA02','Y','N','N','N','N','Validate Seniat','Y',0,0,TO_TIMESTAMP('2013-09-24 10:35:26','YYYY-MM-DD HH24:MI:SS'),100,'LVE_BPartner ValidateSeniat')
;

-- 24/09/2013 10:35:29 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53465 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 24/09/2013 10:35:45 AM VET
-- SFAndroid Contribution
UPDATE AD_Process_Trl SET Name='Validar en el S.E.N.I.A.T.',Description='Validar en el S.E.N.I.A.T.',Updated=TO_TIMESTAMP('2013-09-24 10:35:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53465 AND AD_Language='es_MX'
;

-- 24/09/2013 10:36:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68022,56121,0,53465,28,291,'ValidateSeniat',TO_TIMESTAMP('2013-09-24 10:36:28','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Validate Seniat',0,TO_TIMESTAMP('2013-09-24 10:36:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/09/2013 10:36:32 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68022 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 24/09/2013 10:36:38 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-24 10:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68022
;

-- 24/09/2013 10:36:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68022,69623,0,220,TO_TIMESTAMP('2013-09-24 10:36:53','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Validate Seniat',TO_TIMESTAMP('2013-09-24 10:36:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/09/2013 10:36:54 AM VET
-- SFAndroid Contribution
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69623 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 24/09/2013 10:37:07 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=69623
;

-- 24/09/2013 10:37:14 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-24 10:37:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69623
;

-- 24/09/2013 10:37:17 AM VET
-- SFAndroid Contribution
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-09-24 10:37:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9627
;

-- 24/09/2013 10:39:32 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2013-09-24 10:39:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2901
;

-- 24/09/2013 10:39:43 AM VET
-- SFAndroid Contribution
UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2013-09-24 10:39:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2909
;

-- 24/09/2013 10:40:11 AM VET
-- SFAndroid Contribution
ALTER TABLE C_BPartner ADD COLUMN ValidateSeniat CHAR(1) DEFAULT NULL 
;


-- 16-ago-2013 12:02:06 VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Callout,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66770,56121,0,28,291,'org.spin.model.CalloutBPartner.validateSeniat','ValidateSeniat',TO_TIMESTAMP('2013-08-16 12:02:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Validate Seniat',0,TO_TIMESTAMP('2013-08-16 12:02:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16-ago-2013 12:02:06 VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66770 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16-ago-2013 12:02:19 VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,58596,68243,0,220,TO_TIMESTAMP('2013-08-16 12:02:19','YYYY-MM-DD HH24:MI:SS'),100,'Indicate role of this Business partner as Manufacturer',1,'U','Y','Y','Y','N','N','N','N','N','Is Manufacturer',TO_TIMESTAMP('2013-08-16 12:02:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16-ago-2013 12:02:19 VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68243 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16-ago-2013 12:02:22 VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66770,68245,0,220,TO_TIMESTAMP('2013-08-16 12:02:21','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Validate Seniat',TO_TIMESTAMP('2013-08-16 12:02:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16-ago-2013 12:02:22 VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68245 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=68243
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=68244
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68245
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=9627
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=3261
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=2145
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3228
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=2133
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=2136
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=2141
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=8238
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=10592
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=2155
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2160
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=57981
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=54555
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2132
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2149
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=2144
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2162
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3955
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2124
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=2164
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=2139
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=9620
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2148
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=2128
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=2127
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=2146
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2154
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2153
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2135
;

-- 16-ago-2013 12:02:47 VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=57533
;

-- 16-ago-2013 12:03:11 VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-16 12:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68245
;

-- 16-ago-2013 12:03:16 VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-16 12:03:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9627
;

-- 16-ago-2013 12:06:50 VET
-- LVE Withholding
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50069,'S',TO_TIMESTAMP('2013-08-16 12:06:48','YYYY-MM-DD HH24:MI:SS'),100,'Url de seniat','ECA02','Y','URL_SENIAT',TO_TIMESTAMP('2013-08-16 12:06:48','YYYY-MM-DD HH24:MI:SS'),100,'http://contribuyente.seniat.gob.ve/getContribuyente/getrif?rif=')
;


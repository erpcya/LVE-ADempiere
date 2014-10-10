-- Sep 17, 2013 5:48:45 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67799,2115,0,10,533,'OrgValue',TO_DATE('2013-09-17 05:48:43','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Organization','ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Org Key',0,TO_DATE('2013-09-17 05:48:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 5:48:45 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67799 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 5:49:43 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67799,69400,0,441,TO_DATE('2013-09-17 05:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Organization',60,'ECA02','Y','Y','Y','N','N','N','N','N','Org Key',TO_DATE('2013-09-17 05:49:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:49:43 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69400 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=69400
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=5942
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=5936
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=5950
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=5928
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=5935
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=5925
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=5931
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=5953
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=6050
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=6051
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=5943
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=5948
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=5947
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=5927
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=5933
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=5945
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=5951
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=5954
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=5918
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=5949
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=5922
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=5929
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=5956
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=5946
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=5920
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=5921
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=5923
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=5952
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=5930
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=5944
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=5940
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=13015
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=13008
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=5919
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=5934
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=58038
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=58039
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=58040
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=5941
;

-- Sep 17, 2013 5:50:32 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=5924
;

-- Sep 17, 2013 5:50:44 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2013-09-17 05:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69400
;


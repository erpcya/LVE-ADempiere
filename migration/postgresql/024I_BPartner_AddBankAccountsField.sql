-- Sep 18, 2013 5:56:12 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67844,837,0,19,533,'C_BP_BankAccount_ID',TO_TIMESTAMP('2013-09-18 05:56:11','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner','ECA02',22,'The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Partner Bank Account',0,TO_TIMESTAMP('2013-09-18 05:56:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 5:56:12 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67844 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 5:57:54 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67845,52002,0,10,533,'BankName',TO_TIMESTAMP('2013-09-18 05:57:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank Name',0,TO_TIMESTAMP('2013-09-18 05:57:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 5:57:54 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67845 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 5:58:27 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67846,835,0,19,533,'C_Bank_ID',TO_TIMESTAMP('2013-09-18 05:58:27','YYYY-MM-DD HH24:MI:SS'),100,'Bank','ECA02',22,'The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank',0,TO_TIMESTAMP('2013-09-18 05:58:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 5:58:27 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67846 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 5:59:03 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67847,1473,0,20,533,'IsACH',TO_TIMESTAMP('2013-09-18 05:59:02','YYYY-MM-DD HH24:MI:SS'),100,'Automatic Clearing House','ECA02',60,'The ACH checkbox indicates if this Bank Account accepts ACH transactions.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ACH',0,TO_TIMESTAMP('2013-09-18 05:59:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 5:59:03 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67847 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 5:59:59 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67848,1461,0,17,216,533,'BankAccountType',TO_TIMESTAMP('2013-09-18 05:59:58','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account Type','U',1,'The Bank Account Type field indicates the type of account (savings, checking etc) this account  is defined as.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank Account Type',0,TO_TIMESTAMP('2013-09-18 05:59:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 5:59:59 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67848 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:00:04 AM VET
-- LVE-Import
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-18 06:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67848
;

-- Sep 18, 2013 6:00:13 AM VET
-- LVE-Import
UPDATE AD_Column SET FieldLength=1,Updated=TO_TIMESTAMP('2013-09-18 06:00:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67847
;

-- Sep 18, 2013 6:01:17 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67849,964,0,10,533,'RoutingNo',TO_TIMESTAMP('2013-09-18 06:01:16','YYYY-MM-DD HH24:MI:SS'),100,'Bank Routing Number','ECA02',20,'The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Routing No',0,TO_TIMESTAMP('2013-09-18 06:01:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:01:17 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67849 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:01:50 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67850,840,0,10,533,'AccountNo',TO_TIMESTAMP('2013-09-18 06:01:48','YYYY-MM-DD HH24:MI:SS'),100,'Account Number','ECA02',20,'The Account Number indicates the Number assigned to this bank account. ','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account No',0,TO_TIMESTAMP('2013-09-18 06:01:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:01:50 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67850 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:03:10 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67851,1012,0,17,149,533,'CreditCardType',TO_TIMESTAMP('2013-09-18 06:03:09','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card (Visa, MC, AmEx)','ECA02',1,'The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Credit Card',0,TO_TIMESTAMP('2013-09-18 06:03:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:03:10 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67851 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:04:05 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67852,249,0,10,533,'CreditCardNumber',TO_TIMESTAMP('2013-09-18 06:04:04','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Number ','ECA02',20,'The Credit Card number indicates the number on the credit card, without blanks or spaces.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Number',0,TO_TIMESTAMP('2013-09-18 06:04:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:04:05 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67852 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:04:27 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67853,1393,0,10,533,'CreditCardVV',TO_TIMESTAMP('2013-09-18 06:04:26','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification code on credit card','ECA02',4,'The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Verification Code',0,TO_TIMESTAMP('2013-09-18 06:04:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:04:27 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67853 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:04:54 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67854,1084,0,10,533,'CreditCardExpMM',TO_TIMESTAMP('2013-09-18 06:04:53','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Month','ECA02',10,'The Expiry Month indicates the expiry month for this credit card.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Exp. Month',0,TO_TIMESTAMP('2013-09-18 06:04:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:04:54 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67854 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:05:22 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67855,1085,0,10,533,'CreditCardExpYY',TO_TIMESTAMP('2013-09-18 06:05:21','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Year','ECA02',10,'The Expiry Year indicates the expiry year for this credit card.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Exp. Year',0,TO_TIMESTAMP('2013-09-18 06:05:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:05:22 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67855 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:05:47 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67856,1354,0,10,533,'A_Name',TO_TIMESTAMP('2013-09-18 06:05:47','YYYY-MM-DD HH24:MI:SS'),100,'Name on Credit Card or Account holder','ECA02',60,'The Name of the Credit Card or Account holder.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account Name',0,TO_TIMESTAMP('2013-09-18 06:05:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:05:47 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67856 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:06:16 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67857,1356,0,10,533,'A_Street',TO_TIMESTAMP('2013-09-18 06:06:15','YYYY-MM-DD HH24:MI:SS'),100,'Street address of the Credit Card or Account holder','ECA02',60,'The Street Address of the Credit Card or Account holder.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account Street',0,TO_TIMESTAMP('2013-09-18 06:06:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:06:16 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67857 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:06:37 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67858,1350,0,10,533,'A_City',TO_TIMESTAMP('2013-09-18 06:06:37','YYYY-MM-DD HH24:MI:SS'),100,'City or the Credit Card or Account Holder','ECA02',60,'The Account City indicates the City of the Credit Card or Account holder','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account City',0,TO_TIMESTAMP('2013-09-18 06:06:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:06:37 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67858 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:07:00 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67859,1355,0,10,533,'A_State',TO_TIMESTAMP('2013-09-18 06:06:59','YYYY-MM-DD HH24:MI:SS'),100,'State of the Credit Card or Account holder','ECA02',40,'The State of the Credit Card or Account holder','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account State',0,TO_TIMESTAMP('2013-09-18 06:06:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:07:00 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67859 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:07:28 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67860,1357,0,10,533,'A_Zip',TO_TIMESTAMP('2013-09-18 06:07:27','YYYY-MM-DD HH24:MI:SS'),100,'Zip Code of the Credit Card or Account Holder','ECA02',20,'The Zip Code of the Credit Card or Account Holder.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account Zip/Postal',0,TO_TIMESTAMP('2013-09-18 06:07:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:07:28 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67860 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:07:44 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67861,1352,0,10,533,'A_Ident_DL',TO_TIMESTAMP('2013-09-18 06:07:43','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Driver License','ECA02',20,'The Driver''s License being used as identification.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Driver License',0,TO_TIMESTAMP('2013-09-18 06:07:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:07:44 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67861 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:08:09 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67862,1351,0,10,533,'A_EMail',TO_TIMESTAMP('2013-09-18 06:08:08','YYYY-MM-DD HH24:MI:SS'),100,'Email Address','ECA02',60,'The EMail Address indicates the EMail address off the Credit Card or Account holder.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account EMail',0,TO_TIMESTAMP('2013-09-18 06:08:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:08:09 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67862 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:08:29 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67863,1353,0,10,533,'A_Ident_SSN',TO_TIMESTAMP('2013-09-18 06:08:28','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Social Security No','ECA02',20,'The Social Security number being used as identification.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Social Security No',0,TO_TIMESTAMP('2013-09-18 06:08:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:08:29 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67863 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:08:52 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67864,1988,0,10,533,'A_Country',TO_TIMESTAMP('2013-09-18 06:08:51','YYYY-MM-DD HH24:MI:SS'),100,'Country','ECA02',40,'Account Country Name','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account Country',0,TO_TIMESTAMP('2013-09-18 06:08:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:08:52 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67864 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:09:15 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67858,69443,0,441,TO_TIMESTAMP('2013-09-18 06:09:14','YYYY-MM-DD HH24:MI:SS'),100,'City or the Credit Card or Account Holder',60,'ECA02','The Account City indicates the City of the Credit Card or Account holder','Y','Y','Y','N','N','N','N','N','Account City',TO_TIMESTAMP('2013-09-18 06:09:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:15 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69443 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:16 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67864,69444,0,441,TO_TIMESTAMP('2013-09-18 06:09:15','YYYY-MM-DD HH24:MI:SS'),100,'Country',40,'ECA02','Account Country Name','Y','Y','Y','N','N','N','N','N','Account Country',TO_TIMESTAMP('2013-09-18 06:09:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:16 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69444 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:16 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67862,69445,0,441,TO_TIMESTAMP('2013-09-18 06:09:16','YYYY-MM-DD HH24:MI:SS'),100,'Email Address',60,'ECA02','The EMail Address indicates the EMail address off the Credit Card or Account holder.','Y','Y','Y','N','N','N','N','N','Account EMail',TO_TIMESTAMP('2013-09-18 06:09:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:16 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69445 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:17 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67856,69446,0,441,TO_TIMESTAMP('2013-09-18 06:09:16','YYYY-MM-DD HH24:MI:SS'),100,'Name on Credit Card or Account holder',60,'ECA02','The Name of the Credit Card or Account holder.','Y','Y','Y','N','N','N','N','N','Account Name',TO_TIMESTAMP('2013-09-18 06:09:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:17 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69446 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:17 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67850,69447,0,441,TO_TIMESTAMP('2013-09-18 06:09:17','YYYY-MM-DD HH24:MI:SS'),100,'Account Number',20,'ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','Y','Y','N','N','N','N','N','Account No',TO_TIMESTAMP('2013-09-18 06:09:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:17 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69447 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:18 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67859,69448,0,441,TO_TIMESTAMP('2013-09-18 06:09:17','YYYY-MM-DD HH24:MI:SS'),100,'State of the Credit Card or Account holder',40,'ECA02','The State of the Credit Card or Account holder','Y','Y','Y','N','N','N','N','N','Account State',TO_TIMESTAMP('2013-09-18 06:09:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:18 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69448 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:19 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67857,69449,0,441,TO_TIMESTAMP('2013-09-18 06:09:18','YYYY-MM-DD HH24:MI:SS'),100,'Street address of the Credit Card or Account holder',60,'ECA02','The Street Address of the Credit Card or Account holder.','Y','Y','Y','N','N','N','N','N','Account Street',TO_TIMESTAMP('2013-09-18 06:09:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:19 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69449 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:19 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67860,69450,0,441,TO_TIMESTAMP('2013-09-18 06:09:19','YYYY-MM-DD HH24:MI:SS'),100,'Zip Code of the Credit Card or Account Holder',20,'ECA02','The Zip Code of the Credit Card or Account Holder.','Y','Y','Y','N','N','N','N','N','Account Zip/Postal',TO_TIMESTAMP('2013-09-18 06:09:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:19 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69450 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:20 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67847,69451,0,441,TO_TIMESTAMP('2013-09-18 06:09:19','YYYY-MM-DD HH24:MI:SS'),100,'Automatic Clearing House',1,'ECA02','The ACH checkbox indicates if this Bank Account accepts ACH transactions.','Y','Y','Y','N','N','N','N','N','ACH',TO_TIMESTAMP('2013-09-18 06:09:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:20 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69451 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:21 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67846,69452,0,441,TO_TIMESTAMP('2013-09-18 06:09:20','YYYY-MM-DD HH24:MI:SS'),100,'Bank',22,'ECA02','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','Y','N','N','N','N','N','Bank',TO_TIMESTAMP('2013-09-18 06:09:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:21 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69452 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:21 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67848,69453,0,441,TO_TIMESTAMP('2013-09-18 06:09:21','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account Type',1,'ECA02','The Bank Account Type field indicates the type of account (savings, checking etc) this account  is defined as.','Y','Y','Y','N','N','N','N','N','Bank Account Type',TO_TIMESTAMP('2013-09-18 06:09:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:21 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69453 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:22 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67845,69454,0,441,TO_TIMESTAMP('2013-09-18 06:09:21','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Bank Name',TO_TIMESTAMP('2013-09-18 06:09:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:22 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69454 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:23 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67851,69455,0,441,TO_TIMESTAMP('2013-09-18 06:09:22','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card (Visa, MC, AmEx)',1,'ECA02','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','Y','Y','Y','N','N','N','N','N','Credit Card',TO_TIMESTAMP('2013-09-18 06:09:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:23 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69455 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:23 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67861,69456,0,441,TO_TIMESTAMP('2013-09-18 06:09:23','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Driver License',20,'ECA02','The Driver''s License being used as identification.','Y','Y','Y','N','N','N','N','N','Driver License',TO_TIMESTAMP('2013-09-18 06:09:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:23 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69456 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:24 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67854,69457,0,441,TO_TIMESTAMP('2013-09-18 06:09:23','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Month',10,'ECA02','The Expiry Month indicates the expiry month for this credit card.','Y','Y','Y','N','N','N','N','N','Exp. Month',TO_TIMESTAMP('2013-09-18 06:09:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:24 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69457 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:24 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67855,69458,0,441,TO_TIMESTAMP('2013-09-18 06:09:24','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Year',10,'ECA02','The Expiry Year indicates the expiry year for this credit card.','Y','Y','Y','N','N','N','N','N','Exp. Year',TO_TIMESTAMP('2013-09-18 06:09:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:24 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69458 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:25 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67852,69459,0,441,TO_TIMESTAMP('2013-09-18 06:09:24','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Number ',20,'ECA02','The Credit Card number indicates the number on the credit card, without blanks or spaces.','Y','Y','Y','N','N','N','N','N','Number',TO_TIMESTAMP('2013-09-18 06:09:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:25 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69459 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:26 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67844,69460,0,441,TO_TIMESTAMP('2013-09-18 06:09:25','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner',22,'ECA02','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','Y','Y','N','N','N','N','N','Partner Bank Account',TO_TIMESTAMP('2013-09-18 06:09:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:26 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69460 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:26 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67849,69461,0,441,TO_TIMESTAMP('2013-09-18 06:09:26','YYYY-MM-DD HH24:MI:SS'),100,'Bank Routing Number',20,'ECA02','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.','Y','Y','Y','N','N','N','N','N','Routing No',TO_TIMESTAMP('2013-09-18 06:09:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:26 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69461 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:27 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67863,69462,0,441,TO_TIMESTAMP('2013-09-18 06:09:26','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Social Security No',20,'ECA02','The Social Security number being used as identification.','Y','Y','Y','N','N','N','N','N','Social Security No',TO_TIMESTAMP('2013-09-18 06:09:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:27 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69462 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:09:27 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67853,69463,0,441,TO_TIMESTAMP('2013-09-18 06:09:27','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification code on credit card',4,'ECA02','The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','Y','Y','Y','N','N','N','N','N','Verification Code',TO_TIMESTAMP('2013-09-18 06:09:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:09:27 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69463 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:14:34 AM VET
-- LVE-Import
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67865,3086,0,17,393,533,'BPBankAcctUse',TO_TIMESTAMP('2013-09-18 06:14:33','YYYY-MM-DD HH24:MI:SS'),100,'B','Business Partner Bank Account usage','ECA02',1,'Determines how the bank account is used.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account Usage',0,TO_TIMESTAMP('2013-09-18 06:14:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 6:14:34 AM VET
-- LVE-Import
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67865 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 6:14:45 AM VET
-- LVE-Import
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67865,69464,0,441,TO_TIMESTAMP('2013-09-18 06:14:45','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Bank Account usage',1,'ECA02','Determines how the bank account is used.','Y','Y','Y','N','N','N','N','N','Account Usage',TO_TIMESTAMP('2013-09-18 06:14:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 6:14:45 AM VET
-- LVE-Import
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69464 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=69460
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=69451
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=69464
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=69454
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=69452
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=69453
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=69461
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=69447
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=69455
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=69459
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=69463
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=69457
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=69458
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=69446
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=69449
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=69443
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=69450
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=69448
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=69444
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=69456
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=69462
;

-- Sep 18, 2013 6:18:35 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=69445
;

-- Sep 18, 2013 6:20:02 AM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:20:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69462
;

-- Sep 18, 2013 6:20:36 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2013-09-18 06:20:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69445
;

-- Sep 18, 2013 6:21:15 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20, IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:21:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69444
;

-- Sep 18, 2013 6:21:31 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2013-09-18 06:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69448
;

-- Sep 18, 2013 6:21:39 AM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:21:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69450
;

-- Sep 18, 2013 6:21:50 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2013-09-18 06:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69443
;

-- Sep 18, 2013 6:22:04 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20, IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:22:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69449
;

-- Sep 18, 2013 6:22:18 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2013-09-18 06:22:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69446
;

-- Sep 18, 2013 6:22:37 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=11, DisplayLogic='@IsACH@=N', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:22:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69458
;

-- Sep 18, 2013 6:23:10 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=11, DisplayLogic='@IsACH@=N',Updated=TO_TIMESTAMP('2013-09-18 06:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69457
;

-- Sep 18, 2013 6:23:52 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=5, DisplayLogic='@IsACH@=N', IsFieldOnly='Y',Updated=TO_TIMESTAMP('2013-09-18 06:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69463
;

-- Sep 18, 2013 6:24:09 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLogic='@IsACH@=N',Updated=TO_TIMESTAMP('2013-09-18 06:24:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69459
;

-- Sep 18, 2013 6:24:27 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLogic='@IsACH@=N',Updated=TO_TIMESTAMP('2013-09-18 06:24:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69455
;

-- Sep 18, 2013 6:24:56 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=14,Updated=TO_TIMESTAMP('2013-09-18 06:24:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69455
;

-- Sep 18, 2013 6:25:45 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLogic='@IsACH@=Y',Updated=TO_TIMESTAMP('2013-09-18 06:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69447
;

-- Sep 18, 2013 6:26:06 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLogic='@IsACH@=Y & @C_Bank_ID@=0',Updated=TO_TIMESTAMP('2013-09-18 06:26:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69461
;

-- Sep 18, 2013 6:26:29 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=14, DisplayLogic='@IsACH@=Y',Updated=TO_TIMESTAMP('2013-09-18 06:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69453
;

-- Sep 18, 2013 6:26:41 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLogic='@IsACH@=Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:26:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69452
;

-- Sep 18, 2013 6:26:50 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLength=20, DisplayLogic='@IsACH@=Y',Updated=TO_TIMESTAMP('2013-09-18 06:26:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69454
;

-- Sep 18, 2013 6:27:10 AM VET
-- LVE-Import
UPDATE AD_Field SET DisplayLogic='@IsACH@=Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-09-18 06:27:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69464
;


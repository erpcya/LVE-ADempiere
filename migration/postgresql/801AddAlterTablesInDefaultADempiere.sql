-- Jul 3, 2014 10:48:22 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Inventory ADD COLUMN IsInternal CHAR(1) DEFAULT 'N' CHECK (IsInternal IN ('Y','N'))
;

-- Jul 3, 2014 10:49:41 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_DocType ADD COLUMN IsInternal CHAR(1) DEFAULT 'N' CHECK (IsInternal IN ('Y','N'))
;

-- Jul 3, 2014 10:50:34 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_DocType ADD COLUMN IsService CHAR(1) DEFAULT 'N' CHECK (IsService IN ('Y','N'))
;

-- Jul 3, 2014 10:52:06 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_InventoryLine ADD COLUMN C_UOM_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 3, 2014 10:54:22 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Requisition ADD COLUMN IsService CHAR(1) DEFAULT 'N' CHECK (IsService IN ('Y','N'))
;

-- 14/07/2014 05:39:38 PM VET
-- Request for Quotation Create From Requisition
ALTER TABLE C_RfQ ADD COLUMN CreateFromRequisition CHAR(1) DEFAULT 'N' 
;

-- Jul 30, 2014 12:21:55 PM CEST
-- Custom User File Path
ALTER TABLE AD_User ADD COLUMN File_Directory VARCHAR(255) DEFAULT NULL 
;

-- Oct 17, 2014 3:04:41 PM VET
-- LVE ADempiere
ALTER TABLE C_CashLine ADD COLUMN TenderType CHAR(1) DEFAULT NULL 
;


-- Aug 28, 2013 11:15:31 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN A_Base_Amount NUMERIC DEFAULT NULL 
;

-- Aug 28, 2013 11:15:35 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN AccountNo VARCHAR(20) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:39 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN AffectsBook CHAR(1) DEFAULT 'Y' CHECK (AffectsBook IN ('Y','N'))
;

-- Aug 28, 2013 11:15:41 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN C_Activity_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:44 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN C_Bank_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:46 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN C_BPartner_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:48 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN CheckNo VARCHAR(20) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:50 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN ControlNo VARCHAR(15) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:52 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN C_Tax_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:55 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN DateDoc TIMESTAMP DEFAULT NULL 
;

-- Aug 28, 2013 11:15:57 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN IsOverUnderPayment CHAR(1) DEFAULT NULL CHECK (IsOverUnderPayment IN ('Y','N'))
;

-- Aug 28, 2013 11:15:59 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD COLUMN ReferenceNo VARCHAR(40) DEFAULT NULL 
;

-- Aug 28, 2013 11:12:38 AM VET
-- LVE Withholding
ALTER TABLE C_Cash ADD COLUMN C_DocTypeTarget_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:14:49 AM VET
-- LVE Withholding
ALTER TABLE C_Cash ADD COLUMN DocumentNo VARCHAR(30) DEFAULT NULL 
;

-- Aug 28, 2013 11:16:58 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN ControlNo VARCHAR(60) DEFAULT NULL 
;

-- Jul 3, 2014 10:48:22 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Inventory ADD IsInternal CHAR(1) DEFAULT 'N' CHECK (IsInternal IN ('Y','N'))
;

-- Jul 3, 2014 10:49:41 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_DocType ADD IsInternal CHAR(1) DEFAULT 'N' CHECK (IsInternal IN ('Y','N'))
;


-- Aug 28, 2013 11:12:38 AM VET
-- LVE Withholding
ALTER TABLE C_Cash ADD C_DocTypeTarget_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:14:49 AM VET
-- LVE Withholding
ALTER TABLE C_Cash ADD DocumentNo NVARCHAR2(30) DEFAULT NULL 
;

-- Jul 3, 2014 10:50:34 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_DocType ADD IsService CHAR(1) DEFAULT 'N' CHECK (IsService IN ('Y','N'))
;

-- Jul 3, 2014 10:52:06 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_InventoryLine ADD C_UOM_ID NUMBER(10) DEFAULT NULL 
;

-- Jul 3, 2014 10:54:22 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Requisition ADD IsService CHAR(1) DEFAULT 'N' CHECK (IsService IN ('Y','N'))
;

-- 14/07/2014 05:39:38 PM VET
-- Request for Quotation Create From Requisition
ALTER TABLE C_RfQ ADD CreateFromRequisition CHAR(1) DEFAULT 'N'
;

-- Jul 30, 2014 12:21:55 PM CEST
-- Custom User File Path
ALTER TABLE AD_User ADD File_Directory NVARCHAR2(255) DEFAULT NULL 
;

-- Oct 17, 2014 3:04:41 PM VET
-- LVE ADempiere
ALTER TABLE C_CashLine ADD TenderType CHAR(1) DEFAULT NULL 
;


-- Aug 28, 2013 11:15:31 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD A_Base_Amount NUMBER DEFAULT NULL 
;

-- Aug 28, 2013 11:15:35 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD AccountNo NVARCHAR2(20) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:39 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD AffectsBook CHAR(1) DEFAULT 'Y' CHECK (AffectsBook IN ('Y','N'))
;

-- Aug 28, 2013 11:15:41 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD C_Activity_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:44 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD C_Bank_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:46 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD C_BPartner_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:48 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD CheckNo NVARCHAR2(20) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:50 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD ControlNo NVARCHAR2(15) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:52 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD C_Tax_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:15:55 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD DateDoc DATE DEFAULT NULL 
;

-- Aug 28, 2013 11:15:57 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD IsOverUnderPayment CHAR(1) DEFAULT NULL  CHECK (IsOverUnderPayment IN ('Y','N'))
;

-- Aug 28, 2013 11:15:59 AM VET
-- LVE Withholding
ALTER TABLE C_CashLine ADD ReferenceNo NVARCHAR2(40) DEFAULT NULL 
;

-- Aug 28, 2013 11:16:58 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD ControlNo NVARCHAR2(60) DEFAULT NULL 
;

-- Nov 3, 2014 3:56:58 PM VET
-- LVE ADempiere
ALTER TABLE C_DocType ADD AffectsBook CHAR(1) DEFAULT 'N' CHECK (AffectsBook IN ('Y','N'))
;

-- Dec 13, 2013 6:51:48 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD AffectsBook CHAR(1) DEFAULT 'N' CHECK (AffectsBook IN ('Y','N'))
;

-- Dec 13, 2013 6:52:36 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD DocAffected_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:16:37 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD DocTypeDeclare NVARCHAR2(2) DEFAULT NULL 
;

-- Dec 20, 2013 8:09:55 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

-- Dec 20, 2013 8:11:00 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;


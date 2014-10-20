-- Jul 3, 2014 10:48:22 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Inventory ADD IsInternal CHAR(1) DEFAULT 'N' CHECK (IsInternal IN ('Y','N'))
;

-- Jul 3, 2014 10:49:41 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_DocType ADD IsInternal CHAR(1) DEFAULT 'N' CHECK (IsInternal IN ('Y','N'))
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


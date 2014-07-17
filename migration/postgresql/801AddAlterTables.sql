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

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

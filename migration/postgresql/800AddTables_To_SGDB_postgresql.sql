-- Apr 2, 2014 11:07:26 AM VET
-- LVE Withholding
CREATE TABLE LVE_CashTax (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Cash_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_Tax_ID NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsTaxIncluded CHAR(1) CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, TaxAmt NUMERIC NOT NULL, TaxBaseAmt NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_CashTax_Key PRIMARY KEY (C_Cash_ID, C_Tax_ID))
;

-- 25/07/2014 04:34:39 PM CEST
-- LVE-ADempiere
CREATE TABLE LVE_WarehouseProduct (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Table_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WarehouseProduct_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WarehouseProduct_Key PRIMARY KEY (LVE_WarehouseProduct_ID))
;

-- 25/07/2014 04:34:45 PM CEST
-- LVE-ADempiere
CREATE TABLE LVE_WarehouseProductLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsAlwaysSetMandatory CHAR(1) DEFAULT NULL CHECK (IsAlwaysSetMandatory IN ('Y','N')), LVE_WarehouseProduct_ID NUMERIC(10) NOT NULL, LVE_WarehouseProductLine_ID NUMERIC(10) NOT NULL, M_Product_ID NUMERIC(10) NOT NULL, MustBeStocked CHAR(1) DEFAULT NULL CHECK (MustBeStocked IN ('Y','N')), M_Warehouse_ID NUMERIC(10) NOT NULL, SeqNo NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WarehouseProductLine_Key PRIMARY KEY (LVE_WarehouseProductLine_ID))
;

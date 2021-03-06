-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_Element SET ColumnName='IsAllowsCopy', Name='Allows Copy', PrintName='Allows Copy',Updated=TO_DATE('2014-06-16 15:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000255
;

-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=3000255
;

-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_Column SET ColumnName='IsAllowsCopy', Name='Allows Copy', Description=NULL, Help=NULL WHERE AD_Element_ID=3000255
;

-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET ColumnName='IsAllowsCopy', Name='Allows Copy', Description=NULL, Help=NULL, AD_Element_ID=3000255 WHERE UPPER(ColumnName)='ISALLOWSCOPY' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET ColumnName='IsAllowsCopy', Name='Allows Copy', Description=NULL, Help=NULL WHERE AD_Element_ID=3000255 AND IsCentrallyMaintained='Y'
;

-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_Field SET Name='Allows Copy', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=3000255) AND IsCentrallyMaintained='Y'
;

-- Jun 16, 2014 3:18:56 PM VET
-- LVE ADempiere
UPDATE AD_PrintFormatItem pi SET PrintName='Allows Copy', Name='Allows Copy' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=3000255)
;

-- Jun 16, 2014 3:19:27 PM VET
-- LVE ADempiere
ALTER TABLE AD_Field ADD IsAllowsCopy CHAR(1) DEFAULT NULL  CHECK (IsAllowsCopy IN ('Y','N'))
;


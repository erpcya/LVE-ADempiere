-- Aug 13, 2013 8:24:11 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='Exempt', Name='Exempt',Updated=TO_DATE('2013-08-13 08:24:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56097
;

-- Aug 13, 2013 8:24:11 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56097
;

-- Aug 13, 2013 8:24:11 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='Exempt', Name='Exempt', Description=NULL, Help=NULL WHERE AD_Element_ID=56097
;

-- Aug 13, 2013 8:24:11 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Exempt', Name='Exempt', Description=NULL, Help=NULL, AD_Element_ID=56097 WHERE UPPER(ColumnName)='EXEMPT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 13, 2013 8:24:11 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Exempt', Name='Exempt', Description=NULL, Help=NULL WHERE AD_Element_ID=56097 AND IsCentrallyMaintained='Y'
;

-- Aug 13, 2013 8:24:11 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Exempt', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56097) AND IsCentrallyMaintained='Y'
;

-- Aug 13, 2013 8:24:12 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Total Ex', Name='Exempt' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56097)
;

-- Aug 13, 2013 8:24:25 AM VET
-- LVE Withholding
UPDATE AD_Element SET PrintName='Exempt',Updated=TO_DATE('2013-08-13 08:24:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56097
;

-- Aug 13, 2013 8:24:25 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56097
;

-- Aug 13, 2013 8:24:25 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Exempt', Name='Exempt' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56097)
;


-- 16-ago-2013 14:00:42 VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=68245
;

-- 16-ago-2013 14:00:42 VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=68245
;

-- 16-ago-2013 14:00:45 VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-16 14:00:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9627
;

-- 16-ago-2013 14:00:58 VET
-- LVE Withholding
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=66770
;

-- 16-ago-2013 14:00:58 VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=66770
;

-- 16-ago-2013 14:01:56 VET
-- LVE Withholding
UPDATE AD_Column SET Callout='org.spin.model.CalloutBPartner.validateSeniat',Updated=TO_TIMESTAMP('2013-08-16 14:01:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2901
;

-- 16-ago-2013 14:02:18 VET
-- LVE Withholding
UPDATE AD_Column SET Callout='org.spin.model.CalloutBPartner.validateSeniat',Updated=TO_TIMESTAMP('2013-08-16 14:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2909
;


-- Sep 18, 2013 2:51:09 PM VET
-- LVE Import
INSERT INTO AD_ImpFormat (AD_Client_ID,AD_ImpFormat_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,Description,FormatType,IsActive,Name,Processing,Updated,UpdatedBy) VALUES (0,50018,0,53588,TO_TIMESTAMP('2013-09-18 14:51:06','YYYY-MM-DD HH24:MI:SS'),100,'Import Product Category','C','Y','Product Category','N',TO_TIMESTAMP('2013-09-18 14:51:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 2:52:41 PM VET
-- LVE Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,67843,50018,50299,0,TO_TIMESTAMP('2013-09-18 14:52:39','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','Value',10,60,TO_TIMESTAMP('2013-09-18 14:52:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 2:52:55 PM VET
-- LVE Import
INSERT INTO AD_ImpFormat_Row (AD_Client_ID,AD_Column_ID,AD_ImpFormat_ID,AD_ImpFormat_Row_ID,AD_Org_ID,Created,CreatedBy,DataType,DecimalPoint,DivideBy100,EndNo,IsActive,Name,SeqNo,StartNo,Updated,UpdatedBy) VALUES (0,67838,50018,50300,0,TO_TIMESTAMP('2013-09-18 14:52:54','YYYY-MM-DD HH24:MI:SS'),100,'S','.','N',0,'Y','Name',20,60,TO_TIMESTAMP('2013-09-18 14:52:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 3:09:31 PM VET
-- LVE Import
UPDATE AD_ImpFormat SET FormatType='U', SeparatorChar=',',Updated=TO_TIMESTAMP('2013-09-18 15:09:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ImpFormat_ID=50018
;

-- Sep 18, 2013 3:11:40 PM VET
-- LVE Import
UPDATE AD_ImpFormat SET FormatType='C',Updated=TO_TIMESTAMP('2013-09-18 15:11:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ImpFormat_ID=50018
;


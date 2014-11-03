-- 7/09/2013 04:09:25 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (11,50001,100,130,50124,100,53059,53571,TO_DATE('2013-09-07 16:09:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Libro de Ventas',TO_DATE('2013-09-07 16:09:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/09/2013 04:09:25 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67233,50001,50124,54236,0,TO_DATE('2013-09-07 16:09:25','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','X',1,0,0,'Nombre','C','F','Nombre',1,'N',1,TO_DATE('2013-09-07 16:09:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:26 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54236 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:26 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67233) WHERE AD_PrintFormatItem_ID = 54236 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67233 AND trl.AD_PrintFormatItem_ID = 54236) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:26 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67230,50001,50124,54237,0,TO_DATE('2013-09-07 16:09:26','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Fecha de Aplicación CG','C','F','F. Aplicación CG',2,'N',0,TO_DATE('2013-09-07 16:09:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:26 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54237 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:26 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67230) WHERE AD_PrintFormatItem_ID = 54237 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67230 AND trl.AD_PrintFormatItem_ID = 54237) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:27 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67247,50001,50124,54238,0,TO_DATE('2013-09-07 16:09:26','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'A_Base_Amount','C','F','A_Base_Amount',3,'N',0,TO_DATE('2013-09-07 16:09:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:27 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54238 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:27 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67247) WHERE AD_PrintFormatItem_ID = 54238 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67247 AND trl.AD_PrintFormatItem_ID = 54238) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:27 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67224,50001,50124,54239,0,TO_DATE('2013-09-07 16:09:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Compañía','C','F','Compañía',0,'N',0,TO_DATE('2013-09-07 16:09:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:27 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54239 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:27 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67224) WHERE AD_PrintFormatItem_ID = 54239 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67224 AND trl.AD_PrintFormatItem_ID = 54239) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:28 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67231,50001,50124,54240,0,TO_DATE('2013-09-07 16:09:27','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'No. Control','C','F','No. Control',5,'N',0,TO_DATE('2013-09-07 16:09:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:28 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54240 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:28 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67231) WHERE AD_PrintFormatItem_ID = 54240 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67231 AND trl.AD_PrintFormatItem_ID = 54240) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:29 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67229,50001,50124,54241,0,TO_DATE('2013-09-07 16:09:28','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Fecha de Facturación','C','F','F. Facturación',6,'N',0,TO_DATE('2013-09-07 16:09:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:29 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54241 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:29 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67229) WHERE AD_PrintFormatItem_ID = 54241 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67229 AND trl.AD_PrintFormatItem_ID = 54241) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:29 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67241,50001,50124,54242,0,TO_DATE('2013-09-07 16:09:29','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Doc. Afectado','C','F','Doc. Afectado',7,'N',0,TO_DATE('2013-09-07 16:09:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:29 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54242 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:29 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67241) WHERE AD_PrintFormatItem_ID = 54242 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67241 AND trl.AD_PrintFormatItem_ID = 54242) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:30 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67228,50001,50124,54243,0,TO_DATE('2013-09-07 16:09:29','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tipo de documento Declarar','C','F','Tipo de documento Declarar',8,'N',0,TO_DATE('2013-09-07 16:09:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:30 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54243 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:30 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67228) WHERE AD_PrintFormatItem_ID = 54243 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67228 AND trl.AD_PrintFormatItem_ID = 54243) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:30 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67245,50001,50124,54244,0,TO_DATE('2013-09-07 16:09:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Acción en el Documento','C','F','Acción en el Documento',9,'N',0,TO_DATE('2013-09-07 16:09:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:30 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54244 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:30 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67245) WHERE AD_PrintFormatItem_ID = 54244 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67245 AND trl.AD_PrintFormatItem_ID = 54244) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:31 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67232,50001,50124,54245,0,TO_DATE('2013-09-07 16:09:30','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'No. del Documento','C','F','No. del Documento',10,'N',0,TO_DATE('2013-09-07 16:09:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:31 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54245 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:31 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67232) WHERE AD_PrintFormatItem_ID = 54245 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67232 AND trl.AD_PrintFormatItem_ID = 54245) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:32 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67244,50001,50124,54246,0,TO_DATE('2013-09-07 16:09:31','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Estado del Documento','C','F','Estado del Documento',11,'N',0,TO_DATE('2013-09-07 16:09:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:32 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54246 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:32 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67244) WHERE AD_PrintFormatItem_ID = 54246 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67244 AND trl.AD_PrintFormatItem_ID = 54246) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:32 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67227,50001,50124,54247,0,TO_DATE('2013-09-07 16:09:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tipo de Documento','C','F','Tipo de Documento',12,'N',0,TO_DATE('2013-09-07 16:09:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:32 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54247 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:32 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67227) WHERE AD_PrintFormatItem_ID = 54247 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67227 AND trl.AD_PrintFormatItem_ID = 54247) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:33 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67237,50001,50124,54248,0,TO_DATE('2013-09-07 16:09:32','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tot. Exe.','C','F','Tot. Exe.',13,'N',0,TO_DATE('2013-09-07 16:09:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:33 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54248 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:33 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67237) WHERE AD_PrintFormatItem_ID = 54248 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67237 AND trl.AD_PrintFormatItem_ID = 54248) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:33 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67236,50001,50124,54249,0,TO_DATE('2013-09-07 16:09:33','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Gran Total','C','F','Gran Total',14,'N',0,TO_DATE('2013-09-07 16:09:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:33 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54249 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:33 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67236) WHERE AD_PrintFormatItem_ID = 54249 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67236 AND trl.AD_PrintFormatItem_ID = 54249) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:34 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67226,50001,50124,54250,0,TO_DATE('2013-09-07 16:09:33','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Factura','C','F','Factura',15,'N',0,TO_DATE('2013-09-07 16:09:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:34 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54250 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:34 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67226) WHERE AD_PrintFormatItem_ID = 54250 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67226 AND trl.AD_PrintFormatItem_ID = 54250) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:35 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67243,50001,50124,54251,0,TO_DATE('2013-09-07 16:09:34','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Neto de Línea','C','F','Total Neto de la Línea',16,'N',0,TO_DATE('2013-09-07 16:09:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:35 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54251 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67243) WHERE AD_PrintFormatItem_ID = 54251 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67243 AND trl.AD_PrintFormatItem_ID = 54251) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:35 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67225,50001,50124,54252,0,TO_DATE('2013-09-07 16:09:35','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organización','C','F','Organización',0,'N',0,TO_DATE('2013-09-07 16:09:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:35 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54252 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67225) WHERE AD_PrintFormatItem_ID = 54252 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67225 AND trl.AD_PrintFormatItem_ID = 54252) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:36 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67239,50001,50124,54253,0,TO_DATE('2013-09-07 16:09:35','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tasa','C','F','Tasa',18,'N',0,TO_DATE('2013-09-07 16:09:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:36 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54253 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:36 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67239) WHERE AD_PrintFormatItem_ID = 54253 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67239 AND trl.AD_PrintFormatItem_ID = 54253) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:36 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67242,50001,50124,54254,0,TO_DATE('2013-09-07 16:09:36','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'retdocumentno','C','F','retdocumentno',19,'N',0,TO_DATE('2013-09-07 16:09:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:36 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54254 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:36 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67242) WHERE AD_PrintFormatItem_ID = 54254 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67242 AND trl.AD_PrintFormatItem_ID = 54254) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:37 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67246,50001,50124,54255,0,TO_DATE('2013-09-07 16:09:36','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Transacción de Ventas','C','F','Transacción de Ventas',20,'N',0,TO_DATE('2013-09-07 16:09:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:37 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54255 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:37 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67246) WHERE AD_PrintFormatItem_ID = 54255 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67246 AND trl.AD_PrintFormatItem_ID = 54255) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:38 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67234,50001,50124,54256,0,TO_DATE('2013-09-07 16:09:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Clave de Búsqueda','C','F','Clave de Búsqueda',21,'N',0,TO_DATE('2013-09-07 16:09:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:38 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54256 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:38 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67234) WHERE AD_PrintFormatItem_ID = 54256 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67234 AND trl.AD_PrintFormatItem_ID = 54256) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:38 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67240,50001,50124,54257,0,TO_DATE('2013-09-07 16:09:38','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Total del Impuesto','C','F','Total del Impuesto',22,'N',0,TO_DATE('2013-09-07 16:09:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:38 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54257 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:38 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67240) WHERE AD_PrintFormatItem_ID = 54257 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67240 AND trl.AD_PrintFormatItem_ID = 54257) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:39 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67238,50001,50124,54258,0,TO_DATE('2013-09-07 16:09:38','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Total Base del Impuesto','C','F','Total Base del Impuesto',23,'N',0,TO_DATE('2013-09-07 16:09:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:39 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54258 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:39 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67238) WHERE AD_PrintFormatItem_ID = 54258 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67238 AND trl.AD_PrintFormatItem_ID = 54258) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:09:39 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67235,50001,50124,54259,0,TO_DATE('2013-09-07 16:09:39','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'RFC','C','F','RFC',24,'N',0,TO_DATE('2013-09-07 16:09:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:09:39 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54259 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:09:39 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67235) WHERE AD_PrintFormatItem_ID = 54259 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67235 AND trl.AD_PrintFormatItem_ID = 54259) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:10:51 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=170,Updated=TO_DATE('2013-09-07 16:10:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67241
;

-- 7/09/2013 04:12:21 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_Value_ID=131,Updated=TO_DATE('2013-09-07 16:12:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67244
;

-- 7/09/2013 04:14:02 PM VET
-- LVE Withholding
UPDATE AD_ReportView SET WhereClause='LVE_RV_Books.IsSOTrx = ''Y''',Updated=TO_DATE('2013-09-07 16:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53059
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54238
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54244
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54256
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54242
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54246
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54241
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54245
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54259
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54247
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54243
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54255
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=10,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54237
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54250
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54240
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:18:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:18:46 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName='Dia', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:18:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54237
;

-- 7/09/2013 04:18:46 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Dia',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54237
;

-- 7/09/2013 04:22:05 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67234,50001,100,130,50124,54260,0,0,TO_DATE('2013-09-07 16:21:34','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','Y','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Código','C','F','R.I.F. Nro.',20,120,'N',0,TO_DATE('2013-09-07 16:21:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:22:05 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54260 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:22:05 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67234) WHERE AD_PrintFormatItem_ID = 54260 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67234 AND trl.AD_PrintFormatItem_ID = 54260) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:22:19 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName='Total Ventas Incluye I.V.A.', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:22:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:22:19 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Total Ventas Incluye I.V.A.',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:22:33 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='Ventas Sin derecho a Debito', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:22:33 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Ventas Sin derecho a Debito',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:22:36 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:22:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:23:34 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName='Base', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:23:34 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Base',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:23:45 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName='%', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:23:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:23:45 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='%',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:23:55 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', PrintName='Impuesto', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:23:55 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Impuesto',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:24:06 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='IVA Retenido al Vendedor', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:24:06 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='IVA Retenido al Vendedor',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:24:09 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:24:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:24:19 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='Comprobante de Retencion Nº', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:24:19 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Comprobante de Retencion Nº',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N' WHERE AD_PrintFormatItem_ID=54250
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54240
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:39:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54260
;

-- 7/09/2013 04:39:55 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67301,50001,100,130,50124,54261,0,0,TO_DATE('2013-09-07 16:39:54','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'No. Factura','C','F','No. Factura',20,120,'N',0,TO_DATE('2013-09-07 16:39:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:39:55 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54261 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:39:55 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67301) WHERE AD_PrintFormatItem_ID = 54261 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67301 AND trl.AD_PrintFormatItem_ID = 54261) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54261
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54240
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:40:24 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=120,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54260
;

-- 7/09/2013 04:40:44 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67298,50001,100,130,50124,54262,0,0,TO_DATE('2013-09-07 16:40:44','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Nota de Credito','C','F','Nota de Credito',20,130,'N',0,TO_DATE('2013-09-07 16:40:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:40:44 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54262 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:40:44 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67298) WHERE AD_PrintFormatItem_ID = 54262 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67298 AND trl.AD_PrintFormatItem_ID = 54262) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54262
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=120,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:40:54 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=130,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54260
;

-- 7/09/2013 04:41:12 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67299,50001,100,130,50124,54263,0,0,TO_DATE('2013-09-07 16:41:11','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Nota de Debito','C','F','Nota de Debito',20,140,'N',0,TO_DATE('2013-09-07 16:41:11','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:41:12 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54263 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:41:12 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67299) WHERE AD_PrintFormatItem_ID = 54263 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67299 AND trl.AD_PrintFormatItem_ID = 54263) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:41:35 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67300,50001,100,130,50124,54264,0,0,TO_DATE('2013-09-07 16:41:34','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Factura Afectada','C','F','Factura Afectada',20,150,'N',0,TO_DATE('2013-09-07 16:41:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:41:35 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54264 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:41:35 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67300) WHERE AD_PrintFormatItem_ID = 54264 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67300 AND trl.AD_PrintFormatItem_ID = 54264) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54263
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54264
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=80,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54260
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=90,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54249
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=100,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54248
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=120,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=130,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=140,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:42:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=150,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54254
;

-- 7/09/2013 04:43:00 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET PrintName='Nombre-Razon Social del proveedor.', XPosition=0, YPosition=0,Updated=TO_DATE('2013-09-07 16:43:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:43:00 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl SET PrintName='Nombre-Razon Social del proveedor.',PrintNameSuffix=NULL,IsTranslated='Y' WHERE AD_PrintFormatItem_ID=54236
;

-- 7/09/2013 04:43:48 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67302,50001,100,130,50124,54265,0,0,TO_DATE('2013-09-07 16:43:48','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Base','C','F','Base',20,160,'N',0,TO_DATE('2013-09-07 16:43:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:43:48 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54265 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:43:48 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67302) WHERE AD_PrintFormatItem_ID = 54265 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67302 AND trl.AD_PrintFormatItem_ID = 54265) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:44:08 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67304,50001,100,130,50124,54266,0,0,TO_DATE('2013-09-07 16:44:08','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Porcentaje','C','F','%',20,170,'N',0,TO_DATE('2013-09-07 16:44:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:44:08 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54266 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:44:08 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67304) WHERE AD_PrintFormatItem_ID = 54266 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67304 AND trl.AD_PrintFormatItem_ID = 54266) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:44:34 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,67303,50001,100,130,50124,54267,0,0,TO_DATE('2013-09-07 16:44:33','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Impuesto Importacion','C','F','Impuesto',20,180,'N',0,TO_DATE('2013-09-07 16:44:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 7/09/2013 04:44:34 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54267 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 7/09/2013 04:44:34 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67303) WHERE AD_PrintFormatItem_ID = 54267 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67303 AND trl.AD_PrintFormatItem_ID = 54267) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=110,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54265
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=120,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54266
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=130,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54267
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=140,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54258
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=150,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54253
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=160,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54257
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=170,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54251
;

-- 7/09/2013 04:45:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=180,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54254
;


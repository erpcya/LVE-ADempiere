
CREATE OR REPLACE VIEW AD_Field_VT AS 
 SELECT trl.AD_Language,
    t.AD_Window_ID,
    f.AD_Tab_ID,
    f.AD_Field_ID,
    tbl.AD_table_ID,
    f.AD_column_ID,
    trl.Name,
    trl.Description,
    trl.Help,
    f.IsDisplayed,
    f.DisplayLogic,
    f.DisplayLength,
    f.SeqNo,
    f.SortNo,
    f.IsSameLine,
    f.IsHeading,
    f.IsFieldOnly,
    f.IsReadOnly,
    f.IsEncrypted AS IsEncryptedField,
    f.ObscureType,
    c.ColumnName,
    c.ColumnSql,
    c.FieldLength,
    c.vFormat,
    COALESCE(f.DefaultValue, c.DefaultValue) AS DefaultValue,
    c.IsKey,
    c.IsParent,
    COALESCE(f.IsMandatory, c.IsMandatory) AS IsMandatory,
    c.IsIdentifier,
    c.IsTranslated,
    COALESCE(f.AD_Reference_Value_ID, c.AD_Reference_Value_ID) AS AD_Reference_Value_ID,
    c.CallOut,
    COALESCE(f.AD_Reference_ID, c.AD_Reference_ID) AS AD_Reference_ID,
    COALESCE(f.AD_Val_Rule_ID, c.AD_Val_Rule_ID) AS AD_Val_Rule_ID,
    c.AD_Process_ID,
    c.IsAlwaysUpdateable,
    c.ReadOnlyLogic,
    c.MandatoryLogic,
    c.IsUpdateable,
    c.IsEncrypted AS IsEncryptedColumn,
    c.IsSelectionColumn,
    tbl.TableName,
    c.ValueMin,
    c.ValueMax,
    fgt.Name AS FieldGroup,
    vr.Code AS ValidationCode,
    f.Included_Tab_ID,
    fg.FieldGroupType,
    fg.IsCollapsedByDefault,
    COALESCE(f.InfoFactoryClass, c.InfoFactoryClass) AS InfoFactoryClass,
    c.IsAutoComplete,
    f.HideInListView,
    f.PreferredWidth,
    f.IsAllowsCopy
   FROM AD_Field f
   INNER JOIN AD_Field_Trl trl ON f.AD_Field_ID = trl.AD_Field_ID
   INNER JOIN AD_Tab t ON f.AD_Tab_ID = t.AD_Tab_ID
   LEFT JOIN AD_FieldGroup fg ON f.AD_FieldGroup_ID = fg.AD_FieldGroup_ID
   LEFT JOIN AD_FieldGroup_Trl fgt ON f.AD_FieldGroup_ID = fgt.AD_FieldGroup_ID AND trl.AD_Language = fgt.AD_Language
   LEFT JOIN AD_Column c ON f.AD_Column_ID = c.AD_Column_ID
   INNER JOIN AD_Table tbl ON c.AD_Table_ID = tbl.AD_Table_ID
   INNER JOIN AD_Reference r ON c.AD_Reference_ID = r.AD_Reference_ID
   LEFT JOIN AD_Val_Rule vr ON vr.AD_Val_Rule_ID = COALESCE(f.AD_Val_Rule_ID, c.AD_Val_Rule_ID)
  WHERE f.IsActive = 'Y' AND c.IsActive = 'Y'
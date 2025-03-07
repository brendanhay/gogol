{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Sheets.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Sheets.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AppendDimensionRequest_Dimension
    AppendDimensionRequest_Dimension
      ( AppendDimensionRequest_Dimension_DIMENSIONUNSPECIFIED,
        AppendDimensionRequest_Dimension_Rows,
        AppendDimensionRequest_Dimension_Columns,
        ..
      ),

    -- * BaselineValueFormat_ComparisonType
    BaselineValueFormat_ComparisonType
      ( BaselineValueFormat_ComparisonType_COMPARISONTYPEUNDEFINED,
        BaselineValueFormat_ComparisonType_ABSOLUTEDIFFERENCE,
        BaselineValueFormat_ComparisonType_PERCENTAGEDIFFERENCE,
        ..
      ),

    -- * BasicChartAxis_Position
    BasicChartAxis_Position
      ( BasicChartAxis_Position_BASICCHARTAXISPOSITIONUNSPECIFIED,
        BasicChartAxis_Position_BOTTOMAXIS,
        BasicChartAxis_Position_LEFTAXIS,
        BasicChartAxis_Position_RIGHTAXIS,
        ..
      ),

    -- * BasicChartSeries_TargetAxis
    BasicChartSeries_TargetAxis
      ( BasicChartSeries_TargetAxis_BASICCHARTAXISPOSITIONUNSPECIFIED,
        BasicChartSeries_TargetAxis_BOTTOMAXIS,
        BasicChartSeries_TargetAxis_LEFTAXIS,
        BasicChartSeries_TargetAxis_RIGHTAXIS,
        ..
      ),

    -- * BasicChartSeries_Type
    BasicChartSeries_Type
      ( BasicChartSeries_Type_BASICCHARTTYPEUNSPECIFIED,
        BasicChartSeries_Type_Bar,
        BasicChartSeries_Type_Line,
        BasicChartSeries_Type_Area,
        BasicChartSeries_Type_Column,
        BasicChartSeries_Type_Scatter,
        BasicChartSeries_Type_Combo,
        BasicChartSeries_Type_STEPPEDAREA,
        ..
      ),

    -- * BasicChartSpec_ChartType
    BasicChartSpec_ChartType
      ( BasicChartSpec_ChartType_BASICCHARTTYPEUNSPECIFIED,
        BasicChartSpec_ChartType_Bar,
        BasicChartSpec_ChartType_Line,
        BasicChartSpec_ChartType_Area,
        BasicChartSpec_ChartType_Column,
        BasicChartSpec_ChartType_Scatter,
        BasicChartSpec_ChartType_Combo,
        BasicChartSpec_ChartType_STEPPEDAREA,
        ..
      ),

    -- * BasicChartSpec_CompareMode
    BasicChartSpec_CompareMode
      ( BasicChartSpec_CompareMode_BASICCHARTCOMPAREMODEUNSPECIFIED,
        BasicChartSpec_CompareMode_Datum,
        BasicChartSpec_CompareMode_Category,
        ..
      ),

    -- * BasicChartSpec_LegendPosition
    BasicChartSpec_LegendPosition
      ( BasicChartSpec_LegendPosition_BASICCHARTLEGENDPOSITIONUNSPECIFIED,
        BasicChartSpec_LegendPosition_BOTTOMLEGEND,
        BasicChartSpec_LegendPosition_LEFTLEGEND,
        BasicChartSpec_LegendPosition_RIGHTLEGEND,
        BasicChartSpec_LegendPosition_TOPLEGEND,
        BasicChartSpec_LegendPosition_NOLEGEND,
        ..
      ),

    -- * BasicChartSpec_StackedType
    BasicChartSpec_StackedType
      ( BasicChartSpec_StackedType_BASICCHARTSTACKEDTYPEUNSPECIFIED,
        BasicChartSpec_StackedType_NOTSTACKED,
        BasicChartSpec_StackedType_Stacked,
        BasicChartSpec_StackedType_PERCENTSTACKED,
        ..
      ),

    -- * BatchGetValuesByDataFilterRequest_DateTimeRenderOption
    BatchGetValuesByDataFilterRequest_DateTimeRenderOption
      ( BatchGetValuesByDataFilterRequest_DateTimeRenderOption_SERIALNUMBER,
        BatchGetValuesByDataFilterRequest_DateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * BatchGetValuesByDataFilterRequest_MajorDimension
    BatchGetValuesByDataFilterRequest_MajorDimension
      ( BatchGetValuesByDataFilterRequest_MajorDimension_DIMENSIONUNSPECIFIED,
        BatchGetValuesByDataFilterRequest_MajorDimension_Rows,
        BatchGetValuesByDataFilterRequest_MajorDimension_Columns,
        ..
      ),

    -- * BatchGetValuesByDataFilterRequest_ValueRenderOption
    BatchGetValuesByDataFilterRequest_ValueRenderOption
      ( BatchGetValuesByDataFilterRequest_ValueRenderOption_FORMATTEDVALUE,
        BatchGetValuesByDataFilterRequest_ValueRenderOption_UNFORMATTEDVALUE,
        BatchGetValuesByDataFilterRequest_ValueRenderOption_Formula,
        ..
      ),

    -- * BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
    BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
      ( BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_SERIALNUMBER,
        BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
    BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
      ( BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_FORMATTEDVALUE,
        BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_UNFORMATTEDVALUE,
        BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_Formula,
        ..
      ),

    -- * BatchUpdateValuesByDataFilterRequest_ValueInputOption
    BatchUpdateValuesByDataFilterRequest_ValueInputOption
      ( BatchUpdateValuesByDataFilterRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
        BatchUpdateValuesByDataFilterRequest_ValueInputOption_Raw,
        BatchUpdateValuesByDataFilterRequest_ValueInputOption_USERENTERED,
        ..
      ),

    -- * BatchUpdateValuesRequest_ResponseDateTimeRenderOption
    BatchUpdateValuesRequest_ResponseDateTimeRenderOption
      ( BatchUpdateValuesRequest_ResponseDateTimeRenderOption_SERIALNUMBER,
        BatchUpdateValuesRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * BatchUpdateValuesRequest_ResponseValueRenderOption
    BatchUpdateValuesRequest_ResponseValueRenderOption
      ( BatchUpdateValuesRequest_ResponseValueRenderOption_FORMATTEDVALUE,
        BatchUpdateValuesRequest_ResponseValueRenderOption_UNFORMATTEDVALUE,
        BatchUpdateValuesRequest_ResponseValueRenderOption_Formula,
        ..
      ),

    -- * BatchUpdateValuesRequest_ValueInputOption
    BatchUpdateValuesRequest_ValueInputOption
      ( BatchUpdateValuesRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
        BatchUpdateValuesRequest_ValueInputOption_Raw,
        BatchUpdateValuesRequest_ValueInputOption_USERENTERED,
        ..
      ),

    -- * BooleanCondition_Type
    BooleanCondition_Type
      ( BooleanCondition_Type_CONDITIONTYPEUNSPECIFIED,
        BooleanCondition_Type_NUMBERGREATER,
        BooleanCondition_Type_NUMBERGREATERTHANEQ,
        BooleanCondition_Type_NUMBERLESS,
        BooleanCondition_Type_NUMBERLESSTHANEQ,
        BooleanCondition_Type_NUMBEREQ,
        BooleanCondition_Type_NUMBERNOTEQ,
        BooleanCondition_Type_NUMBERBETWEEN,
        BooleanCondition_Type_NUMBERNOTBETWEEN,
        BooleanCondition_Type_TEXTCONTAINS,
        BooleanCondition_Type_TEXTNOTCONTAINS,
        BooleanCondition_Type_TEXTSTARTSWITH,
        BooleanCondition_Type_TEXTENDSWITH,
        BooleanCondition_Type_TEXTEQ,
        BooleanCondition_Type_TEXTISEMAIL,
        BooleanCondition_Type_TEXTISURL,
        BooleanCondition_Type_DATEEQ,
        BooleanCondition_Type_DATEBEFORE,
        BooleanCondition_Type_DATEAFTER,
        BooleanCondition_Type_DATEONORBEFORE,
        BooleanCondition_Type_DATEONORAFTER,
        BooleanCondition_Type_DATEBETWEEN,
        BooleanCondition_Type_DATENOTBETWEEN,
        BooleanCondition_Type_DATEISVALID,
        BooleanCondition_Type_ONEOFRANGE,
        BooleanCondition_Type_ONEOFLIST,
        BooleanCondition_Type_Blank,
        BooleanCondition_Type_NOTBLANK,
        BooleanCondition_Type_CUSTOMFORMULA,
        BooleanCondition_Type_Boolean,
        BooleanCondition_Type_TEXTNOTEQ,
        BooleanCondition_Type_DATENOTEQ,
        BooleanCondition_Type_FILTEREXPRESSION,
        ..
      ),

    -- * Border_Style
    Border_Style
      ( Border_Style_STYLEUNSPECIFIED,
        Border_Style_Dotted,
        Border_Style_Dashed,
        Border_Style_Solid,
        Border_Style_SOLIDMEDIUM,
        Border_Style_SOLIDTHICK,
        Border_Style_None,
        Border_Style_Double,
        ..
      ),

    -- * BubbleChartSpec_LegendPosition
    BubbleChartSpec_LegendPosition
      ( BubbleChartSpec_LegendPosition_BUBBLECHARTLEGENDPOSITIONUNSPECIFIED,
        BubbleChartSpec_LegendPosition_BOTTOMLEGEND,
        BubbleChartSpec_LegendPosition_LEFTLEGEND,
        BubbleChartSpec_LegendPosition_RIGHTLEGEND,
        BubbleChartSpec_LegendPosition_TOPLEGEND,
        BubbleChartSpec_LegendPosition_NOLEGEND,
        BubbleChartSpec_LegendPosition_INSIDELEGEND,
        ..
      ),

    -- * CellFormat_HorizontalAlignment
    CellFormat_HorizontalAlignment
      ( CellFormat_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED,
        CellFormat_HorizontalAlignment_Left',
        CellFormat_HorizontalAlignment_Center,
        CellFormat_HorizontalAlignment_Right',
        ..
      ),

    -- * CellFormat_HyperlinkDisplayType
    CellFormat_HyperlinkDisplayType
      ( CellFormat_HyperlinkDisplayType_HYPERLINKDISPLAYTYPEUNSPECIFIED,
        CellFormat_HyperlinkDisplayType_Linked,
        CellFormat_HyperlinkDisplayType_PLAINTEXT,
        ..
      ),

    -- * CellFormat_TextDirection
    CellFormat_TextDirection
      ( CellFormat_TextDirection_TEXTDIRECTIONUNSPECIFIED,
        CellFormat_TextDirection_LEFTTORIGHT,
        CellFormat_TextDirection_RIGHTTOLEFT,
        ..
      ),

    -- * CellFormat_VerticalAlignment
    CellFormat_VerticalAlignment
      ( CellFormat_VerticalAlignment_VERTICALALIGNUNSPECIFIED,
        CellFormat_VerticalAlignment_Top,
        CellFormat_VerticalAlignment_Middle,
        CellFormat_VerticalAlignment_Bottom,
        ..
      ),

    -- * CellFormat_WrapStrategy
    CellFormat_WrapStrategy
      ( CellFormat_WrapStrategy_WRAPSTRATEGYUNSPECIFIED,
        CellFormat_WrapStrategy_OVERFLOWCELL,
        CellFormat_WrapStrategy_LEGACYWRAP,
        CellFormat_WrapStrategy_Clip,
        CellFormat_WrapStrategy_Wrap,
        ..
      ),

    -- * ChartAxisViewWindowOptions_ViewWindowMode
    ChartAxisViewWindowOptions_ViewWindowMode
      ( ChartAxisViewWindowOptions_ViewWindowMode_DEFAULTVIEWWINDOWMODE,
        ChartAxisViewWindowOptions_ViewWindowMode_VIEWWINDOWMODEUNSUPPORTED,
        ChartAxisViewWindowOptions_ViewWindowMode_Explicit,
        ChartAxisViewWindowOptions_ViewWindowMode_Pretty,
        ..
      ),

    -- * ChartData_AggregateType
    ChartData_AggregateType
      ( ChartData_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED,
        ChartData_AggregateType_Average,
        ChartData_AggregateType_Count,
        ChartData_AggregateType_Max,
        ChartData_AggregateType_Median,
        ChartData_AggregateType_Min,
        ChartData_AggregateType_Sum,
        ..
      ),

    -- * ChartDateTimeRule_Type
    ChartDateTimeRule_Type
      ( ChartDateTimeRule_Type_CHARTDATETIMERULETYPEUNSPECIFIED,
        ChartDateTimeRule_Type_Second,
        ChartDateTimeRule_Type_Minute,
        ChartDateTimeRule_Type_Hour,
        ChartDateTimeRule_Type_HOURMINUTE,
        ChartDateTimeRule_Type_HOURMINUTEAMPM,
        ChartDateTimeRule_Type_DAYOFWEEK,
        ChartDateTimeRule_Type_DAYOFYEAR,
        ChartDateTimeRule_Type_DAYOFMONTH,
        ChartDateTimeRule_Type_DAYMONTH,
        ChartDateTimeRule_Type_Month,
        ChartDateTimeRule_Type_Quarter,
        ChartDateTimeRule_Type_Year,
        ChartDateTimeRule_Type_YEARMONTH,
        ChartDateTimeRule_Type_YEARQUARTER,
        ChartDateTimeRule_Type_YEARMONTHDAY,
        ..
      ),

    -- * ChartSpec_HiddenDimensionStrategy
    ChartSpec_HiddenDimensionStrategy
      ( ChartSpec_HiddenDimensionStrategy_CHARTHIDDENDIMENSIONSTRATEGYUNSPECIFIED,
        ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWSANDCOLUMNS,
        ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWS,
        ChartSpec_HiddenDimensionStrategy_SKIPHIDDENCOLUMNS,
        ChartSpec_HiddenDimensionStrategy_SHOWALL,
        ..
      ),

    -- * ColorStyle_ThemeColor
    ColorStyle_ThemeColor
      ( ColorStyle_ThemeColor_THEMECOLORTYPEUNSPECIFIED,
        ColorStyle_ThemeColor_Text,
        ColorStyle_ThemeColor_Background,
        ColorStyle_ThemeColor_ACCENT1,
        ColorStyle_ThemeColor_ACCENT2,
        ColorStyle_ThemeColor_ACCENT3,
        ColorStyle_ThemeColor_ACCENT4,
        ColorStyle_ThemeColor_ACCENT5,
        ColorStyle_ThemeColor_ACCENT6,
        ColorStyle_ThemeColor_Link,
        ..
      ),

    -- * ConditionValue_RelativeDate
    ConditionValue_RelativeDate
      ( ConditionValue_RelativeDate_RELATIVEDATEUNSPECIFIED,
        ConditionValue_RelativeDate_PASTYEAR,
        ConditionValue_RelativeDate_PASTMONTH,
        ConditionValue_RelativeDate_PASTWEEK,
        ConditionValue_RelativeDate_Yesterday,
        ConditionValue_RelativeDate_Today,
        ConditionValue_RelativeDate_Tomorrow,
        ..
      ),

    -- * CopyPasteRequest_PasteOrientation
    CopyPasteRequest_PasteOrientation
      ( CopyPasteRequest_PasteOrientation_Normal,
        CopyPasteRequest_PasteOrientation_Transpose,
        ..
      ),

    -- * CopyPasteRequest_PasteType
    CopyPasteRequest_PasteType
      ( CopyPasteRequest_PasteType_PASTENORMAL,
        CopyPasteRequest_PasteType_PASTEVALUES,
        CopyPasteRequest_PasteType_PASTEFORMAT,
        CopyPasteRequest_PasteType_PASTENOBORDERS,
        CopyPasteRequest_PasteType_PASTEFORMULA,
        CopyPasteRequest_PasteType_PASTEDATAVALIDATION,
        CopyPasteRequest_PasteType_PASTECONDITIONALFORMATTING,
        ..
      ),

    -- * CutPasteRequest_PasteType
    CutPasteRequest_PasteType
      ( CutPasteRequest_PasteType_PASTENORMAL,
        CutPasteRequest_PasteType_PASTEVALUES,
        CutPasteRequest_PasteType_PASTEFORMAT,
        CutPasteRequest_PasteType_PASTENOBORDERS,
        CutPasteRequest_PasteType_PASTEFORMULA,
        CutPasteRequest_PasteType_PASTEDATAVALIDATION,
        CutPasteRequest_PasteType_PASTECONDITIONALFORMATTING,
        ..
      ),

    -- * DataExecutionStatus_ErrorCode
    DataExecutionStatus_ErrorCode
      ( DataExecutionStatus_ErrorCode_DATAEXECUTIONERRORCODEUNSPECIFIED,
        DataExecutionStatus_ErrorCode_TIMEDOUT,
        DataExecutionStatus_ErrorCode_TOOMANYROWS,
        DataExecutionStatus_ErrorCode_TOOMANYCOLUMNS,
        DataExecutionStatus_ErrorCode_TOOMANYCELLS,
        DataExecutionStatus_ErrorCode_Engine,
        DataExecutionStatus_ErrorCode_PARAMETERINVALID,
        DataExecutionStatus_ErrorCode_UNSUPPORTEDDATATYPE,
        DataExecutionStatus_ErrorCode_DUPLICATECOLUMNNAMES,
        DataExecutionStatus_ErrorCode_Interrupted,
        DataExecutionStatus_ErrorCode_CONCURRENTQUERY,
        DataExecutionStatus_ErrorCode_Other,
        DataExecutionStatus_ErrorCode_TOOMANYCHARSPERCELL,
        DataExecutionStatus_ErrorCode_DATANOTFOUND,
        DataExecutionStatus_ErrorCode_PERMISSIONDENIED,
        DataExecutionStatus_ErrorCode_MISSINGCOLUMNALIAS,
        DataExecutionStatus_ErrorCode_OBJECTNOTFOUND,
        DataExecutionStatus_ErrorCode_OBJECTINERRORSTATE,
        DataExecutionStatus_ErrorCode_OBJECTSPECINVALID,
        DataExecutionStatus_ErrorCode_DATAEXECUTIONCANCELLED,
        ..
      ),

    -- * DataExecutionStatus_State
    DataExecutionStatus_State
      ( DataExecutionStatus_State_DATAEXECUTIONSTATEUNSPECIFIED,
        DataExecutionStatus_State_NOTSTARTED,
        DataExecutionStatus_State_Running,
        DataExecutionStatus_State_Cancelling,
        DataExecutionStatus_State_Succeeded,
        DataExecutionStatus_State_Failed,
        ..
      ),

    -- * DataFilterValueRange_MajorDimension
    DataFilterValueRange_MajorDimension
      ( DataFilterValueRange_MajorDimension_DIMENSIONUNSPECIFIED,
        DataFilterValueRange_MajorDimension_Rows,
        DataFilterValueRange_MajorDimension_Columns,
        ..
      ),

    -- * DataLabel_Placement
    DataLabel_Placement
      ( DataLabel_Placement_DATALABELPLACEMENTUNSPECIFIED,
        DataLabel_Placement_Center,
        DataLabel_Placement_Left',
        DataLabel_Placement_Right',
        DataLabel_Placement_Above,
        DataLabel_Placement_Below,
        DataLabel_Placement_INSIDEEND,
        DataLabel_Placement_INSIDEBASE,
        DataLabel_Placement_OUTSIDEEND,
        ..
      ),

    -- * DataLabel_Type
    DataLabel_Type
      ( DataLabel_Type_DATALABELTYPEUNSPECIFIED,
        DataLabel_Type_None,
        DataLabel_Type_Data',
        DataLabel_Type_Custom,
        ..
      ),

    -- * DataSourceRefreshSchedule_RefreshScope
    DataSourceRefreshSchedule_RefreshScope
      ( DataSourceRefreshSchedule_RefreshScope_DATASOURCEREFRESHSCOPEUNSPECIFIED,
        DataSourceRefreshSchedule_RefreshScope_ALLDATASOURCES,
        ..
      ),

    -- * DataSourceRefreshWeeklySchedule_DaysOfWeekItem
    DataSourceRefreshWeeklySchedule_DaysOfWeekItem
      ( DataSourceRefreshWeeklySchedule_DaysOfWeekItem_DAYOFWEEKUNSPECIFIED,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Monday,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Tuesday,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Wednesday,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Thursday,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Friday,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Saturday,
        DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Sunday,
        ..
      ),

    -- * DataSourceTable_ColumnSelectionType
    DataSourceTable_ColumnSelectionType
      ( DataSourceTable_ColumnSelectionType_DATASOURCETABLECOLUMNSELECTIONTYPEUNSPECIFIED,
        DataSourceTable_ColumnSelectionType_Selected,
        DataSourceTable_ColumnSelectionType_SYNCALL,
        ..
      ),

    -- * DateTimeRule_Type
    DateTimeRule_Type
      ( DateTimeRule_Type_DATETIMERULETYPEUNSPECIFIED,
        DateTimeRule_Type_Second,
        DateTimeRule_Type_Minute,
        DateTimeRule_Type_Hour,
        DateTimeRule_Type_HOURMINUTE,
        DateTimeRule_Type_HOURMINUTEAMPM,
        DateTimeRule_Type_DAYOFWEEK,
        DateTimeRule_Type_DAYOFYEAR,
        DateTimeRule_Type_DAYOFMONTH,
        DateTimeRule_Type_DAYMONTH,
        DateTimeRule_Type_Month,
        DateTimeRule_Type_Quarter,
        DateTimeRule_Type_Year,
        DateTimeRule_Type_YEARMONTH,
        DateTimeRule_Type_YEARQUARTER,
        DateTimeRule_Type_YEARMONTHDAY,
        ..
      ),

    -- * DeleteRangeRequest_ShiftDimension
    DeleteRangeRequest_ShiftDimension
      ( DeleteRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED,
        DeleteRangeRequest_ShiftDimension_Rows,
        DeleteRangeRequest_ShiftDimension_Columns,
        ..
      ),

    -- * DeveloperMetadata_Visibility
    DeveloperMetadata_Visibility
      ( DeveloperMetadata_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED,
        DeveloperMetadata_Visibility_Document,
        DeveloperMetadata_Visibility_Project,
        ..
      ),

    -- * DeveloperMetadataLocation_LocationType
    DeveloperMetadataLocation_LocationType
      ( DeveloperMetadataLocation_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED,
        DeveloperMetadataLocation_LocationType_Row,
        DeveloperMetadataLocation_LocationType_Column,
        DeveloperMetadataLocation_LocationType_Sheet,
        DeveloperMetadataLocation_LocationType_Spreadsheet,
        ..
      ),

    -- * DeveloperMetadataLookup_LocationMatchingStrategy
    DeveloperMetadataLookup_LocationMatchingStrategy
      ( DeveloperMetadataLookup_LocationMatchingStrategy_DEVELOPERMETADATALOCATIONMATCHINGSTRATEGYUNSPECIFIED,
        DeveloperMetadataLookup_LocationMatchingStrategy_EXACTLOCATION,
        DeveloperMetadataLookup_LocationMatchingStrategy_INTERSECTINGLOCATION,
        ..
      ),

    -- * DeveloperMetadataLookup_LocationType
    DeveloperMetadataLookup_LocationType
      ( DeveloperMetadataLookup_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED,
        DeveloperMetadataLookup_LocationType_Row,
        DeveloperMetadataLookup_LocationType_Column,
        DeveloperMetadataLookup_LocationType_Sheet,
        DeveloperMetadataLookup_LocationType_Spreadsheet,
        ..
      ),

    -- * DeveloperMetadataLookup_Visibility
    DeveloperMetadataLookup_Visibility
      ( DeveloperMetadataLookup_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED,
        DeveloperMetadataLookup_Visibility_Document,
        DeveloperMetadataLookup_Visibility_Project,
        ..
      ),

    -- * DimensionRange_Dimension
    DimensionRange_Dimension
      ( DimensionRange_Dimension_DIMENSIONUNSPECIFIED,
        DimensionRange_Dimension_Rows,
        DimensionRange_Dimension_Columns,
        ..
      ),

    -- * ErrorValue_Type
    ErrorValue_Type
      ( ErrorValue_Type_ERRORTYPEUNSPECIFIED,
        ErrorValue_Type_Error',
        ErrorValue_Type_NULLVALUE,
        ErrorValue_Type_DIVIDEBYZERO,
        ErrorValue_Type_Value,
        ErrorValue_Type_Ref,
        ErrorValue_Type_Name,
        ErrorValue_Type_Num,
        ErrorValue_Type_NA,
        ErrorValue_Type_Loading,
        ..
      ),

    -- * HistogramChartSpec_LegendPosition
    HistogramChartSpec_LegendPosition
      ( HistogramChartSpec_LegendPosition_HISTOGRAMCHARTLEGENDPOSITIONUNSPECIFIED,
        HistogramChartSpec_LegendPosition_BOTTOMLEGEND,
        HistogramChartSpec_LegendPosition_LEFTLEGEND,
        HistogramChartSpec_LegendPosition_RIGHTLEGEND,
        HistogramChartSpec_LegendPosition_TOPLEGEND,
        HistogramChartSpec_LegendPosition_NOLEGEND,
        HistogramChartSpec_LegendPosition_INSIDELEGEND,
        ..
      ),

    -- * InsertRangeRequest_ShiftDimension
    InsertRangeRequest_ShiftDimension
      ( InsertRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED,
        InsertRangeRequest_ShiftDimension_Rows,
        InsertRangeRequest_ShiftDimension_Columns,
        ..
      ),

    -- * InterpolationPoint_Type
    InterpolationPoint_Type
      ( InterpolationPoint_Type_INTERPOLATIONPOINTTYPEUNSPECIFIED,
        InterpolationPoint_Type_Min,
        InterpolationPoint_Type_Max,
        InterpolationPoint_Type_Number,
        InterpolationPoint_Type_Percent,
        InterpolationPoint_Type_Percentile,
        ..
      ),

    -- * LineStyle_Type
    LineStyle_Type
      ( LineStyle_Type_LINEDASHTYPEUNSPECIFIED,
        LineStyle_Type_Invisible,
        LineStyle_Type_Custom,
        LineStyle_Type_Solid,
        LineStyle_Type_Dotted,
        LineStyle_Type_MEDIUMDASHED,
        LineStyle_Type_MEDIUMDASHEDDOTTED,
        LineStyle_Type_LONGDASHED,
        LineStyle_Type_LONGDASHEDDOTTED,
        ..
      ),

    -- * MergeCellsRequest_MergeType
    MergeCellsRequest_MergeType
      ( MergeCellsRequest_MergeType_MERGEALL,
        MergeCellsRequest_MergeType_MERGECOLUMNS,
        MergeCellsRequest_MergeType_MERGEROWS,
        ..
      ),

    -- * NumberFormat_Type
    NumberFormat_Type
      ( NumberFormat_Type_NUMBERFORMATTYPEUNSPECIFIED,
        NumberFormat_Type_Text,
        NumberFormat_Type_Number,
        NumberFormat_Type_Percent,
        NumberFormat_Type_Currency,
        NumberFormat_Type_Date,
        NumberFormat_Type_Time,
        NumberFormat_Type_DATETIME,
        NumberFormat_Type_Scientific,
        ..
      ),

    -- * OrgChartSpec_NodeSize
    OrgChartSpec_NodeSize
      ( OrgChartSpec_NodeSize_ORGCHARTLABELSIZEUNSPECIFIED,
        OrgChartSpec_NodeSize_Small,
        OrgChartSpec_NodeSize_Medium,
        OrgChartSpec_NodeSize_Large,
        ..
      ),

    -- * PasteDataRequest_Type
    PasteDataRequest_Type
      ( PasteDataRequest_Type_PASTENORMAL,
        PasteDataRequest_Type_PASTEVALUES,
        PasteDataRequest_Type_PASTEFORMAT,
        PasteDataRequest_Type_PASTENOBORDERS,
        PasteDataRequest_Type_PASTEFORMULA,
        PasteDataRequest_Type_PASTEDATAVALIDATION,
        PasteDataRequest_Type_PASTECONDITIONALFORMATTING,
        ..
      ),

    -- * PieChartSpec_LegendPosition
    PieChartSpec_LegendPosition
      ( PieChartSpec_LegendPosition_PIECHARTLEGENDPOSITIONUNSPECIFIED,
        PieChartSpec_LegendPosition_BOTTOMLEGEND,
        PieChartSpec_LegendPosition_LEFTLEGEND,
        PieChartSpec_LegendPosition_RIGHTLEGEND,
        PieChartSpec_LegendPosition_TOPLEGEND,
        PieChartSpec_LegendPosition_NOLEGEND,
        PieChartSpec_LegendPosition_LABELEDLEGEND,
        ..
      ),

    -- * PivotGroup_SortOrder
    PivotGroup_SortOrder
      ( PivotGroup_SortOrder_SORTORDERUNSPECIFIED,
        PivotGroup_SortOrder_Ascending,
        PivotGroup_SortOrder_Descending,
        ..
      ),

    -- * PivotTable_ValueLayout
    PivotTable_ValueLayout
      ( PivotTable_ValueLayout_Horizontal,
        PivotTable_ValueLayout_Vertical,
        ..
      ),

    -- * PivotValue_CalculatedDisplayType
    PivotValue_CalculatedDisplayType
      ( PivotValue_CalculatedDisplayType_PIVOTVALUECALCULATEDDISPLAYTYPEUNSPECIFIED,
        PivotValue_CalculatedDisplayType_PERCENTOFROWTOTAL,
        PivotValue_CalculatedDisplayType_PERCENTOFCOLUMNTOTAL,
        PivotValue_CalculatedDisplayType_PERCENTOFGRANDTOTAL,
        ..
      ),

    -- * PivotValue_SummarizeFunction
    PivotValue_SummarizeFunction
      ( PivotValue_SummarizeFunction_PIVOTSTANDARDVALUEFUNCTIONUNSPECIFIED,
        PivotValue_SummarizeFunction_Sum,
        PivotValue_SummarizeFunction_Counta,
        PivotValue_SummarizeFunction_Count,
        PivotValue_SummarizeFunction_Countunique,
        PivotValue_SummarizeFunction_Average,
        PivotValue_SummarizeFunction_Max,
        PivotValue_SummarizeFunction_Min,
        PivotValue_SummarizeFunction_Median,
        PivotValue_SummarizeFunction_Product,
        PivotValue_SummarizeFunction_Stdev,
        PivotValue_SummarizeFunction_Stdevp,
        PivotValue_SummarizeFunction_Var,
        PivotValue_SummarizeFunction_Varp,
        PivotValue_SummarizeFunction_Custom,
        PivotValue_SummarizeFunction_None,
        ..
      ),

    -- * PointStyle_Shape
    PointStyle_Shape
      ( PointStyle_Shape_POINTSHAPEUNSPECIFIED,
        PointStyle_Shape_Circle,
        PointStyle_Shape_Diamond,
        PointStyle_Shape_Hexagon,
        PointStyle_Shape_Pentagon,
        PointStyle_Shape_Square,
        PointStyle_Shape_Star,
        PointStyle_Shape_Triangle,
        PointStyle_Shape_XMARK,
        ..
      ),

    -- * RefreshCancellationStatus_ErrorCode
    RefreshCancellationStatus_ErrorCode
      ( RefreshCancellationStatus_ErrorCode_REFRESHCANCELLATIONERRORCODEUNSPECIFIED,
        RefreshCancellationStatus_ErrorCode_EXECUTIONNOTFOUND,
        RefreshCancellationStatus_ErrorCode_CANCELPERMISSIONDENIED,
        RefreshCancellationStatus_ErrorCode_QUERYEXECUTIONCOMPLETED,
        RefreshCancellationStatus_ErrorCode_CONCURRENTCANCELLATION,
        RefreshCancellationStatus_ErrorCode_CANCELOTHERERROR,
        ..
      ),

    -- * RefreshCancellationStatus_State
    RefreshCancellationStatus_State
      ( RefreshCancellationStatus_State_REFRESHCANCELLATIONSTATEUNSPECIFIED,
        RefreshCancellationStatus_State_CANCELSUCCEEDED,
        RefreshCancellationStatus_State_CANCELFAILED,
        ..
      ),

    -- * ScorecardChartSpec_AggregateType
    ScorecardChartSpec_AggregateType
      ( ScorecardChartSpec_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED,
        ScorecardChartSpec_AggregateType_Average,
        ScorecardChartSpec_AggregateType_Count,
        ScorecardChartSpec_AggregateType_Max,
        ScorecardChartSpec_AggregateType_Median,
        ScorecardChartSpec_AggregateType_Min,
        ScorecardChartSpec_AggregateType_Sum,
        ..
      ),

    -- * ScorecardChartSpec_NumberFormatSource
    ScorecardChartSpec_NumberFormatSource
      ( ScorecardChartSpec_NumberFormatSource_CHARTNUMBERFORMATSOURCEUNDEFINED,
        ScorecardChartSpec_NumberFormatSource_FROMDATA,
        ScorecardChartSpec_NumberFormatSource_Custom,
        ..
      ),

    -- * SheetProperties_SheetType
    SheetProperties_SheetType
      ( SheetProperties_SheetType_SHEETTYPEUNSPECIFIED,
        SheetProperties_SheetType_Grid,
        SheetProperties_SheetType_Object,
        SheetProperties_SheetType_DATASOURCE,
        ..
      ),

    -- * SlicerSpec_HorizontalAlignment
    SlicerSpec_HorizontalAlignment
      ( SlicerSpec_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED,
        SlicerSpec_HorizontalAlignment_Left',
        SlicerSpec_HorizontalAlignment_Center,
        SlicerSpec_HorizontalAlignment_Right',
        ..
      ),

    -- * SortSpec_SortOrder
    SortSpec_SortOrder
      ( SortSpec_SortOrder_SORTORDERUNSPECIFIED,
        SortSpec_SortOrder_Ascending,
        SortSpec_SortOrder_Descending,
        ..
      ),

    -- * SourceAndDestination_Dimension
    SourceAndDestination_Dimension
      ( SourceAndDestination_Dimension_DIMENSIONUNSPECIFIED,
        SourceAndDestination_Dimension_Rows,
        SourceAndDestination_Dimension_Columns,
        ..
      ),

    -- * SpreadsheetProperties_AutoRecalc
    SpreadsheetProperties_AutoRecalc
      ( SpreadsheetProperties_AutoRecalc_RECALCULATIONINTERVALUNSPECIFIED,
        SpreadsheetProperties_AutoRecalc_ONCHANGE,
        SpreadsheetProperties_AutoRecalc_Minute,
        SpreadsheetProperties_AutoRecalc_Hour,
        ..
      ),

    -- * TextPosition_HorizontalAlignment
    TextPosition_HorizontalAlignment
      ( TextPosition_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED,
        TextPosition_HorizontalAlignment_Left',
        TextPosition_HorizontalAlignment_Center,
        TextPosition_HorizontalAlignment_Right',
        ..
      ),

    -- * TextToColumnsRequest_DelimiterType
    TextToColumnsRequest_DelimiterType
      ( TextToColumnsRequest_DelimiterType_DELIMITERTYPEUNSPECIFIED,
        TextToColumnsRequest_DelimiterType_Comma,
        TextToColumnsRequest_DelimiterType_Semicolon,
        TextToColumnsRequest_DelimiterType_Period,
        TextToColumnsRequest_DelimiterType_Space,
        TextToColumnsRequest_DelimiterType_Custom,
        TextToColumnsRequest_DelimiterType_Autodetect,
        ..
      ),

    -- * ThemeColorPair_ColorType
    ThemeColorPair_ColorType
      ( ThemeColorPair_ColorType_THEMECOLORTYPEUNSPECIFIED,
        ThemeColorPair_ColorType_Text,
        ThemeColorPair_ColorType_Background,
        ThemeColorPair_ColorType_ACCENT1,
        ThemeColorPair_ColorType_ACCENT2,
        ThemeColorPair_ColorType_ACCENT3,
        ThemeColorPair_ColorType_ACCENT4,
        ThemeColorPair_ColorType_ACCENT5,
        ThemeColorPair_ColorType_ACCENT6,
        ThemeColorPair_ColorType_Link,
        ..
      ),

    -- * ValueRange_MajorDimension
    ValueRange_MajorDimension
      ( ValueRange_MajorDimension_DIMENSIONUNSPECIFIED,
        ValueRange_MajorDimension_Rows,
        ValueRange_MajorDimension_Columns,
        ..
      ),

    -- * WaterfallChartSpec_StackedType
    WaterfallChartSpec_StackedType
      ( WaterfallChartSpec_StackedType_WATERFALLSTACKEDTYPEUNSPECIFIED,
        WaterfallChartSpec_StackedType_Stacked,
        WaterfallChartSpec_StackedType_Sequential,
        ..
      ),

    -- * SpreadsheetsValuesAppendInsertDataOption
    SpreadsheetsValuesAppendInsertDataOption
      ( SpreadsheetsValuesAppendInsertDataOption_Overwrite,
        SpreadsheetsValuesAppendInsertDataOption_INSERTROWS,
        ..
      ),

    -- * SpreadsheetsValuesAppendResponseDateTimeRenderOption
    SpreadsheetsValuesAppendResponseDateTimeRenderOption
      ( SpreadsheetsValuesAppendResponseDateTimeRenderOption_SERIALNUMBER,
        SpreadsheetsValuesAppendResponseDateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * SpreadsheetsValuesAppendResponseValueRenderOption
    SpreadsheetsValuesAppendResponseValueRenderOption
      ( SpreadsheetsValuesAppendResponseValueRenderOption_FORMATTEDVALUE,
        SpreadsheetsValuesAppendResponseValueRenderOption_UNFORMATTEDVALUE,
        SpreadsheetsValuesAppendResponseValueRenderOption_Formula,
        ..
      ),

    -- * SpreadsheetsValuesAppendValueInputOption
    SpreadsheetsValuesAppendValueInputOption
      ( SpreadsheetsValuesAppendValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
        SpreadsheetsValuesAppendValueInputOption_Raw,
        SpreadsheetsValuesAppendValueInputOption_USERENTERED,
        ..
      ),

    -- * SpreadsheetsValuesBatchGetDateTimeRenderOption
    SpreadsheetsValuesBatchGetDateTimeRenderOption
      ( SpreadsheetsValuesBatchGetDateTimeRenderOption_SERIALNUMBER,
        SpreadsheetsValuesBatchGetDateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * SpreadsheetsValuesBatchGetMajorDimension
    SpreadsheetsValuesBatchGetMajorDimension
      ( SpreadsheetsValuesBatchGetMajorDimension_DIMENSIONUNSPECIFIED,
        SpreadsheetsValuesBatchGetMajorDimension_Rows,
        SpreadsheetsValuesBatchGetMajorDimension_Columns,
        ..
      ),

    -- * SpreadsheetsValuesBatchGetValueRenderOption
    SpreadsheetsValuesBatchGetValueRenderOption
      ( SpreadsheetsValuesBatchGetValueRenderOption_FORMATTEDVALUE,
        SpreadsheetsValuesBatchGetValueRenderOption_UNFORMATTEDVALUE,
        SpreadsheetsValuesBatchGetValueRenderOption_Formula,
        ..
      ),

    -- * SpreadsheetsValuesGetDateTimeRenderOption
    SpreadsheetsValuesGetDateTimeRenderOption
      ( SpreadsheetsValuesGetDateTimeRenderOption_SERIALNUMBER,
        SpreadsheetsValuesGetDateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * SpreadsheetsValuesGetMajorDimension
    SpreadsheetsValuesGetMajorDimension
      ( SpreadsheetsValuesGetMajorDimension_DIMENSIONUNSPECIFIED,
        SpreadsheetsValuesGetMajorDimension_Rows,
        SpreadsheetsValuesGetMajorDimension_Columns,
        ..
      ),

    -- * SpreadsheetsValuesGetValueRenderOption
    SpreadsheetsValuesGetValueRenderOption
      ( SpreadsheetsValuesGetValueRenderOption_FORMATTEDVALUE,
        SpreadsheetsValuesGetValueRenderOption_UNFORMATTEDVALUE,
        SpreadsheetsValuesGetValueRenderOption_Formula,
        ..
      ),

    -- * SpreadsheetsValuesUpdateResponseDateTimeRenderOption
    SpreadsheetsValuesUpdateResponseDateTimeRenderOption
      ( SpreadsheetsValuesUpdateResponseDateTimeRenderOption_SERIALNUMBER,
        SpreadsheetsValuesUpdateResponseDateTimeRenderOption_FORMATTEDSTRING,
        ..
      ),

    -- * SpreadsheetsValuesUpdateResponseValueRenderOption
    SpreadsheetsValuesUpdateResponseValueRenderOption
      ( SpreadsheetsValuesUpdateResponseValueRenderOption_FORMATTEDVALUE,
        SpreadsheetsValuesUpdateResponseValueRenderOption_UNFORMATTEDVALUE,
        SpreadsheetsValuesUpdateResponseValueRenderOption_Formula,
        ..
      ),

    -- * SpreadsheetsValuesUpdateValueInputOption
    SpreadsheetsValuesUpdateValueInputOption
      ( SpreadsheetsValuesUpdateValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
        SpreadsheetsValuesUpdateValueInputOption_Raw,
        SpreadsheetsValuesUpdateValueInputOption_USERENTERED,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Whether rows or columns should be appended.
newtype AppendDimensionRequest_Dimension = AppendDimensionRequest_Dimension {fromAppendDimensionRequest_Dimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern AppendDimensionRequest_Dimension_DIMENSIONUNSPECIFIED :: AppendDimensionRequest_Dimension
pattern AppendDimensionRequest_Dimension_DIMENSIONUNSPECIFIED = AppendDimensionRequest_Dimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern AppendDimensionRequest_Dimension_Rows :: AppendDimensionRequest_Dimension
pattern AppendDimensionRequest_Dimension_Rows = AppendDimensionRequest_Dimension "ROWS"

-- | Operates on the columns of a sheet.
pattern AppendDimensionRequest_Dimension_Columns :: AppendDimensionRequest_Dimension
pattern AppendDimensionRequest_Dimension_Columns = AppendDimensionRequest_Dimension "COLUMNS"

{-# COMPLETE
  AppendDimensionRequest_Dimension_DIMENSIONUNSPECIFIED,
  AppendDimensionRequest_Dimension_Rows,
  AppendDimensionRequest_Dimension_Columns,
  AppendDimensionRequest_Dimension
  #-}

-- | The comparison type of key value with baseline value.
newtype BaselineValueFormat_ComparisonType = BaselineValueFormat_ComparisonType {fromBaselineValueFormat_ComparisonType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BaselineValueFormat_ComparisonType_COMPARISONTYPEUNDEFINED :: BaselineValueFormat_ComparisonType
pattern BaselineValueFormat_ComparisonType_COMPARISONTYPEUNDEFINED = BaselineValueFormat_ComparisonType "COMPARISON_TYPE_UNDEFINED"

-- | Use absolute difference between key and baseline value.
pattern BaselineValueFormat_ComparisonType_ABSOLUTEDIFFERENCE :: BaselineValueFormat_ComparisonType
pattern BaselineValueFormat_ComparisonType_ABSOLUTEDIFFERENCE = BaselineValueFormat_ComparisonType "ABSOLUTE_DIFFERENCE"

-- | Use percentage difference between key and baseline value.
pattern BaselineValueFormat_ComparisonType_PERCENTAGEDIFFERENCE :: BaselineValueFormat_ComparisonType
pattern BaselineValueFormat_ComparisonType_PERCENTAGEDIFFERENCE = BaselineValueFormat_ComparisonType "PERCENTAGE_DIFFERENCE"

{-# COMPLETE
  BaselineValueFormat_ComparisonType_COMPARISONTYPEUNDEFINED,
  BaselineValueFormat_ComparisonType_ABSOLUTEDIFFERENCE,
  BaselineValueFormat_ComparisonType_PERCENTAGEDIFFERENCE,
  BaselineValueFormat_ComparisonType
  #-}

-- | The position of this axis.
newtype BasicChartAxis_Position = BasicChartAxis_Position {fromBasicChartAxis_Position :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartAxis_Position_BASICCHARTAXISPOSITIONUNSPECIFIED :: BasicChartAxis_Position
pattern BasicChartAxis_Position_BASICCHARTAXISPOSITIONUNSPECIFIED = BasicChartAxis_Position "BASIC_CHART_AXIS_POSITION_UNSPECIFIED"

-- | The axis rendered at the bottom of a chart. For most charts, this is the standard major axis. For bar charts, this is a minor axis.
pattern BasicChartAxis_Position_BOTTOMAXIS :: BasicChartAxis_Position
pattern BasicChartAxis_Position_BOTTOMAXIS = BasicChartAxis_Position "BOTTOM_AXIS"

-- | The axis rendered at the left of a chart. For most charts, this is a minor axis. For bar charts, this is the standard major axis.
pattern BasicChartAxis_Position_LEFTAXIS :: BasicChartAxis_Position
pattern BasicChartAxis_Position_LEFTAXIS = BasicChartAxis_Position "LEFT_AXIS"

-- | The axis rendered at the right of a chart. For most charts, this is a minor axis. For bar charts, this is an unusual major axis.
pattern BasicChartAxis_Position_RIGHTAXIS :: BasicChartAxis_Position
pattern BasicChartAxis_Position_RIGHTAXIS = BasicChartAxis_Position "RIGHT_AXIS"

{-# COMPLETE
  BasicChartAxis_Position_BASICCHARTAXISPOSITIONUNSPECIFIED,
  BasicChartAxis_Position_BOTTOMAXIS,
  BasicChartAxis_Position_LEFTAXIS,
  BasicChartAxis_Position_RIGHTAXIS,
  BasicChartAxis_Position
  #-}

-- | The minor axis that will specify the range of values for this series. For example, if charting stocks over time, the \"Volume\" series may want to be pinned to the right with the prices pinned to the left, because the scale of trading volume is different than the scale of prices. It is an error to specify an axis that isn\'t a valid minor axis for the chart\'s type.
newtype BasicChartSeries_TargetAxis = BasicChartSeries_TargetAxis {fromBasicChartSeries_TargetAxis :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartSeries_TargetAxis_BASICCHARTAXISPOSITIONUNSPECIFIED :: BasicChartSeries_TargetAxis
pattern BasicChartSeries_TargetAxis_BASICCHARTAXISPOSITIONUNSPECIFIED = BasicChartSeries_TargetAxis "BASIC_CHART_AXIS_POSITION_UNSPECIFIED"

-- | The axis rendered at the bottom of a chart. For most charts, this is the standard major axis. For bar charts, this is a minor axis.
pattern BasicChartSeries_TargetAxis_BOTTOMAXIS :: BasicChartSeries_TargetAxis
pattern BasicChartSeries_TargetAxis_BOTTOMAXIS = BasicChartSeries_TargetAxis "BOTTOM_AXIS"

-- | The axis rendered at the left of a chart. For most charts, this is a minor axis. For bar charts, this is the standard major axis.
pattern BasicChartSeries_TargetAxis_LEFTAXIS :: BasicChartSeries_TargetAxis
pattern BasicChartSeries_TargetAxis_LEFTAXIS = BasicChartSeries_TargetAxis "LEFT_AXIS"

-- | The axis rendered at the right of a chart. For most charts, this is a minor axis. For bar charts, this is an unusual major axis.
pattern BasicChartSeries_TargetAxis_RIGHTAXIS :: BasicChartSeries_TargetAxis
pattern BasicChartSeries_TargetAxis_RIGHTAXIS = BasicChartSeries_TargetAxis "RIGHT_AXIS"

{-# COMPLETE
  BasicChartSeries_TargetAxis_BASICCHARTAXISPOSITIONUNSPECIFIED,
  BasicChartSeries_TargetAxis_BOTTOMAXIS,
  BasicChartSeries_TargetAxis_LEFTAXIS,
  BasicChartSeries_TargetAxis_RIGHTAXIS,
  BasicChartSeries_TargetAxis
  #-}

-- | The type of this series. Valid only if the chartType is COMBO. Different types will change the way the series is visualized. Only LINE, AREA, and COLUMN are supported.
newtype BasicChartSeries_Type = BasicChartSeries_Type {fromBasicChartSeries_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartSeries_Type_BASICCHARTTYPEUNSPECIFIED :: BasicChartSeries_Type
pattern BasicChartSeries_Type_BASICCHARTTYPEUNSPECIFIED = BasicChartSeries_Type "BASIC_CHART_TYPE_UNSPECIFIED"

-- | A bar chart.
pattern BasicChartSeries_Type_Bar :: BasicChartSeries_Type
pattern BasicChartSeries_Type_Bar = BasicChartSeries_Type "BAR"

-- | A line chart.
pattern BasicChartSeries_Type_Line :: BasicChartSeries_Type
pattern BasicChartSeries_Type_Line = BasicChartSeries_Type "LINE"

-- | An area chart.
pattern BasicChartSeries_Type_Area :: BasicChartSeries_Type
pattern BasicChartSeries_Type_Area = BasicChartSeries_Type "AREA"

-- | A column chart.
pattern BasicChartSeries_Type_Column :: BasicChartSeries_Type
pattern BasicChartSeries_Type_Column = BasicChartSeries_Type "COLUMN"

-- | A scatter chart.
pattern BasicChartSeries_Type_Scatter :: BasicChartSeries_Type
pattern BasicChartSeries_Type_Scatter = BasicChartSeries_Type "SCATTER"

-- | A combo chart.
pattern BasicChartSeries_Type_Combo :: BasicChartSeries_Type
pattern BasicChartSeries_Type_Combo = BasicChartSeries_Type "COMBO"

-- | A stepped area chart.
pattern BasicChartSeries_Type_STEPPEDAREA :: BasicChartSeries_Type
pattern BasicChartSeries_Type_STEPPEDAREA = BasicChartSeries_Type "STEPPED_AREA"

{-# COMPLETE
  BasicChartSeries_Type_BASICCHARTTYPEUNSPECIFIED,
  BasicChartSeries_Type_Bar,
  BasicChartSeries_Type_Line,
  BasicChartSeries_Type_Area,
  BasicChartSeries_Type_Column,
  BasicChartSeries_Type_Scatter,
  BasicChartSeries_Type_Combo,
  BasicChartSeries_Type_STEPPEDAREA,
  BasicChartSeries_Type
  #-}

-- | The type of the chart.
newtype BasicChartSpec_ChartType = BasicChartSpec_ChartType {fromBasicChartSpec_ChartType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartSpec_ChartType_BASICCHARTTYPEUNSPECIFIED :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_BASICCHARTTYPEUNSPECIFIED = BasicChartSpec_ChartType "BASIC_CHART_TYPE_UNSPECIFIED"

-- | A bar chart.
pattern BasicChartSpec_ChartType_Bar :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_Bar = BasicChartSpec_ChartType "BAR"

-- | A line chart.
pattern BasicChartSpec_ChartType_Line :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_Line = BasicChartSpec_ChartType "LINE"

-- | An area chart.
pattern BasicChartSpec_ChartType_Area :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_Area = BasicChartSpec_ChartType "AREA"

-- | A column chart.
pattern BasicChartSpec_ChartType_Column :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_Column = BasicChartSpec_ChartType "COLUMN"

-- | A scatter chart.
pattern BasicChartSpec_ChartType_Scatter :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_Scatter = BasicChartSpec_ChartType "SCATTER"

-- | A combo chart.
pattern BasicChartSpec_ChartType_Combo :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_Combo = BasicChartSpec_ChartType "COMBO"

-- | A stepped area chart.
pattern BasicChartSpec_ChartType_STEPPEDAREA :: BasicChartSpec_ChartType
pattern BasicChartSpec_ChartType_STEPPEDAREA = BasicChartSpec_ChartType "STEPPED_AREA"

{-# COMPLETE
  BasicChartSpec_ChartType_BASICCHARTTYPEUNSPECIFIED,
  BasicChartSpec_ChartType_Bar,
  BasicChartSpec_ChartType_Line,
  BasicChartSpec_ChartType_Area,
  BasicChartSpec_ChartType_Column,
  BasicChartSpec_ChartType_Scatter,
  BasicChartSpec_ChartType_Combo,
  BasicChartSpec_ChartType_STEPPEDAREA,
  BasicChartSpec_ChartType
  #-}

-- | The behavior of tooltips and data highlighting when hovering on data and chart area.
newtype BasicChartSpec_CompareMode = BasicChartSpec_CompareMode {fromBasicChartSpec_CompareMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartSpec_CompareMode_BASICCHARTCOMPAREMODEUNSPECIFIED :: BasicChartSpec_CompareMode
pattern BasicChartSpec_CompareMode_BASICCHARTCOMPAREMODEUNSPECIFIED = BasicChartSpec_CompareMode "BASIC_CHART_COMPARE_MODE_UNSPECIFIED"

-- | Only the focused data element is highlighted and shown in the tooltip.
pattern BasicChartSpec_CompareMode_Datum :: BasicChartSpec_CompareMode
pattern BasicChartSpec_CompareMode_Datum = BasicChartSpec_CompareMode "DATUM"

-- | All data elements with the same category (e.g., domain value) are highlighted and shown in the tooltip.
pattern BasicChartSpec_CompareMode_Category :: BasicChartSpec_CompareMode
pattern BasicChartSpec_CompareMode_Category = BasicChartSpec_CompareMode "CATEGORY"

{-# COMPLETE
  BasicChartSpec_CompareMode_BASICCHARTCOMPAREMODEUNSPECIFIED,
  BasicChartSpec_CompareMode_Datum,
  BasicChartSpec_CompareMode_Category,
  BasicChartSpec_CompareMode
  #-}

-- | The position of the chart legend.
newtype BasicChartSpec_LegendPosition = BasicChartSpec_LegendPosition {fromBasicChartSpec_LegendPosition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartSpec_LegendPosition_BASICCHARTLEGENDPOSITIONUNSPECIFIED :: BasicChartSpec_LegendPosition
pattern BasicChartSpec_LegendPosition_BASICCHARTLEGENDPOSITIONUNSPECIFIED = BasicChartSpec_LegendPosition "BASIC_CHART_LEGEND_POSITION_UNSPECIFIED"

-- | The legend is rendered on the bottom of the chart.
pattern BasicChartSpec_LegendPosition_BOTTOMLEGEND :: BasicChartSpec_LegendPosition
pattern BasicChartSpec_LegendPosition_BOTTOMLEGEND = BasicChartSpec_LegendPosition "BOTTOM_LEGEND"

-- | The legend is rendered on the left of the chart.
pattern BasicChartSpec_LegendPosition_LEFTLEGEND :: BasicChartSpec_LegendPosition
pattern BasicChartSpec_LegendPosition_LEFTLEGEND = BasicChartSpec_LegendPosition "LEFT_LEGEND"

-- | The legend is rendered on the right of the chart.
pattern BasicChartSpec_LegendPosition_RIGHTLEGEND :: BasicChartSpec_LegendPosition
pattern BasicChartSpec_LegendPosition_RIGHTLEGEND = BasicChartSpec_LegendPosition "RIGHT_LEGEND"

-- | The legend is rendered on the top of the chart.
pattern BasicChartSpec_LegendPosition_TOPLEGEND :: BasicChartSpec_LegendPosition
pattern BasicChartSpec_LegendPosition_TOPLEGEND = BasicChartSpec_LegendPosition "TOP_LEGEND"

-- | No legend is rendered.
pattern BasicChartSpec_LegendPosition_NOLEGEND :: BasicChartSpec_LegendPosition
pattern BasicChartSpec_LegendPosition_NOLEGEND = BasicChartSpec_LegendPosition "NO_LEGEND"

{-# COMPLETE
  BasicChartSpec_LegendPosition_BASICCHARTLEGENDPOSITIONUNSPECIFIED,
  BasicChartSpec_LegendPosition_BOTTOMLEGEND,
  BasicChartSpec_LegendPosition_LEFTLEGEND,
  BasicChartSpec_LegendPosition_RIGHTLEGEND,
  BasicChartSpec_LegendPosition_TOPLEGEND,
  BasicChartSpec_LegendPosition_NOLEGEND,
  BasicChartSpec_LegendPosition
  #-}

-- | The stacked type for charts that support vertical stacking. Applies to Area, Bar, Column, Combo, and Stepped Area charts.
newtype BasicChartSpec_StackedType = BasicChartSpec_StackedType {fromBasicChartSpec_StackedType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BasicChartSpec_StackedType_BASICCHARTSTACKEDTYPEUNSPECIFIED :: BasicChartSpec_StackedType
pattern BasicChartSpec_StackedType_BASICCHARTSTACKEDTYPEUNSPECIFIED = BasicChartSpec_StackedType "BASIC_CHART_STACKED_TYPE_UNSPECIFIED"

-- | Series are not stacked.
pattern BasicChartSpec_StackedType_NOTSTACKED :: BasicChartSpec_StackedType
pattern BasicChartSpec_StackedType_NOTSTACKED = BasicChartSpec_StackedType "NOT_STACKED"

-- | Series values are stacked, each value is rendered vertically beginning from the top of the value below it.
pattern BasicChartSpec_StackedType_Stacked :: BasicChartSpec_StackedType
pattern BasicChartSpec_StackedType_Stacked = BasicChartSpec_StackedType "STACKED"

-- | Vertical stacks are stretched to reach the top of the chart, with values laid out as percentages of each other.
pattern BasicChartSpec_StackedType_PERCENTSTACKED :: BasicChartSpec_StackedType
pattern BasicChartSpec_StackedType_PERCENTSTACKED = BasicChartSpec_StackedType "PERCENT_STACKED"

{-# COMPLETE
  BasicChartSpec_StackedType_BASICCHARTSTACKEDTYPEUNSPECIFIED,
  BasicChartSpec_StackedType_NOTSTACKED,
  BasicChartSpec_StackedType_Stacked,
  BasicChartSpec_StackedType_PERCENTSTACKED,
  BasicChartSpec_StackedType
  #-}

-- | How dates, times, and durations should be represented in the output. This is ignored if value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL/NUMBER.
newtype BatchGetValuesByDataFilterRequest_DateTimeRenderOption = BatchGetValuesByDataFilterRequest_DateTimeRenderOption {fromBatchGetValuesByDataFilterRequest_DateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern BatchGetValuesByDataFilterRequest_DateTimeRenderOption_SERIALNUMBER :: BatchGetValuesByDataFilterRequest_DateTimeRenderOption
pattern BatchGetValuesByDataFilterRequest_DateTimeRenderOption_SERIALNUMBER = BatchGetValuesByDataFilterRequest_DateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern BatchGetValuesByDataFilterRequest_DateTimeRenderOption_FORMATTEDSTRING :: BatchGetValuesByDataFilterRequest_DateTimeRenderOption
pattern BatchGetValuesByDataFilterRequest_DateTimeRenderOption_FORMATTEDSTRING = BatchGetValuesByDataFilterRequest_DateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  BatchGetValuesByDataFilterRequest_DateTimeRenderOption_SERIALNUMBER,
  BatchGetValuesByDataFilterRequest_DateTimeRenderOption_FORMATTEDSTRING,
  BatchGetValuesByDataFilterRequest_DateTimeRenderOption
  #-}

-- | The major dimension that results should use. For example, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then a request that selects that range and sets @majorDimension=ROWS@ returns @[[1,2],[3,4]]@, whereas a request that sets @majorDimension=COLUMNS@ returns @[[1,3],[2,4]]@.
newtype BatchGetValuesByDataFilterRequest_MajorDimension = BatchGetValuesByDataFilterRequest_MajorDimension {fromBatchGetValuesByDataFilterRequest_MajorDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern BatchGetValuesByDataFilterRequest_MajorDimension_DIMENSIONUNSPECIFIED :: BatchGetValuesByDataFilterRequest_MajorDimension
pattern BatchGetValuesByDataFilterRequest_MajorDimension_DIMENSIONUNSPECIFIED = BatchGetValuesByDataFilterRequest_MajorDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern BatchGetValuesByDataFilterRequest_MajorDimension_Rows :: BatchGetValuesByDataFilterRequest_MajorDimension
pattern BatchGetValuesByDataFilterRequest_MajorDimension_Rows = BatchGetValuesByDataFilterRequest_MajorDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern BatchGetValuesByDataFilterRequest_MajorDimension_Columns :: BatchGetValuesByDataFilterRequest_MajorDimension
pattern BatchGetValuesByDataFilterRequest_MajorDimension_Columns = BatchGetValuesByDataFilterRequest_MajorDimension "COLUMNS"

{-# COMPLETE
  BatchGetValuesByDataFilterRequest_MajorDimension_DIMENSIONUNSPECIFIED,
  BatchGetValuesByDataFilterRequest_MajorDimension_Rows,
  BatchGetValuesByDataFilterRequest_MajorDimension_Columns,
  BatchGetValuesByDataFilterRequest_MajorDimension
  #-}

-- | How values should be represented in the output. The default render option is FORMATTED_VALUE.
newtype BatchGetValuesByDataFilterRequest_ValueRenderOption = BatchGetValuesByDataFilterRequest_ValueRenderOption {fromBatchGetValuesByDataFilterRequest_ValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern BatchGetValuesByDataFilterRequest_ValueRenderOption_FORMATTEDVALUE :: BatchGetValuesByDataFilterRequest_ValueRenderOption
pattern BatchGetValuesByDataFilterRequest_ValueRenderOption_FORMATTEDVALUE = BatchGetValuesByDataFilterRequest_ValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern BatchGetValuesByDataFilterRequest_ValueRenderOption_UNFORMATTEDVALUE :: BatchGetValuesByDataFilterRequest_ValueRenderOption
pattern BatchGetValuesByDataFilterRequest_ValueRenderOption_UNFORMATTEDVALUE = BatchGetValuesByDataFilterRequest_ValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern BatchGetValuesByDataFilterRequest_ValueRenderOption_Formula :: BatchGetValuesByDataFilterRequest_ValueRenderOption
pattern BatchGetValuesByDataFilterRequest_ValueRenderOption_Formula = BatchGetValuesByDataFilterRequest_ValueRenderOption "FORMULA"

{-# COMPLETE
  BatchGetValuesByDataFilterRequest_ValueRenderOption_FORMATTEDVALUE,
  BatchGetValuesByDataFilterRequest_ValueRenderOption_UNFORMATTEDVALUE,
  BatchGetValuesByDataFilterRequest_ValueRenderOption_Formula,
  BatchGetValuesByDataFilterRequest_ValueRenderOption
  #-}

-- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
newtype BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption = BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption {fromBatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_SERIALNUMBER :: BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
pattern BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_SERIALNUMBER = BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING :: BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
pattern BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING = BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_SERIALNUMBER,
  BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING,
  BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
  #-}

-- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
newtype BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption = BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption {fromBatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_FORMATTEDVALUE :: BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
pattern BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_FORMATTEDVALUE = BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_UNFORMATTEDVALUE :: BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
pattern BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_UNFORMATTEDVALUE = BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_Formula :: BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
pattern BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_Formula = BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption "FORMULA"

{-# COMPLETE
  BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_FORMATTEDVALUE,
  BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_UNFORMATTEDVALUE,
  BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption_Formula,
  BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
  #-}

-- | How the input data should be interpreted.
newtype BatchUpdateValuesByDataFilterRequest_ValueInputOption = BatchUpdateValuesByDataFilterRequest_ValueInputOption {fromBatchUpdateValuesByDataFilterRequest_ValueInputOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default input value. This value must not be used.
pattern BatchUpdateValuesByDataFilterRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED :: BatchUpdateValuesByDataFilterRequest_ValueInputOption
pattern BatchUpdateValuesByDataFilterRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED = BatchUpdateValuesByDataFilterRequest_ValueInputOption "INPUT_VALUE_OPTION_UNSPECIFIED"

-- | The values the user has entered will not be parsed and will be stored as-is.
pattern BatchUpdateValuesByDataFilterRequest_ValueInputOption_Raw :: BatchUpdateValuesByDataFilterRequest_ValueInputOption
pattern BatchUpdateValuesByDataFilterRequest_ValueInputOption_Raw = BatchUpdateValuesByDataFilterRequest_ValueInputOption "RAW"

-- | The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.
pattern BatchUpdateValuesByDataFilterRequest_ValueInputOption_USERENTERED :: BatchUpdateValuesByDataFilterRequest_ValueInputOption
pattern BatchUpdateValuesByDataFilterRequest_ValueInputOption_USERENTERED = BatchUpdateValuesByDataFilterRequest_ValueInputOption "USER_ENTERED"

{-# COMPLETE
  BatchUpdateValuesByDataFilterRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
  BatchUpdateValuesByDataFilterRequest_ValueInputOption_Raw,
  BatchUpdateValuesByDataFilterRequest_ValueInputOption_USERENTERED,
  BatchUpdateValuesByDataFilterRequest_ValueInputOption
  #-}

-- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
newtype BatchUpdateValuesRequest_ResponseDateTimeRenderOption = BatchUpdateValuesRequest_ResponseDateTimeRenderOption {fromBatchUpdateValuesRequest_ResponseDateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern BatchUpdateValuesRequest_ResponseDateTimeRenderOption_SERIALNUMBER :: BatchUpdateValuesRequest_ResponseDateTimeRenderOption
pattern BatchUpdateValuesRequest_ResponseDateTimeRenderOption_SERIALNUMBER = BatchUpdateValuesRequest_ResponseDateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern BatchUpdateValuesRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING :: BatchUpdateValuesRequest_ResponseDateTimeRenderOption
pattern BatchUpdateValuesRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING = BatchUpdateValuesRequest_ResponseDateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  BatchUpdateValuesRequest_ResponseDateTimeRenderOption_SERIALNUMBER,
  BatchUpdateValuesRequest_ResponseDateTimeRenderOption_FORMATTEDSTRING,
  BatchUpdateValuesRequest_ResponseDateTimeRenderOption
  #-}

-- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
newtype BatchUpdateValuesRequest_ResponseValueRenderOption = BatchUpdateValuesRequest_ResponseValueRenderOption {fromBatchUpdateValuesRequest_ResponseValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern BatchUpdateValuesRequest_ResponseValueRenderOption_FORMATTEDVALUE :: BatchUpdateValuesRequest_ResponseValueRenderOption
pattern BatchUpdateValuesRequest_ResponseValueRenderOption_FORMATTEDVALUE = BatchUpdateValuesRequest_ResponseValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern BatchUpdateValuesRequest_ResponseValueRenderOption_UNFORMATTEDVALUE :: BatchUpdateValuesRequest_ResponseValueRenderOption
pattern BatchUpdateValuesRequest_ResponseValueRenderOption_UNFORMATTEDVALUE = BatchUpdateValuesRequest_ResponseValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern BatchUpdateValuesRequest_ResponseValueRenderOption_Formula :: BatchUpdateValuesRequest_ResponseValueRenderOption
pattern BatchUpdateValuesRequest_ResponseValueRenderOption_Formula = BatchUpdateValuesRequest_ResponseValueRenderOption "FORMULA"

{-# COMPLETE
  BatchUpdateValuesRequest_ResponseValueRenderOption_FORMATTEDVALUE,
  BatchUpdateValuesRequest_ResponseValueRenderOption_UNFORMATTEDVALUE,
  BatchUpdateValuesRequest_ResponseValueRenderOption_Formula,
  BatchUpdateValuesRequest_ResponseValueRenderOption
  #-}

-- | How the input data should be interpreted.
newtype BatchUpdateValuesRequest_ValueInputOption = BatchUpdateValuesRequest_ValueInputOption {fromBatchUpdateValuesRequest_ValueInputOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default input value. This value must not be used.
pattern BatchUpdateValuesRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED :: BatchUpdateValuesRequest_ValueInputOption
pattern BatchUpdateValuesRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED = BatchUpdateValuesRequest_ValueInputOption "INPUT_VALUE_OPTION_UNSPECIFIED"

-- | The values the user has entered will not be parsed and will be stored as-is.
pattern BatchUpdateValuesRequest_ValueInputOption_Raw :: BatchUpdateValuesRequest_ValueInputOption
pattern BatchUpdateValuesRequest_ValueInputOption_Raw = BatchUpdateValuesRequest_ValueInputOption "RAW"

-- | The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.
pattern BatchUpdateValuesRequest_ValueInputOption_USERENTERED :: BatchUpdateValuesRequest_ValueInputOption
pattern BatchUpdateValuesRequest_ValueInputOption_USERENTERED = BatchUpdateValuesRequest_ValueInputOption "USER_ENTERED"

{-# COMPLETE
  BatchUpdateValuesRequest_ValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
  BatchUpdateValuesRequest_ValueInputOption_Raw,
  BatchUpdateValuesRequest_ValueInputOption_USERENTERED,
  BatchUpdateValuesRequest_ValueInputOption
  #-}

-- | The type of condition.
newtype BooleanCondition_Type = BooleanCondition_Type {fromBooleanCondition_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern BooleanCondition_Type_CONDITIONTYPEUNSPECIFIED :: BooleanCondition_Type
pattern BooleanCondition_Type_CONDITIONTYPEUNSPECIFIED = BooleanCondition_Type "CONDITION_TYPE_UNSPECIFIED"

-- | The cell\'s value must be greater than the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_NUMBERGREATER :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERGREATER = BooleanCondition_Type "NUMBER_GREATER"

-- | The cell\'s value must be greater than or equal to the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_NUMBERGREATERTHANEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERGREATERTHANEQ = BooleanCondition_Type "NUMBER_GREATER_THAN_EQ"

-- | The cell\'s value must be less than the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_NUMBERLESS :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERLESS = BooleanCondition_Type "NUMBER_LESS"

-- | The cell\'s value must be less than or equal to the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_NUMBERLESSTHANEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERLESSTHANEQ = BooleanCondition_Type "NUMBER_LESS_THAN_EQ"

-- | The cell\'s value must be equal to the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.
pattern BooleanCondition_Type_NUMBEREQ :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBEREQ = BooleanCondition_Type "NUMBER_EQ"

-- | The cell\'s value must be not equal to the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.
pattern BooleanCondition_Type_NUMBERNOTEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERNOTEQ = BooleanCondition_Type "NUMBER_NOT_EQ"

-- | The cell\'s value must be between the two condition values. Supported by data validation, conditional formatting and filters. Requires exactly two ConditionValues.
pattern BooleanCondition_Type_NUMBERBETWEEN :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERBETWEEN = BooleanCondition_Type "NUMBER_BETWEEN"

-- | The cell\'s value must not be between the two condition values. Supported by data validation, conditional formatting and filters. Requires exactly two ConditionValues.
pattern BooleanCondition_Type_NUMBERNOTBETWEEN :: BooleanCondition_Type
pattern BooleanCondition_Type_NUMBERNOTBETWEEN = BooleanCondition_Type "NUMBER_NOT_BETWEEN"

-- | The cell\'s value must contain the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_TEXTCONTAINS :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTCONTAINS = BooleanCondition_Type "TEXT_CONTAINS"

-- | The cell\'s value must not contain the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_TEXTNOTCONTAINS :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTNOTCONTAINS = BooleanCondition_Type "TEXT_NOT_CONTAINS"

-- | The cell\'s value must start with the condition\'s value. Supported by conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_TEXTSTARTSWITH :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTSTARTSWITH = BooleanCondition_Type "TEXT_STARTS_WITH"

-- | The cell\'s value must end with the condition\'s value. Supported by conditional formatting and filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_TEXTENDSWITH :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTENDSWITH = BooleanCondition_Type "TEXT_ENDS_WITH"

-- | The cell\'s value must be exactly the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.
pattern BooleanCondition_Type_TEXTEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTEQ = BooleanCondition_Type "TEXT_EQ"

-- | The cell\'s value must be a valid email address. Supported by data validation. Requires no ConditionValues.
pattern BooleanCondition_Type_TEXTISEMAIL :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTISEMAIL = BooleanCondition_Type "TEXT_IS_EMAIL"

-- | The cell\'s value must be a valid URL. Supported by data validation. Requires no ConditionValues.
pattern BooleanCondition_Type_TEXTISURL :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTISURL = BooleanCondition_Type "TEXT_IS_URL"

-- | The cell\'s value must be the same date as the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.
pattern BooleanCondition_Type_DATEEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEEQ = BooleanCondition_Type "DATE_EQ"

-- | The cell\'s value must be before the date of the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue that may be a relative date.
pattern BooleanCondition_Type_DATEBEFORE :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEBEFORE = BooleanCondition_Type "DATE_BEFORE"

-- | The cell\'s value must be after the date of the condition\'s value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue that may be a relative date.
pattern BooleanCondition_Type_DATEAFTER :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEAFTER = BooleanCondition_Type "DATE_AFTER"

-- | The cell\'s value must be on or before the date of the condition\'s value. Supported by data validation. Requires a single ConditionValue that may be a relative date.
pattern BooleanCondition_Type_DATEONORBEFORE :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEONORBEFORE = BooleanCondition_Type "DATE_ON_OR_BEFORE"

-- | The cell\'s value must be on or after the date of the condition\'s value. Supported by data validation. Requires a single ConditionValue that may be a relative date.
pattern BooleanCondition_Type_DATEONORAFTER :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEONORAFTER = BooleanCondition_Type "DATE_ON_OR_AFTER"

-- | The cell\'s value must be between the dates of the two condition values. Supported by data validation. Requires exactly two ConditionValues.
pattern BooleanCondition_Type_DATEBETWEEN :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEBETWEEN = BooleanCondition_Type "DATE_BETWEEN"

-- | The cell\'s value must be outside the dates of the two condition values. Supported by data validation. Requires exactly two ConditionValues.
pattern BooleanCondition_Type_DATENOTBETWEEN :: BooleanCondition_Type
pattern BooleanCondition_Type_DATENOTBETWEEN = BooleanCondition_Type "DATE_NOT_BETWEEN"

-- | The cell\'s value must be a date. Supported by data validation. Requires no ConditionValues.
pattern BooleanCondition_Type_DATEISVALID :: BooleanCondition_Type
pattern BooleanCondition_Type_DATEISVALID = BooleanCondition_Type "DATE_IS_VALID"

-- | The cell\'s value must be listed in the grid in condition value\'s range. Supported by data validation. Requires a single ConditionValue, and the value must be a valid range in A1 notation.
pattern BooleanCondition_Type_ONEOFRANGE :: BooleanCondition_Type
pattern BooleanCondition_Type_ONEOFRANGE = BooleanCondition_Type "ONE_OF_RANGE"

-- | The cell\'s value must be in the list of condition values. Supported by data validation. Supports any number of condition values, one per item in the list. Formulas are not supported in the values.
pattern BooleanCondition_Type_ONEOFLIST :: BooleanCondition_Type
pattern BooleanCondition_Type_ONEOFLIST = BooleanCondition_Type "ONE_OF_LIST"

-- | The cell\'s value must be empty. Supported by conditional formatting and filters. Requires no ConditionValues.
pattern BooleanCondition_Type_Blank :: BooleanCondition_Type
pattern BooleanCondition_Type_Blank = BooleanCondition_Type "BLANK"

-- | The cell\'s value must not be empty. Supported by conditional formatting and filters. Requires no ConditionValues.
pattern BooleanCondition_Type_NOTBLANK :: BooleanCondition_Type
pattern BooleanCondition_Type_NOTBLANK = BooleanCondition_Type "NOT_BLANK"

-- | The condition\'s formula must evaluate to true. Supported by data validation, conditional formatting and filters. Not supported by data source sheet filters. Requires a single ConditionValue.
pattern BooleanCondition_Type_CUSTOMFORMULA :: BooleanCondition_Type
pattern BooleanCondition_Type_CUSTOMFORMULA = BooleanCondition_Type "CUSTOM_FORMULA"

-- | The cell\'s value must be TRUE\/FALSE or in the list of condition values. Supported by data validation. Renders as a cell checkbox. Supports zero, one or two ConditionValues. No values indicates the cell must be TRUE or FALSE, where TRUE renders as checked and FALSE renders as unchecked. One value indicates the cell will render as checked when it contains that value and unchecked when it is blank. Two values indicate that the cell will render as checked when it contains the first value and unchecked when it contains the second value. For example, [\"Yes\",\"No\"] indicates that the cell will render a checked box when it has the value \"Yes\" and an unchecked box when it has the value \"No\".
pattern BooleanCondition_Type_Boolean :: BooleanCondition_Type
pattern BooleanCondition_Type_Boolean = BooleanCondition_Type "BOOLEAN"

-- | The cell\'s value must be exactly not the condition\'s value. Supported by filters on data source objects. Requires at least one ConditionValue.
pattern BooleanCondition_Type_TEXTNOTEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_TEXTNOTEQ = BooleanCondition_Type "TEXT_NOT_EQ"

-- | The cell\'s value must be exactly not the condition\'s value. Supported by filters on data source objects. Requires at least one ConditionValue.
pattern BooleanCondition_Type_DATENOTEQ :: BooleanCondition_Type
pattern BooleanCondition_Type_DATENOTEQ = BooleanCondition_Type "DATE_NOT_EQ"

-- | The cell\'s value must follow the pattern specified. Requires a single ConditionValue.
pattern BooleanCondition_Type_FILTEREXPRESSION :: BooleanCondition_Type
pattern BooleanCondition_Type_FILTEREXPRESSION = BooleanCondition_Type "FILTER_EXPRESSION"

{-# COMPLETE
  BooleanCondition_Type_CONDITIONTYPEUNSPECIFIED,
  BooleanCondition_Type_NUMBERGREATER,
  BooleanCondition_Type_NUMBERGREATERTHANEQ,
  BooleanCondition_Type_NUMBERLESS,
  BooleanCondition_Type_NUMBERLESSTHANEQ,
  BooleanCondition_Type_NUMBEREQ,
  BooleanCondition_Type_NUMBERNOTEQ,
  BooleanCondition_Type_NUMBERBETWEEN,
  BooleanCondition_Type_NUMBERNOTBETWEEN,
  BooleanCondition_Type_TEXTCONTAINS,
  BooleanCondition_Type_TEXTNOTCONTAINS,
  BooleanCondition_Type_TEXTSTARTSWITH,
  BooleanCondition_Type_TEXTENDSWITH,
  BooleanCondition_Type_TEXTEQ,
  BooleanCondition_Type_TEXTISEMAIL,
  BooleanCondition_Type_TEXTISURL,
  BooleanCondition_Type_DATEEQ,
  BooleanCondition_Type_DATEBEFORE,
  BooleanCondition_Type_DATEAFTER,
  BooleanCondition_Type_DATEONORBEFORE,
  BooleanCondition_Type_DATEONORAFTER,
  BooleanCondition_Type_DATEBETWEEN,
  BooleanCondition_Type_DATENOTBETWEEN,
  BooleanCondition_Type_DATEISVALID,
  BooleanCondition_Type_ONEOFRANGE,
  BooleanCondition_Type_ONEOFLIST,
  BooleanCondition_Type_Blank,
  BooleanCondition_Type_NOTBLANK,
  BooleanCondition_Type_CUSTOMFORMULA,
  BooleanCondition_Type_Boolean,
  BooleanCondition_Type_TEXTNOTEQ,
  BooleanCondition_Type_DATENOTEQ,
  BooleanCondition_Type_FILTEREXPRESSION,
  BooleanCondition_Type
  #-}

-- | The style of the border.
newtype Border_Style = Border_Style {fromBorder_Style :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The style is not specified. Do not use this.
pattern Border_Style_STYLEUNSPECIFIED :: Border_Style
pattern Border_Style_STYLEUNSPECIFIED = Border_Style "STYLE_UNSPECIFIED"

-- | The border is dotted.
pattern Border_Style_Dotted :: Border_Style
pattern Border_Style_Dotted = Border_Style "DOTTED"

-- | The border is dashed.
pattern Border_Style_Dashed :: Border_Style
pattern Border_Style_Dashed = Border_Style "DASHED"

-- | The border is a thin solid line.
pattern Border_Style_Solid :: Border_Style
pattern Border_Style_Solid = Border_Style "SOLID"

-- | The border is a medium solid line.
pattern Border_Style_SOLIDMEDIUM :: Border_Style
pattern Border_Style_SOLIDMEDIUM = Border_Style "SOLID_MEDIUM"

-- | The border is a thick solid line.
pattern Border_Style_SOLIDTHICK :: Border_Style
pattern Border_Style_SOLIDTHICK = Border_Style "SOLID_THICK"

-- | No border. Used only when updating a border in order to erase it.
pattern Border_Style_None :: Border_Style
pattern Border_Style_None = Border_Style "NONE"

-- | The border is two solid lines.
pattern Border_Style_Double :: Border_Style
pattern Border_Style_Double = Border_Style "DOUBLE"

{-# COMPLETE
  Border_Style_STYLEUNSPECIFIED,
  Border_Style_Dotted,
  Border_Style_Dashed,
  Border_Style_Solid,
  Border_Style_SOLIDMEDIUM,
  Border_Style_SOLIDTHICK,
  Border_Style_None,
  Border_Style_Double,
  Border_Style
  #-}

-- | Where the legend of the chart should be drawn.
newtype BubbleChartSpec_LegendPosition = BubbleChartSpec_LegendPosition {fromBubbleChartSpec_LegendPosition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern BubbleChartSpec_LegendPosition_BUBBLECHARTLEGENDPOSITIONUNSPECIFIED :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_BUBBLECHARTLEGENDPOSITIONUNSPECIFIED = BubbleChartSpec_LegendPosition "BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED"

-- | The legend is rendered on the bottom of the chart.
pattern BubbleChartSpec_LegendPosition_BOTTOMLEGEND :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_BOTTOMLEGEND = BubbleChartSpec_LegendPosition "BOTTOM_LEGEND"

-- | The legend is rendered on the left of the chart.
pattern BubbleChartSpec_LegendPosition_LEFTLEGEND :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_LEFTLEGEND = BubbleChartSpec_LegendPosition "LEFT_LEGEND"

-- | The legend is rendered on the right of the chart.
pattern BubbleChartSpec_LegendPosition_RIGHTLEGEND :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_RIGHTLEGEND = BubbleChartSpec_LegendPosition "RIGHT_LEGEND"

-- | The legend is rendered on the top of the chart.
pattern BubbleChartSpec_LegendPosition_TOPLEGEND :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_TOPLEGEND = BubbleChartSpec_LegendPosition "TOP_LEGEND"

-- | No legend is rendered.
pattern BubbleChartSpec_LegendPosition_NOLEGEND :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_NOLEGEND = BubbleChartSpec_LegendPosition "NO_LEGEND"

-- | The legend is rendered inside the chart area.
pattern BubbleChartSpec_LegendPosition_INSIDELEGEND :: BubbleChartSpec_LegendPosition
pattern BubbleChartSpec_LegendPosition_INSIDELEGEND = BubbleChartSpec_LegendPosition "INSIDE_LEGEND"

{-# COMPLETE
  BubbleChartSpec_LegendPosition_BUBBLECHARTLEGENDPOSITIONUNSPECIFIED,
  BubbleChartSpec_LegendPosition_BOTTOMLEGEND,
  BubbleChartSpec_LegendPosition_LEFTLEGEND,
  BubbleChartSpec_LegendPosition_RIGHTLEGEND,
  BubbleChartSpec_LegendPosition_TOPLEGEND,
  BubbleChartSpec_LegendPosition_NOLEGEND,
  BubbleChartSpec_LegendPosition_INSIDELEGEND,
  BubbleChartSpec_LegendPosition
  #-}

-- | The horizontal alignment of the value in the cell.
newtype CellFormat_HorizontalAlignment = CellFormat_HorizontalAlignment {fromCellFormat_HorizontalAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The horizontal alignment is not specified. Do not use this.
pattern CellFormat_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED :: CellFormat_HorizontalAlignment
pattern CellFormat_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED = CellFormat_HorizontalAlignment "HORIZONTAL_ALIGN_UNSPECIFIED"

-- | The text is explicitly aligned to the left of the cell.
pattern CellFormat_HorizontalAlignment_Left' :: CellFormat_HorizontalAlignment
pattern CellFormat_HorizontalAlignment_Left' = CellFormat_HorizontalAlignment "LEFT"

-- | The text is explicitly aligned to the center of the cell.
pattern CellFormat_HorizontalAlignment_Center :: CellFormat_HorizontalAlignment
pattern CellFormat_HorizontalAlignment_Center = CellFormat_HorizontalAlignment "CENTER"

-- | The text is explicitly aligned to the right of the cell.
pattern CellFormat_HorizontalAlignment_Right' :: CellFormat_HorizontalAlignment
pattern CellFormat_HorizontalAlignment_Right' = CellFormat_HorizontalAlignment "RIGHT"

{-# COMPLETE
  CellFormat_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED,
  CellFormat_HorizontalAlignment_Left',
  CellFormat_HorizontalAlignment_Center,
  CellFormat_HorizontalAlignment_Right',
  CellFormat_HorizontalAlignment
  #-}

-- | If one exists, how a hyperlink should be displayed in the cell.
newtype CellFormat_HyperlinkDisplayType = CellFormat_HyperlinkDisplayType {fromCellFormat_HyperlinkDisplayType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value: the hyperlink is rendered. Do not use this.
pattern CellFormat_HyperlinkDisplayType_HYPERLINKDISPLAYTYPEUNSPECIFIED :: CellFormat_HyperlinkDisplayType
pattern CellFormat_HyperlinkDisplayType_HYPERLINKDISPLAYTYPEUNSPECIFIED = CellFormat_HyperlinkDisplayType "HYPERLINK_DISPLAY_TYPE_UNSPECIFIED"

-- | A hyperlink should be explicitly rendered.
pattern CellFormat_HyperlinkDisplayType_Linked :: CellFormat_HyperlinkDisplayType
pattern CellFormat_HyperlinkDisplayType_Linked = CellFormat_HyperlinkDisplayType "LINKED"

-- | A hyperlink should not be rendered.
pattern CellFormat_HyperlinkDisplayType_PLAINTEXT :: CellFormat_HyperlinkDisplayType
pattern CellFormat_HyperlinkDisplayType_PLAINTEXT = CellFormat_HyperlinkDisplayType "PLAIN_TEXT"

{-# COMPLETE
  CellFormat_HyperlinkDisplayType_HYPERLINKDISPLAYTYPEUNSPECIFIED,
  CellFormat_HyperlinkDisplayType_Linked,
  CellFormat_HyperlinkDisplayType_PLAINTEXT,
  CellFormat_HyperlinkDisplayType
  #-}

-- | The direction of the text in the cell.
newtype CellFormat_TextDirection = CellFormat_TextDirection {fromCellFormat_TextDirection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The text direction is not specified. Do not use this.
pattern CellFormat_TextDirection_TEXTDIRECTIONUNSPECIFIED :: CellFormat_TextDirection
pattern CellFormat_TextDirection_TEXTDIRECTIONUNSPECIFIED = CellFormat_TextDirection "TEXT_DIRECTION_UNSPECIFIED"

-- | The text direction of left-to-right was set by the user.
pattern CellFormat_TextDirection_LEFTTORIGHT :: CellFormat_TextDirection
pattern CellFormat_TextDirection_LEFTTORIGHT = CellFormat_TextDirection "LEFT_TO_RIGHT"

-- | The text direction of right-to-left was set by the user.
pattern CellFormat_TextDirection_RIGHTTOLEFT :: CellFormat_TextDirection
pattern CellFormat_TextDirection_RIGHTTOLEFT = CellFormat_TextDirection "RIGHT_TO_LEFT"

{-# COMPLETE
  CellFormat_TextDirection_TEXTDIRECTIONUNSPECIFIED,
  CellFormat_TextDirection_LEFTTORIGHT,
  CellFormat_TextDirection_RIGHTTOLEFT,
  CellFormat_TextDirection
  #-}

-- | The vertical alignment of the value in the cell.
newtype CellFormat_VerticalAlignment = CellFormat_VerticalAlignment {fromCellFormat_VerticalAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The vertical alignment is not specified. Do not use this.
pattern CellFormat_VerticalAlignment_VERTICALALIGNUNSPECIFIED :: CellFormat_VerticalAlignment
pattern CellFormat_VerticalAlignment_VERTICALALIGNUNSPECIFIED = CellFormat_VerticalAlignment "VERTICAL_ALIGN_UNSPECIFIED"

-- | The text is explicitly aligned to the top of the cell.
pattern CellFormat_VerticalAlignment_Top :: CellFormat_VerticalAlignment
pattern CellFormat_VerticalAlignment_Top = CellFormat_VerticalAlignment "TOP"

-- | The text is explicitly aligned to the middle of the cell.
pattern CellFormat_VerticalAlignment_Middle :: CellFormat_VerticalAlignment
pattern CellFormat_VerticalAlignment_Middle = CellFormat_VerticalAlignment "MIDDLE"

-- | The text is explicitly aligned to the bottom of the cell.
pattern CellFormat_VerticalAlignment_Bottom :: CellFormat_VerticalAlignment
pattern CellFormat_VerticalAlignment_Bottom = CellFormat_VerticalAlignment "BOTTOM"

{-# COMPLETE
  CellFormat_VerticalAlignment_VERTICALALIGNUNSPECIFIED,
  CellFormat_VerticalAlignment_Top,
  CellFormat_VerticalAlignment_Middle,
  CellFormat_VerticalAlignment_Bottom,
  CellFormat_VerticalAlignment
  #-}

-- | The wrap strategy for the value in the cell.
newtype CellFormat_WrapStrategy = CellFormat_WrapStrategy {fromCellFormat_WrapStrategy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern CellFormat_WrapStrategy_WRAPSTRATEGYUNSPECIFIED :: CellFormat_WrapStrategy
pattern CellFormat_WrapStrategy_WRAPSTRATEGYUNSPECIFIED = CellFormat_WrapStrategy "WRAP_STRATEGY_UNSPECIFIED"

-- | Lines that are longer than the cell width will be written in the next cell over, so long as that cell is empty. If the next cell over is non-empty, this behaves the same as @CLIP@. The text will never wrap to the next line unless the user manually inserts a new line. Example: | First sentence. | | Manual newline that is very long. \<- Text continues into next cell | Next newline. |
pattern CellFormat_WrapStrategy_OVERFLOWCELL :: CellFormat_WrapStrategy
pattern CellFormat_WrapStrategy_OVERFLOWCELL = CellFormat_WrapStrategy "OVERFLOW_CELL"

-- | This wrap strategy represents the old Google Sheets wrap strategy where words that are longer than a line are clipped rather than broken. This strategy is not supported on all platforms and is being phased out. Example: | Cell has a | | loooooooooo| \<- Word is clipped. | word. |
pattern CellFormat_WrapStrategy_LEGACYWRAP :: CellFormat_WrapStrategy
pattern CellFormat_WrapStrategy_LEGACYWRAP = CellFormat_WrapStrategy "LEGACY_WRAP"

-- | Lines that are longer than the cell width will be clipped. The text will never wrap to the next line unless the user manually inserts a new line. Example: | First sentence. | | Manual newline t| \<- Text is clipped | Next newline. |
pattern CellFormat_WrapStrategy_Clip :: CellFormat_WrapStrategy
pattern CellFormat_WrapStrategy_Clip = CellFormat_WrapStrategy "CLIP"

-- | Words that are longer than a line are wrapped at the character level rather than clipped. Example: | Cell has a | | loooooooooo| \<- Word is broken. | ong word. |
pattern CellFormat_WrapStrategy_Wrap :: CellFormat_WrapStrategy
pattern CellFormat_WrapStrategy_Wrap = CellFormat_WrapStrategy "WRAP"

{-# COMPLETE
  CellFormat_WrapStrategy_WRAPSTRATEGYUNSPECIFIED,
  CellFormat_WrapStrategy_OVERFLOWCELL,
  CellFormat_WrapStrategy_LEGACYWRAP,
  CellFormat_WrapStrategy_Clip,
  CellFormat_WrapStrategy_Wrap,
  CellFormat_WrapStrategy
  #-}

-- | The view window\'s mode.
newtype ChartAxisViewWindowOptions_ViewWindowMode = ChartAxisViewWindowOptions_ViewWindowMode {fromChartAxisViewWindowOptions_ViewWindowMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default view window mode used in the Sheets editor for this chart type. In most cases, if set, the default mode is equivalent to @PRETTY@.
pattern ChartAxisViewWindowOptions_ViewWindowMode_DEFAULTVIEWWINDOWMODE :: ChartAxisViewWindowOptions_ViewWindowMode
pattern ChartAxisViewWindowOptions_ViewWindowMode_DEFAULTVIEWWINDOWMODE = ChartAxisViewWindowOptions_ViewWindowMode "DEFAULT_VIEW_WINDOW_MODE"

-- | Do not use. Represents that the currently set mode is not supported by the API.
pattern ChartAxisViewWindowOptions_ViewWindowMode_VIEWWINDOWMODEUNSUPPORTED :: ChartAxisViewWindowOptions_ViewWindowMode
pattern ChartAxisViewWindowOptions_ViewWindowMode_VIEWWINDOWMODEUNSUPPORTED = ChartAxisViewWindowOptions_ViewWindowMode "VIEW_WINDOW_MODE_UNSUPPORTED"

-- | Follows the min and max exactly if specified. If a value is unspecified, it will fall back to the @PRETTY@ value.
pattern ChartAxisViewWindowOptions_ViewWindowMode_Explicit :: ChartAxisViewWindowOptions_ViewWindowMode
pattern ChartAxisViewWindowOptions_ViewWindowMode_Explicit = ChartAxisViewWindowOptions_ViewWindowMode "EXPLICIT"

-- | Chooses a min and max that make the chart look good. Both min and max are ignored in this mode.
pattern ChartAxisViewWindowOptions_ViewWindowMode_Pretty :: ChartAxisViewWindowOptions_ViewWindowMode
pattern ChartAxisViewWindowOptions_ViewWindowMode_Pretty = ChartAxisViewWindowOptions_ViewWindowMode "PRETTY"

{-# COMPLETE
  ChartAxisViewWindowOptions_ViewWindowMode_DEFAULTVIEWWINDOWMODE,
  ChartAxisViewWindowOptions_ViewWindowMode_VIEWWINDOWMODEUNSUPPORTED,
  ChartAxisViewWindowOptions_ViewWindowMode_Explicit,
  ChartAxisViewWindowOptions_ViewWindowMode_Pretty,
  ChartAxisViewWindowOptions_ViewWindowMode
  #-}

-- | The aggregation type for the series of a data source chart. Only supported for data source charts.
newtype ChartData_AggregateType = ChartData_AggregateType {fromChartData_AggregateType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern ChartData_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED :: ChartData_AggregateType
pattern ChartData_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED = ChartData_AggregateType "CHART_AGGREGATE_TYPE_UNSPECIFIED"

-- | Average aggregate function.
pattern ChartData_AggregateType_Average :: ChartData_AggregateType
pattern ChartData_AggregateType_Average = ChartData_AggregateType "AVERAGE"

-- | Count aggregate function.
pattern ChartData_AggregateType_Count :: ChartData_AggregateType
pattern ChartData_AggregateType_Count = ChartData_AggregateType "COUNT"

-- | Maximum aggregate function.
pattern ChartData_AggregateType_Max :: ChartData_AggregateType
pattern ChartData_AggregateType_Max = ChartData_AggregateType "MAX"

-- | Median aggregate function.
pattern ChartData_AggregateType_Median :: ChartData_AggregateType
pattern ChartData_AggregateType_Median = ChartData_AggregateType "MEDIAN"

-- | Minimum aggregate function.
pattern ChartData_AggregateType_Min :: ChartData_AggregateType
pattern ChartData_AggregateType_Min = ChartData_AggregateType "MIN"

-- | Sum aggregate function.
pattern ChartData_AggregateType_Sum :: ChartData_AggregateType
pattern ChartData_AggregateType_Sum = ChartData_AggregateType "SUM"

{-# COMPLETE
  ChartData_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED,
  ChartData_AggregateType_Average,
  ChartData_AggregateType_Count,
  ChartData_AggregateType_Max,
  ChartData_AggregateType_Median,
  ChartData_AggregateType_Min,
  ChartData_AggregateType_Sum,
  ChartData_AggregateType
  #-}

-- | The type of date-time grouping to apply.
newtype ChartDateTimeRule_Type = ChartDateTimeRule_Type {fromChartDateTimeRule_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default type, do not use.
pattern ChartDateTimeRule_Type_CHARTDATETIMERULETYPEUNSPECIFIED :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_CHARTDATETIMERULETYPEUNSPECIFIED = ChartDateTimeRule_Type "CHART_DATE_TIME_RULE_TYPE_UNSPECIFIED"

-- | Group dates by second, from 0 to 59.
pattern ChartDateTimeRule_Type_Second :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_Second = ChartDateTimeRule_Type "SECOND"

-- | Group dates by minute, from 0 to 59.
pattern ChartDateTimeRule_Type_Minute :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_Minute = ChartDateTimeRule_Type "MINUTE"

-- | Group dates by hour using a 24-hour system, from 0 to 23.
pattern ChartDateTimeRule_Type_Hour :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_Hour = ChartDateTimeRule_Type "HOUR"

-- | Group dates by hour and minute using a 24-hour system, for example 19:45.
pattern ChartDateTimeRule_Type_HOURMINUTE :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_HOURMINUTE = ChartDateTimeRule_Type "HOUR_MINUTE"

-- | Group dates by hour and minute using a 12-hour system, for example 7:45 PM. The AM\/PM designation is translated based on the spreadsheet locale.
pattern ChartDateTimeRule_Type_HOURMINUTEAMPM :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_HOURMINUTEAMPM = ChartDateTimeRule_Type "HOUR_MINUTE_AMPM"

-- | Group dates by day of week, for example Sunday. The days of the week will be translated based on the spreadsheet locale.
pattern ChartDateTimeRule_Type_DAYOFWEEK :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_DAYOFWEEK = ChartDateTimeRule_Type "DAY_OF_WEEK"

-- | Group dates by day of year, from 1 to 366. Note that dates after Feb. 29 fall in different buckets in leap years than in non-leap years.
pattern ChartDateTimeRule_Type_DAYOFYEAR :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_DAYOFYEAR = ChartDateTimeRule_Type "DAY_OF_YEAR"

-- | Group dates by day of month, from 1 to 31.
pattern ChartDateTimeRule_Type_DAYOFMONTH :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_DAYOFMONTH = ChartDateTimeRule_Type "DAY_OF_MONTH"

-- | Group dates by day and month, for example 22-Nov. The month is translated based on the spreadsheet locale.
pattern ChartDateTimeRule_Type_DAYMONTH :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_DAYMONTH = ChartDateTimeRule_Type "DAY_MONTH"

-- | Group dates by month, for example Nov. The month is translated based on the spreadsheet locale.
pattern ChartDateTimeRule_Type_Month :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_Month = ChartDateTimeRule_Type "MONTH"

-- | Group dates by quarter, for example Q1 (which represents Jan-Mar).
pattern ChartDateTimeRule_Type_Quarter :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_Quarter = ChartDateTimeRule_Type "QUARTER"

-- | Group dates by year, for example 2008.
pattern ChartDateTimeRule_Type_Year :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_Year = ChartDateTimeRule_Type "YEAR"

-- | Group dates by year and month, for example 2008-Nov. The month is translated based on the spreadsheet locale.
pattern ChartDateTimeRule_Type_YEARMONTH :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_YEARMONTH = ChartDateTimeRule_Type "YEAR_MONTH"

-- | Group dates by year and quarter, for example 2008 Q4.
pattern ChartDateTimeRule_Type_YEARQUARTER :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_YEARQUARTER = ChartDateTimeRule_Type "YEAR_QUARTER"

-- | Group dates by year, month, and day, for example 2008-11-22.
pattern ChartDateTimeRule_Type_YEARMONTHDAY :: ChartDateTimeRule_Type
pattern ChartDateTimeRule_Type_YEARMONTHDAY = ChartDateTimeRule_Type "YEAR_MONTH_DAY"

{-# COMPLETE
  ChartDateTimeRule_Type_CHARTDATETIMERULETYPEUNSPECIFIED,
  ChartDateTimeRule_Type_Second,
  ChartDateTimeRule_Type_Minute,
  ChartDateTimeRule_Type_Hour,
  ChartDateTimeRule_Type_HOURMINUTE,
  ChartDateTimeRule_Type_HOURMINUTEAMPM,
  ChartDateTimeRule_Type_DAYOFWEEK,
  ChartDateTimeRule_Type_DAYOFYEAR,
  ChartDateTimeRule_Type_DAYOFMONTH,
  ChartDateTimeRule_Type_DAYMONTH,
  ChartDateTimeRule_Type_Month,
  ChartDateTimeRule_Type_Quarter,
  ChartDateTimeRule_Type_Year,
  ChartDateTimeRule_Type_YEARMONTH,
  ChartDateTimeRule_Type_YEARQUARTER,
  ChartDateTimeRule_Type_YEARMONTHDAY,
  ChartDateTimeRule_Type
  #-}

-- | Determines how the charts will use hidden rows or columns.
newtype ChartSpec_HiddenDimensionStrategy = ChartSpec_HiddenDimensionStrategy {fromChartSpec_HiddenDimensionStrategy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern ChartSpec_HiddenDimensionStrategy_CHARTHIDDENDIMENSIONSTRATEGYUNSPECIFIED :: ChartSpec_HiddenDimensionStrategy
pattern ChartSpec_HiddenDimensionStrategy_CHARTHIDDENDIMENSIONSTRATEGYUNSPECIFIED = ChartSpec_HiddenDimensionStrategy "CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED"

-- | Charts will skip hidden rows and columns.
pattern ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWSANDCOLUMNS :: ChartSpec_HiddenDimensionStrategy
pattern ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWSANDCOLUMNS = ChartSpec_HiddenDimensionStrategy "SKIP_HIDDEN_ROWS_AND_COLUMNS"

-- | Charts will skip hidden rows only.
pattern ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWS :: ChartSpec_HiddenDimensionStrategy
pattern ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWS = ChartSpec_HiddenDimensionStrategy "SKIP_HIDDEN_ROWS"

-- | Charts will skip hidden columns only.
pattern ChartSpec_HiddenDimensionStrategy_SKIPHIDDENCOLUMNS :: ChartSpec_HiddenDimensionStrategy
pattern ChartSpec_HiddenDimensionStrategy_SKIPHIDDENCOLUMNS = ChartSpec_HiddenDimensionStrategy "SKIP_HIDDEN_COLUMNS"

-- | Charts will not skip any hidden rows or columns.
pattern ChartSpec_HiddenDimensionStrategy_SHOWALL :: ChartSpec_HiddenDimensionStrategy
pattern ChartSpec_HiddenDimensionStrategy_SHOWALL = ChartSpec_HiddenDimensionStrategy "SHOW_ALL"

{-# COMPLETE
  ChartSpec_HiddenDimensionStrategy_CHARTHIDDENDIMENSIONSTRATEGYUNSPECIFIED,
  ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWSANDCOLUMNS,
  ChartSpec_HiddenDimensionStrategy_SKIPHIDDENROWS,
  ChartSpec_HiddenDimensionStrategy_SKIPHIDDENCOLUMNS,
  ChartSpec_HiddenDimensionStrategy_SHOWALL,
  ChartSpec_HiddenDimensionStrategy
  #-}

-- | Theme color.
newtype ColorStyle_ThemeColor = ColorStyle_ThemeColor {fromColorStyle_ThemeColor :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified theme color
pattern ColorStyle_ThemeColor_THEMECOLORTYPEUNSPECIFIED :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_THEMECOLORTYPEUNSPECIFIED = ColorStyle_ThemeColor "THEME_COLOR_TYPE_UNSPECIFIED"

-- | Represents the primary text color
pattern ColorStyle_ThemeColor_Text :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_Text = ColorStyle_ThemeColor "TEXT"

-- | Represents the primary background color
pattern ColorStyle_ThemeColor_Background :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_Background = ColorStyle_ThemeColor "BACKGROUND"

-- | Represents the first accent color
pattern ColorStyle_ThemeColor_ACCENT1 :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_ACCENT1 = ColorStyle_ThemeColor "ACCENT1"

-- | Represents the second accent color
pattern ColorStyle_ThemeColor_ACCENT2 :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_ACCENT2 = ColorStyle_ThemeColor "ACCENT2"

-- | Represents the third accent color
pattern ColorStyle_ThemeColor_ACCENT3 :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_ACCENT3 = ColorStyle_ThemeColor "ACCENT3"

-- | Represents the fourth accent color
pattern ColorStyle_ThemeColor_ACCENT4 :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_ACCENT4 = ColorStyle_ThemeColor "ACCENT4"

-- | Represents the fifth accent color
pattern ColorStyle_ThemeColor_ACCENT5 :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_ACCENT5 = ColorStyle_ThemeColor "ACCENT5"

-- | Represents the sixth accent color
pattern ColorStyle_ThemeColor_ACCENT6 :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_ACCENT6 = ColorStyle_ThemeColor "ACCENT6"

-- | Represents the color to use for hyperlinks
pattern ColorStyle_ThemeColor_Link :: ColorStyle_ThemeColor
pattern ColorStyle_ThemeColor_Link = ColorStyle_ThemeColor "LINK"

{-# COMPLETE
  ColorStyle_ThemeColor_THEMECOLORTYPEUNSPECIFIED,
  ColorStyle_ThemeColor_Text,
  ColorStyle_ThemeColor_Background,
  ColorStyle_ThemeColor_ACCENT1,
  ColorStyle_ThemeColor_ACCENT2,
  ColorStyle_ThemeColor_ACCENT3,
  ColorStyle_ThemeColor_ACCENT4,
  ColorStyle_ThemeColor_ACCENT5,
  ColorStyle_ThemeColor_ACCENT6,
  ColorStyle_ThemeColor_Link,
  ColorStyle_ThemeColor
  #-}

-- | A relative date (based on the current date). Valid only if the type is DATE/BEFORE, DATE/AFTER, DATE/ON/OR/BEFORE or DATE/ON/OR/AFTER. Relative dates are not supported in data validation. They are supported only in conditional formatting and conditional filters.
newtype ConditionValue_RelativeDate = ConditionValue_RelativeDate {fromConditionValue_RelativeDate :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern ConditionValue_RelativeDate_RELATIVEDATEUNSPECIFIED :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_RELATIVEDATEUNSPECIFIED = ConditionValue_RelativeDate "RELATIVE_DATE_UNSPECIFIED"

-- | The value is one year before today.
pattern ConditionValue_RelativeDate_PASTYEAR :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_PASTYEAR = ConditionValue_RelativeDate "PAST_YEAR"

-- | The value is one month before today.
pattern ConditionValue_RelativeDate_PASTMONTH :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_PASTMONTH = ConditionValue_RelativeDate "PAST_MONTH"

-- | The value is one week before today.
pattern ConditionValue_RelativeDate_PASTWEEK :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_PASTWEEK = ConditionValue_RelativeDate "PAST_WEEK"

-- | The value is yesterday.
pattern ConditionValue_RelativeDate_Yesterday :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_Yesterday = ConditionValue_RelativeDate "YESTERDAY"

-- | The value is today.
pattern ConditionValue_RelativeDate_Today :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_Today = ConditionValue_RelativeDate "TODAY"

-- | The value is tomorrow.
pattern ConditionValue_RelativeDate_Tomorrow :: ConditionValue_RelativeDate
pattern ConditionValue_RelativeDate_Tomorrow = ConditionValue_RelativeDate "TOMORROW"

{-# COMPLETE
  ConditionValue_RelativeDate_RELATIVEDATEUNSPECIFIED,
  ConditionValue_RelativeDate_PASTYEAR,
  ConditionValue_RelativeDate_PASTMONTH,
  ConditionValue_RelativeDate_PASTWEEK,
  ConditionValue_RelativeDate_Yesterday,
  ConditionValue_RelativeDate_Today,
  ConditionValue_RelativeDate_Tomorrow,
  ConditionValue_RelativeDate
  #-}

-- | How that data should be oriented when pasting.
newtype CopyPasteRequest_PasteOrientation = CopyPasteRequest_PasteOrientation {fromCopyPasteRequest_PasteOrientation :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Paste normally.
pattern CopyPasteRequest_PasteOrientation_Normal :: CopyPasteRequest_PasteOrientation
pattern CopyPasteRequest_PasteOrientation_Normal = CopyPasteRequest_PasteOrientation "NORMAL"

-- | Paste transposed, where all rows become columns and vice versa.
pattern CopyPasteRequest_PasteOrientation_Transpose :: CopyPasteRequest_PasteOrientation
pattern CopyPasteRequest_PasteOrientation_Transpose = CopyPasteRequest_PasteOrientation "TRANSPOSE"

{-# COMPLETE
  CopyPasteRequest_PasteOrientation_Normal,
  CopyPasteRequest_PasteOrientation_Transpose,
  CopyPasteRequest_PasteOrientation
  #-}

-- | What kind of data to paste.
newtype CopyPasteRequest_PasteType = CopyPasteRequest_PasteType {fromCopyPasteRequest_PasteType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Paste values, formulas, formats, and merges.
pattern CopyPasteRequest_PasteType_PASTENORMAL :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTENORMAL = CopyPasteRequest_PasteType "PASTE_NORMAL"

-- | Paste the values ONLY without formats, formulas, or merges.
pattern CopyPasteRequest_PasteType_PASTEVALUES :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTEVALUES = CopyPasteRequest_PasteType "PASTE_VALUES"

-- | Paste the format and data validation only.
pattern CopyPasteRequest_PasteType_PASTEFORMAT :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTEFORMAT = CopyPasteRequest_PasteType "PASTE_FORMAT"

-- | Like @PASTE_NORMAL@ but without borders.
pattern CopyPasteRequest_PasteType_PASTENOBORDERS :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTENOBORDERS = CopyPasteRequest_PasteType "PASTE_NO_BORDERS"

-- | Paste the formulas only.
pattern CopyPasteRequest_PasteType_PASTEFORMULA :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTEFORMULA = CopyPasteRequest_PasteType "PASTE_FORMULA"

-- | Paste the data validation only.
pattern CopyPasteRequest_PasteType_PASTEDATAVALIDATION :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTEDATAVALIDATION = CopyPasteRequest_PasteType "PASTE_DATA_VALIDATION"

-- | Paste the conditional formatting rules only.
pattern CopyPasteRequest_PasteType_PASTECONDITIONALFORMATTING :: CopyPasteRequest_PasteType
pattern CopyPasteRequest_PasteType_PASTECONDITIONALFORMATTING = CopyPasteRequest_PasteType "PASTE_CONDITIONAL_FORMATTING"

{-# COMPLETE
  CopyPasteRequest_PasteType_PASTENORMAL,
  CopyPasteRequest_PasteType_PASTEVALUES,
  CopyPasteRequest_PasteType_PASTEFORMAT,
  CopyPasteRequest_PasteType_PASTENOBORDERS,
  CopyPasteRequest_PasteType_PASTEFORMULA,
  CopyPasteRequest_PasteType_PASTEDATAVALIDATION,
  CopyPasteRequest_PasteType_PASTECONDITIONALFORMATTING,
  CopyPasteRequest_PasteType
  #-}

-- | What kind of data to paste. All the source data will be cut, regardless of what is pasted.
newtype CutPasteRequest_PasteType = CutPasteRequest_PasteType {fromCutPasteRequest_PasteType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Paste values, formulas, formats, and merges.
pattern CutPasteRequest_PasteType_PASTENORMAL :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTENORMAL = CutPasteRequest_PasteType "PASTE_NORMAL"

-- | Paste the values ONLY without formats, formulas, or merges.
pattern CutPasteRequest_PasteType_PASTEVALUES :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTEVALUES = CutPasteRequest_PasteType "PASTE_VALUES"

-- | Paste the format and data validation only.
pattern CutPasteRequest_PasteType_PASTEFORMAT :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTEFORMAT = CutPasteRequest_PasteType "PASTE_FORMAT"

-- | Like @PASTE_NORMAL@ but without borders.
pattern CutPasteRequest_PasteType_PASTENOBORDERS :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTENOBORDERS = CutPasteRequest_PasteType "PASTE_NO_BORDERS"

-- | Paste the formulas only.
pattern CutPasteRequest_PasteType_PASTEFORMULA :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTEFORMULA = CutPasteRequest_PasteType "PASTE_FORMULA"

-- | Paste the data validation only.
pattern CutPasteRequest_PasteType_PASTEDATAVALIDATION :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTEDATAVALIDATION = CutPasteRequest_PasteType "PASTE_DATA_VALIDATION"

-- | Paste the conditional formatting rules only.
pattern CutPasteRequest_PasteType_PASTECONDITIONALFORMATTING :: CutPasteRequest_PasteType
pattern CutPasteRequest_PasteType_PASTECONDITIONALFORMATTING = CutPasteRequest_PasteType "PASTE_CONDITIONAL_FORMATTING"

{-# COMPLETE
  CutPasteRequest_PasteType_PASTENORMAL,
  CutPasteRequest_PasteType_PASTEVALUES,
  CutPasteRequest_PasteType_PASTEFORMAT,
  CutPasteRequest_PasteType_PASTENOBORDERS,
  CutPasteRequest_PasteType_PASTEFORMULA,
  CutPasteRequest_PasteType_PASTEDATAVALIDATION,
  CutPasteRequest_PasteType_PASTECONDITIONALFORMATTING,
  CutPasteRequest_PasteType
  #-}

-- | The error code.
newtype DataExecutionStatus_ErrorCode = DataExecutionStatus_ErrorCode {fromDataExecutionStatus_ErrorCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern DataExecutionStatus_ErrorCode_DATAEXECUTIONERRORCODEUNSPECIFIED :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_DATAEXECUTIONERRORCODEUNSPECIFIED = DataExecutionStatus_ErrorCode "DATA_EXECUTION_ERROR_CODE_UNSPECIFIED"

-- | The data execution timed out.
pattern DataExecutionStatus_ErrorCode_TIMEDOUT :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_TIMEDOUT = DataExecutionStatus_ErrorCode "TIMED_OUT"

-- | The data execution returns more rows than the limit.
pattern DataExecutionStatus_ErrorCode_TOOMANYROWS :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_TOOMANYROWS = DataExecutionStatus_ErrorCode "TOO_MANY_ROWS"

-- | The data execution returns more columns than the limit.
pattern DataExecutionStatus_ErrorCode_TOOMANYCOLUMNS :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_TOOMANYCOLUMNS = DataExecutionStatus_ErrorCode "TOO_MANY_COLUMNS"

-- | The data execution returns more cells than the limit.
pattern DataExecutionStatus_ErrorCode_TOOMANYCELLS :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_TOOMANYCELLS = DataExecutionStatus_ErrorCode "TOO_MANY_CELLS"

-- | Error is received from the backend data execution engine (e.g. BigQuery). Check error_message for details.
pattern DataExecutionStatus_ErrorCode_Engine :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_Engine = DataExecutionStatus_ErrorCode "ENGINE"

-- | One or some of the provided data source parameters are invalid.
pattern DataExecutionStatus_ErrorCode_PARAMETERINVALID :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_PARAMETERINVALID = DataExecutionStatus_ErrorCode "PARAMETER_INVALID"

-- | The data execution returns an unsupported data type.
pattern DataExecutionStatus_ErrorCode_UNSUPPORTEDDATATYPE :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_UNSUPPORTEDDATATYPE = DataExecutionStatus_ErrorCode "UNSUPPORTED_DATA_TYPE"

-- | The data execution returns duplicate column names or aliases.
pattern DataExecutionStatus_ErrorCode_DUPLICATECOLUMNNAMES :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_DUPLICATECOLUMNNAMES = DataExecutionStatus_ErrorCode "DUPLICATE_COLUMN_NAMES"

-- | The data execution is interrupted. Please refresh later.
pattern DataExecutionStatus_ErrorCode_Interrupted :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_Interrupted = DataExecutionStatus_ErrorCode "INTERRUPTED"

-- | The data execution is currently in progress, can not be refreshed until it completes.
pattern DataExecutionStatus_ErrorCode_CONCURRENTQUERY :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_CONCURRENTQUERY = DataExecutionStatus_ErrorCode "CONCURRENT_QUERY"

-- | Other errors.
pattern DataExecutionStatus_ErrorCode_Other :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_Other = DataExecutionStatus_ErrorCode "OTHER"

-- | The data execution returns values that exceed the maximum characters allowed in a single cell.
pattern DataExecutionStatus_ErrorCode_TOOMANYCHARSPERCELL :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_TOOMANYCHARSPERCELL = DataExecutionStatus_ErrorCode "TOO_MANY_CHARS_PER_CELL"

-- | The database referenced by the data source is not found. *\/
pattern DataExecutionStatus_ErrorCode_DATANOTFOUND :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_DATANOTFOUND = DataExecutionStatus_ErrorCode "DATA_NOT_FOUND"

-- | The user does not have access to the database referenced by the data source.
pattern DataExecutionStatus_ErrorCode_PERMISSIONDENIED :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_PERMISSIONDENIED = DataExecutionStatus_ErrorCode "PERMISSION_DENIED"

-- | The data execution returns columns with missing aliases.
pattern DataExecutionStatus_ErrorCode_MISSINGCOLUMNALIAS :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_MISSINGCOLUMNALIAS = DataExecutionStatus_ErrorCode "MISSING_COLUMN_ALIAS"

-- | The data source object does not exist.
pattern DataExecutionStatus_ErrorCode_OBJECTNOTFOUND :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_OBJECTNOTFOUND = DataExecutionStatus_ErrorCode "OBJECT_NOT_FOUND"

-- | The data source object is currently in error state. To force refresh, set force in RefreshDataSourceRequest.
pattern DataExecutionStatus_ErrorCode_OBJECTINERRORSTATE :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_OBJECTINERRORSTATE = DataExecutionStatus_ErrorCode "OBJECT_IN_ERROR_STATE"

-- | The data source object specification is invalid.
pattern DataExecutionStatus_ErrorCode_OBJECTSPECINVALID :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_OBJECTSPECINVALID = DataExecutionStatus_ErrorCode "OBJECT_SPEC_INVALID"

-- | The data execution has been cancelled.
pattern DataExecutionStatus_ErrorCode_DATAEXECUTIONCANCELLED :: DataExecutionStatus_ErrorCode
pattern DataExecutionStatus_ErrorCode_DATAEXECUTIONCANCELLED = DataExecutionStatus_ErrorCode "DATA_EXECUTION_CANCELLED"

{-# COMPLETE
  DataExecutionStatus_ErrorCode_DATAEXECUTIONERRORCODEUNSPECIFIED,
  DataExecutionStatus_ErrorCode_TIMEDOUT,
  DataExecutionStatus_ErrorCode_TOOMANYROWS,
  DataExecutionStatus_ErrorCode_TOOMANYCOLUMNS,
  DataExecutionStatus_ErrorCode_TOOMANYCELLS,
  DataExecutionStatus_ErrorCode_Engine,
  DataExecutionStatus_ErrorCode_PARAMETERINVALID,
  DataExecutionStatus_ErrorCode_UNSUPPORTEDDATATYPE,
  DataExecutionStatus_ErrorCode_DUPLICATECOLUMNNAMES,
  DataExecutionStatus_ErrorCode_Interrupted,
  DataExecutionStatus_ErrorCode_CONCURRENTQUERY,
  DataExecutionStatus_ErrorCode_Other,
  DataExecutionStatus_ErrorCode_TOOMANYCHARSPERCELL,
  DataExecutionStatus_ErrorCode_DATANOTFOUND,
  DataExecutionStatus_ErrorCode_PERMISSIONDENIED,
  DataExecutionStatus_ErrorCode_MISSINGCOLUMNALIAS,
  DataExecutionStatus_ErrorCode_OBJECTNOTFOUND,
  DataExecutionStatus_ErrorCode_OBJECTINERRORSTATE,
  DataExecutionStatus_ErrorCode_OBJECTSPECINVALID,
  DataExecutionStatus_ErrorCode_DATAEXECUTIONCANCELLED,
  DataExecutionStatus_ErrorCode
  #-}

-- | The state of the data execution.
newtype DataExecutionStatus_State = DataExecutionStatus_State {fromDataExecutionStatus_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern DataExecutionStatus_State_DATAEXECUTIONSTATEUNSPECIFIED :: DataExecutionStatus_State
pattern DataExecutionStatus_State_DATAEXECUTIONSTATEUNSPECIFIED = DataExecutionStatus_State "DATA_EXECUTION_STATE_UNSPECIFIED"

-- | The data execution has not started.
pattern DataExecutionStatus_State_NOTSTARTED :: DataExecutionStatus_State
pattern DataExecutionStatus_State_NOTSTARTED = DataExecutionStatus_State "NOT_STARTED"

-- | The data execution has started and is running.
pattern DataExecutionStatus_State_Running :: DataExecutionStatus_State
pattern DataExecutionStatus_State_Running = DataExecutionStatus_State "RUNNING"

-- | The data execution is currently being cancelled.
pattern DataExecutionStatus_State_Cancelling :: DataExecutionStatus_State
pattern DataExecutionStatus_State_Cancelling = DataExecutionStatus_State "CANCELLING"

-- | The data execution has completed successfully.
pattern DataExecutionStatus_State_Succeeded :: DataExecutionStatus_State
pattern DataExecutionStatus_State_Succeeded = DataExecutionStatus_State "SUCCEEDED"

-- | The data execution has completed with errors.
pattern DataExecutionStatus_State_Failed :: DataExecutionStatus_State
pattern DataExecutionStatus_State_Failed = DataExecutionStatus_State "FAILED"

{-# COMPLETE
  DataExecutionStatus_State_DATAEXECUTIONSTATEUNSPECIFIED,
  DataExecutionStatus_State_NOTSTARTED,
  DataExecutionStatus_State_Running,
  DataExecutionStatus_State_Cancelling,
  DataExecutionStatus_State_Succeeded,
  DataExecutionStatus_State_Failed,
  DataExecutionStatus_State
  #-}

-- | The major dimension of the values.
newtype DataFilterValueRange_MajorDimension = DataFilterValueRange_MajorDimension {fromDataFilterValueRange_MajorDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern DataFilterValueRange_MajorDimension_DIMENSIONUNSPECIFIED :: DataFilterValueRange_MajorDimension
pattern DataFilterValueRange_MajorDimension_DIMENSIONUNSPECIFIED = DataFilterValueRange_MajorDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern DataFilterValueRange_MajorDimension_Rows :: DataFilterValueRange_MajorDimension
pattern DataFilterValueRange_MajorDimension_Rows = DataFilterValueRange_MajorDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern DataFilterValueRange_MajorDimension_Columns :: DataFilterValueRange_MajorDimension
pattern DataFilterValueRange_MajorDimension_Columns = DataFilterValueRange_MajorDimension "COLUMNS"

{-# COMPLETE
  DataFilterValueRange_MajorDimension_DIMENSIONUNSPECIFIED,
  DataFilterValueRange_MajorDimension_Rows,
  DataFilterValueRange_MajorDimension_Columns,
  DataFilterValueRange_MajorDimension
  #-}

-- | The placement of the data label relative to the labeled data.
newtype DataLabel_Placement = DataLabel_Placement {fromDataLabel_Placement :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The positioning is determined automatically by the renderer.
pattern DataLabel_Placement_DATALABELPLACEMENTUNSPECIFIED :: DataLabel_Placement
pattern DataLabel_Placement_DATALABELPLACEMENTUNSPECIFIED = DataLabel_Placement "DATA_LABEL_PLACEMENT_UNSPECIFIED"

-- | Center within a bar or column, both horizontally and vertically.
pattern DataLabel_Placement_Center :: DataLabel_Placement
pattern DataLabel_Placement_Center = DataLabel_Placement "CENTER"

-- | To the left of a data point.
pattern DataLabel_Placement_Left' :: DataLabel_Placement
pattern DataLabel_Placement_Left' = DataLabel_Placement "LEFT"

-- | To the right of a data point.
pattern DataLabel_Placement_Right' :: DataLabel_Placement
pattern DataLabel_Placement_Right' = DataLabel_Placement "RIGHT"

-- | Above a data point.
pattern DataLabel_Placement_Above :: DataLabel_Placement
pattern DataLabel_Placement_Above = DataLabel_Placement "ABOVE"

-- | Below a data point.
pattern DataLabel_Placement_Below :: DataLabel_Placement
pattern DataLabel_Placement_Below = DataLabel_Placement "BELOW"

-- | Inside a bar or column at the end (top if positive, bottom if negative).
pattern DataLabel_Placement_INSIDEEND :: DataLabel_Placement
pattern DataLabel_Placement_INSIDEEND = DataLabel_Placement "INSIDE_END"

-- | Inside a bar or column at the base.
pattern DataLabel_Placement_INSIDEBASE :: DataLabel_Placement
pattern DataLabel_Placement_INSIDEBASE = DataLabel_Placement "INSIDE_BASE"

-- | Outside a bar or column at the end.
pattern DataLabel_Placement_OUTSIDEEND :: DataLabel_Placement
pattern DataLabel_Placement_OUTSIDEEND = DataLabel_Placement "OUTSIDE_END"

{-# COMPLETE
  DataLabel_Placement_DATALABELPLACEMENTUNSPECIFIED,
  DataLabel_Placement_Center,
  DataLabel_Placement_Left',
  DataLabel_Placement_Right',
  DataLabel_Placement_Above,
  DataLabel_Placement_Below,
  DataLabel_Placement_INSIDEEND,
  DataLabel_Placement_INSIDEBASE,
  DataLabel_Placement_OUTSIDEEND,
  DataLabel_Placement
  #-}

-- | The type of the data label.
newtype DataLabel_Type = DataLabel_Type {fromDataLabel_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The data label type is not specified and will be interpreted depending on the context of the data label within the chart.
pattern DataLabel_Type_DATALABELTYPEUNSPECIFIED :: DataLabel_Type
pattern DataLabel_Type_DATALABELTYPEUNSPECIFIED = DataLabel_Type "DATA_LABEL_TYPE_UNSPECIFIED"

-- | The data label is not displayed.
pattern DataLabel_Type_None :: DataLabel_Type
pattern DataLabel_Type_None = DataLabel_Type "NONE"

-- | The data label is displayed using values from the series data.
pattern DataLabel_Type_Data' :: DataLabel_Type
pattern DataLabel_Type_Data' = DataLabel_Type "DATA"

-- | The data label is displayed using values from a custom data source indicated by customLabelData.
pattern DataLabel_Type_Custom :: DataLabel_Type
pattern DataLabel_Type_Custom = DataLabel_Type "CUSTOM"

{-# COMPLETE
  DataLabel_Type_DATALABELTYPEUNSPECIFIED,
  DataLabel_Type_None,
  DataLabel_Type_Data',
  DataLabel_Type_Custom,
  DataLabel_Type
  #-}

-- | The scope of the refresh. Must be ALL/DATA/SOURCES.
newtype DataSourceRefreshSchedule_RefreshScope = DataSourceRefreshSchedule_RefreshScope {fromDataSourceRefreshSchedule_RefreshScope :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern DataSourceRefreshSchedule_RefreshScope_DATASOURCEREFRESHSCOPEUNSPECIFIED :: DataSourceRefreshSchedule_RefreshScope
pattern DataSourceRefreshSchedule_RefreshScope_DATASOURCEREFRESHSCOPEUNSPECIFIED = DataSourceRefreshSchedule_RefreshScope "DATA_SOURCE_REFRESH_SCOPE_UNSPECIFIED"

-- | Refreshes all data sources and their associated data source objects in the spreadsheet.
pattern DataSourceRefreshSchedule_RefreshScope_ALLDATASOURCES :: DataSourceRefreshSchedule_RefreshScope
pattern DataSourceRefreshSchedule_RefreshScope_ALLDATASOURCES = DataSourceRefreshSchedule_RefreshScope "ALL_DATA_SOURCES"

{-# COMPLETE
  DataSourceRefreshSchedule_RefreshScope_DATASOURCEREFRESHSCOPEUNSPECIFIED,
  DataSourceRefreshSchedule_RefreshScope_ALLDATASOURCES,
  DataSourceRefreshSchedule_RefreshScope
  #-}

newtype DataSourceRefreshWeeklySchedule_DaysOfWeekItem = DataSourceRefreshWeeklySchedule_DaysOfWeekItem {fromDataSourceRefreshWeeklySchedule_DaysOfWeekItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The day of the week is unspecified.
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_DAYOFWEEKUNSPECIFIED :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_DAYOFWEEKUNSPECIFIED = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "DAY_OF_WEEK_UNSPECIFIED"

-- | Monday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Monday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Monday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "MONDAY"

-- | Tuesday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Tuesday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Tuesday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "TUESDAY"

-- | Wednesday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Wednesday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Wednesday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "WEDNESDAY"

-- | Thursday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Thursday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Thursday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "THURSDAY"

-- | Friday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Friday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Friday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "FRIDAY"

-- | Saturday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Saturday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Saturday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "SATURDAY"

-- | Sunday
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Sunday :: DataSourceRefreshWeeklySchedule_DaysOfWeekItem
pattern DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Sunday = DataSourceRefreshWeeklySchedule_DaysOfWeekItem "SUNDAY"

{-# COMPLETE
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_DAYOFWEEKUNSPECIFIED,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Monday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Tuesday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Wednesday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Thursday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Friday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Saturday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem_Sunday,
  DataSourceRefreshWeeklySchedule_DaysOfWeekItem
  #-}

-- | The type to select columns for the data source table. Defaults to SELECTED.
newtype DataSourceTable_ColumnSelectionType = DataSourceTable_ColumnSelectionType {fromDataSourceTable_ColumnSelectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default column selection type, do not use.
pattern DataSourceTable_ColumnSelectionType_DATASOURCETABLECOLUMNSELECTIONTYPEUNSPECIFIED :: DataSourceTable_ColumnSelectionType
pattern DataSourceTable_ColumnSelectionType_DATASOURCETABLECOLUMNSELECTIONTYPEUNSPECIFIED = DataSourceTable_ColumnSelectionType "DATA_SOURCE_TABLE_COLUMN_SELECTION_TYPE_UNSPECIFIED"

-- | Select columns specified by columns field.
pattern DataSourceTable_ColumnSelectionType_Selected :: DataSourceTable_ColumnSelectionType
pattern DataSourceTable_ColumnSelectionType_Selected = DataSourceTable_ColumnSelectionType "SELECTED"

-- | Sync all current and future columns in the data source. If set, the data source table fetches all the columns in the data source at the time of refresh.
pattern DataSourceTable_ColumnSelectionType_SYNCALL :: DataSourceTable_ColumnSelectionType
pattern DataSourceTable_ColumnSelectionType_SYNCALL = DataSourceTable_ColumnSelectionType "SYNC_ALL"

{-# COMPLETE
  DataSourceTable_ColumnSelectionType_DATASOURCETABLECOLUMNSELECTIONTYPEUNSPECIFIED,
  DataSourceTable_ColumnSelectionType_Selected,
  DataSourceTable_ColumnSelectionType_SYNCALL,
  DataSourceTable_ColumnSelectionType
  #-}

-- | The type of date-time grouping to apply.
newtype DateTimeRule_Type = DateTimeRule_Type {fromDateTimeRule_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default type, do not use.
pattern DateTimeRule_Type_DATETIMERULETYPEUNSPECIFIED :: DateTimeRule_Type
pattern DateTimeRule_Type_DATETIMERULETYPEUNSPECIFIED = DateTimeRule_Type "DATE_TIME_RULE_TYPE_UNSPECIFIED"

-- | Group dates by second, from 0 to 59.
pattern DateTimeRule_Type_Second :: DateTimeRule_Type
pattern DateTimeRule_Type_Second = DateTimeRule_Type "SECOND"

-- | Group dates by minute, from 0 to 59.
pattern DateTimeRule_Type_Minute :: DateTimeRule_Type
pattern DateTimeRule_Type_Minute = DateTimeRule_Type "MINUTE"

-- | Group dates by hour using a 24-hour system, from 0 to 23.
pattern DateTimeRule_Type_Hour :: DateTimeRule_Type
pattern DateTimeRule_Type_Hour = DateTimeRule_Type "HOUR"

-- | Group dates by hour and minute using a 24-hour system, for example 19:45.
pattern DateTimeRule_Type_HOURMINUTE :: DateTimeRule_Type
pattern DateTimeRule_Type_HOURMINUTE = DateTimeRule_Type "HOUR_MINUTE"

-- | Group dates by hour and minute using a 12-hour system, for example 7:45 PM. The AM\/PM designation is translated based on the spreadsheet locale.
pattern DateTimeRule_Type_HOURMINUTEAMPM :: DateTimeRule_Type
pattern DateTimeRule_Type_HOURMINUTEAMPM = DateTimeRule_Type "HOUR_MINUTE_AMPM"

-- | Group dates by day of week, for example Sunday. The days of the week will be translated based on the spreadsheet locale.
pattern DateTimeRule_Type_DAYOFWEEK :: DateTimeRule_Type
pattern DateTimeRule_Type_DAYOFWEEK = DateTimeRule_Type "DAY_OF_WEEK"

-- | Group dates by day of year, from 1 to 366. Note that dates after Feb. 29 fall in different buckets in leap years than in non-leap years.
pattern DateTimeRule_Type_DAYOFYEAR :: DateTimeRule_Type
pattern DateTimeRule_Type_DAYOFYEAR = DateTimeRule_Type "DAY_OF_YEAR"

-- | Group dates by day of month, from 1 to 31.
pattern DateTimeRule_Type_DAYOFMONTH :: DateTimeRule_Type
pattern DateTimeRule_Type_DAYOFMONTH = DateTimeRule_Type "DAY_OF_MONTH"

-- | Group dates by day and month, for example 22-Nov. The month is translated based on the spreadsheet locale.
pattern DateTimeRule_Type_DAYMONTH :: DateTimeRule_Type
pattern DateTimeRule_Type_DAYMONTH = DateTimeRule_Type "DAY_MONTH"

-- | Group dates by month, for example Nov. The month is translated based on the spreadsheet locale.
pattern DateTimeRule_Type_Month :: DateTimeRule_Type
pattern DateTimeRule_Type_Month = DateTimeRule_Type "MONTH"

-- | Group dates by quarter, for example Q1 (which represents Jan-Mar).
pattern DateTimeRule_Type_Quarter :: DateTimeRule_Type
pattern DateTimeRule_Type_Quarter = DateTimeRule_Type "QUARTER"

-- | Group dates by year, for example 2008.
pattern DateTimeRule_Type_Year :: DateTimeRule_Type
pattern DateTimeRule_Type_Year = DateTimeRule_Type "YEAR"

-- | Group dates by year and month, for example 2008-Nov. The month is translated based on the spreadsheet locale.
pattern DateTimeRule_Type_YEARMONTH :: DateTimeRule_Type
pattern DateTimeRule_Type_YEARMONTH = DateTimeRule_Type "YEAR_MONTH"

-- | Group dates by year and quarter, for example 2008 Q4.
pattern DateTimeRule_Type_YEARQUARTER :: DateTimeRule_Type
pattern DateTimeRule_Type_YEARQUARTER = DateTimeRule_Type "YEAR_QUARTER"

-- | Group dates by year, month, and day, for example 2008-11-22.
pattern DateTimeRule_Type_YEARMONTHDAY :: DateTimeRule_Type
pattern DateTimeRule_Type_YEARMONTHDAY = DateTimeRule_Type "YEAR_MONTH_DAY"

{-# COMPLETE
  DateTimeRule_Type_DATETIMERULETYPEUNSPECIFIED,
  DateTimeRule_Type_Second,
  DateTimeRule_Type_Minute,
  DateTimeRule_Type_Hour,
  DateTimeRule_Type_HOURMINUTE,
  DateTimeRule_Type_HOURMINUTEAMPM,
  DateTimeRule_Type_DAYOFWEEK,
  DateTimeRule_Type_DAYOFYEAR,
  DateTimeRule_Type_DAYOFMONTH,
  DateTimeRule_Type_DAYMONTH,
  DateTimeRule_Type_Month,
  DateTimeRule_Type_Quarter,
  DateTimeRule_Type_Year,
  DateTimeRule_Type_YEARMONTH,
  DateTimeRule_Type_YEARQUARTER,
  DateTimeRule_Type_YEARMONTHDAY,
  DateTimeRule_Type
  #-}

-- | The dimension from which deleted cells will be replaced with. If ROWS, existing cells will be shifted upward to replace the deleted cells. If COLUMNS, existing cells will be shifted left to replace the deleted cells.
newtype DeleteRangeRequest_ShiftDimension = DeleteRangeRequest_ShiftDimension {fromDeleteRangeRequest_ShiftDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern DeleteRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED :: DeleteRangeRequest_ShiftDimension
pattern DeleteRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED = DeleteRangeRequest_ShiftDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern DeleteRangeRequest_ShiftDimension_Rows :: DeleteRangeRequest_ShiftDimension
pattern DeleteRangeRequest_ShiftDimension_Rows = DeleteRangeRequest_ShiftDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern DeleteRangeRequest_ShiftDimension_Columns :: DeleteRangeRequest_ShiftDimension
pattern DeleteRangeRequest_ShiftDimension_Columns = DeleteRangeRequest_ShiftDimension "COLUMNS"

{-# COMPLETE
  DeleteRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED,
  DeleteRangeRequest_ShiftDimension_Rows,
  DeleteRangeRequest_ShiftDimension_Columns,
  DeleteRangeRequest_ShiftDimension
  #-}

-- | The metadata visibility. Developer metadata must always have a visibility specified.
newtype DeveloperMetadata_Visibility = DeveloperMetadata_Visibility {fromDeveloperMetadata_Visibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern DeveloperMetadata_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED :: DeveloperMetadata_Visibility
pattern DeveloperMetadata_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED = DeveloperMetadata_Visibility "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED"

-- | Document-visible metadata is accessible from any developer project with access to the document.
pattern DeveloperMetadata_Visibility_Document :: DeveloperMetadata_Visibility
pattern DeveloperMetadata_Visibility_Document = DeveloperMetadata_Visibility "DOCUMENT"

-- | Project-visible metadata is only visible to and accessible by the developer project that created the metadata.
pattern DeveloperMetadata_Visibility_Project :: DeveloperMetadata_Visibility
pattern DeveloperMetadata_Visibility_Project = DeveloperMetadata_Visibility "PROJECT"

{-# COMPLETE
  DeveloperMetadata_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED,
  DeveloperMetadata_Visibility_Document,
  DeveloperMetadata_Visibility_Project,
  DeveloperMetadata_Visibility
  #-}

-- | The type of location this object represents. This field is read-only.
newtype DeveloperMetadataLocation_LocationType = DeveloperMetadataLocation_LocationType {fromDeveloperMetadataLocation_LocationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern DeveloperMetadataLocation_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED :: DeveloperMetadataLocation_LocationType
pattern DeveloperMetadataLocation_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED = DeveloperMetadataLocation_LocationType "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED"

-- | Developer metadata associated on an entire row dimension.
pattern DeveloperMetadataLocation_LocationType_Row :: DeveloperMetadataLocation_LocationType
pattern DeveloperMetadataLocation_LocationType_Row = DeveloperMetadataLocation_LocationType "ROW"

-- | Developer metadata associated on an entire column dimension.
pattern DeveloperMetadataLocation_LocationType_Column :: DeveloperMetadataLocation_LocationType
pattern DeveloperMetadataLocation_LocationType_Column = DeveloperMetadataLocation_LocationType "COLUMN"

-- | Developer metadata associated on an entire sheet.
pattern DeveloperMetadataLocation_LocationType_Sheet :: DeveloperMetadataLocation_LocationType
pattern DeveloperMetadataLocation_LocationType_Sheet = DeveloperMetadataLocation_LocationType "SHEET"

-- | Developer metadata associated on the entire spreadsheet.
pattern DeveloperMetadataLocation_LocationType_Spreadsheet :: DeveloperMetadataLocation_LocationType
pattern DeveloperMetadataLocation_LocationType_Spreadsheet = DeveloperMetadataLocation_LocationType "SPREADSHEET"

{-# COMPLETE
  DeveloperMetadataLocation_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED,
  DeveloperMetadataLocation_LocationType_Row,
  DeveloperMetadataLocation_LocationType_Column,
  DeveloperMetadataLocation_LocationType_Sheet,
  DeveloperMetadataLocation_LocationType_Spreadsheet,
  DeveloperMetadataLocation_LocationType
  #-}

-- | Determines how this lookup matches the location. If this field is specified as EXACT, only developer metadata associated on the exact location specified is matched. If this field is specified to INTERSECTING, developer metadata associated on intersecting locations is also matched. If left unspecified, this field assumes a default value of INTERSECTING. If this field is specified, a metadataLocation must also be specified.
newtype DeveloperMetadataLookup_LocationMatchingStrategy = DeveloperMetadataLookup_LocationMatchingStrategy {fromDeveloperMetadataLookup_LocationMatchingStrategy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value must not be used.
pattern DeveloperMetadataLookup_LocationMatchingStrategy_DEVELOPERMETADATALOCATIONMATCHINGSTRATEGYUNSPECIFIED :: DeveloperMetadataLookup_LocationMatchingStrategy
pattern DeveloperMetadataLookup_LocationMatchingStrategy_DEVELOPERMETADATALOCATIONMATCHINGSTRATEGYUNSPECIFIED = DeveloperMetadataLookup_LocationMatchingStrategy "DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED"

-- | Indicates that a specified location should be matched exactly. For example, if row three were specified as a location this matching strategy would only match developer metadata also associated on row three. Metadata associated on other locations would not be considered.
pattern DeveloperMetadataLookup_LocationMatchingStrategy_EXACTLOCATION :: DeveloperMetadataLookup_LocationMatchingStrategy
pattern DeveloperMetadataLookup_LocationMatchingStrategy_EXACTLOCATION = DeveloperMetadataLookup_LocationMatchingStrategy "EXACT_LOCATION"

-- | Indicates that a specified location should match that exact location as well as any intersecting locations. For example, if row three were specified as a location this matching strategy would match developer metadata associated on row three as well as metadata associated on locations that intersect row three. If, for instance, there was developer metadata associated on column B, this matching strategy would also match that location because column B intersects row three.
pattern DeveloperMetadataLookup_LocationMatchingStrategy_INTERSECTINGLOCATION :: DeveloperMetadataLookup_LocationMatchingStrategy
pattern DeveloperMetadataLookup_LocationMatchingStrategy_INTERSECTINGLOCATION = DeveloperMetadataLookup_LocationMatchingStrategy "INTERSECTING_LOCATION"

{-# COMPLETE
  DeveloperMetadataLookup_LocationMatchingStrategy_DEVELOPERMETADATALOCATIONMATCHINGSTRATEGYUNSPECIFIED,
  DeveloperMetadataLookup_LocationMatchingStrategy_EXACTLOCATION,
  DeveloperMetadataLookup_LocationMatchingStrategy_INTERSECTINGLOCATION,
  DeveloperMetadataLookup_LocationMatchingStrategy
  #-}

-- | Limits the selected developer metadata to those entries which are associated with locations of the specified type. For example, when this field is specified as ROW this lookup only considers developer metadata associated on rows. If the field is left unspecified, all location types are considered. This field cannot be specified as SPREADSHEET when the locationMatchingStrategy is specified as INTERSECTING or when the metadataLocation is specified as a non-spreadsheet location: spreadsheet metadata cannot intersect any other developer metadata location. This field also must be left unspecified when the locationMatchingStrategy is specified as EXACT.
newtype DeveloperMetadataLookup_LocationType = DeveloperMetadataLookup_LocationType {fromDeveloperMetadataLookup_LocationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern DeveloperMetadataLookup_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED :: DeveloperMetadataLookup_LocationType
pattern DeveloperMetadataLookup_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED = DeveloperMetadataLookup_LocationType "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED"

-- | Developer metadata associated on an entire row dimension.
pattern DeveloperMetadataLookup_LocationType_Row :: DeveloperMetadataLookup_LocationType
pattern DeveloperMetadataLookup_LocationType_Row = DeveloperMetadataLookup_LocationType "ROW"

-- | Developer metadata associated on an entire column dimension.
pattern DeveloperMetadataLookup_LocationType_Column :: DeveloperMetadataLookup_LocationType
pattern DeveloperMetadataLookup_LocationType_Column = DeveloperMetadataLookup_LocationType "COLUMN"

-- | Developer metadata associated on an entire sheet.
pattern DeveloperMetadataLookup_LocationType_Sheet :: DeveloperMetadataLookup_LocationType
pattern DeveloperMetadataLookup_LocationType_Sheet = DeveloperMetadataLookup_LocationType "SHEET"

-- | Developer metadata associated on the entire spreadsheet.
pattern DeveloperMetadataLookup_LocationType_Spreadsheet :: DeveloperMetadataLookup_LocationType
pattern DeveloperMetadataLookup_LocationType_Spreadsheet = DeveloperMetadataLookup_LocationType "SPREADSHEET"

{-# COMPLETE
  DeveloperMetadataLookup_LocationType_DEVELOPERMETADATALOCATIONTYPEUNSPECIFIED,
  DeveloperMetadataLookup_LocationType_Row,
  DeveloperMetadataLookup_LocationType_Column,
  DeveloperMetadataLookup_LocationType_Sheet,
  DeveloperMetadataLookup_LocationType_Spreadsheet,
  DeveloperMetadataLookup_LocationType
  #-}

-- | Limits the selected developer metadata to that which has a matching DeveloperMetadata.visibility. If left unspecified, all developer metadata visible to the requesting project is considered.
newtype DeveloperMetadataLookup_Visibility = DeveloperMetadataLookup_Visibility {fromDeveloperMetadataLookup_Visibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern DeveloperMetadataLookup_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED :: DeveloperMetadataLookup_Visibility
pattern DeveloperMetadataLookup_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED = DeveloperMetadataLookup_Visibility "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED"

-- | Document-visible metadata is accessible from any developer project with access to the document.
pattern DeveloperMetadataLookup_Visibility_Document :: DeveloperMetadataLookup_Visibility
pattern DeveloperMetadataLookup_Visibility_Document = DeveloperMetadataLookup_Visibility "DOCUMENT"

-- | Project-visible metadata is only visible to and accessible by the developer project that created the metadata.
pattern DeveloperMetadataLookup_Visibility_Project :: DeveloperMetadataLookup_Visibility
pattern DeveloperMetadataLookup_Visibility_Project = DeveloperMetadataLookup_Visibility "PROJECT"

{-# COMPLETE
  DeveloperMetadataLookup_Visibility_DEVELOPERMETADATAVISIBILITYUNSPECIFIED,
  DeveloperMetadataLookup_Visibility_Document,
  DeveloperMetadataLookup_Visibility_Project,
  DeveloperMetadataLookup_Visibility
  #-}

-- | The dimension of the span.
newtype DimensionRange_Dimension = DimensionRange_Dimension {fromDimensionRange_Dimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern DimensionRange_Dimension_DIMENSIONUNSPECIFIED :: DimensionRange_Dimension
pattern DimensionRange_Dimension_DIMENSIONUNSPECIFIED = DimensionRange_Dimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern DimensionRange_Dimension_Rows :: DimensionRange_Dimension
pattern DimensionRange_Dimension_Rows = DimensionRange_Dimension "ROWS"

-- | Operates on the columns of a sheet.
pattern DimensionRange_Dimension_Columns :: DimensionRange_Dimension
pattern DimensionRange_Dimension_Columns = DimensionRange_Dimension "COLUMNS"

{-# COMPLETE
  DimensionRange_Dimension_DIMENSIONUNSPECIFIED,
  DimensionRange_Dimension_Rows,
  DimensionRange_Dimension_Columns,
  DimensionRange_Dimension
  #-}

-- | The type of error.
newtype ErrorValue_Type = ErrorValue_Type {fromErrorValue_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default error type, do not use this.
pattern ErrorValue_Type_ERRORTYPEUNSPECIFIED :: ErrorValue_Type
pattern ErrorValue_Type_ERRORTYPEUNSPECIFIED = ErrorValue_Type "ERROR_TYPE_UNSPECIFIED"

-- | Corresponds to the @#ERROR!@ error.
pattern ErrorValue_Type_Error' :: ErrorValue_Type
pattern ErrorValue_Type_Error' = ErrorValue_Type "ERROR"

-- | Corresponds to the @#NULL!@ error.
pattern ErrorValue_Type_NULLVALUE :: ErrorValue_Type
pattern ErrorValue_Type_NULLVALUE = ErrorValue_Type "NULL_VALUE"

-- | Corresponds to the @#DIV\/0@ error.
pattern ErrorValue_Type_DIVIDEBYZERO :: ErrorValue_Type
pattern ErrorValue_Type_DIVIDEBYZERO = ErrorValue_Type "DIVIDE_BY_ZERO"

-- | Corresponds to the @#VALUE!@ error.
pattern ErrorValue_Type_Value :: ErrorValue_Type
pattern ErrorValue_Type_Value = ErrorValue_Type "VALUE"

-- | Corresponds to the @#REF!@ error.
pattern ErrorValue_Type_Ref :: ErrorValue_Type
pattern ErrorValue_Type_Ref = ErrorValue_Type "REF"

-- | Corresponds to the @#NAME?@ error.
pattern ErrorValue_Type_Name :: ErrorValue_Type
pattern ErrorValue_Type_Name = ErrorValue_Type "NAME"

-- | Corresponds to the @#NUM!@ error.
pattern ErrorValue_Type_Num :: ErrorValue_Type
pattern ErrorValue_Type_Num = ErrorValue_Type "NUM"

-- | Corresponds to the @#N\/A@ error.
pattern ErrorValue_Type_NA :: ErrorValue_Type
pattern ErrorValue_Type_NA = ErrorValue_Type "N_A"

-- | Corresponds to the @Loading...@ state.
pattern ErrorValue_Type_Loading :: ErrorValue_Type
pattern ErrorValue_Type_Loading = ErrorValue_Type "LOADING"

{-# COMPLETE
  ErrorValue_Type_ERRORTYPEUNSPECIFIED,
  ErrorValue_Type_Error',
  ErrorValue_Type_NULLVALUE,
  ErrorValue_Type_DIVIDEBYZERO,
  ErrorValue_Type_Value,
  ErrorValue_Type_Ref,
  ErrorValue_Type_Name,
  ErrorValue_Type_Num,
  ErrorValue_Type_NA,
  ErrorValue_Type_Loading,
  ErrorValue_Type
  #-}

-- | The position of the chart legend.
newtype HistogramChartSpec_LegendPosition = HistogramChartSpec_LegendPosition {fromHistogramChartSpec_LegendPosition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern HistogramChartSpec_LegendPosition_HISTOGRAMCHARTLEGENDPOSITIONUNSPECIFIED :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_HISTOGRAMCHARTLEGENDPOSITIONUNSPECIFIED = HistogramChartSpec_LegendPosition "HISTOGRAM_CHART_LEGEND_POSITION_UNSPECIFIED"

-- | The legend is rendered on the bottom of the chart.
pattern HistogramChartSpec_LegendPosition_BOTTOMLEGEND :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_BOTTOMLEGEND = HistogramChartSpec_LegendPosition "BOTTOM_LEGEND"

-- | The legend is rendered on the left of the chart.
pattern HistogramChartSpec_LegendPosition_LEFTLEGEND :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_LEFTLEGEND = HistogramChartSpec_LegendPosition "LEFT_LEGEND"

-- | The legend is rendered on the right of the chart.
pattern HistogramChartSpec_LegendPosition_RIGHTLEGEND :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_RIGHTLEGEND = HistogramChartSpec_LegendPosition "RIGHT_LEGEND"

-- | The legend is rendered on the top of the chart.
pattern HistogramChartSpec_LegendPosition_TOPLEGEND :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_TOPLEGEND = HistogramChartSpec_LegendPosition "TOP_LEGEND"

-- | No legend is rendered.
pattern HistogramChartSpec_LegendPosition_NOLEGEND :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_NOLEGEND = HistogramChartSpec_LegendPosition "NO_LEGEND"

-- | The legend is rendered inside the chart area.
pattern HistogramChartSpec_LegendPosition_INSIDELEGEND :: HistogramChartSpec_LegendPosition
pattern HistogramChartSpec_LegendPosition_INSIDELEGEND = HistogramChartSpec_LegendPosition "INSIDE_LEGEND"

{-# COMPLETE
  HistogramChartSpec_LegendPosition_HISTOGRAMCHARTLEGENDPOSITIONUNSPECIFIED,
  HistogramChartSpec_LegendPosition_BOTTOMLEGEND,
  HistogramChartSpec_LegendPosition_LEFTLEGEND,
  HistogramChartSpec_LegendPosition_RIGHTLEGEND,
  HistogramChartSpec_LegendPosition_TOPLEGEND,
  HistogramChartSpec_LegendPosition_NOLEGEND,
  HistogramChartSpec_LegendPosition_INSIDELEGEND,
  HistogramChartSpec_LegendPosition
  #-}

-- | The dimension which will be shifted when inserting cells. If ROWS, existing cells will be shifted down. If COLUMNS, existing cells will be shifted right.
newtype InsertRangeRequest_ShiftDimension = InsertRangeRequest_ShiftDimension {fromInsertRangeRequest_ShiftDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern InsertRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED :: InsertRangeRequest_ShiftDimension
pattern InsertRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED = InsertRangeRequest_ShiftDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern InsertRangeRequest_ShiftDimension_Rows :: InsertRangeRequest_ShiftDimension
pattern InsertRangeRequest_ShiftDimension_Rows = InsertRangeRequest_ShiftDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern InsertRangeRequest_ShiftDimension_Columns :: InsertRangeRequest_ShiftDimension
pattern InsertRangeRequest_ShiftDimension_Columns = InsertRangeRequest_ShiftDimension "COLUMNS"

{-# COMPLETE
  InsertRangeRequest_ShiftDimension_DIMENSIONUNSPECIFIED,
  InsertRangeRequest_ShiftDimension_Rows,
  InsertRangeRequest_ShiftDimension_Columns,
  InsertRangeRequest_ShiftDimension
  #-}

-- | How the value should be interpreted.
newtype InterpolationPoint_Type = InterpolationPoint_Type {fromInterpolationPoint_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern InterpolationPoint_Type_INTERPOLATIONPOINTTYPEUNSPECIFIED :: InterpolationPoint_Type
pattern InterpolationPoint_Type_INTERPOLATIONPOINTTYPEUNSPECIFIED = InterpolationPoint_Type "INTERPOLATION_POINT_TYPE_UNSPECIFIED"

-- | The interpolation point uses the minimum value in the cells over the range of the conditional format.
pattern InterpolationPoint_Type_Min :: InterpolationPoint_Type
pattern InterpolationPoint_Type_Min = InterpolationPoint_Type "MIN"

-- | The interpolation point uses the maximum value in the cells over the range of the conditional format.
pattern InterpolationPoint_Type_Max :: InterpolationPoint_Type
pattern InterpolationPoint_Type_Max = InterpolationPoint_Type "MAX"

-- | The interpolation point uses exactly the value in InterpolationPoint.value.
pattern InterpolationPoint_Type_Number :: InterpolationPoint_Type
pattern InterpolationPoint_Type_Number = InterpolationPoint_Type "NUMBER"

-- | The interpolation point is the given percentage over all the cells in the range of the conditional format. This is equivalent to @NUMBER@ if the value was: @=(MAX(FLATTEN(range)) * (value \/ 100)) + (MIN(FLATTEN(range)) * (1 - (value \/ 100)))@ (where errors in the range are ignored when flattening).
pattern InterpolationPoint_Type_Percent :: InterpolationPoint_Type
pattern InterpolationPoint_Type_Percent = InterpolationPoint_Type "PERCENT"

-- | The interpolation point is the given percentile over all the cells in the range of the conditional format. This is equivalent to @NUMBER@ if the value was: @=PERCENTILE(FLATTEN(range), value \/ 100)@ (where errors in the range are ignored when flattening).
pattern InterpolationPoint_Type_Percentile :: InterpolationPoint_Type
pattern InterpolationPoint_Type_Percentile = InterpolationPoint_Type "PERCENTILE"

{-# COMPLETE
  InterpolationPoint_Type_INTERPOLATIONPOINTTYPEUNSPECIFIED,
  InterpolationPoint_Type_Min,
  InterpolationPoint_Type_Max,
  InterpolationPoint_Type_Number,
  InterpolationPoint_Type_Percent,
  InterpolationPoint_Type_Percentile,
  InterpolationPoint_Type
  #-}

-- | The dash type of the line.
newtype LineStyle_Type = LineStyle_Type {fromLineStyle_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern LineStyle_Type_LINEDASHTYPEUNSPECIFIED :: LineStyle_Type
pattern LineStyle_Type_LINEDASHTYPEUNSPECIFIED = LineStyle_Type "LINE_DASH_TYPE_UNSPECIFIED"

-- | No dash type, which is equivalent to a non-visible line.
pattern LineStyle_Type_Invisible :: LineStyle_Type
pattern LineStyle_Type_Invisible = LineStyle_Type "INVISIBLE"

-- | A custom dash for a line. Modifying the exact custom dash style is currently unsupported.
pattern LineStyle_Type_Custom :: LineStyle_Type
pattern LineStyle_Type_Custom = LineStyle_Type "CUSTOM"

-- | A solid line.
pattern LineStyle_Type_Solid :: LineStyle_Type
pattern LineStyle_Type_Solid = LineStyle_Type "SOLID"

-- | A dotted line.
pattern LineStyle_Type_Dotted :: LineStyle_Type
pattern LineStyle_Type_Dotted = LineStyle_Type "DOTTED"

-- | A dashed line where the dashes have \"medium\" length.
pattern LineStyle_Type_MEDIUMDASHED :: LineStyle_Type
pattern LineStyle_Type_MEDIUMDASHED = LineStyle_Type "MEDIUM_DASHED"

-- | A line that alternates between a \"medium\" dash and a dot.
pattern LineStyle_Type_MEDIUMDASHEDDOTTED :: LineStyle_Type
pattern LineStyle_Type_MEDIUMDASHEDDOTTED = LineStyle_Type "MEDIUM_DASHED_DOTTED"

-- | A dashed line where the dashes have \"long\" length.
pattern LineStyle_Type_LONGDASHED :: LineStyle_Type
pattern LineStyle_Type_LONGDASHED = LineStyle_Type "LONG_DASHED"

-- | A line that alternates between a \"long\" dash and a dot.
pattern LineStyle_Type_LONGDASHEDDOTTED :: LineStyle_Type
pattern LineStyle_Type_LONGDASHEDDOTTED = LineStyle_Type "LONG_DASHED_DOTTED"

{-# COMPLETE
  LineStyle_Type_LINEDASHTYPEUNSPECIFIED,
  LineStyle_Type_Invisible,
  LineStyle_Type_Custom,
  LineStyle_Type_Solid,
  LineStyle_Type_Dotted,
  LineStyle_Type_MEDIUMDASHED,
  LineStyle_Type_MEDIUMDASHEDDOTTED,
  LineStyle_Type_LONGDASHED,
  LineStyle_Type_LONGDASHEDDOTTED,
  LineStyle_Type
  #-}

-- | How the cells should be merged.
newtype MergeCellsRequest_MergeType = MergeCellsRequest_MergeType {fromMergeCellsRequest_MergeType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Create a single merge from the range
pattern MergeCellsRequest_MergeType_MERGEALL :: MergeCellsRequest_MergeType
pattern MergeCellsRequest_MergeType_MERGEALL = MergeCellsRequest_MergeType "MERGE_ALL"

-- | Create a merge for each column in the range
pattern MergeCellsRequest_MergeType_MERGECOLUMNS :: MergeCellsRequest_MergeType
pattern MergeCellsRequest_MergeType_MERGECOLUMNS = MergeCellsRequest_MergeType "MERGE_COLUMNS"

-- | Create a merge for each row in the range
pattern MergeCellsRequest_MergeType_MERGEROWS :: MergeCellsRequest_MergeType
pattern MergeCellsRequest_MergeType_MERGEROWS = MergeCellsRequest_MergeType "MERGE_ROWS"

{-# COMPLETE
  MergeCellsRequest_MergeType_MERGEALL,
  MergeCellsRequest_MergeType_MERGECOLUMNS,
  MergeCellsRequest_MergeType_MERGEROWS,
  MergeCellsRequest_MergeType
  #-}

-- | The type of the number format. When writing, this field must be set.
newtype NumberFormat_Type = NumberFormat_Type {fromNumberFormat_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The number format is not specified and is based on the contents of the cell. Do not explicitly use this.
pattern NumberFormat_Type_NUMBERFORMATTYPEUNSPECIFIED :: NumberFormat_Type
pattern NumberFormat_Type_NUMBERFORMATTYPEUNSPECIFIED = NumberFormat_Type "NUMBER_FORMAT_TYPE_UNSPECIFIED"

-- | Text formatting, e.g @1000.12@
pattern NumberFormat_Type_Text :: NumberFormat_Type
pattern NumberFormat_Type_Text = NumberFormat_Type "TEXT"

-- | Number formatting, e.g, @1,000.12@
pattern NumberFormat_Type_Number :: NumberFormat_Type
pattern NumberFormat_Type_Number = NumberFormat_Type "NUMBER"

-- | Percent formatting, e.g @10.12%@
pattern NumberFormat_Type_Percent :: NumberFormat_Type
pattern NumberFormat_Type_Percent = NumberFormat_Type "PERCENT"

-- | Currency formatting, e.g @$1,000.12@
pattern NumberFormat_Type_Currency :: NumberFormat_Type
pattern NumberFormat_Type_Currency = NumberFormat_Type "CURRENCY"

-- | Date formatting, e.g @9\/26\/2008@
pattern NumberFormat_Type_Date :: NumberFormat_Type
pattern NumberFormat_Type_Date = NumberFormat_Type "DATE"

-- | Time formatting, e.g @3:59:00 PM@
pattern NumberFormat_Type_Time :: NumberFormat_Type
pattern NumberFormat_Type_Time = NumberFormat_Type "TIME"

-- | Date+Time formatting, e.g @9\/26\/08 15:59:00@
pattern NumberFormat_Type_DATETIME :: NumberFormat_Type
pattern NumberFormat_Type_DATETIME = NumberFormat_Type "DATE_TIME"

-- | Scientific number formatting, e.g @1.01E+03@
pattern NumberFormat_Type_Scientific :: NumberFormat_Type
pattern NumberFormat_Type_Scientific = NumberFormat_Type "SCIENTIFIC"

{-# COMPLETE
  NumberFormat_Type_NUMBERFORMATTYPEUNSPECIFIED,
  NumberFormat_Type_Text,
  NumberFormat_Type_Number,
  NumberFormat_Type_Percent,
  NumberFormat_Type_Currency,
  NumberFormat_Type_Date,
  NumberFormat_Type_Time,
  NumberFormat_Type_DATETIME,
  NumberFormat_Type_Scientific,
  NumberFormat_Type
  #-}

-- | The size of the org chart nodes.
newtype OrgChartSpec_NodeSize = OrgChartSpec_NodeSize {fromOrgChartSpec_NodeSize :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern OrgChartSpec_NodeSize_ORGCHARTLABELSIZEUNSPECIFIED :: OrgChartSpec_NodeSize
pattern OrgChartSpec_NodeSize_ORGCHARTLABELSIZEUNSPECIFIED = OrgChartSpec_NodeSize "ORG_CHART_LABEL_SIZE_UNSPECIFIED"

-- | The small org chart node size.
pattern OrgChartSpec_NodeSize_Small :: OrgChartSpec_NodeSize
pattern OrgChartSpec_NodeSize_Small = OrgChartSpec_NodeSize "SMALL"

-- | The medium org chart node size.
pattern OrgChartSpec_NodeSize_Medium :: OrgChartSpec_NodeSize
pattern OrgChartSpec_NodeSize_Medium = OrgChartSpec_NodeSize "MEDIUM"

-- | The large org chart node size.
pattern OrgChartSpec_NodeSize_Large :: OrgChartSpec_NodeSize
pattern OrgChartSpec_NodeSize_Large = OrgChartSpec_NodeSize "LARGE"

{-# COMPLETE
  OrgChartSpec_NodeSize_ORGCHARTLABELSIZEUNSPECIFIED,
  OrgChartSpec_NodeSize_Small,
  OrgChartSpec_NodeSize_Medium,
  OrgChartSpec_NodeSize_Large,
  OrgChartSpec_NodeSize
  #-}

-- | How the data should be pasted.
newtype PasteDataRequest_Type = PasteDataRequest_Type {fromPasteDataRequest_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Paste values, formulas, formats, and merges.
pattern PasteDataRequest_Type_PASTENORMAL :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTENORMAL = PasteDataRequest_Type "PASTE_NORMAL"

-- | Paste the values ONLY without formats, formulas, or merges.
pattern PasteDataRequest_Type_PASTEVALUES :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTEVALUES = PasteDataRequest_Type "PASTE_VALUES"

-- | Paste the format and data validation only.
pattern PasteDataRequest_Type_PASTEFORMAT :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTEFORMAT = PasteDataRequest_Type "PASTE_FORMAT"

-- | Like @PASTE_NORMAL@ but without borders.
pattern PasteDataRequest_Type_PASTENOBORDERS :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTENOBORDERS = PasteDataRequest_Type "PASTE_NO_BORDERS"

-- | Paste the formulas only.
pattern PasteDataRequest_Type_PASTEFORMULA :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTEFORMULA = PasteDataRequest_Type "PASTE_FORMULA"

-- | Paste the data validation only.
pattern PasteDataRequest_Type_PASTEDATAVALIDATION :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTEDATAVALIDATION = PasteDataRequest_Type "PASTE_DATA_VALIDATION"

-- | Paste the conditional formatting rules only.
pattern PasteDataRequest_Type_PASTECONDITIONALFORMATTING :: PasteDataRequest_Type
pattern PasteDataRequest_Type_PASTECONDITIONALFORMATTING = PasteDataRequest_Type "PASTE_CONDITIONAL_FORMATTING"

{-# COMPLETE
  PasteDataRequest_Type_PASTENORMAL,
  PasteDataRequest_Type_PASTEVALUES,
  PasteDataRequest_Type_PASTEFORMAT,
  PasteDataRequest_Type_PASTENOBORDERS,
  PasteDataRequest_Type_PASTEFORMULA,
  PasteDataRequest_Type_PASTEDATAVALIDATION,
  PasteDataRequest_Type_PASTECONDITIONALFORMATTING,
  PasteDataRequest_Type
  #-}

-- | Where the legend of the pie chart should be drawn.
newtype PieChartSpec_LegendPosition = PieChartSpec_LegendPosition {fromPieChartSpec_LegendPosition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern PieChartSpec_LegendPosition_PIECHARTLEGENDPOSITIONUNSPECIFIED :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_PIECHARTLEGENDPOSITIONUNSPECIFIED = PieChartSpec_LegendPosition "PIE_CHART_LEGEND_POSITION_UNSPECIFIED"

-- | The legend is rendered on the bottom of the chart.
pattern PieChartSpec_LegendPosition_BOTTOMLEGEND :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_BOTTOMLEGEND = PieChartSpec_LegendPosition "BOTTOM_LEGEND"

-- | The legend is rendered on the left of the chart.
pattern PieChartSpec_LegendPosition_LEFTLEGEND :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_LEFTLEGEND = PieChartSpec_LegendPosition "LEFT_LEGEND"

-- | The legend is rendered on the right of the chart.
pattern PieChartSpec_LegendPosition_RIGHTLEGEND :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_RIGHTLEGEND = PieChartSpec_LegendPosition "RIGHT_LEGEND"

-- | The legend is rendered on the top of the chart.
pattern PieChartSpec_LegendPosition_TOPLEGEND :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_TOPLEGEND = PieChartSpec_LegendPosition "TOP_LEGEND"

-- | No legend is rendered.
pattern PieChartSpec_LegendPosition_NOLEGEND :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_NOLEGEND = PieChartSpec_LegendPosition "NO_LEGEND"

-- | Each pie slice has a label attached to it.
pattern PieChartSpec_LegendPosition_LABELEDLEGEND :: PieChartSpec_LegendPosition
pattern PieChartSpec_LegendPosition_LABELEDLEGEND = PieChartSpec_LegendPosition "LABELED_LEGEND"

{-# COMPLETE
  PieChartSpec_LegendPosition_PIECHARTLEGENDPOSITIONUNSPECIFIED,
  PieChartSpec_LegendPosition_BOTTOMLEGEND,
  PieChartSpec_LegendPosition_LEFTLEGEND,
  PieChartSpec_LegendPosition_RIGHTLEGEND,
  PieChartSpec_LegendPosition_TOPLEGEND,
  PieChartSpec_LegendPosition_NOLEGEND,
  PieChartSpec_LegendPosition_LABELEDLEGEND,
  PieChartSpec_LegendPosition
  #-}

-- | The order the values in this group should be sorted.
newtype PivotGroup_SortOrder = PivotGroup_SortOrder {fromPivotGroup_SortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use this.
pattern PivotGroup_SortOrder_SORTORDERUNSPECIFIED :: PivotGroup_SortOrder
pattern PivotGroup_SortOrder_SORTORDERUNSPECIFIED = PivotGroup_SortOrder "SORT_ORDER_UNSPECIFIED"

-- | Sort ascending.
pattern PivotGroup_SortOrder_Ascending :: PivotGroup_SortOrder
pattern PivotGroup_SortOrder_Ascending = PivotGroup_SortOrder "ASCENDING"

-- | Sort descending.
pattern PivotGroup_SortOrder_Descending :: PivotGroup_SortOrder
pattern PivotGroup_SortOrder_Descending = PivotGroup_SortOrder "DESCENDING"

{-# COMPLETE
  PivotGroup_SortOrder_SORTORDERUNSPECIFIED,
  PivotGroup_SortOrder_Ascending,
  PivotGroup_SortOrder_Descending,
  PivotGroup_SortOrder
  #-}

-- | Whether values should be listed horizontally (as columns) or vertically (as rows).
newtype PivotTable_ValueLayout = PivotTable_ValueLayout {fromPivotTable_ValueLayout :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values are laid out horizontally (as columns).
pattern PivotTable_ValueLayout_Horizontal :: PivotTable_ValueLayout
pattern PivotTable_ValueLayout_Horizontal = PivotTable_ValueLayout "HORIZONTAL"

-- | Values are laid out vertically (as rows).
pattern PivotTable_ValueLayout_Vertical :: PivotTable_ValueLayout
pattern PivotTable_ValueLayout_Vertical = PivotTable_ValueLayout "VERTICAL"

{-# COMPLETE
  PivotTable_ValueLayout_Horizontal,
  PivotTable_ValueLayout_Vertical,
  PivotTable_ValueLayout
  #-}

-- | If specified, indicates that pivot values should be displayed as the result of a calculation with another pivot value. For example, if calculated/display/type is specified as PERCENT/OF/GRAND_TOTAL, all the pivot values are displayed as the percentage of the grand total. In the Sheets editor, this is referred to as \"Show As\" in the value section of a pivot table.
newtype PivotValue_CalculatedDisplayType = PivotValue_CalculatedDisplayType {fromPivotValue_CalculatedDisplayType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern PivotValue_CalculatedDisplayType_PIVOTVALUECALCULATEDDISPLAYTYPEUNSPECIFIED :: PivotValue_CalculatedDisplayType
pattern PivotValue_CalculatedDisplayType_PIVOTVALUECALCULATEDDISPLAYTYPEUNSPECIFIED = PivotValue_CalculatedDisplayType "PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED"

-- | Shows the pivot values as percentage of the row total values.
pattern PivotValue_CalculatedDisplayType_PERCENTOFROWTOTAL :: PivotValue_CalculatedDisplayType
pattern PivotValue_CalculatedDisplayType_PERCENTOFROWTOTAL = PivotValue_CalculatedDisplayType "PERCENT_OF_ROW_TOTAL"

-- | Shows the pivot values as percentage of the column total values.
pattern PivotValue_CalculatedDisplayType_PERCENTOFCOLUMNTOTAL :: PivotValue_CalculatedDisplayType
pattern PivotValue_CalculatedDisplayType_PERCENTOFCOLUMNTOTAL = PivotValue_CalculatedDisplayType "PERCENT_OF_COLUMN_TOTAL"

-- | Shows the pivot values as percentage of the grand total values.
pattern PivotValue_CalculatedDisplayType_PERCENTOFGRANDTOTAL :: PivotValue_CalculatedDisplayType
pattern PivotValue_CalculatedDisplayType_PERCENTOFGRANDTOTAL = PivotValue_CalculatedDisplayType "PERCENT_OF_GRAND_TOTAL"

{-# COMPLETE
  PivotValue_CalculatedDisplayType_PIVOTVALUECALCULATEDDISPLAYTYPEUNSPECIFIED,
  PivotValue_CalculatedDisplayType_PERCENTOFROWTOTAL,
  PivotValue_CalculatedDisplayType_PERCENTOFCOLUMNTOTAL,
  PivotValue_CalculatedDisplayType_PERCENTOFGRANDTOTAL,
  PivotValue_CalculatedDisplayType
  #-}

-- | A function to summarize the value. If formula is set, the only supported values are SUM and CUSTOM. If sourceColumnOffset is set, then @CUSTOM@ is not supported.
newtype PivotValue_SummarizeFunction = PivotValue_SummarizeFunction {fromPivotValue_SummarizeFunction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default, do not use.
pattern PivotValue_SummarizeFunction_PIVOTSTANDARDVALUEFUNCTIONUNSPECIFIED :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_PIVOTSTANDARDVALUEFUNCTIONUNSPECIFIED = PivotValue_SummarizeFunction "PIVOT_STANDARD_VALUE_FUNCTION_UNSPECIFIED"

-- | Corresponds to the @SUM@ function.
pattern PivotValue_SummarizeFunction_Sum :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Sum = PivotValue_SummarizeFunction "SUM"

-- | Corresponds to the @COUNTA@ function.
pattern PivotValue_SummarizeFunction_Counta :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Counta = PivotValue_SummarizeFunction "COUNTA"

-- | Corresponds to the @COUNT@ function.
pattern PivotValue_SummarizeFunction_Count :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Count = PivotValue_SummarizeFunction "COUNT"

-- | Corresponds to the @COUNTUNIQUE@ function.
pattern PivotValue_SummarizeFunction_Countunique :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Countunique = PivotValue_SummarizeFunction "COUNTUNIQUE"

-- | Corresponds to the @AVERAGE@ function.
pattern PivotValue_SummarizeFunction_Average :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Average = PivotValue_SummarizeFunction "AVERAGE"

-- | Corresponds to the @MAX@ function.
pattern PivotValue_SummarizeFunction_Max :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Max = PivotValue_SummarizeFunction "MAX"

-- | Corresponds to the @MIN@ function.
pattern PivotValue_SummarizeFunction_Min :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Min = PivotValue_SummarizeFunction "MIN"

-- | Corresponds to the @MEDIAN@ function.
pattern PivotValue_SummarizeFunction_Median :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Median = PivotValue_SummarizeFunction "MEDIAN"

-- | Corresponds to the @PRODUCT@ function.
pattern PivotValue_SummarizeFunction_Product :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Product = PivotValue_SummarizeFunction "PRODUCT"

-- | Corresponds to the @STDEV@ function.
pattern PivotValue_SummarizeFunction_Stdev :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Stdev = PivotValue_SummarizeFunction "STDEV"

-- | Corresponds to the @STDEVP@ function.
pattern PivotValue_SummarizeFunction_Stdevp :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Stdevp = PivotValue_SummarizeFunction "STDEVP"

-- | Corresponds to the @VAR@ function.
pattern PivotValue_SummarizeFunction_Var :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Var = PivotValue_SummarizeFunction "VAR"

-- | Corresponds to the @VARP@ function.
pattern PivotValue_SummarizeFunction_Varp :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Varp = PivotValue_SummarizeFunction "VARP"

-- | Indicates the formula should be used as-is. Only valid if PivotValue.formula was set.
pattern PivotValue_SummarizeFunction_Custom :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_Custom = PivotValue_SummarizeFunction "CUSTOM"

-- | Indicates that the value is already summarized, and the summarization function is not explicitly specified. Used for Looker data source pivot tables where the value is already summarized.
pattern PivotValue_SummarizeFunction_None :: PivotValue_SummarizeFunction
pattern PivotValue_SummarizeFunction_None = PivotValue_SummarizeFunction "NONE"

{-# COMPLETE
  PivotValue_SummarizeFunction_PIVOTSTANDARDVALUEFUNCTIONUNSPECIFIED,
  PivotValue_SummarizeFunction_Sum,
  PivotValue_SummarizeFunction_Counta,
  PivotValue_SummarizeFunction_Count,
  PivotValue_SummarizeFunction_Countunique,
  PivotValue_SummarizeFunction_Average,
  PivotValue_SummarizeFunction_Max,
  PivotValue_SummarizeFunction_Min,
  PivotValue_SummarizeFunction_Median,
  PivotValue_SummarizeFunction_Product,
  PivotValue_SummarizeFunction_Stdev,
  PivotValue_SummarizeFunction_Stdevp,
  PivotValue_SummarizeFunction_Var,
  PivotValue_SummarizeFunction_Varp,
  PivotValue_SummarizeFunction_Custom,
  PivotValue_SummarizeFunction_None,
  PivotValue_SummarizeFunction
  #-}

-- | The point shape. If empty or unspecified, a default shape is used.
newtype PointStyle_Shape = PointStyle_Shape {fromPointStyle_Shape :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value.
pattern PointStyle_Shape_POINTSHAPEUNSPECIFIED :: PointStyle_Shape
pattern PointStyle_Shape_POINTSHAPEUNSPECIFIED = PointStyle_Shape "POINT_SHAPE_UNSPECIFIED"

-- | A circle shape.
pattern PointStyle_Shape_Circle :: PointStyle_Shape
pattern PointStyle_Shape_Circle = PointStyle_Shape "CIRCLE"

-- | A diamond shape.
pattern PointStyle_Shape_Diamond :: PointStyle_Shape
pattern PointStyle_Shape_Diamond = PointStyle_Shape "DIAMOND"

-- | A hexagon shape.
pattern PointStyle_Shape_Hexagon :: PointStyle_Shape
pattern PointStyle_Shape_Hexagon = PointStyle_Shape "HEXAGON"

-- | A pentagon shape.
pattern PointStyle_Shape_Pentagon :: PointStyle_Shape
pattern PointStyle_Shape_Pentagon = PointStyle_Shape "PENTAGON"

-- | A square shape.
pattern PointStyle_Shape_Square :: PointStyle_Shape
pattern PointStyle_Shape_Square = PointStyle_Shape "SQUARE"

-- | A star shape.
pattern PointStyle_Shape_Star :: PointStyle_Shape
pattern PointStyle_Shape_Star = PointStyle_Shape "STAR"

-- | A triangle shape.
pattern PointStyle_Shape_Triangle :: PointStyle_Shape
pattern PointStyle_Shape_Triangle = PointStyle_Shape "TRIANGLE"

-- | An x-mark shape.
pattern PointStyle_Shape_XMARK :: PointStyle_Shape
pattern PointStyle_Shape_XMARK = PointStyle_Shape "X_MARK"

{-# COMPLETE
  PointStyle_Shape_POINTSHAPEUNSPECIFIED,
  PointStyle_Shape_Circle,
  PointStyle_Shape_Diamond,
  PointStyle_Shape_Hexagon,
  PointStyle_Shape_Pentagon,
  PointStyle_Shape_Square,
  PointStyle_Shape_Star,
  PointStyle_Shape_Triangle,
  PointStyle_Shape_XMARK,
  PointStyle_Shape
  #-}

-- | The error code.
newtype RefreshCancellationStatus_ErrorCode = RefreshCancellationStatus_ErrorCode {fromRefreshCancellationStatus_ErrorCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern RefreshCancellationStatus_ErrorCode_REFRESHCANCELLATIONERRORCODEUNSPECIFIED :: RefreshCancellationStatus_ErrorCode
pattern RefreshCancellationStatus_ErrorCode_REFRESHCANCELLATIONERRORCODEUNSPECIFIED = RefreshCancellationStatus_ErrorCode "REFRESH_CANCELLATION_ERROR_CODE_UNSPECIFIED"

-- | Execution to be cancelled not found in the query engine or in Sheets.
pattern RefreshCancellationStatus_ErrorCode_EXECUTIONNOTFOUND :: RefreshCancellationStatus_ErrorCode
pattern RefreshCancellationStatus_ErrorCode_EXECUTIONNOTFOUND = RefreshCancellationStatus_ErrorCode "EXECUTION_NOT_FOUND"

-- | The user does not have permission to cancel the query.
pattern RefreshCancellationStatus_ErrorCode_CANCELPERMISSIONDENIED :: RefreshCancellationStatus_ErrorCode
pattern RefreshCancellationStatus_ErrorCode_CANCELPERMISSIONDENIED = RefreshCancellationStatus_ErrorCode "CANCEL_PERMISSION_DENIED"

-- | The query execution has already completed and thus could not be cancelled.
pattern RefreshCancellationStatus_ErrorCode_QUERYEXECUTIONCOMPLETED :: RefreshCancellationStatus_ErrorCode
pattern RefreshCancellationStatus_ErrorCode_QUERYEXECUTIONCOMPLETED = RefreshCancellationStatus_ErrorCode "QUERY_EXECUTION_COMPLETED"

-- | There is already another cancellation in process.
pattern RefreshCancellationStatus_ErrorCode_CONCURRENTCANCELLATION :: RefreshCancellationStatus_ErrorCode
pattern RefreshCancellationStatus_ErrorCode_CONCURRENTCANCELLATION = RefreshCancellationStatus_ErrorCode "CONCURRENT_CANCELLATION"

-- | All other errors.
pattern RefreshCancellationStatus_ErrorCode_CANCELOTHERERROR :: RefreshCancellationStatus_ErrorCode
pattern RefreshCancellationStatus_ErrorCode_CANCELOTHERERROR = RefreshCancellationStatus_ErrorCode "CANCEL_OTHER_ERROR"

{-# COMPLETE
  RefreshCancellationStatus_ErrorCode_REFRESHCANCELLATIONERRORCODEUNSPECIFIED,
  RefreshCancellationStatus_ErrorCode_EXECUTIONNOTFOUND,
  RefreshCancellationStatus_ErrorCode_CANCELPERMISSIONDENIED,
  RefreshCancellationStatus_ErrorCode_QUERYEXECUTIONCOMPLETED,
  RefreshCancellationStatus_ErrorCode_CONCURRENTCANCELLATION,
  RefreshCancellationStatus_ErrorCode_CANCELOTHERERROR,
  RefreshCancellationStatus_ErrorCode
  #-}

-- | The state of a call to cancel a refresh in Sheets.
newtype RefreshCancellationStatus_State = RefreshCancellationStatus_State {fromRefreshCancellationStatus_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern RefreshCancellationStatus_State_REFRESHCANCELLATIONSTATEUNSPECIFIED :: RefreshCancellationStatus_State
pattern RefreshCancellationStatus_State_REFRESHCANCELLATIONSTATEUNSPECIFIED = RefreshCancellationStatus_State "REFRESH_CANCELLATION_STATE_UNSPECIFIED"

-- | The API call to Sheets to cancel a refresh has succeeded. This does not mean that the cancel happened successfully, but that the call has been made successfully.
pattern RefreshCancellationStatus_State_CANCELSUCCEEDED :: RefreshCancellationStatus_State
pattern RefreshCancellationStatus_State_CANCELSUCCEEDED = RefreshCancellationStatus_State "CANCEL_SUCCEEDED"

-- | The API call to Sheets to cancel a refresh has failed.
pattern RefreshCancellationStatus_State_CANCELFAILED :: RefreshCancellationStatus_State
pattern RefreshCancellationStatus_State_CANCELFAILED = RefreshCancellationStatus_State "CANCEL_FAILED"

{-# COMPLETE
  RefreshCancellationStatus_State_REFRESHCANCELLATIONSTATEUNSPECIFIED,
  RefreshCancellationStatus_State_CANCELSUCCEEDED,
  RefreshCancellationStatus_State_CANCELFAILED,
  RefreshCancellationStatus_State
  #-}

-- | The aggregation type for key and baseline chart data in scorecard chart. This field is not supported for data source charts. Use the ChartData.aggregateType field of the key/value/data or baseline/value/data instead for data source charts. This field is optional.
newtype ScorecardChartSpec_AggregateType = ScorecardChartSpec_AggregateType {fromScorecardChartSpec_AggregateType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern ScorecardChartSpec_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED = ScorecardChartSpec_AggregateType "CHART_AGGREGATE_TYPE_UNSPECIFIED"

-- | Average aggregate function.
pattern ScorecardChartSpec_AggregateType_Average :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_Average = ScorecardChartSpec_AggregateType "AVERAGE"

-- | Count aggregate function.
pattern ScorecardChartSpec_AggregateType_Count :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_Count = ScorecardChartSpec_AggregateType "COUNT"

-- | Maximum aggregate function.
pattern ScorecardChartSpec_AggregateType_Max :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_Max = ScorecardChartSpec_AggregateType "MAX"

-- | Median aggregate function.
pattern ScorecardChartSpec_AggregateType_Median :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_Median = ScorecardChartSpec_AggregateType "MEDIAN"

-- | Minimum aggregate function.
pattern ScorecardChartSpec_AggregateType_Min :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_Min = ScorecardChartSpec_AggregateType "MIN"

-- | Sum aggregate function.
pattern ScorecardChartSpec_AggregateType_Sum :: ScorecardChartSpec_AggregateType
pattern ScorecardChartSpec_AggregateType_Sum = ScorecardChartSpec_AggregateType "SUM"

{-# COMPLETE
  ScorecardChartSpec_AggregateType_CHARTAGGREGATETYPEUNSPECIFIED,
  ScorecardChartSpec_AggregateType_Average,
  ScorecardChartSpec_AggregateType_Count,
  ScorecardChartSpec_AggregateType_Max,
  ScorecardChartSpec_AggregateType_Median,
  ScorecardChartSpec_AggregateType_Min,
  ScorecardChartSpec_AggregateType_Sum,
  ScorecardChartSpec_AggregateType
  #-}

-- | The number format source used in the scorecard chart. This field is optional.
newtype ScorecardChartSpec_NumberFormatSource = ScorecardChartSpec_NumberFormatSource {fromScorecardChartSpec_NumberFormatSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern ScorecardChartSpec_NumberFormatSource_CHARTNUMBERFORMATSOURCEUNDEFINED :: ScorecardChartSpec_NumberFormatSource
pattern ScorecardChartSpec_NumberFormatSource_CHARTNUMBERFORMATSOURCEUNDEFINED = ScorecardChartSpec_NumberFormatSource "CHART_NUMBER_FORMAT_SOURCE_UNDEFINED"

-- | Inherit number formatting from data.
pattern ScorecardChartSpec_NumberFormatSource_FROMDATA :: ScorecardChartSpec_NumberFormatSource
pattern ScorecardChartSpec_NumberFormatSource_FROMDATA = ScorecardChartSpec_NumberFormatSource "FROM_DATA"

-- | Apply custom formatting as specified by ChartCustomNumberFormatOptions.
pattern ScorecardChartSpec_NumberFormatSource_Custom :: ScorecardChartSpec_NumberFormatSource
pattern ScorecardChartSpec_NumberFormatSource_Custom = ScorecardChartSpec_NumberFormatSource "CUSTOM"

{-# COMPLETE
  ScorecardChartSpec_NumberFormatSource_CHARTNUMBERFORMATSOURCEUNDEFINED,
  ScorecardChartSpec_NumberFormatSource_FROMDATA,
  ScorecardChartSpec_NumberFormatSource_Custom,
  ScorecardChartSpec_NumberFormatSource
  #-}

-- | The type of sheet. Defaults to GRID. This field cannot be changed once set.
newtype SheetProperties_SheetType = SheetProperties_SheetType {fromSheetProperties_SheetType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern SheetProperties_SheetType_SHEETTYPEUNSPECIFIED :: SheetProperties_SheetType
pattern SheetProperties_SheetType_SHEETTYPEUNSPECIFIED = SheetProperties_SheetType "SHEET_TYPE_UNSPECIFIED"

-- | The sheet is a grid.
pattern SheetProperties_SheetType_Grid :: SheetProperties_SheetType
pattern SheetProperties_SheetType_Grid = SheetProperties_SheetType "GRID"

-- | The sheet has no grid and instead has an object like a chart or image.
pattern SheetProperties_SheetType_Object :: SheetProperties_SheetType
pattern SheetProperties_SheetType_Object = SheetProperties_SheetType "OBJECT"

-- | The sheet connects with an external DataSource and shows the preview of data.
pattern SheetProperties_SheetType_DATASOURCE :: SheetProperties_SheetType
pattern SheetProperties_SheetType_DATASOURCE = SheetProperties_SheetType "DATA_SOURCE"

{-# COMPLETE
  SheetProperties_SheetType_SHEETTYPEUNSPECIFIED,
  SheetProperties_SheetType_Grid,
  SheetProperties_SheetType_Object,
  SheetProperties_SheetType_DATASOURCE,
  SheetProperties_SheetType
  #-}

-- | The horizontal alignment of title in the slicer. If unspecified, defaults to @LEFT@
newtype SlicerSpec_HorizontalAlignment = SlicerSpec_HorizontalAlignment {fromSlicerSpec_HorizontalAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The horizontal alignment is not specified. Do not use this.
pattern SlicerSpec_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED :: SlicerSpec_HorizontalAlignment
pattern SlicerSpec_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED = SlicerSpec_HorizontalAlignment "HORIZONTAL_ALIGN_UNSPECIFIED"

-- | The text is explicitly aligned to the left of the cell.
pattern SlicerSpec_HorizontalAlignment_Left' :: SlicerSpec_HorizontalAlignment
pattern SlicerSpec_HorizontalAlignment_Left' = SlicerSpec_HorizontalAlignment "LEFT"

-- | The text is explicitly aligned to the center of the cell.
pattern SlicerSpec_HorizontalAlignment_Center :: SlicerSpec_HorizontalAlignment
pattern SlicerSpec_HorizontalAlignment_Center = SlicerSpec_HorizontalAlignment "CENTER"

-- | The text is explicitly aligned to the right of the cell.
pattern SlicerSpec_HorizontalAlignment_Right' :: SlicerSpec_HorizontalAlignment
pattern SlicerSpec_HorizontalAlignment_Right' = SlicerSpec_HorizontalAlignment "RIGHT"

{-# COMPLETE
  SlicerSpec_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED,
  SlicerSpec_HorizontalAlignment_Left',
  SlicerSpec_HorizontalAlignment_Center,
  SlicerSpec_HorizontalAlignment_Right',
  SlicerSpec_HorizontalAlignment
  #-}

-- | The order data should be sorted.
newtype SortSpec_SortOrder = SortSpec_SortOrder {fromSortSpec_SortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use this.
pattern SortSpec_SortOrder_SORTORDERUNSPECIFIED :: SortSpec_SortOrder
pattern SortSpec_SortOrder_SORTORDERUNSPECIFIED = SortSpec_SortOrder "SORT_ORDER_UNSPECIFIED"

-- | Sort ascending.
pattern SortSpec_SortOrder_Ascending :: SortSpec_SortOrder
pattern SortSpec_SortOrder_Ascending = SortSpec_SortOrder "ASCENDING"

-- | Sort descending.
pattern SortSpec_SortOrder_Descending :: SortSpec_SortOrder
pattern SortSpec_SortOrder_Descending = SortSpec_SortOrder "DESCENDING"

{-# COMPLETE
  SortSpec_SortOrder_SORTORDERUNSPECIFIED,
  SortSpec_SortOrder_Ascending,
  SortSpec_SortOrder_Descending,
  SortSpec_SortOrder
  #-}

-- | The dimension that data should be filled into.
newtype SourceAndDestination_Dimension = SourceAndDestination_Dimension {fromSourceAndDestination_Dimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern SourceAndDestination_Dimension_DIMENSIONUNSPECIFIED :: SourceAndDestination_Dimension
pattern SourceAndDestination_Dimension_DIMENSIONUNSPECIFIED = SourceAndDestination_Dimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern SourceAndDestination_Dimension_Rows :: SourceAndDestination_Dimension
pattern SourceAndDestination_Dimension_Rows = SourceAndDestination_Dimension "ROWS"

-- | Operates on the columns of a sheet.
pattern SourceAndDestination_Dimension_Columns :: SourceAndDestination_Dimension
pattern SourceAndDestination_Dimension_Columns = SourceAndDestination_Dimension "COLUMNS"

{-# COMPLETE
  SourceAndDestination_Dimension_DIMENSIONUNSPECIFIED,
  SourceAndDestination_Dimension_Rows,
  SourceAndDestination_Dimension_Columns,
  SourceAndDestination_Dimension
  #-}

-- | The amount of time to wait before volatile functions are recalculated.
newtype SpreadsheetProperties_AutoRecalc = SpreadsheetProperties_AutoRecalc {fromSpreadsheetProperties_AutoRecalc :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value must not be used.
pattern SpreadsheetProperties_AutoRecalc_RECALCULATIONINTERVALUNSPECIFIED :: SpreadsheetProperties_AutoRecalc
pattern SpreadsheetProperties_AutoRecalc_RECALCULATIONINTERVALUNSPECIFIED = SpreadsheetProperties_AutoRecalc "RECALCULATION_INTERVAL_UNSPECIFIED"

-- | Volatile functions are updated on every change.
pattern SpreadsheetProperties_AutoRecalc_ONCHANGE :: SpreadsheetProperties_AutoRecalc
pattern SpreadsheetProperties_AutoRecalc_ONCHANGE = SpreadsheetProperties_AutoRecalc "ON_CHANGE"

-- | Volatile functions are updated on every change and every minute.
pattern SpreadsheetProperties_AutoRecalc_Minute :: SpreadsheetProperties_AutoRecalc
pattern SpreadsheetProperties_AutoRecalc_Minute = SpreadsheetProperties_AutoRecalc "MINUTE"

-- | Volatile functions are updated on every change and hourly.
pattern SpreadsheetProperties_AutoRecalc_Hour :: SpreadsheetProperties_AutoRecalc
pattern SpreadsheetProperties_AutoRecalc_Hour = SpreadsheetProperties_AutoRecalc "HOUR"

{-# COMPLETE
  SpreadsheetProperties_AutoRecalc_RECALCULATIONINTERVALUNSPECIFIED,
  SpreadsheetProperties_AutoRecalc_ONCHANGE,
  SpreadsheetProperties_AutoRecalc_Minute,
  SpreadsheetProperties_AutoRecalc_Hour,
  SpreadsheetProperties_AutoRecalc
  #-}

-- | Horizontal alignment setting for the piece of text.
newtype TextPosition_HorizontalAlignment = TextPosition_HorizontalAlignment {fromTextPosition_HorizontalAlignment :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The horizontal alignment is not specified. Do not use this.
pattern TextPosition_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED :: TextPosition_HorizontalAlignment
pattern TextPosition_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED = TextPosition_HorizontalAlignment "HORIZONTAL_ALIGN_UNSPECIFIED"

-- | The text is explicitly aligned to the left of the cell.
pattern TextPosition_HorizontalAlignment_Left' :: TextPosition_HorizontalAlignment
pattern TextPosition_HorizontalAlignment_Left' = TextPosition_HorizontalAlignment "LEFT"

-- | The text is explicitly aligned to the center of the cell.
pattern TextPosition_HorizontalAlignment_Center :: TextPosition_HorizontalAlignment
pattern TextPosition_HorizontalAlignment_Center = TextPosition_HorizontalAlignment "CENTER"

-- | The text is explicitly aligned to the right of the cell.
pattern TextPosition_HorizontalAlignment_Right' :: TextPosition_HorizontalAlignment
pattern TextPosition_HorizontalAlignment_Right' = TextPosition_HorizontalAlignment "RIGHT"

{-# COMPLETE
  TextPosition_HorizontalAlignment_HORIZONTALALIGNUNSPECIFIED,
  TextPosition_HorizontalAlignment_Left',
  TextPosition_HorizontalAlignment_Center,
  TextPosition_HorizontalAlignment_Right',
  TextPosition_HorizontalAlignment
  #-}

-- | The delimiter type to use.
newtype TextToColumnsRequest_DelimiterType = TextToColumnsRequest_DelimiterType {fromTextToColumnsRequest_DelimiterType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value must not be used.
pattern TextToColumnsRequest_DelimiterType_DELIMITERTYPEUNSPECIFIED :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_DELIMITERTYPEUNSPECIFIED = TextToColumnsRequest_DelimiterType "DELIMITER_TYPE_UNSPECIFIED"

-- | \",\"
pattern TextToColumnsRequest_DelimiterType_Comma :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_Comma = TextToColumnsRequest_DelimiterType "COMMA"

-- | \";\"
pattern TextToColumnsRequest_DelimiterType_Semicolon :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_Semicolon = TextToColumnsRequest_DelimiterType "SEMICOLON"

-- | \".\"
pattern TextToColumnsRequest_DelimiterType_Period :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_Period = TextToColumnsRequest_DelimiterType "PERIOD"

-- | \" \"
pattern TextToColumnsRequest_DelimiterType_Space :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_Space = TextToColumnsRequest_DelimiterType "SPACE"

-- | A custom value as defined in delimiter.
pattern TextToColumnsRequest_DelimiterType_Custom :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_Custom = TextToColumnsRequest_DelimiterType "CUSTOM"

-- | Automatically detect columns.
pattern TextToColumnsRequest_DelimiterType_Autodetect :: TextToColumnsRequest_DelimiterType
pattern TextToColumnsRequest_DelimiterType_Autodetect = TextToColumnsRequest_DelimiterType "AUTODETECT"

{-# COMPLETE
  TextToColumnsRequest_DelimiterType_DELIMITERTYPEUNSPECIFIED,
  TextToColumnsRequest_DelimiterType_Comma,
  TextToColumnsRequest_DelimiterType_Semicolon,
  TextToColumnsRequest_DelimiterType_Period,
  TextToColumnsRequest_DelimiterType_Space,
  TextToColumnsRequest_DelimiterType_Custom,
  TextToColumnsRequest_DelimiterType_Autodetect,
  TextToColumnsRequest_DelimiterType
  #-}

-- | The type of the spreadsheet theme color.
newtype ThemeColorPair_ColorType = ThemeColorPair_ColorType {fromThemeColorPair_ColorType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified theme color
pattern ThemeColorPair_ColorType_THEMECOLORTYPEUNSPECIFIED :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_THEMECOLORTYPEUNSPECIFIED = ThemeColorPair_ColorType "THEME_COLOR_TYPE_UNSPECIFIED"

-- | Represents the primary text color
pattern ThemeColorPair_ColorType_Text :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_Text = ThemeColorPair_ColorType "TEXT"

-- | Represents the primary background color
pattern ThemeColorPair_ColorType_Background :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_Background = ThemeColorPair_ColorType "BACKGROUND"

-- | Represents the first accent color
pattern ThemeColorPair_ColorType_ACCENT1 :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_ACCENT1 = ThemeColorPair_ColorType "ACCENT1"

-- | Represents the second accent color
pattern ThemeColorPair_ColorType_ACCENT2 :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_ACCENT2 = ThemeColorPair_ColorType "ACCENT2"

-- | Represents the third accent color
pattern ThemeColorPair_ColorType_ACCENT3 :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_ACCENT3 = ThemeColorPair_ColorType "ACCENT3"

-- | Represents the fourth accent color
pattern ThemeColorPair_ColorType_ACCENT4 :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_ACCENT4 = ThemeColorPair_ColorType "ACCENT4"

-- | Represents the fifth accent color
pattern ThemeColorPair_ColorType_ACCENT5 :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_ACCENT5 = ThemeColorPair_ColorType "ACCENT5"

-- | Represents the sixth accent color
pattern ThemeColorPair_ColorType_ACCENT6 :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_ACCENT6 = ThemeColorPair_ColorType "ACCENT6"

-- | Represents the color to use for hyperlinks
pattern ThemeColorPair_ColorType_Link :: ThemeColorPair_ColorType
pattern ThemeColorPair_ColorType_Link = ThemeColorPair_ColorType "LINK"

{-# COMPLETE
  ThemeColorPair_ColorType_THEMECOLORTYPEUNSPECIFIED,
  ThemeColorPair_ColorType_Text,
  ThemeColorPair_ColorType_Background,
  ThemeColorPair_ColorType_ACCENT1,
  ThemeColorPair_ColorType_ACCENT2,
  ThemeColorPair_ColorType_ACCENT3,
  ThemeColorPair_ColorType_ACCENT4,
  ThemeColorPair_ColorType_ACCENT5,
  ThemeColorPair_ColorType_ACCENT6,
  ThemeColorPair_ColorType_Link,
  ThemeColorPair_ColorType
  #-}

-- | The major dimension of the values. For output, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then requesting @range=A1:B2,majorDimension=ROWS@ will return @[[1,2],[3,4]]@, whereas requesting @range=A1:B2,majorDimension=COLUMNS@ will return @[[1,3],[2,4]]@. For input, with @range=A1:B2,majorDimension=ROWS@ then @[[1,2],[3,4]]@ will set @A1=1,B1=2,A2=3,B2=4@. With @range=A1:B2,majorDimension=COLUMNS@ then @[[1,2],[3,4]]@ will set @A1=1,B1=3,A2=2,B2=4@. When writing, if this field is not set, it defaults to ROWS.
newtype ValueRange_MajorDimension = ValueRange_MajorDimension {fromValueRange_MajorDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern ValueRange_MajorDimension_DIMENSIONUNSPECIFIED :: ValueRange_MajorDimension
pattern ValueRange_MajorDimension_DIMENSIONUNSPECIFIED = ValueRange_MajorDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern ValueRange_MajorDimension_Rows :: ValueRange_MajorDimension
pattern ValueRange_MajorDimension_Rows = ValueRange_MajorDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern ValueRange_MajorDimension_Columns :: ValueRange_MajorDimension
pattern ValueRange_MajorDimension_Columns = ValueRange_MajorDimension "COLUMNS"

{-# COMPLETE
  ValueRange_MajorDimension_DIMENSIONUNSPECIFIED,
  ValueRange_MajorDimension_Rows,
  ValueRange_MajorDimension_Columns,
  ValueRange_MajorDimension
  #-}

-- | The stacked type.
newtype WaterfallChartSpec_StackedType = WaterfallChartSpec_StackedType {fromWaterfallChartSpec_StackedType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, do not use.
pattern WaterfallChartSpec_StackedType_WATERFALLSTACKEDTYPEUNSPECIFIED :: WaterfallChartSpec_StackedType
pattern WaterfallChartSpec_StackedType_WATERFALLSTACKEDTYPEUNSPECIFIED = WaterfallChartSpec_StackedType "WATERFALL_STACKED_TYPE_UNSPECIFIED"

-- | Values corresponding to the same domain (horizontal axis) value will be stacked vertically.
pattern WaterfallChartSpec_StackedType_Stacked :: WaterfallChartSpec_StackedType
pattern WaterfallChartSpec_StackedType_Stacked = WaterfallChartSpec_StackedType "STACKED"

-- | Series will spread out along the horizontal axis.
pattern WaterfallChartSpec_StackedType_Sequential :: WaterfallChartSpec_StackedType
pattern WaterfallChartSpec_StackedType_Sequential = WaterfallChartSpec_StackedType "SEQUENTIAL"

{-# COMPLETE
  WaterfallChartSpec_StackedType_WATERFALLSTACKEDTYPEUNSPECIFIED,
  WaterfallChartSpec_StackedType_Stacked,
  WaterfallChartSpec_StackedType_Sequential,
  WaterfallChartSpec_StackedType
  #-}

-- | How the input data should be inserted.
newtype SpreadsheetsValuesAppendInsertDataOption = SpreadsheetsValuesAppendInsertDataOption {fromSpreadsheetsValuesAppendInsertDataOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The new data overwrites existing data in the areas it is written. (Note: adding data to the end of the sheet will still insert new rows or columns so the data can be written.)
pattern SpreadsheetsValuesAppendInsertDataOption_Overwrite :: SpreadsheetsValuesAppendInsertDataOption
pattern SpreadsheetsValuesAppendInsertDataOption_Overwrite = SpreadsheetsValuesAppendInsertDataOption "OVERWRITE"

-- | Rows are inserted for the new data.
pattern SpreadsheetsValuesAppendInsertDataOption_INSERTROWS :: SpreadsheetsValuesAppendInsertDataOption
pattern SpreadsheetsValuesAppendInsertDataOption_INSERTROWS = SpreadsheetsValuesAppendInsertDataOption "INSERT_ROWS"

{-# COMPLETE
  SpreadsheetsValuesAppendInsertDataOption_Overwrite,
  SpreadsheetsValuesAppendInsertDataOption_INSERTROWS,
  SpreadsheetsValuesAppendInsertDataOption
  #-}

-- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
newtype SpreadsheetsValuesAppendResponseDateTimeRenderOption = SpreadsheetsValuesAppendResponseDateTimeRenderOption {fromSpreadsheetsValuesAppendResponseDateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern SpreadsheetsValuesAppendResponseDateTimeRenderOption_SERIALNUMBER :: SpreadsheetsValuesAppendResponseDateTimeRenderOption
pattern SpreadsheetsValuesAppendResponseDateTimeRenderOption_SERIALNUMBER = SpreadsheetsValuesAppendResponseDateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern SpreadsheetsValuesAppendResponseDateTimeRenderOption_FORMATTEDSTRING :: SpreadsheetsValuesAppendResponseDateTimeRenderOption
pattern SpreadsheetsValuesAppendResponseDateTimeRenderOption_FORMATTEDSTRING = SpreadsheetsValuesAppendResponseDateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  SpreadsheetsValuesAppendResponseDateTimeRenderOption_SERIALNUMBER,
  SpreadsheetsValuesAppendResponseDateTimeRenderOption_FORMATTEDSTRING,
  SpreadsheetsValuesAppendResponseDateTimeRenderOption
  #-}

-- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
newtype SpreadsheetsValuesAppendResponseValueRenderOption = SpreadsheetsValuesAppendResponseValueRenderOption {fromSpreadsheetsValuesAppendResponseValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern SpreadsheetsValuesAppendResponseValueRenderOption_FORMATTEDVALUE :: SpreadsheetsValuesAppendResponseValueRenderOption
pattern SpreadsheetsValuesAppendResponseValueRenderOption_FORMATTEDVALUE = SpreadsheetsValuesAppendResponseValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern SpreadsheetsValuesAppendResponseValueRenderOption_UNFORMATTEDVALUE :: SpreadsheetsValuesAppendResponseValueRenderOption
pattern SpreadsheetsValuesAppendResponseValueRenderOption_UNFORMATTEDVALUE = SpreadsheetsValuesAppendResponseValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern SpreadsheetsValuesAppendResponseValueRenderOption_Formula :: SpreadsheetsValuesAppendResponseValueRenderOption
pattern SpreadsheetsValuesAppendResponseValueRenderOption_Formula = SpreadsheetsValuesAppendResponseValueRenderOption "FORMULA"

{-# COMPLETE
  SpreadsheetsValuesAppendResponseValueRenderOption_FORMATTEDVALUE,
  SpreadsheetsValuesAppendResponseValueRenderOption_UNFORMATTEDVALUE,
  SpreadsheetsValuesAppendResponseValueRenderOption_Formula,
  SpreadsheetsValuesAppendResponseValueRenderOption
  #-}

-- | How the input data should be interpreted.
newtype SpreadsheetsValuesAppendValueInputOption = SpreadsheetsValuesAppendValueInputOption {fromSpreadsheetsValuesAppendValueInputOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default input value. This value must not be used.
pattern SpreadsheetsValuesAppendValueInputOption_INPUTVALUEOPTIONUNSPECIFIED :: SpreadsheetsValuesAppendValueInputOption
pattern SpreadsheetsValuesAppendValueInputOption_INPUTVALUEOPTIONUNSPECIFIED = SpreadsheetsValuesAppendValueInputOption "INPUT_VALUE_OPTION_UNSPECIFIED"

-- | The values the user has entered will not be parsed and will be stored as-is.
pattern SpreadsheetsValuesAppendValueInputOption_Raw :: SpreadsheetsValuesAppendValueInputOption
pattern SpreadsheetsValuesAppendValueInputOption_Raw = SpreadsheetsValuesAppendValueInputOption "RAW"

-- | The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.
pattern SpreadsheetsValuesAppendValueInputOption_USERENTERED :: SpreadsheetsValuesAppendValueInputOption
pattern SpreadsheetsValuesAppendValueInputOption_USERENTERED = SpreadsheetsValuesAppendValueInputOption "USER_ENTERED"

{-# COMPLETE
  SpreadsheetsValuesAppendValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
  SpreadsheetsValuesAppendValueInputOption_Raw,
  SpreadsheetsValuesAppendValueInputOption_USERENTERED,
  SpreadsheetsValuesAppendValueInputOption
  #-}

-- | How dates, times, and durations should be represented in the output. This is ignored if value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL/NUMBER.
newtype SpreadsheetsValuesBatchGetDateTimeRenderOption = SpreadsheetsValuesBatchGetDateTimeRenderOption {fromSpreadsheetsValuesBatchGetDateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern SpreadsheetsValuesBatchGetDateTimeRenderOption_SERIALNUMBER :: SpreadsheetsValuesBatchGetDateTimeRenderOption
pattern SpreadsheetsValuesBatchGetDateTimeRenderOption_SERIALNUMBER = SpreadsheetsValuesBatchGetDateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern SpreadsheetsValuesBatchGetDateTimeRenderOption_FORMATTEDSTRING :: SpreadsheetsValuesBatchGetDateTimeRenderOption
pattern SpreadsheetsValuesBatchGetDateTimeRenderOption_FORMATTEDSTRING = SpreadsheetsValuesBatchGetDateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  SpreadsheetsValuesBatchGetDateTimeRenderOption_SERIALNUMBER,
  SpreadsheetsValuesBatchGetDateTimeRenderOption_FORMATTEDSTRING,
  SpreadsheetsValuesBatchGetDateTimeRenderOption
  #-}

-- | The major dimension that results should use. For example, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then requesting @ranges=[\"A1:B2\"],majorDimension=ROWS@ returns @[[1,2],[3,4]]@, whereas requesting @ranges=[\"A1:B2\"],majorDimension=COLUMNS@ returns @[[1,3],[2,4]]@.
newtype SpreadsheetsValuesBatchGetMajorDimension = SpreadsheetsValuesBatchGetMajorDimension {fromSpreadsheetsValuesBatchGetMajorDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern SpreadsheetsValuesBatchGetMajorDimension_DIMENSIONUNSPECIFIED :: SpreadsheetsValuesBatchGetMajorDimension
pattern SpreadsheetsValuesBatchGetMajorDimension_DIMENSIONUNSPECIFIED = SpreadsheetsValuesBatchGetMajorDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern SpreadsheetsValuesBatchGetMajorDimension_Rows :: SpreadsheetsValuesBatchGetMajorDimension
pattern SpreadsheetsValuesBatchGetMajorDimension_Rows = SpreadsheetsValuesBatchGetMajorDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern SpreadsheetsValuesBatchGetMajorDimension_Columns :: SpreadsheetsValuesBatchGetMajorDimension
pattern SpreadsheetsValuesBatchGetMajorDimension_Columns = SpreadsheetsValuesBatchGetMajorDimension "COLUMNS"

{-# COMPLETE
  SpreadsheetsValuesBatchGetMajorDimension_DIMENSIONUNSPECIFIED,
  SpreadsheetsValuesBatchGetMajorDimension_Rows,
  SpreadsheetsValuesBatchGetMajorDimension_Columns,
  SpreadsheetsValuesBatchGetMajorDimension
  #-}

-- | How values should be represented in the output. The default render option is ValueRenderOption.FORMATTED_VALUE.
newtype SpreadsheetsValuesBatchGetValueRenderOption = SpreadsheetsValuesBatchGetValueRenderOption {fromSpreadsheetsValuesBatchGetValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern SpreadsheetsValuesBatchGetValueRenderOption_FORMATTEDVALUE :: SpreadsheetsValuesBatchGetValueRenderOption
pattern SpreadsheetsValuesBatchGetValueRenderOption_FORMATTEDVALUE = SpreadsheetsValuesBatchGetValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern SpreadsheetsValuesBatchGetValueRenderOption_UNFORMATTEDVALUE :: SpreadsheetsValuesBatchGetValueRenderOption
pattern SpreadsheetsValuesBatchGetValueRenderOption_UNFORMATTEDVALUE = SpreadsheetsValuesBatchGetValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern SpreadsheetsValuesBatchGetValueRenderOption_Formula :: SpreadsheetsValuesBatchGetValueRenderOption
pattern SpreadsheetsValuesBatchGetValueRenderOption_Formula = SpreadsheetsValuesBatchGetValueRenderOption "FORMULA"

{-# COMPLETE
  SpreadsheetsValuesBatchGetValueRenderOption_FORMATTEDVALUE,
  SpreadsheetsValuesBatchGetValueRenderOption_UNFORMATTEDVALUE,
  SpreadsheetsValuesBatchGetValueRenderOption_Formula,
  SpreadsheetsValuesBatchGetValueRenderOption
  #-}

-- | How dates, times, and durations should be represented in the output. This is ignored if value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL/NUMBER.
newtype SpreadsheetsValuesGetDateTimeRenderOption = SpreadsheetsValuesGetDateTimeRenderOption {fromSpreadsheetsValuesGetDateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern SpreadsheetsValuesGetDateTimeRenderOption_SERIALNUMBER :: SpreadsheetsValuesGetDateTimeRenderOption
pattern SpreadsheetsValuesGetDateTimeRenderOption_SERIALNUMBER = SpreadsheetsValuesGetDateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern SpreadsheetsValuesGetDateTimeRenderOption_FORMATTEDSTRING :: SpreadsheetsValuesGetDateTimeRenderOption
pattern SpreadsheetsValuesGetDateTimeRenderOption_FORMATTEDSTRING = SpreadsheetsValuesGetDateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  SpreadsheetsValuesGetDateTimeRenderOption_SERIALNUMBER,
  SpreadsheetsValuesGetDateTimeRenderOption_FORMATTEDSTRING,
  SpreadsheetsValuesGetDateTimeRenderOption
  #-}

-- | The major dimension that results should use. For example, if the spreadsheet data in Sheet1 is: @A1=1,B1=2,A2=3,B2=4@, then requesting @range=Sheet1!A1:B2?majorDimension=ROWS@ returns @[[1,2],[3,4]]@, whereas requesting @range=Sheet1!A1:B2?majorDimension=COLUMNS@ returns @[[1,3],[2,4]]@.
newtype SpreadsheetsValuesGetMajorDimension = SpreadsheetsValuesGetMajorDimension {fromSpreadsheetsValuesGetMajorDimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default value, do not use.
pattern SpreadsheetsValuesGetMajorDimension_DIMENSIONUNSPECIFIED :: SpreadsheetsValuesGetMajorDimension
pattern SpreadsheetsValuesGetMajorDimension_DIMENSIONUNSPECIFIED = SpreadsheetsValuesGetMajorDimension "DIMENSION_UNSPECIFIED"

-- | Operates on the rows of a sheet.
pattern SpreadsheetsValuesGetMajorDimension_Rows :: SpreadsheetsValuesGetMajorDimension
pattern SpreadsheetsValuesGetMajorDimension_Rows = SpreadsheetsValuesGetMajorDimension "ROWS"

-- | Operates on the columns of a sheet.
pattern SpreadsheetsValuesGetMajorDimension_Columns :: SpreadsheetsValuesGetMajorDimension
pattern SpreadsheetsValuesGetMajorDimension_Columns = SpreadsheetsValuesGetMajorDimension "COLUMNS"

{-# COMPLETE
  SpreadsheetsValuesGetMajorDimension_DIMENSIONUNSPECIFIED,
  SpreadsheetsValuesGetMajorDimension_Rows,
  SpreadsheetsValuesGetMajorDimension_Columns,
  SpreadsheetsValuesGetMajorDimension
  #-}

-- | How values should be represented in the output. The default render option is FORMATTED_VALUE.
newtype SpreadsheetsValuesGetValueRenderOption = SpreadsheetsValuesGetValueRenderOption {fromSpreadsheetsValuesGetValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern SpreadsheetsValuesGetValueRenderOption_FORMATTEDVALUE :: SpreadsheetsValuesGetValueRenderOption
pattern SpreadsheetsValuesGetValueRenderOption_FORMATTEDVALUE = SpreadsheetsValuesGetValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern SpreadsheetsValuesGetValueRenderOption_UNFORMATTEDVALUE :: SpreadsheetsValuesGetValueRenderOption
pattern SpreadsheetsValuesGetValueRenderOption_UNFORMATTEDVALUE = SpreadsheetsValuesGetValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern SpreadsheetsValuesGetValueRenderOption_Formula :: SpreadsheetsValuesGetValueRenderOption
pattern SpreadsheetsValuesGetValueRenderOption_Formula = SpreadsheetsValuesGetValueRenderOption "FORMULA"

{-# COMPLETE
  SpreadsheetsValuesGetValueRenderOption_FORMATTEDVALUE,
  SpreadsheetsValuesGetValueRenderOption_UNFORMATTEDVALUE,
  SpreadsheetsValuesGetValueRenderOption_Formula,
  SpreadsheetsValuesGetValueRenderOption
  #-}

-- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
newtype SpreadsheetsValuesUpdateResponseDateTimeRenderOption = SpreadsheetsValuesUpdateResponseDateTimeRenderOption {fromSpreadsheetsValuesUpdateResponseDateTimeRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it\'s 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.
pattern SpreadsheetsValuesUpdateResponseDateTimeRenderOption_SERIALNUMBER :: SpreadsheetsValuesUpdateResponseDateTimeRenderOption
pattern SpreadsheetsValuesUpdateResponseDateTimeRenderOption_SERIALNUMBER = SpreadsheetsValuesUpdateResponseDateTimeRenderOption "SERIAL_NUMBER"

-- | Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).
pattern SpreadsheetsValuesUpdateResponseDateTimeRenderOption_FORMATTEDSTRING :: SpreadsheetsValuesUpdateResponseDateTimeRenderOption
pattern SpreadsheetsValuesUpdateResponseDateTimeRenderOption_FORMATTEDSTRING = SpreadsheetsValuesUpdateResponseDateTimeRenderOption "FORMATTED_STRING"

{-# COMPLETE
  SpreadsheetsValuesUpdateResponseDateTimeRenderOption_SERIALNUMBER,
  SpreadsheetsValuesUpdateResponseDateTimeRenderOption_FORMATTEDSTRING,
  SpreadsheetsValuesUpdateResponseDateTimeRenderOption
  #-}

-- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
newtype SpreadsheetsValuesUpdateResponseValueRenderOption = SpreadsheetsValuesUpdateResponseValueRenderOption {fromSpreadsheetsValuesUpdateResponseValueRenderOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Values will be calculated & formatted in the response according to the cell\'s formatting. Formatting is based on the spreadsheet\'s locale, not the requesting user\'s locale. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return @\"$1.23\"@.
pattern SpreadsheetsValuesUpdateResponseValueRenderOption_FORMATTEDVALUE :: SpreadsheetsValuesUpdateResponseValueRenderOption
pattern SpreadsheetsValuesUpdateResponseValueRenderOption_FORMATTEDVALUE = SpreadsheetsValuesUpdateResponseValueRenderOption "FORMATTED_VALUE"

-- | Values will be calculated, but not formatted in the reply. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then @A2@ would return the number @1.23@.
pattern SpreadsheetsValuesUpdateResponseValueRenderOption_UNFORMATTEDVALUE :: SpreadsheetsValuesUpdateResponseValueRenderOption
pattern SpreadsheetsValuesUpdateResponseValueRenderOption_UNFORMATTEDVALUE = SpreadsheetsValuesUpdateResponseValueRenderOption "UNFORMATTED_VALUE"

-- | Values will not be calculated. The reply will include the formulas. For example, if @A1@ is @1.23@ and @A2@ is @=A1@ and formatted as currency, then A2 would return @\"=A1\"@. Sheets treats date and time values as decimal values. This lets you perform arithmetic on them in formulas. For more information on interpreting date and time values, see <https://developers.google.com/sheets/api/guides/formats#about_date_time_values About date & time values>.
pattern SpreadsheetsValuesUpdateResponseValueRenderOption_Formula :: SpreadsheetsValuesUpdateResponseValueRenderOption
pattern SpreadsheetsValuesUpdateResponseValueRenderOption_Formula = SpreadsheetsValuesUpdateResponseValueRenderOption "FORMULA"

{-# COMPLETE
  SpreadsheetsValuesUpdateResponseValueRenderOption_FORMATTEDVALUE,
  SpreadsheetsValuesUpdateResponseValueRenderOption_UNFORMATTEDVALUE,
  SpreadsheetsValuesUpdateResponseValueRenderOption_Formula,
  SpreadsheetsValuesUpdateResponseValueRenderOption
  #-}

-- | How the input data should be interpreted.
newtype SpreadsheetsValuesUpdateValueInputOption = SpreadsheetsValuesUpdateValueInputOption {fromSpreadsheetsValuesUpdateValueInputOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default input value. This value must not be used.
pattern SpreadsheetsValuesUpdateValueInputOption_INPUTVALUEOPTIONUNSPECIFIED :: SpreadsheetsValuesUpdateValueInputOption
pattern SpreadsheetsValuesUpdateValueInputOption_INPUTVALUEOPTIONUNSPECIFIED = SpreadsheetsValuesUpdateValueInputOption "INPUT_VALUE_OPTION_UNSPECIFIED"

-- | The values the user has entered will not be parsed and will be stored as-is.
pattern SpreadsheetsValuesUpdateValueInputOption_Raw :: SpreadsheetsValuesUpdateValueInputOption
pattern SpreadsheetsValuesUpdateValueInputOption_Raw = SpreadsheetsValuesUpdateValueInputOption "RAW"

-- | The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.
pattern SpreadsheetsValuesUpdateValueInputOption_USERENTERED :: SpreadsheetsValuesUpdateValueInputOption
pattern SpreadsheetsValuesUpdateValueInputOption_USERENTERED = SpreadsheetsValuesUpdateValueInputOption "USER_ENTERED"

{-# COMPLETE
  SpreadsheetsValuesUpdateValueInputOption_INPUTVALUEOPTIONUNSPECIFIED,
  SpreadsheetsValuesUpdateValueInputOption_Raw,
  SpreadsheetsValuesUpdateValueInputOption_USERENTERED,
  SpreadsheetsValuesUpdateValueInputOption
  #-}

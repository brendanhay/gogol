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
-- Module      : Gogol.Sheets.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Sheets.Types
  ( -- * Configuration
    sheetsService,

    -- * OAuth Scopes
    Drive'FullControl,
    Drive'File,
    Drive'Readonly,
    Spreadsheets'FullControl,
    Spreadsheets'Readonly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddBandingRequest
    AddBandingRequest (..),
    newAddBandingRequest,

    -- ** AddBandingResponse
    AddBandingResponse (..),
    newAddBandingResponse,

    -- ** AddChartRequest
    AddChartRequest (..),
    newAddChartRequest,

    -- ** AddChartResponse
    AddChartResponse (..),
    newAddChartResponse,

    -- ** AddConditionalFormatRuleRequest
    AddConditionalFormatRuleRequest (..),
    newAddConditionalFormatRuleRequest,

    -- ** AddDataSourceRequest
    AddDataSourceRequest (..),
    newAddDataSourceRequest,

    -- ** AddDataSourceResponse
    AddDataSourceResponse (..),
    newAddDataSourceResponse,

    -- ** AddDimensionGroupRequest
    AddDimensionGroupRequest (..),
    newAddDimensionGroupRequest,

    -- ** AddDimensionGroupResponse
    AddDimensionGroupResponse (..),
    newAddDimensionGroupResponse,

    -- ** AddFilterViewRequest
    AddFilterViewRequest (..),
    newAddFilterViewRequest,

    -- ** AddFilterViewResponse
    AddFilterViewResponse (..),
    newAddFilterViewResponse,

    -- ** AddNamedRangeRequest
    AddNamedRangeRequest (..),
    newAddNamedRangeRequest,

    -- ** AddNamedRangeResponse
    AddNamedRangeResponse (..),
    newAddNamedRangeResponse,

    -- ** AddProtectedRangeRequest
    AddProtectedRangeRequest (..),
    newAddProtectedRangeRequest,

    -- ** AddProtectedRangeResponse
    AddProtectedRangeResponse (..),
    newAddProtectedRangeResponse,

    -- ** AddSheetRequest
    AddSheetRequest (..),
    newAddSheetRequest,

    -- ** AddSheetResponse
    AddSheetResponse (..),
    newAddSheetResponse,

    -- ** AddSlicerRequest
    AddSlicerRequest (..),
    newAddSlicerRequest,

    -- ** AddSlicerResponse
    AddSlicerResponse (..),
    newAddSlicerResponse,

    -- ** AppendCellsRequest
    AppendCellsRequest (..),
    newAppendCellsRequest,

    -- ** AppendDimensionRequest
    AppendDimensionRequest (..),
    newAppendDimensionRequest,

    -- ** AppendDimensionRequest_Dimension
    AppendDimensionRequest_Dimension (..),

    -- ** AppendValuesResponse
    AppendValuesResponse (..),
    newAppendValuesResponse,

    -- ** AutoFillRequest
    AutoFillRequest (..),
    newAutoFillRequest,

    -- ** AutoResizeDimensionsRequest
    AutoResizeDimensionsRequest (..),
    newAutoResizeDimensionsRequest,

    -- ** BandedRange
    BandedRange (..),
    newBandedRange,

    -- ** BandingProperties
    BandingProperties (..),
    newBandingProperties,

    -- ** BaselineValueFormat
    BaselineValueFormat (..),
    newBaselineValueFormat,

    -- ** BaselineValueFormat_ComparisonType
    BaselineValueFormat_ComparisonType (..),

    -- ** BasicChartAxis
    BasicChartAxis (..),
    newBasicChartAxis,

    -- ** BasicChartAxis_Position
    BasicChartAxis_Position (..),

    -- ** BasicChartDomain
    BasicChartDomain (..),
    newBasicChartDomain,

    -- ** BasicChartSeries
    BasicChartSeries (..),
    newBasicChartSeries,

    -- ** BasicChartSeries_TargetAxis
    BasicChartSeries_TargetAxis (..),

    -- ** BasicChartSeries_Type
    BasicChartSeries_Type (..),

    -- ** BasicChartSpec
    BasicChartSpec (..),
    newBasicChartSpec,

    -- ** BasicChartSpec_ChartType
    BasicChartSpec_ChartType (..),

    -- ** BasicChartSpec_CompareMode
    BasicChartSpec_CompareMode (..),

    -- ** BasicChartSpec_LegendPosition
    BasicChartSpec_LegendPosition (..),

    -- ** BasicChartSpec_StackedType
    BasicChartSpec_StackedType (..),

    -- ** BasicFilter
    BasicFilter (..),
    newBasicFilter,

    -- ** BasicFilter_Criteria
    BasicFilter_Criteria (..),
    newBasicFilter_Criteria,

    -- ** BasicSeriesDataPointStyleOverride
    BasicSeriesDataPointStyleOverride (..),
    newBasicSeriesDataPointStyleOverride,

    -- ** BatchClearValuesByDataFilterRequest
    BatchClearValuesByDataFilterRequest (..),
    newBatchClearValuesByDataFilterRequest,

    -- ** BatchClearValuesByDataFilterResponse
    BatchClearValuesByDataFilterResponse (..),
    newBatchClearValuesByDataFilterResponse,

    -- ** BatchClearValuesRequest
    BatchClearValuesRequest (..),
    newBatchClearValuesRequest,

    -- ** BatchClearValuesResponse
    BatchClearValuesResponse (..),
    newBatchClearValuesResponse,

    -- ** BatchGetValuesByDataFilterRequest
    BatchGetValuesByDataFilterRequest (..),
    newBatchGetValuesByDataFilterRequest,

    -- ** BatchGetValuesByDataFilterRequest_DateTimeRenderOption
    BatchGetValuesByDataFilterRequest_DateTimeRenderOption (..),

    -- ** BatchGetValuesByDataFilterRequest_MajorDimension
    BatchGetValuesByDataFilterRequest_MajorDimension (..),

    -- ** BatchGetValuesByDataFilterRequest_ValueRenderOption
    BatchGetValuesByDataFilterRequest_ValueRenderOption (..),

    -- ** BatchGetValuesByDataFilterResponse
    BatchGetValuesByDataFilterResponse (..),
    newBatchGetValuesByDataFilterResponse,

    -- ** BatchGetValuesResponse
    BatchGetValuesResponse (..),
    newBatchGetValuesResponse,

    -- ** BatchUpdateSpreadsheetRequest
    BatchUpdateSpreadsheetRequest (..),
    newBatchUpdateSpreadsheetRequest,

    -- ** BatchUpdateSpreadsheetResponse
    BatchUpdateSpreadsheetResponse (..),
    newBatchUpdateSpreadsheetResponse,

    -- ** BatchUpdateValuesByDataFilterRequest
    BatchUpdateValuesByDataFilterRequest (..),
    newBatchUpdateValuesByDataFilterRequest,

    -- ** BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
    BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption (..),

    -- ** BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
    BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption (..),

    -- ** BatchUpdateValuesByDataFilterRequest_ValueInputOption
    BatchUpdateValuesByDataFilterRequest_ValueInputOption (..),

    -- ** BatchUpdateValuesByDataFilterResponse
    BatchUpdateValuesByDataFilterResponse (..),
    newBatchUpdateValuesByDataFilterResponse,

    -- ** BatchUpdateValuesRequest
    BatchUpdateValuesRequest (..),
    newBatchUpdateValuesRequest,

    -- ** BatchUpdateValuesRequest_ResponseDateTimeRenderOption
    BatchUpdateValuesRequest_ResponseDateTimeRenderOption (..),

    -- ** BatchUpdateValuesRequest_ResponseValueRenderOption
    BatchUpdateValuesRequest_ResponseValueRenderOption (..),

    -- ** BatchUpdateValuesRequest_ValueInputOption
    BatchUpdateValuesRequest_ValueInputOption (..),

    -- ** BatchUpdateValuesResponse
    BatchUpdateValuesResponse (..),
    newBatchUpdateValuesResponse,

    -- ** BigQueryDataSourceSpec
    BigQueryDataSourceSpec (..),
    newBigQueryDataSourceSpec,

    -- ** BigQueryQuerySpec
    BigQueryQuerySpec (..),
    newBigQueryQuerySpec,

    -- ** BigQueryTableSpec
    BigQueryTableSpec (..),
    newBigQueryTableSpec,

    -- ** BooleanCondition
    BooleanCondition (..),
    newBooleanCondition,

    -- ** BooleanCondition_Type
    BooleanCondition_Type (..),

    -- ** BooleanRule
    BooleanRule (..),
    newBooleanRule,

    -- ** Border
    Border (..),
    newBorder,

    -- ** Border_Style
    Border_Style (..),

    -- ** Borders
    Borders (..),
    newBorders,

    -- ** BubbleChartSpec
    BubbleChartSpec (..),
    newBubbleChartSpec,

    -- ** BubbleChartSpec_LegendPosition
    BubbleChartSpec_LegendPosition (..),

    -- ** CancelDataSourceRefreshRequest
    CancelDataSourceRefreshRequest (..),
    newCancelDataSourceRefreshRequest,

    -- ** CancelDataSourceRefreshResponse
    CancelDataSourceRefreshResponse (..),
    newCancelDataSourceRefreshResponse,

    -- ** CancelDataSourceRefreshStatus
    CancelDataSourceRefreshStatus (..),
    newCancelDataSourceRefreshStatus,

    -- ** CandlestickChartSpec
    CandlestickChartSpec (..),
    newCandlestickChartSpec,

    -- ** CandlestickData
    CandlestickData (..),
    newCandlestickData,

    -- ** CandlestickDomain
    CandlestickDomain (..),
    newCandlestickDomain,

    -- ** CandlestickSeries
    CandlestickSeries (..),
    newCandlestickSeries,

    -- ** CellData
    CellData (..),
    newCellData,

    -- ** CellFormat
    CellFormat (..),
    newCellFormat,

    -- ** CellFormat_HorizontalAlignment
    CellFormat_HorizontalAlignment (..),

    -- ** CellFormat_HyperlinkDisplayType
    CellFormat_HyperlinkDisplayType (..),

    -- ** CellFormat_TextDirection
    CellFormat_TextDirection (..),

    -- ** CellFormat_VerticalAlignment
    CellFormat_VerticalAlignment (..),

    -- ** CellFormat_WrapStrategy
    CellFormat_WrapStrategy (..),

    -- ** ChartAxisViewWindowOptions
    ChartAxisViewWindowOptions (..),
    newChartAxisViewWindowOptions,

    -- ** ChartAxisViewWindowOptions_ViewWindowMode
    ChartAxisViewWindowOptions_ViewWindowMode (..),

    -- ** ChartCustomNumberFormatOptions
    ChartCustomNumberFormatOptions (..),
    newChartCustomNumberFormatOptions,

    -- ** ChartData
    ChartData (..),
    newChartData,

    -- ** ChartData_AggregateType
    ChartData_AggregateType (..),

    -- ** ChartDateTimeRule
    ChartDateTimeRule (..),
    newChartDateTimeRule,

    -- ** ChartDateTimeRule_Type
    ChartDateTimeRule_Type (..),

    -- ** ChartGroupRule
    ChartGroupRule (..),
    newChartGroupRule,

    -- ** ChartHistogramRule
    ChartHistogramRule (..),
    newChartHistogramRule,

    -- ** ChartSourceRange
    ChartSourceRange (..),
    newChartSourceRange,

    -- ** ChartSpec
    ChartSpec (..),
    newChartSpec,

    -- ** ChartSpec_HiddenDimensionStrategy
    ChartSpec_HiddenDimensionStrategy (..),

    -- ** ClearBasicFilterRequest
    ClearBasicFilterRequest (..),
    newClearBasicFilterRequest,

    -- ** ClearValuesRequest
    ClearValuesRequest (..),
    newClearValuesRequest,

    -- ** ClearValuesResponse
    ClearValuesResponse (..),
    newClearValuesResponse,

    -- ** Color
    Color (..),
    newColor,

    -- ** ColorStyle
    ColorStyle (..),
    newColorStyle,

    -- ** ColorStyle_ThemeColor
    ColorStyle_ThemeColor (..),

    -- ** ConditionValue
    ConditionValue (..),
    newConditionValue,

    -- ** ConditionValue_RelativeDate
    ConditionValue_RelativeDate (..),

    -- ** ConditionalFormatRule
    ConditionalFormatRule (..),
    newConditionalFormatRule,

    -- ** CopyPasteRequest
    CopyPasteRequest (..),
    newCopyPasteRequest,

    -- ** CopyPasteRequest_PasteOrientation
    CopyPasteRequest_PasteOrientation (..),

    -- ** CopyPasteRequest_PasteType
    CopyPasteRequest_PasteType (..),

    -- ** CopySheetToAnotherSpreadsheetRequest
    CopySheetToAnotherSpreadsheetRequest (..),
    newCopySheetToAnotherSpreadsheetRequest,

    -- ** CreateDeveloperMetadataRequest
    CreateDeveloperMetadataRequest (..),
    newCreateDeveloperMetadataRequest,

    -- ** CreateDeveloperMetadataResponse
    CreateDeveloperMetadataResponse (..),
    newCreateDeveloperMetadataResponse,

    -- ** CutPasteRequest
    CutPasteRequest (..),
    newCutPasteRequest,

    -- ** CutPasteRequest_PasteType
    CutPasteRequest_PasteType (..),

    -- ** DataExecutionStatus
    DataExecutionStatus (..),
    newDataExecutionStatus,

    -- ** DataExecutionStatus_ErrorCode
    DataExecutionStatus_ErrorCode (..),

    -- ** DataExecutionStatus_State
    DataExecutionStatus_State (..),

    -- ** DataFilter
    DataFilter (..),
    newDataFilter,

    -- ** DataFilterValueRange
    DataFilterValueRange (..),
    newDataFilterValueRange,

    -- ** DataFilterValueRange_MajorDimension
    DataFilterValueRange_MajorDimension (..),

    -- ** DataLabel
    DataLabel (..),
    newDataLabel,

    -- ** DataLabel_Placement
    DataLabel_Placement (..),

    -- ** DataLabel_Type
    DataLabel_Type (..),

    -- ** DataSource
    DataSource (..),
    newDataSource,

    -- ** DataSourceChartProperties
    DataSourceChartProperties (..),
    newDataSourceChartProperties,

    -- ** DataSourceColumn
    DataSourceColumn (..),
    newDataSourceColumn,

    -- ** DataSourceColumnReference
    DataSourceColumnReference (..),
    newDataSourceColumnReference,

    -- ** DataSourceFormula
    DataSourceFormula (..),
    newDataSourceFormula,

    -- ** DataSourceObjectReference
    DataSourceObjectReference (..),
    newDataSourceObjectReference,

    -- ** DataSourceObjectReferences
    DataSourceObjectReferences (..),
    newDataSourceObjectReferences,

    -- ** DataSourceParameter
    DataSourceParameter (..),
    newDataSourceParameter,

    -- ** DataSourceRefreshDailySchedule
    DataSourceRefreshDailySchedule (..),
    newDataSourceRefreshDailySchedule,

    -- ** DataSourceRefreshMonthlySchedule
    DataSourceRefreshMonthlySchedule (..),
    newDataSourceRefreshMonthlySchedule,

    -- ** DataSourceRefreshSchedule
    DataSourceRefreshSchedule (..),
    newDataSourceRefreshSchedule,

    -- ** DataSourceRefreshSchedule_RefreshScope
    DataSourceRefreshSchedule_RefreshScope (..),

    -- ** DataSourceRefreshWeeklySchedule
    DataSourceRefreshWeeklySchedule (..),
    newDataSourceRefreshWeeklySchedule,

    -- ** DataSourceRefreshWeeklySchedule_DaysOfWeekItem
    DataSourceRefreshWeeklySchedule_DaysOfWeekItem (..),

    -- ** DataSourceSheetDimensionRange
    DataSourceSheetDimensionRange (..),
    newDataSourceSheetDimensionRange,

    -- ** DataSourceSheetProperties
    DataSourceSheetProperties (..),
    newDataSourceSheetProperties,

    -- ** DataSourceSpec
    DataSourceSpec (..),
    newDataSourceSpec,

    -- ** DataSourceTable
    DataSourceTable (..),
    newDataSourceTable,

    -- ** DataSourceTable_ColumnSelectionType
    DataSourceTable_ColumnSelectionType (..),

    -- ** DataValidationRule
    DataValidationRule (..),
    newDataValidationRule,

    -- ** DateTimeRule
    DateTimeRule (..),
    newDateTimeRule,

    -- ** DateTimeRule_Type
    DateTimeRule_Type (..),

    -- ** DeleteBandingRequest
    DeleteBandingRequest (..),
    newDeleteBandingRequest,

    -- ** DeleteConditionalFormatRuleRequest
    DeleteConditionalFormatRuleRequest (..),
    newDeleteConditionalFormatRuleRequest,

    -- ** DeleteConditionalFormatRuleResponse
    DeleteConditionalFormatRuleResponse (..),
    newDeleteConditionalFormatRuleResponse,

    -- ** DeleteDataSourceRequest
    DeleteDataSourceRequest (..),
    newDeleteDataSourceRequest,

    -- ** DeleteDeveloperMetadataRequest
    DeleteDeveloperMetadataRequest (..),
    newDeleteDeveloperMetadataRequest,

    -- ** DeleteDeveloperMetadataResponse
    DeleteDeveloperMetadataResponse (..),
    newDeleteDeveloperMetadataResponse,

    -- ** DeleteDimensionGroupRequest
    DeleteDimensionGroupRequest (..),
    newDeleteDimensionGroupRequest,

    -- ** DeleteDimensionGroupResponse
    DeleteDimensionGroupResponse (..),
    newDeleteDimensionGroupResponse,

    -- ** DeleteDimensionRequest
    DeleteDimensionRequest (..),
    newDeleteDimensionRequest,

    -- ** DeleteDuplicatesRequest
    DeleteDuplicatesRequest (..),
    newDeleteDuplicatesRequest,

    -- ** DeleteDuplicatesResponse
    DeleteDuplicatesResponse (..),
    newDeleteDuplicatesResponse,

    -- ** DeleteEmbeddedObjectRequest
    DeleteEmbeddedObjectRequest (..),
    newDeleteEmbeddedObjectRequest,

    -- ** DeleteFilterViewRequest
    DeleteFilterViewRequest (..),
    newDeleteFilterViewRequest,

    -- ** DeleteNamedRangeRequest
    DeleteNamedRangeRequest (..),
    newDeleteNamedRangeRequest,

    -- ** DeleteProtectedRangeRequest
    DeleteProtectedRangeRequest (..),
    newDeleteProtectedRangeRequest,

    -- ** DeleteRangeRequest
    DeleteRangeRequest (..),
    newDeleteRangeRequest,

    -- ** DeleteRangeRequest_ShiftDimension
    DeleteRangeRequest_ShiftDimension (..),

    -- ** DeleteSheetRequest
    DeleteSheetRequest (..),
    newDeleteSheetRequest,

    -- ** DeveloperMetadata
    DeveloperMetadata (..),
    newDeveloperMetadata,

    -- ** DeveloperMetadata_Visibility
    DeveloperMetadata_Visibility (..),

    -- ** DeveloperMetadataLocation
    DeveloperMetadataLocation (..),
    newDeveloperMetadataLocation,

    -- ** DeveloperMetadataLocation_LocationType
    DeveloperMetadataLocation_LocationType (..),

    -- ** DeveloperMetadataLookup
    DeveloperMetadataLookup (..),
    newDeveloperMetadataLookup,

    -- ** DeveloperMetadataLookup_LocationMatchingStrategy
    DeveloperMetadataLookup_LocationMatchingStrategy (..),

    -- ** DeveloperMetadataLookup_LocationType
    DeveloperMetadataLookup_LocationType (..),

    -- ** DeveloperMetadataLookup_Visibility
    DeveloperMetadataLookup_Visibility (..),

    -- ** DimensionGroup
    DimensionGroup (..),
    newDimensionGroup,

    -- ** DimensionProperties
    DimensionProperties (..),
    newDimensionProperties,

    -- ** DimensionRange
    DimensionRange (..),
    newDimensionRange,

    -- ** DimensionRange_Dimension
    DimensionRange_Dimension (..),

    -- ** DuplicateFilterViewRequest
    DuplicateFilterViewRequest (..),
    newDuplicateFilterViewRequest,

    -- ** DuplicateFilterViewResponse
    DuplicateFilterViewResponse (..),
    newDuplicateFilterViewResponse,

    -- ** DuplicateSheetRequest
    DuplicateSheetRequest (..),
    newDuplicateSheetRequest,

    -- ** DuplicateSheetResponse
    DuplicateSheetResponse (..),
    newDuplicateSheetResponse,

    -- ** Editors
    Editors (..),
    newEditors,

    -- ** EmbeddedChart
    EmbeddedChart (..),
    newEmbeddedChart,

    -- ** EmbeddedObjectBorder
    EmbeddedObjectBorder (..),
    newEmbeddedObjectBorder,

    -- ** EmbeddedObjectPosition
    EmbeddedObjectPosition (..),
    newEmbeddedObjectPosition,

    -- ** ErrorValue
    ErrorValue (..),
    newErrorValue,

    -- ** ErrorValue_Type
    ErrorValue_Type (..),

    -- ** ExtendedValue
    ExtendedValue (..),
    newExtendedValue,

    -- ** FilterCriteria
    FilterCriteria (..),
    newFilterCriteria,

    -- ** FilterSpec
    FilterSpec (..),
    newFilterSpec,

    -- ** FilterView
    FilterView (..),
    newFilterView,

    -- ** FilterView_Criteria
    FilterView_Criteria (..),
    newFilterView_Criteria,

    -- ** FindReplaceRequest
    FindReplaceRequest (..),
    newFindReplaceRequest,

    -- ** FindReplaceResponse
    FindReplaceResponse (..),
    newFindReplaceResponse,

    -- ** GetSpreadsheetByDataFilterRequest
    GetSpreadsheetByDataFilterRequest (..),
    newGetSpreadsheetByDataFilterRequest,

    -- ** GradientRule
    GradientRule (..),
    newGradientRule,

    -- ** GridCoordinate
    GridCoordinate (..),
    newGridCoordinate,

    -- ** GridData
    GridData (..),
    newGridData,

    -- ** GridProperties
    GridProperties (..),
    newGridProperties,

    -- ** GridRange
    GridRange (..),
    newGridRange,

    -- ** HistogramChartSpec
    HistogramChartSpec (..),
    newHistogramChartSpec,

    -- ** HistogramChartSpec_LegendPosition
    HistogramChartSpec_LegendPosition (..),

    -- ** HistogramRule
    HistogramRule (..),
    newHistogramRule,

    -- ** HistogramSeries
    HistogramSeries (..),
    newHistogramSeries,

    -- ** InsertDimensionRequest
    InsertDimensionRequest (..),
    newInsertDimensionRequest,

    -- ** InsertRangeRequest
    InsertRangeRequest (..),
    newInsertRangeRequest,

    -- ** InsertRangeRequest_ShiftDimension
    InsertRangeRequest_ShiftDimension (..),

    -- ** InterpolationPoint
    InterpolationPoint (..),
    newInterpolationPoint,

    -- ** InterpolationPoint_Type
    InterpolationPoint_Type (..),

    -- ** Interval
    Interval (..),
    newInterval,

    -- ** IterativeCalculationSettings
    IterativeCalculationSettings (..),
    newIterativeCalculationSettings,

    -- ** KeyValueFormat
    KeyValueFormat (..),
    newKeyValueFormat,

    -- ** LineStyle
    LineStyle (..),
    newLineStyle,

    -- ** LineStyle_Type
    LineStyle_Type (..),

    -- ** Link
    Link (..),
    newLink,

    -- ** LookerDataSourceSpec
    LookerDataSourceSpec (..),
    newLookerDataSourceSpec,

    -- ** ManualRule
    ManualRule (..),
    newManualRule,

    -- ** ManualRuleGroup
    ManualRuleGroup (..),
    newManualRuleGroup,

    -- ** MatchedDeveloperMetadata
    MatchedDeveloperMetadata (..),
    newMatchedDeveloperMetadata,

    -- ** MatchedValueRange
    MatchedValueRange (..),
    newMatchedValueRange,

    -- ** MergeCellsRequest
    MergeCellsRequest (..),
    newMergeCellsRequest,

    -- ** MergeCellsRequest_MergeType
    MergeCellsRequest_MergeType (..),

    -- ** MoveDimensionRequest
    MoveDimensionRequest (..),
    newMoveDimensionRequest,

    -- ** NamedRange
    NamedRange (..),
    newNamedRange,

    -- ** NumberFormat
    NumberFormat (..),
    newNumberFormat,

    -- ** NumberFormat_Type
    NumberFormat_Type (..),

    -- ** OrgChartSpec
    OrgChartSpec (..),
    newOrgChartSpec,

    -- ** OrgChartSpec_NodeSize
    OrgChartSpec_NodeSize (..),

    -- ** OverlayPosition
    OverlayPosition (..),
    newOverlayPosition,

    -- ** Padding
    Padding (..),
    newPadding,

    -- ** PasteDataRequest
    PasteDataRequest (..),
    newPasteDataRequest,

    -- ** PasteDataRequest_Type
    PasteDataRequest_Type (..),

    -- ** PieChartSpec
    PieChartSpec (..),
    newPieChartSpec,

    -- ** PieChartSpec_LegendPosition
    PieChartSpec_LegendPosition (..),

    -- ** PivotFilterCriteria
    PivotFilterCriteria (..),
    newPivotFilterCriteria,

    -- ** PivotFilterSpec
    PivotFilterSpec (..),
    newPivotFilterSpec,

    -- ** PivotGroup
    PivotGroup (..),
    newPivotGroup,

    -- ** PivotGroup_SortOrder
    PivotGroup_SortOrder (..),

    -- ** PivotGroupLimit
    PivotGroupLimit (..),
    newPivotGroupLimit,

    -- ** PivotGroupRule
    PivotGroupRule (..),
    newPivotGroupRule,

    -- ** PivotGroupSortValueBucket
    PivotGroupSortValueBucket (..),
    newPivotGroupSortValueBucket,

    -- ** PivotGroupValueMetadata
    PivotGroupValueMetadata (..),
    newPivotGroupValueMetadata,

    -- ** PivotTable
    PivotTable (..),
    newPivotTable,

    -- ** PivotTable_Criteria
    PivotTable_Criteria (..),
    newPivotTable_Criteria,

    -- ** PivotTable_ValueLayout
    PivotTable_ValueLayout (..),

    -- ** PivotValue
    PivotValue (..),
    newPivotValue,

    -- ** PivotValue_CalculatedDisplayType
    PivotValue_CalculatedDisplayType (..),

    -- ** PivotValue_SummarizeFunction
    PivotValue_SummarizeFunction (..),

    -- ** PointStyle
    PointStyle (..),
    newPointStyle,

    -- ** PointStyle_Shape
    PointStyle_Shape (..),

    -- ** ProtectedRange
    ProtectedRange (..),
    newProtectedRange,

    -- ** RandomizeRangeRequest
    RandomizeRangeRequest (..),
    newRandomizeRangeRequest,

    -- ** RefreshCancellationStatus
    RefreshCancellationStatus (..),
    newRefreshCancellationStatus,

    -- ** RefreshCancellationStatus_ErrorCode
    RefreshCancellationStatus_ErrorCode (..),

    -- ** RefreshCancellationStatus_State
    RefreshCancellationStatus_State (..),

    -- ** RefreshDataSourceObjectExecutionStatus
    RefreshDataSourceObjectExecutionStatus (..),
    newRefreshDataSourceObjectExecutionStatus,

    -- ** RefreshDataSourceRequest
    RefreshDataSourceRequest (..),
    newRefreshDataSourceRequest,

    -- ** RefreshDataSourceResponse
    RefreshDataSourceResponse (..),
    newRefreshDataSourceResponse,

    -- ** RepeatCellRequest
    RepeatCellRequest (..),
    newRepeatCellRequest,

    -- ** Request'
    Request' (..),
    newRequest,

    -- ** Response
    Response (..),
    newResponse,

    -- ** RowData
    RowData (..),
    newRowData,

    -- ** ScorecardChartSpec
    ScorecardChartSpec (..),
    newScorecardChartSpec,

    -- ** ScorecardChartSpec_AggregateType
    ScorecardChartSpec_AggregateType (..),

    -- ** ScorecardChartSpec_NumberFormatSource
    ScorecardChartSpec_NumberFormatSource (..),

    -- ** SearchDeveloperMetadataRequest
    SearchDeveloperMetadataRequest (..),
    newSearchDeveloperMetadataRequest,

    -- ** SearchDeveloperMetadataResponse
    SearchDeveloperMetadataResponse (..),
    newSearchDeveloperMetadataResponse,

    -- ** SetBasicFilterRequest
    SetBasicFilterRequest (..),
    newSetBasicFilterRequest,

    -- ** SetDataValidationRequest
    SetDataValidationRequest (..),
    newSetDataValidationRequest,

    -- ** Sheet
    Sheet (..),
    newSheet,

    -- ** SheetProperties
    SheetProperties (..),
    newSheetProperties,

    -- ** SheetProperties_SheetType
    SheetProperties_SheetType (..),

    -- ** Slicer
    Slicer (..),
    newSlicer,

    -- ** SlicerSpec
    SlicerSpec (..),
    newSlicerSpec,

    -- ** SlicerSpec_HorizontalAlignment
    SlicerSpec_HorizontalAlignment (..),

    -- ** SortRangeRequest
    SortRangeRequest (..),
    newSortRangeRequest,

    -- ** SortSpec
    SortSpec (..),
    newSortSpec,

    -- ** SortSpec_SortOrder
    SortSpec_SortOrder (..),

    -- ** SourceAndDestination
    SourceAndDestination (..),
    newSourceAndDestination,

    -- ** SourceAndDestination_Dimension
    SourceAndDestination_Dimension (..),

    -- ** Spreadsheet
    Spreadsheet (..),
    newSpreadsheet,

    -- ** SpreadsheetProperties
    SpreadsheetProperties (..),
    newSpreadsheetProperties,

    -- ** SpreadsheetProperties_AutoRecalc
    SpreadsheetProperties_AutoRecalc (..),

    -- ** SpreadsheetTheme
    SpreadsheetTheme (..),
    newSpreadsheetTheme,

    -- ** TextFormat
    TextFormat (..),
    newTextFormat,

    -- ** TextFormatRun
    TextFormatRun (..),
    newTextFormatRun,

    -- ** TextPosition
    TextPosition (..),
    newTextPosition,

    -- ** TextPosition_HorizontalAlignment
    TextPosition_HorizontalAlignment (..),

    -- ** TextRotation
    TextRotation (..),
    newTextRotation,

    -- ** TextToColumnsRequest
    TextToColumnsRequest (..),
    newTextToColumnsRequest,

    -- ** TextToColumnsRequest_DelimiterType
    TextToColumnsRequest_DelimiterType (..),

    -- ** ThemeColorPair
    ThemeColorPair (..),
    newThemeColorPair,

    -- ** ThemeColorPair_ColorType
    ThemeColorPair_ColorType (..),

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** TreemapChartColorScale
    TreemapChartColorScale (..),
    newTreemapChartColorScale,

    -- ** TreemapChartSpec
    TreemapChartSpec (..),
    newTreemapChartSpec,

    -- ** TrimWhitespaceRequest
    TrimWhitespaceRequest (..),
    newTrimWhitespaceRequest,

    -- ** TrimWhitespaceResponse
    TrimWhitespaceResponse (..),
    newTrimWhitespaceResponse,

    -- ** UnmergeCellsRequest
    UnmergeCellsRequest (..),
    newUnmergeCellsRequest,

    -- ** UpdateBandingRequest
    UpdateBandingRequest (..),
    newUpdateBandingRequest,

    -- ** UpdateBordersRequest
    UpdateBordersRequest (..),
    newUpdateBordersRequest,

    -- ** UpdateCellsRequest
    UpdateCellsRequest (..),
    newUpdateCellsRequest,

    -- ** UpdateChartSpecRequest
    UpdateChartSpecRequest (..),
    newUpdateChartSpecRequest,

    -- ** UpdateConditionalFormatRuleRequest
    UpdateConditionalFormatRuleRequest (..),
    newUpdateConditionalFormatRuleRequest,

    -- ** UpdateConditionalFormatRuleResponse
    UpdateConditionalFormatRuleResponse (..),
    newUpdateConditionalFormatRuleResponse,

    -- ** UpdateDataSourceRequest
    UpdateDataSourceRequest (..),
    newUpdateDataSourceRequest,

    -- ** UpdateDataSourceResponse
    UpdateDataSourceResponse (..),
    newUpdateDataSourceResponse,

    -- ** UpdateDeveloperMetadataRequest
    UpdateDeveloperMetadataRequest (..),
    newUpdateDeveloperMetadataRequest,

    -- ** UpdateDeveloperMetadataResponse
    UpdateDeveloperMetadataResponse (..),
    newUpdateDeveloperMetadataResponse,

    -- ** UpdateDimensionGroupRequest
    UpdateDimensionGroupRequest (..),
    newUpdateDimensionGroupRequest,

    -- ** UpdateDimensionPropertiesRequest
    UpdateDimensionPropertiesRequest (..),
    newUpdateDimensionPropertiesRequest,

    -- ** UpdateEmbeddedObjectBorderRequest
    UpdateEmbeddedObjectBorderRequest (..),
    newUpdateEmbeddedObjectBorderRequest,

    -- ** UpdateEmbeddedObjectPositionRequest
    UpdateEmbeddedObjectPositionRequest (..),
    newUpdateEmbeddedObjectPositionRequest,

    -- ** UpdateEmbeddedObjectPositionResponse
    UpdateEmbeddedObjectPositionResponse (..),
    newUpdateEmbeddedObjectPositionResponse,

    -- ** UpdateFilterViewRequest
    UpdateFilterViewRequest (..),
    newUpdateFilterViewRequest,

    -- ** UpdateNamedRangeRequest
    UpdateNamedRangeRequest (..),
    newUpdateNamedRangeRequest,

    -- ** UpdateProtectedRangeRequest
    UpdateProtectedRangeRequest (..),
    newUpdateProtectedRangeRequest,

    -- ** UpdateSheetPropertiesRequest
    UpdateSheetPropertiesRequest (..),
    newUpdateSheetPropertiesRequest,

    -- ** UpdateSlicerSpecRequest
    UpdateSlicerSpecRequest (..),
    newUpdateSlicerSpecRequest,

    -- ** UpdateSpreadsheetPropertiesRequest
    UpdateSpreadsheetPropertiesRequest (..),
    newUpdateSpreadsheetPropertiesRequest,

    -- ** UpdateValuesByDataFilterResponse
    UpdateValuesByDataFilterResponse (..),
    newUpdateValuesByDataFilterResponse,

    -- ** UpdateValuesResponse
    UpdateValuesResponse (..),
    newUpdateValuesResponse,

    -- ** ValueRange
    ValueRange (..),
    newValueRange,

    -- ** ValueRange_MajorDimension
    ValueRange_MajorDimension (..),

    -- ** WaterfallChartColumnStyle
    WaterfallChartColumnStyle (..),
    newWaterfallChartColumnStyle,

    -- ** WaterfallChartCustomSubtotal
    WaterfallChartCustomSubtotal (..),
    newWaterfallChartCustomSubtotal,

    -- ** WaterfallChartDomain
    WaterfallChartDomain (..),
    newWaterfallChartDomain,

    -- ** WaterfallChartSeries
    WaterfallChartSeries (..),
    newWaterfallChartSeries,

    -- ** WaterfallChartSpec
    WaterfallChartSpec (..),
    newWaterfallChartSpec,

    -- ** WaterfallChartSpec_StackedType
    WaterfallChartSpec_StackedType (..),

    -- ** SpreadsheetsValuesAppendInsertDataOption
    SpreadsheetsValuesAppendInsertDataOption (..),

    -- ** SpreadsheetsValuesAppendResponseDateTimeRenderOption
    SpreadsheetsValuesAppendResponseDateTimeRenderOption (..),

    -- ** SpreadsheetsValuesAppendResponseValueRenderOption
    SpreadsheetsValuesAppendResponseValueRenderOption (..),

    -- ** SpreadsheetsValuesAppendValueInputOption
    SpreadsheetsValuesAppendValueInputOption (..),

    -- ** SpreadsheetsValuesBatchGetDateTimeRenderOption
    SpreadsheetsValuesBatchGetDateTimeRenderOption (..),

    -- ** SpreadsheetsValuesBatchGetMajorDimension
    SpreadsheetsValuesBatchGetMajorDimension (..),

    -- ** SpreadsheetsValuesBatchGetValueRenderOption
    SpreadsheetsValuesBatchGetValueRenderOption (..),

    -- ** SpreadsheetsValuesGetDateTimeRenderOption
    SpreadsheetsValuesGetDateTimeRenderOption (..),

    -- ** SpreadsheetsValuesGetMajorDimension
    SpreadsheetsValuesGetMajorDimension (..),

    -- ** SpreadsheetsValuesGetValueRenderOption
    SpreadsheetsValuesGetValueRenderOption (..),

    -- ** SpreadsheetsValuesUpdateResponseDateTimeRenderOption
    SpreadsheetsValuesUpdateResponseDateTimeRenderOption (..),

    -- ** SpreadsheetsValuesUpdateResponseValueRenderOption
    SpreadsheetsValuesUpdateResponseValueRenderOption (..),

    -- ** SpreadsheetsValuesUpdateValueInputOption
    SpreadsheetsValuesUpdateValueInputOption (..),
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Sheets.Internal.Product
import Gogol.Sheets.Internal.Sum

-- | Default request referring to version @v4@ of the Google Sheets API. This contains the host and root path used as a starting point for constructing service requests.
sheetsService :: Core.ServiceConfig
sheetsService =
  Core.defaultService
    (Core.ServiceId "sheets:v4")
    "sheets.googleapis.com"

-- | See, edit, create, and delete all of your Google Drive files
type Drive'FullControl = "https://www.googleapis.com/auth/drive"

-- | See, edit, create, and delete only the specific Google Drive files you use with this app
type Drive'File = "https://www.googleapis.com/auth/drive.file"

-- | See and download all your Google Drive files
type Drive'Readonly =
  "https://www.googleapis.com/auth/drive.readonly"

-- | See, edit, create, and delete all your Google Sheets spreadsheets
type Spreadsheets'FullControl =
  "https://www.googleapis.com/auth/spreadsheets"

-- | See all your Google Sheets spreadsheets
type Spreadsheets'Readonly =
  "https://www.googleapis.com/auth/spreadsheets.readonly"

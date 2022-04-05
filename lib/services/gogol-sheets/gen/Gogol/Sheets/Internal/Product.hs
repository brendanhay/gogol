{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Sheets.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Sheets.Internal.Product
  ( -- * AddBandingRequest
    AddBandingRequest (..),
    newAddBandingRequest,

    -- * AddBandingResponse
    AddBandingResponse (..),
    newAddBandingResponse,

    -- * AddChartRequest
    AddChartRequest (..),
    newAddChartRequest,

    -- * AddChartResponse
    AddChartResponse (..),
    newAddChartResponse,

    -- * AddConditionalFormatRuleRequest
    AddConditionalFormatRuleRequest (..),
    newAddConditionalFormatRuleRequest,

    -- * AddDataSourceRequest
    AddDataSourceRequest (..),
    newAddDataSourceRequest,

    -- * AddDataSourceResponse
    AddDataSourceResponse (..),
    newAddDataSourceResponse,

    -- * AddDimensionGroupRequest
    AddDimensionGroupRequest (..),
    newAddDimensionGroupRequest,

    -- * AddDimensionGroupResponse
    AddDimensionGroupResponse (..),
    newAddDimensionGroupResponse,

    -- * AddFilterViewRequest
    AddFilterViewRequest (..),
    newAddFilterViewRequest,

    -- * AddFilterViewResponse
    AddFilterViewResponse (..),
    newAddFilterViewResponse,

    -- * AddNamedRangeRequest
    AddNamedRangeRequest (..),
    newAddNamedRangeRequest,

    -- * AddNamedRangeResponse
    AddNamedRangeResponse (..),
    newAddNamedRangeResponse,

    -- * AddProtectedRangeRequest
    AddProtectedRangeRequest (..),
    newAddProtectedRangeRequest,

    -- * AddProtectedRangeResponse
    AddProtectedRangeResponse (..),
    newAddProtectedRangeResponse,

    -- * AddSheetRequest
    AddSheetRequest (..),
    newAddSheetRequest,

    -- * AddSheetResponse
    AddSheetResponse (..),
    newAddSheetResponse,

    -- * AddSlicerRequest
    AddSlicerRequest (..),
    newAddSlicerRequest,

    -- * AddSlicerResponse
    AddSlicerResponse (..),
    newAddSlicerResponse,

    -- * AppendCellsRequest
    AppendCellsRequest (..),
    newAppendCellsRequest,

    -- * AppendDimensionRequest
    AppendDimensionRequest (..),
    newAppendDimensionRequest,

    -- * AppendValuesResponse
    AppendValuesResponse (..),
    newAppendValuesResponse,

    -- * AutoFillRequest
    AutoFillRequest (..),
    newAutoFillRequest,

    -- * AutoResizeDimensionsRequest
    AutoResizeDimensionsRequest (..),
    newAutoResizeDimensionsRequest,

    -- * BandedRange
    BandedRange (..),
    newBandedRange,

    -- * BandingProperties
    BandingProperties (..),
    newBandingProperties,

    -- * BaselineValueFormat
    BaselineValueFormat (..),
    newBaselineValueFormat,

    -- * BasicChartAxis
    BasicChartAxis (..),
    newBasicChartAxis,

    -- * BasicChartDomain
    BasicChartDomain (..),
    newBasicChartDomain,

    -- * BasicChartSeries
    BasicChartSeries (..),
    newBasicChartSeries,

    -- * BasicChartSpec
    BasicChartSpec (..),
    newBasicChartSpec,

    -- * BasicFilter
    BasicFilter (..),
    newBasicFilter,

    -- * BasicFilter_Criteria
    BasicFilter_Criteria (..),
    newBasicFilter_Criteria,

    -- * BasicSeriesDataPointStyleOverride
    BasicSeriesDataPointStyleOverride (..),
    newBasicSeriesDataPointStyleOverride,

    -- * BatchClearValuesByDataFilterRequest
    BatchClearValuesByDataFilterRequest (..),
    newBatchClearValuesByDataFilterRequest,

    -- * BatchClearValuesByDataFilterResponse
    BatchClearValuesByDataFilterResponse (..),
    newBatchClearValuesByDataFilterResponse,

    -- * BatchClearValuesRequest
    BatchClearValuesRequest (..),
    newBatchClearValuesRequest,

    -- * BatchClearValuesResponse
    BatchClearValuesResponse (..),
    newBatchClearValuesResponse,

    -- * BatchGetValuesByDataFilterRequest
    BatchGetValuesByDataFilterRequest (..),
    newBatchGetValuesByDataFilterRequest,

    -- * BatchGetValuesByDataFilterResponse
    BatchGetValuesByDataFilterResponse (..),
    newBatchGetValuesByDataFilterResponse,

    -- * BatchGetValuesResponse
    BatchGetValuesResponse (..),
    newBatchGetValuesResponse,

    -- * BatchUpdateSpreadsheetRequest
    BatchUpdateSpreadsheetRequest (..),
    newBatchUpdateSpreadsheetRequest,

    -- * BatchUpdateSpreadsheetResponse
    BatchUpdateSpreadsheetResponse (..),
    newBatchUpdateSpreadsheetResponse,

    -- * BatchUpdateValuesByDataFilterRequest
    BatchUpdateValuesByDataFilterRequest (..),
    newBatchUpdateValuesByDataFilterRequest,

    -- * BatchUpdateValuesByDataFilterResponse
    BatchUpdateValuesByDataFilterResponse (..),
    newBatchUpdateValuesByDataFilterResponse,

    -- * BatchUpdateValuesRequest
    BatchUpdateValuesRequest (..),
    newBatchUpdateValuesRequest,

    -- * BatchUpdateValuesResponse
    BatchUpdateValuesResponse (..),
    newBatchUpdateValuesResponse,

    -- * BigQueryDataSourceSpec
    BigQueryDataSourceSpec (..),
    newBigQueryDataSourceSpec,

    -- * BigQueryQuerySpec
    BigQueryQuerySpec (..),
    newBigQueryQuerySpec,

    -- * BigQueryTableSpec
    BigQueryTableSpec (..),
    newBigQueryTableSpec,

    -- * BooleanCondition
    BooleanCondition (..),
    newBooleanCondition,

    -- * BooleanRule
    BooleanRule (..),
    newBooleanRule,

    -- * Border
    Border (..),
    newBorder,

    -- * Borders
    Borders (..),
    newBorders,

    -- * BubbleChartSpec
    BubbleChartSpec (..),
    newBubbleChartSpec,

    -- * CandlestickChartSpec
    CandlestickChartSpec (..),
    newCandlestickChartSpec,

    -- * CandlestickData
    CandlestickData (..),
    newCandlestickData,

    -- * CandlestickDomain
    CandlestickDomain (..),
    newCandlestickDomain,

    -- * CandlestickSeries
    CandlestickSeries (..),
    newCandlestickSeries,

    -- * CellData
    CellData (..),
    newCellData,

    -- * CellFormat
    CellFormat (..),
    newCellFormat,

    -- * ChartAxisViewWindowOptions
    ChartAxisViewWindowOptions (..),
    newChartAxisViewWindowOptions,

    -- * ChartCustomNumberFormatOptions
    ChartCustomNumberFormatOptions (..),
    newChartCustomNumberFormatOptions,

    -- * ChartData
    ChartData (..),
    newChartData,

    -- * ChartDateTimeRule
    ChartDateTimeRule (..),
    newChartDateTimeRule,

    -- * ChartGroupRule
    ChartGroupRule (..),
    newChartGroupRule,

    -- * ChartHistogramRule
    ChartHistogramRule (..),
    newChartHistogramRule,

    -- * ChartSourceRange
    ChartSourceRange (..),
    newChartSourceRange,

    -- * ChartSpec
    ChartSpec (..),
    newChartSpec,

    -- * ClearBasicFilterRequest
    ClearBasicFilterRequest (..),
    newClearBasicFilterRequest,

    -- * ClearValuesRequest
    ClearValuesRequest (..),
    newClearValuesRequest,

    -- * ClearValuesResponse
    ClearValuesResponse (..),
    newClearValuesResponse,

    -- * Color
    Color (..),
    newColor,

    -- * ColorStyle
    ColorStyle (..),
    newColorStyle,

    -- * ConditionValue
    ConditionValue (..),
    newConditionValue,

    -- * ConditionalFormatRule
    ConditionalFormatRule (..),
    newConditionalFormatRule,

    -- * CopyPasteRequest
    CopyPasteRequest (..),
    newCopyPasteRequest,

    -- * CopySheetToAnotherSpreadsheetRequest
    CopySheetToAnotherSpreadsheetRequest (..),
    newCopySheetToAnotherSpreadsheetRequest,

    -- * CreateDeveloperMetadataRequest
    CreateDeveloperMetadataRequest (..),
    newCreateDeveloperMetadataRequest,

    -- * CreateDeveloperMetadataResponse
    CreateDeveloperMetadataResponse (..),
    newCreateDeveloperMetadataResponse,

    -- * CutPasteRequest
    CutPasteRequest (..),
    newCutPasteRequest,

    -- * DataExecutionStatus
    DataExecutionStatus (..),
    newDataExecutionStatus,

    -- * DataFilter
    DataFilter (..),
    newDataFilter,

    -- * DataFilterValueRange
    DataFilterValueRange (..),
    newDataFilterValueRange,

    -- * DataLabel
    DataLabel (..),
    newDataLabel,

    -- * DataSource
    DataSource (..),
    newDataSource,

    -- * DataSourceChartProperties
    DataSourceChartProperties (..),
    newDataSourceChartProperties,

    -- * DataSourceColumn
    DataSourceColumn (..),
    newDataSourceColumn,

    -- * DataSourceColumnReference
    DataSourceColumnReference (..),
    newDataSourceColumnReference,

    -- * DataSourceFormula
    DataSourceFormula (..),
    newDataSourceFormula,

    -- * DataSourceObjectReference
    DataSourceObjectReference (..),
    newDataSourceObjectReference,

    -- * DataSourceObjectReferences
    DataSourceObjectReferences (..),
    newDataSourceObjectReferences,

    -- * DataSourceParameter
    DataSourceParameter (..),
    newDataSourceParameter,

    -- * DataSourceRefreshDailySchedule
    DataSourceRefreshDailySchedule (..),
    newDataSourceRefreshDailySchedule,

    -- * DataSourceRefreshMonthlySchedule
    DataSourceRefreshMonthlySchedule (..),
    newDataSourceRefreshMonthlySchedule,

    -- * DataSourceRefreshSchedule
    DataSourceRefreshSchedule (..),
    newDataSourceRefreshSchedule,

    -- * DataSourceRefreshWeeklySchedule
    DataSourceRefreshWeeklySchedule (..),
    newDataSourceRefreshWeeklySchedule,

    -- * DataSourceSheetDimensionRange
    DataSourceSheetDimensionRange (..),
    newDataSourceSheetDimensionRange,

    -- * DataSourceSheetProperties
    DataSourceSheetProperties (..),
    newDataSourceSheetProperties,

    -- * DataSourceSpec
    DataSourceSpec (..),
    newDataSourceSpec,

    -- * DataSourceTable
    DataSourceTable (..),
    newDataSourceTable,

    -- * DataValidationRule
    DataValidationRule (..),
    newDataValidationRule,

    -- * DateTimeRule
    DateTimeRule (..),
    newDateTimeRule,

    -- * DeleteBandingRequest
    DeleteBandingRequest (..),
    newDeleteBandingRequest,

    -- * DeleteConditionalFormatRuleRequest
    DeleteConditionalFormatRuleRequest (..),
    newDeleteConditionalFormatRuleRequest,

    -- * DeleteConditionalFormatRuleResponse
    DeleteConditionalFormatRuleResponse (..),
    newDeleteConditionalFormatRuleResponse,

    -- * DeleteDataSourceRequest
    DeleteDataSourceRequest (..),
    newDeleteDataSourceRequest,

    -- * DeleteDeveloperMetadataRequest
    DeleteDeveloperMetadataRequest (..),
    newDeleteDeveloperMetadataRequest,

    -- * DeleteDeveloperMetadataResponse
    DeleteDeveloperMetadataResponse (..),
    newDeleteDeveloperMetadataResponse,

    -- * DeleteDimensionGroupRequest
    DeleteDimensionGroupRequest (..),
    newDeleteDimensionGroupRequest,

    -- * DeleteDimensionGroupResponse
    DeleteDimensionGroupResponse (..),
    newDeleteDimensionGroupResponse,

    -- * DeleteDimensionRequest
    DeleteDimensionRequest (..),
    newDeleteDimensionRequest,

    -- * DeleteDuplicatesRequest
    DeleteDuplicatesRequest (..),
    newDeleteDuplicatesRequest,

    -- * DeleteDuplicatesResponse
    DeleteDuplicatesResponse (..),
    newDeleteDuplicatesResponse,

    -- * DeleteEmbeddedObjectRequest
    DeleteEmbeddedObjectRequest (..),
    newDeleteEmbeddedObjectRequest,

    -- * DeleteFilterViewRequest
    DeleteFilterViewRequest (..),
    newDeleteFilterViewRequest,

    -- * DeleteNamedRangeRequest
    DeleteNamedRangeRequest (..),
    newDeleteNamedRangeRequest,

    -- * DeleteProtectedRangeRequest
    DeleteProtectedRangeRequest (..),
    newDeleteProtectedRangeRequest,

    -- * DeleteRangeRequest
    DeleteRangeRequest (..),
    newDeleteRangeRequest,

    -- * DeleteSheetRequest
    DeleteSheetRequest (..),
    newDeleteSheetRequest,

    -- * DeveloperMetadata
    DeveloperMetadata (..),
    newDeveloperMetadata,

    -- * DeveloperMetadataLocation
    DeveloperMetadataLocation (..),
    newDeveloperMetadataLocation,

    -- * DeveloperMetadataLookup
    DeveloperMetadataLookup (..),
    newDeveloperMetadataLookup,

    -- * DimensionGroup
    DimensionGroup (..),
    newDimensionGroup,

    -- * DimensionProperties
    DimensionProperties (..),
    newDimensionProperties,

    -- * DimensionRange
    DimensionRange (..),
    newDimensionRange,

    -- * DuplicateFilterViewRequest
    DuplicateFilterViewRequest (..),
    newDuplicateFilterViewRequest,

    -- * DuplicateFilterViewResponse
    DuplicateFilterViewResponse (..),
    newDuplicateFilterViewResponse,

    -- * DuplicateSheetRequest
    DuplicateSheetRequest (..),
    newDuplicateSheetRequest,

    -- * DuplicateSheetResponse
    DuplicateSheetResponse (..),
    newDuplicateSheetResponse,

    -- * Editors
    Editors (..),
    newEditors,

    -- * EmbeddedChart
    EmbeddedChart (..),
    newEmbeddedChart,

    -- * EmbeddedObjectBorder
    EmbeddedObjectBorder (..),
    newEmbeddedObjectBorder,

    -- * EmbeddedObjectPosition
    EmbeddedObjectPosition (..),
    newEmbeddedObjectPosition,

    -- * ErrorValue
    ErrorValue (..),
    newErrorValue,

    -- * ExtendedValue
    ExtendedValue (..),
    newExtendedValue,

    -- * FilterCriteria
    FilterCriteria (..),
    newFilterCriteria,

    -- * FilterSpec
    FilterSpec (..),
    newFilterSpec,

    -- * FilterView
    FilterView (..),
    newFilterView,

    -- * FilterView_Criteria
    FilterView_Criteria (..),
    newFilterView_Criteria,

    -- * FindReplaceRequest
    FindReplaceRequest (..),
    newFindReplaceRequest,

    -- * FindReplaceResponse
    FindReplaceResponse (..),
    newFindReplaceResponse,

    -- * GetSpreadsheetByDataFilterRequest
    GetSpreadsheetByDataFilterRequest (..),
    newGetSpreadsheetByDataFilterRequest,

    -- * GradientRule
    GradientRule (..),
    newGradientRule,

    -- * GridCoordinate
    GridCoordinate (..),
    newGridCoordinate,

    -- * GridData
    GridData (..),
    newGridData,

    -- * GridProperties
    GridProperties (..),
    newGridProperties,

    -- * GridRange
    GridRange (..),
    newGridRange,

    -- * HistogramChartSpec
    HistogramChartSpec (..),
    newHistogramChartSpec,

    -- * HistogramRule
    HistogramRule (..),
    newHistogramRule,

    -- * HistogramSeries
    HistogramSeries (..),
    newHistogramSeries,

    -- * InsertDimensionRequest
    InsertDimensionRequest (..),
    newInsertDimensionRequest,

    -- * InsertRangeRequest
    InsertRangeRequest (..),
    newInsertRangeRequest,

    -- * InterpolationPoint
    InterpolationPoint (..),
    newInterpolationPoint,

    -- * Interval
    Interval (..),
    newInterval,

    -- * IterativeCalculationSettings
    IterativeCalculationSettings (..),
    newIterativeCalculationSettings,

    -- * KeyValueFormat
    KeyValueFormat (..),
    newKeyValueFormat,

    -- * LineStyle
    LineStyle (..),
    newLineStyle,

    -- * Link
    Link (..),
    newLink,

    -- * ManualRule
    ManualRule (..),
    newManualRule,

    -- * ManualRuleGroup
    ManualRuleGroup (..),
    newManualRuleGroup,

    -- * MatchedDeveloperMetadata
    MatchedDeveloperMetadata (..),
    newMatchedDeveloperMetadata,

    -- * MatchedValueRange
    MatchedValueRange (..),
    newMatchedValueRange,

    -- * MergeCellsRequest
    MergeCellsRequest (..),
    newMergeCellsRequest,

    -- * MoveDimensionRequest
    MoveDimensionRequest (..),
    newMoveDimensionRequest,

    -- * NamedRange
    NamedRange (..),
    newNamedRange,

    -- * NumberFormat
    NumberFormat (..),
    newNumberFormat,

    -- * OrgChartSpec
    OrgChartSpec (..),
    newOrgChartSpec,

    -- * OverlayPosition
    OverlayPosition (..),
    newOverlayPosition,

    -- * Padding
    Padding (..),
    newPadding,

    -- * PasteDataRequest
    PasteDataRequest (..),
    newPasteDataRequest,

    -- * PieChartSpec
    PieChartSpec (..),
    newPieChartSpec,

    -- * PivotFilterCriteria
    PivotFilterCriteria (..),
    newPivotFilterCriteria,

    -- * PivotFilterSpec
    PivotFilterSpec (..),
    newPivotFilterSpec,

    -- * PivotGroup
    PivotGroup (..),
    newPivotGroup,

    -- * PivotGroupLimit
    PivotGroupLimit (..),
    newPivotGroupLimit,

    -- * PivotGroupRule
    PivotGroupRule (..),
    newPivotGroupRule,

    -- * PivotGroupSortValueBucket
    PivotGroupSortValueBucket (..),
    newPivotGroupSortValueBucket,

    -- * PivotGroupValueMetadata
    PivotGroupValueMetadata (..),
    newPivotGroupValueMetadata,

    -- * PivotTable
    PivotTable (..),
    newPivotTable,

    -- * PivotTable_Criteria
    PivotTable_Criteria (..),
    newPivotTable_Criteria,

    -- * PivotValue
    PivotValue (..),
    newPivotValue,

    -- * PointStyle
    PointStyle (..),
    newPointStyle,

    -- * ProtectedRange
    ProtectedRange (..),
    newProtectedRange,

    -- * RandomizeRangeRequest
    RandomizeRangeRequest (..),
    newRandomizeRangeRequest,

    -- * RefreshDataSourceObjectExecutionStatus
    RefreshDataSourceObjectExecutionStatus (..),
    newRefreshDataSourceObjectExecutionStatus,

    -- * RefreshDataSourceRequest
    RefreshDataSourceRequest (..),
    newRefreshDataSourceRequest,

    -- * RefreshDataSourceResponse
    RefreshDataSourceResponse (..),
    newRefreshDataSourceResponse,

    -- * RepeatCellRequest
    RepeatCellRequest (..),
    newRepeatCellRequest,

    -- * Request'
    Request' (..),
    newRequest,

    -- * Response
    Response (..),
    newResponse,

    -- * RowData
    RowData (..),
    newRowData,

    -- * ScorecardChartSpec
    ScorecardChartSpec (..),
    newScorecardChartSpec,

    -- * SearchDeveloperMetadataRequest
    SearchDeveloperMetadataRequest (..),
    newSearchDeveloperMetadataRequest,

    -- * SearchDeveloperMetadataResponse
    SearchDeveloperMetadataResponse (..),
    newSearchDeveloperMetadataResponse,

    -- * SetBasicFilterRequest
    SetBasicFilterRequest (..),
    newSetBasicFilterRequest,

    -- * SetDataValidationRequest
    SetDataValidationRequest (..),
    newSetDataValidationRequest,

    -- * Sheet
    Sheet (..),
    newSheet,

    -- * SheetProperties
    SheetProperties (..),
    newSheetProperties,

    -- * Slicer
    Slicer (..),
    newSlicer,

    -- * SlicerSpec
    SlicerSpec (..),
    newSlicerSpec,

    -- * SortRangeRequest
    SortRangeRequest (..),
    newSortRangeRequest,

    -- * SortSpec
    SortSpec (..),
    newSortSpec,

    -- * SourceAndDestination
    SourceAndDestination (..),
    newSourceAndDestination,

    -- * Spreadsheet
    Spreadsheet (..),
    newSpreadsheet,

    -- * SpreadsheetProperties
    SpreadsheetProperties (..),
    newSpreadsheetProperties,

    -- * SpreadsheetTheme
    SpreadsheetTheme (..),
    newSpreadsheetTheme,

    -- * TextFormat
    TextFormat (..),
    newTextFormat,

    -- * TextFormatRun
    TextFormatRun (..),
    newTextFormatRun,

    -- * TextPosition
    TextPosition (..),
    newTextPosition,

    -- * TextRotation
    TextRotation (..),
    newTextRotation,

    -- * TextToColumnsRequest
    TextToColumnsRequest (..),
    newTextToColumnsRequest,

    -- * ThemeColorPair
    ThemeColorPair (..),
    newThemeColorPair,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * TreemapChartColorScale
    TreemapChartColorScale (..),
    newTreemapChartColorScale,

    -- * TreemapChartSpec
    TreemapChartSpec (..),
    newTreemapChartSpec,

    -- * TrimWhitespaceRequest
    TrimWhitespaceRequest (..),
    newTrimWhitespaceRequest,

    -- * TrimWhitespaceResponse
    TrimWhitespaceResponse (..),
    newTrimWhitespaceResponse,

    -- * UnmergeCellsRequest
    UnmergeCellsRequest (..),
    newUnmergeCellsRequest,

    -- * UpdateBandingRequest
    UpdateBandingRequest (..),
    newUpdateBandingRequest,

    -- * UpdateBordersRequest
    UpdateBordersRequest (..),
    newUpdateBordersRequest,

    -- * UpdateCellsRequest
    UpdateCellsRequest (..),
    newUpdateCellsRequest,

    -- * UpdateChartSpecRequest
    UpdateChartSpecRequest (..),
    newUpdateChartSpecRequest,

    -- * UpdateConditionalFormatRuleRequest
    UpdateConditionalFormatRuleRequest (..),
    newUpdateConditionalFormatRuleRequest,

    -- * UpdateConditionalFormatRuleResponse
    UpdateConditionalFormatRuleResponse (..),
    newUpdateConditionalFormatRuleResponse,

    -- * UpdateDataSourceRequest
    UpdateDataSourceRequest (..),
    newUpdateDataSourceRequest,

    -- * UpdateDataSourceResponse
    UpdateDataSourceResponse (..),
    newUpdateDataSourceResponse,

    -- * UpdateDeveloperMetadataRequest
    UpdateDeveloperMetadataRequest (..),
    newUpdateDeveloperMetadataRequest,

    -- * UpdateDeveloperMetadataResponse
    UpdateDeveloperMetadataResponse (..),
    newUpdateDeveloperMetadataResponse,

    -- * UpdateDimensionGroupRequest
    UpdateDimensionGroupRequest (..),
    newUpdateDimensionGroupRequest,

    -- * UpdateDimensionPropertiesRequest
    UpdateDimensionPropertiesRequest (..),
    newUpdateDimensionPropertiesRequest,

    -- * UpdateEmbeddedObjectBorderRequest
    UpdateEmbeddedObjectBorderRequest (..),
    newUpdateEmbeddedObjectBorderRequest,

    -- * UpdateEmbeddedObjectPositionRequest
    UpdateEmbeddedObjectPositionRequest (..),
    newUpdateEmbeddedObjectPositionRequest,

    -- * UpdateEmbeddedObjectPositionResponse
    UpdateEmbeddedObjectPositionResponse (..),
    newUpdateEmbeddedObjectPositionResponse,

    -- * UpdateFilterViewRequest
    UpdateFilterViewRequest (..),
    newUpdateFilterViewRequest,

    -- * UpdateNamedRangeRequest
    UpdateNamedRangeRequest (..),
    newUpdateNamedRangeRequest,

    -- * UpdateProtectedRangeRequest
    UpdateProtectedRangeRequest (..),
    newUpdateProtectedRangeRequest,

    -- * UpdateSheetPropertiesRequest
    UpdateSheetPropertiesRequest (..),
    newUpdateSheetPropertiesRequest,

    -- * UpdateSlicerSpecRequest
    UpdateSlicerSpecRequest (..),
    newUpdateSlicerSpecRequest,

    -- * UpdateSpreadsheetPropertiesRequest
    UpdateSpreadsheetPropertiesRequest (..),
    newUpdateSpreadsheetPropertiesRequest,

    -- * UpdateValuesByDataFilterResponse
    UpdateValuesByDataFilterResponse (..),
    newUpdateValuesByDataFilterResponse,

    -- * UpdateValuesResponse
    UpdateValuesResponse (..),
    newUpdateValuesResponse,

    -- * ValueRange
    ValueRange (..),
    newValueRange,

    -- * WaterfallChartColumnStyle
    WaterfallChartColumnStyle (..),
    newWaterfallChartColumnStyle,

    -- * WaterfallChartCustomSubtotal
    WaterfallChartCustomSubtotal (..),
    newWaterfallChartCustomSubtotal,

    -- * WaterfallChartDomain
    WaterfallChartDomain (..),
    newWaterfallChartDomain,

    -- * WaterfallChartSeries
    WaterfallChartSeries (..),
    newWaterfallChartSeries,

    -- * WaterfallChartSpec
    WaterfallChartSpec (..),
    newWaterfallChartSpec,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Sheets.Internal.Sum

-- | Adds a new banded range to the spreadsheet.
--
-- /See:/ 'newAddBandingRequest' smart constructor.
newtype AddBandingRequest = AddBandingRequest
  { -- | The banded range to add. The bandedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)
    bandedRange :: (Core.Maybe BandedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddBandingRequest' with the minimum fields required to make a request.
newAddBandingRequest ::
  AddBandingRequest
newAddBandingRequest = AddBandingRequest {bandedRange = Core.Nothing}

instance Core.FromJSON AddBandingRequest where
  parseJSON =
    Core.withObject
      "AddBandingRequest"
      ( \o ->
          AddBandingRequest
            Core.<$> (o Core..:? "bandedRange")
      )

instance Core.ToJSON AddBandingRequest where
  toJSON AddBandingRequest {..} =
    Core.object
      ( Core.catMaybes
          [("bandedRange" Core..=) Core.<$> bandedRange]
      )

-- | The result of adding a banded range.
--
-- /See:/ 'newAddBandingResponse' smart constructor.
newtype AddBandingResponse = AddBandingResponse
  { -- | The banded range that was added.
    bandedRange :: (Core.Maybe BandedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddBandingResponse' with the minimum fields required to make a request.
newAddBandingResponse ::
  AddBandingResponse
newAddBandingResponse = AddBandingResponse {bandedRange = Core.Nothing}

instance Core.FromJSON AddBandingResponse where
  parseJSON =
    Core.withObject
      "AddBandingResponse"
      ( \o ->
          AddBandingResponse
            Core.<$> (o Core..:? "bandedRange")
      )

instance Core.ToJSON AddBandingResponse where
  toJSON AddBandingResponse {..} =
    Core.object
      ( Core.catMaybes
          [("bandedRange" Core..=) Core.<$> bandedRange]
      )

-- | Adds a chart to a sheet in the spreadsheet.
--
-- /See:/ 'newAddChartRequest' smart constructor.
newtype AddChartRequest = AddChartRequest
  { -- | The chart that should be added to the spreadsheet, including the position where it should be placed. The chartId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of an embedded object that already exists.)
    chart :: (Core.Maybe EmbeddedChart)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddChartRequest' with the minimum fields required to make a request.
newAddChartRequest ::
  AddChartRequest
newAddChartRequest = AddChartRequest {chart = Core.Nothing}

instance Core.FromJSON AddChartRequest where
  parseJSON =
    Core.withObject
      "AddChartRequest"
      ( \o ->
          AddChartRequest Core.<$> (o Core..:? "chart")
      )

instance Core.ToJSON AddChartRequest where
  toJSON AddChartRequest {..} =
    Core.object
      (Core.catMaybes [("chart" Core..=) Core.<$> chart])

-- | The result of adding a chart to a spreadsheet.
--
-- /See:/ 'newAddChartResponse' smart constructor.
newtype AddChartResponse = AddChartResponse
  { -- | The newly added chart.
    chart :: (Core.Maybe EmbeddedChart)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddChartResponse' with the minimum fields required to make a request.
newAddChartResponse ::
  AddChartResponse
newAddChartResponse = AddChartResponse {chart = Core.Nothing}

instance Core.FromJSON AddChartResponse where
  parseJSON =
    Core.withObject
      "AddChartResponse"
      ( \o ->
          AddChartResponse Core.<$> (o Core..:? "chart")
      )

instance Core.ToJSON AddChartResponse where
  toJSON AddChartResponse {..} =
    Core.object
      (Core.catMaybes [("chart" Core..=) Core.<$> chart])

-- | Adds a new conditional format rule at the given index. All subsequent rules\' indexes are incremented.
--
-- /See:/ 'newAddConditionalFormatRuleRequest' smart constructor.
data AddConditionalFormatRuleRequest = AddConditionalFormatRuleRequest
  { -- | The zero-based index where the rule should be inserted.
    index :: (Core.Maybe Core.Int32),
    -- | The rule to add.
    rule :: (Core.Maybe ConditionalFormatRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddConditionalFormatRuleRequest' with the minimum fields required to make a request.
newAddConditionalFormatRuleRequest ::
  AddConditionalFormatRuleRequest
newAddConditionalFormatRuleRequest =
  AddConditionalFormatRuleRequest {index = Core.Nothing, rule = Core.Nothing}

instance
  Core.FromJSON
    AddConditionalFormatRuleRequest
  where
  parseJSON =
    Core.withObject
      "AddConditionalFormatRuleRequest"
      ( \o ->
          AddConditionalFormatRuleRequest
            Core.<$> (o Core..:? "index") Core.<*> (o Core..:? "rule")
      )

instance Core.ToJSON AddConditionalFormatRuleRequest where
  toJSON AddConditionalFormatRuleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("rule" Core..=) Core.<$> rule
          ]
      )

-- | Adds a data source. After the data source is added successfully, an associated DATA_SOURCE sheet is created and an execution is triggered to refresh the sheet to read data from the data source. The request requires an additional @bigquery.readonly@ OAuth scope.
--
-- /See:/ 'newAddDataSourceRequest' smart constructor.
newtype AddDataSourceRequest = AddDataSourceRequest
  { -- | The data source to add.
    dataSource :: (Core.Maybe DataSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddDataSourceRequest' with the minimum fields required to make a request.
newAddDataSourceRequest ::
  AddDataSourceRequest
newAddDataSourceRequest = AddDataSourceRequest {dataSource = Core.Nothing}

instance Core.FromJSON AddDataSourceRequest where
  parseJSON =
    Core.withObject
      "AddDataSourceRequest"
      ( \o ->
          AddDataSourceRequest
            Core.<$> (o Core..:? "dataSource")
      )

instance Core.ToJSON AddDataSourceRequest where
  toJSON AddDataSourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataSource" Core..=) Core.<$> dataSource]
      )

-- | The result of adding a data source.
--
-- /See:/ 'newAddDataSourceResponse' smart constructor.
data AddDataSourceResponse = AddDataSourceResponse
  { -- | The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | The data source that was created.
    dataSource :: (Core.Maybe DataSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddDataSourceResponse' with the minimum fields required to make a request.
newAddDataSourceResponse ::
  AddDataSourceResponse
newAddDataSourceResponse =
  AddDataSourceResponse
    { dataExecutionStatus = Core.Nothing,
      dataSource = Core.Nothing
    }

instance Core.FromJSON AddDataSourceResponse where
  parseJSON =
    Core.withObject
      "AddDataSourceResponse"
      ( \o ->
          AddDataSourceResponse
            Core.<$> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSource")
      )

instance Core.ToJSON AddDataSourceResponse where
  toJSON AddDataSourceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSource" Core..=) Core.<$> dataSource
          ]
      )

-- | Creates a group over the specified range. If the requested range is a superset of the range of an existing group G, then the depth of G is incremented and this new group G\' has the depth of that group. For example, a group [C:D, depth 1] + [B:E] results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested range is a subset of the range of an existing group G, then the depth of the new group G\' becomes one greater than the depth of G. For example, a group [B:E, depth 1] + [C:D] results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested range starts before and ends within, or starts within and ends after, the range of an existing group G, then the range of the existing group G becomes the union of the ranges, and the new group G\' has depth one greater than the depth of G and range as the intersection of the ranges. For example, a group [B:D, depth 1] + [C:E] results in groups [B:E, depth 1] and [C:D, depth 2].
--
-- /See:/ 'newAddDimensionGroupRequest' smart constructor.
newtype AddDimensionGroupRequest = AddDimensionGroupRequest
  { -- | The range over which to create a group.
    range :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddDimensionGroupRequest' with the minimum fields required to make a request.
newAddDimensionGroupRequest ::
  AddDimensionGroupRequest
newAddDimensionGroupRequest = AddDimensionGroupRequest {range = Core.Nothing}

instance Core.FromJSON AddDimensionGroupRequest where
  parseJSON =
    Core.withObject
      "AddDimensionGroupRequest"
      ( \o ->
          AddDimensionGroupRequest
            Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON AddDimensionGroupRequest where
  toJSON AddDimensionGroupRequest {..} =
    Core.object
      (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | The result of adding a group.
--
-- /See:/ 'newAddDimensionGroupResponse' smart constructor.
newtype AddDimensionGroupResponse = AddDimensionGroupResponse
  { -- | All groups of a dimension after adding a group to that dimension.
    dimensionGroups :: (Core.Maybe [DimensionGroup])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddDimensionGroupResponse' with the minimum fields required to make a request.
newAddDimensionGroupResponse ::
  AddDimensionGroupResponse
newAddDimensionGroupResponse =
  AddDimensionGroupResponse {dimensionGroups = Core.Nothing}

instance Core.FromJSON AddDimensionGroupResponse where
  parseJSON =
    Core.withObject
      "AddDimensionGroupResponse"
      ( \o ->
          AddDimensionGroupResponse
            Core.<$> (o Core..:? "dimensionGroups")
      )

instance Core.ToJSON AddDimensionGroupResponse where
  toJSON AddDimensionGroupResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionGroups" Core..=)
              Core.<$> dimensionGroups
          ]
      )

-- | Adds a filter view.
--
-- /See:/ 'newAddFilterViewRequest' smart constructor.
newtype AddFilterViewRequest = AddFilterViewRequest
  { -- | The filter to add. The filterViewId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a filter that already exists.)
    filter :: (Core.Maybe FilterView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddFilterViewRequest' with the minimum fields required to make a request.
newAddFilterViewRequest ::
  AddFilterViewRequest
newAddFilterViewRequest = AddFilterViewRequest {filter = Core.Nothing}

instance Core.FromJSON AddFilterViewRequest where
  parseJSON =
    Core.withObject
      "AddFilterViewRequest"
      ( \o ->
          AddFilterViewRequest Core.<$> (o Core..:? "filter")
      )

instance Core.ToJSON AddFilterViewRequest where
  toJSON AddFilterViewRequest {..} =
    Core.object
      (Core.catMaybes [("filter" Core..=) Core.<$> filter])

-- | The result of adding a filter view.
--
-- /See:/ 'newAddFilterViewResponse' smart constructor.
newtype AddFilterViewResponse = AddFilterViewResponse
  { -- | The newly added filter view.
    filter :: (Core.Maybe FilterView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddFilterViewResponse' with the minimum fields required to make a request.
newAddFilterViewResponse ::
  AddFilterViewResponse
newAddFilterViewResponse = AddFilterViewResponse {filter = Core.Nothing}

instance Core.FromJSON AddFilterViewResponse where
  parseJSON =
    Core.withObject
      "AddFilterViewResponse"
      ( \o ->
          AddFilterViewResponse Core.<$> (o Core..:? "filter")
      )

instance Core.ToJSON AddFilterViewResponse where
  toJSON AddFilterViewResponse {..} =
    Core.object
      (Core.catMaybes [("filter" Core..=) Core.<$> filter])

-- | Adds a named range to the spreadsheet.
--
-- /See:/ 'newAddNamedRangeRequest' smart constructor.
newtype AddNamedRangeRequest = AddNamedRangeRequest
  { -- | The named range to add. The namedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)
    namedRange :: (Core.Maybe NamedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddNamedRangeRequest' with the minimum fields required to make a request.
newAddNamedRangeRequest ::
  AddNamedRangeRequest
newAddNamedRangeRequest = AddNamedRangeRequest {namedRange = Core.Nothing}

instance Core.FromJSON AddNamedRangeRequest where
  parseJSON =
    Core.withObject
      "AddNamedRangeRequest"
      ( \o ->
          AddNamedRangeRequest
            Core.<$> (o Core..:? "namedRange")
      )

instance Core.ToJSON AddNamedRangeRequest where
  toJSON AddNamedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("namedRange" Core..=) Core.<$> namedRange]
      )

-- | The result of adding a named range.
--
-- /See:/ 'newAddNamedRangeResponse' smart constructor.
newtype AddNamedRangeResponse = AddNamedRangeResponse
  { -- | The named range to add.
    namedRange :: (Core.Maybe NamedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddNamedRangeResponse' with the minimum fields required to make a request.
newAddNamedRangeResponse ::
  AddNamedRangeResponse
newAddNamedRangeResponse = AddNamedRangeResponse {namedRange = Core.Nothing}

instance Core.FromJSON AddNamedRangeResponse where
  parseJSON =
    Core.withObject
      "AddNamedRangeResponse"
      ( \o ->
          AddNamedRangeResponse
            Core.<$> (o Core..:? "namedRange")
      )

instance Core.ToJSON AddNamedRangeResponse where
  toJSON AddNamedRangeResponse {..} =
    Core.object
      ( Core.catMaybes
          [("namedRange" Core..=) Core.<$> namedRange]
      )

-- | Adds a new protected range.
--
-- /See:/ 'newAddProtectedRangeRequest' smart constructor.
newtype AddProtectedRangeRequest = AddProtectedRangeRequest
  { -- | The protected range to be added. The protectedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)
    protectedRange :: (Core.Maybe ProtectedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddProtectedRangeRequest' with the minimum fields required to make a request.
newAddProtectedRangeRequest ::
  AddProtectedRangeRequest
newAddProtectedRangeRequest =
  AddProtectedRangeRequest {protectedRange = Core.Nothing}

instance Core.FromJSON AddProtectedRangeRequest where
  parseJSON =
    Core.withObject
      "AddProtectedRangeRequest"
      ( \o ->
          AddProtectedRangeRequest
            Core.<$> (o Core..:? "protectedRange")
      )

instance Core.ToJSON AddProtectedRangeRequest where
  toJSON AddProtectedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("protectedRange" Core..=) Core.<$> protectedRange]
      )

-- | The result of adding a new protected range.
--
-- /See:/ 'newAddProtectedRangeResponse' smart constructor.
newtype AddProtectedRangeResponse = AddProtectedRangeResponse
  { -- | The newly added protected range.
    protectedRange :: (Core.Maybe ProtectedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddProtectedRangeResponse' with the minimum fields required to make a request.
newAddProtectedRangeResponse ::
  AddProtectedRangeResponse
newAddProtectedRangeResponse =
  AddProtectedRangeResponse {protectedRange = Core.Nothing}

instance Core.FromJSON AddProtectedRangeResponse where
  parseJSON =
    Core.withObject
      "AddProtectedRangeResponse"
      ( \o ->
          AddProtectedRangeResponse
            Core.<$> (o Core..:? "protectedRange")
      )

instance Core.ToJSON AddProtectedRangeResponse where
  toJSON AddProtectedRangeResponse {..} =
    Core.object
      ( Core.catMaybes
          [("protectedRange" Core..=) Core.<$> protectedRange]
      )

-- | Adds a new sheet. When a sheet is added at a given index, all subsequent sheets\' indexes are incremented. To add an object sheet, use AddChartRequest instead and specify EmbeddedObjectPosition.sheetId or EmbeddedObjectPosition.newSheet.
--
-- /See:/ 'newAddSheetRequest' smart constructor.
newtype AddSheetRequest = AddSheetRequest
  { -- | The properties the new sheet should have. All properties are optional. The sheetId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a sheet that already exists.)
    properties :: (Core.Maybe SheetProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddSheetRequest' with the minimum fields required to make a request.
newAddSheetRequest ::
  AddSheetRequest
newAddSheetRequest = AddSheetRequest {properties = Core.Nothing}

instance Core.FromJSON AddSheetRequest where
  parseJSON =
    Core.withObject
      "AddSheetRequest"
      ( \o ->
          AddSheetRequest Core.<$> (o Core..:? "properties")
      )

instance Core.ToJSON AddSheetRequest where
  toJSON AddSheetRequest {..} =
    Core.object
      ( Core.catMaybes
          [("properties" Core..=) Core.<$> properties]
      )

-- | The result of adding a sheet.
--
-- /See:/ 'newAddSheetResponse' smart constructor.
newtype AddSheetResponse = AddSheetResponse
  { -- | The properties of the newly added sheet.
    properties :: (Core.Maybe SheetProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddSheetResponse' with the minimum fields required to make a request.
newAddSheetResponse ::
  AddSheetResponse
newAddSheetResponse = AddSheetResponse {properties = Core.Nothing}

instance Core.FromJSON AddSheetResponse where
  parseJSON =
    Core.withObject
      "AddSheetResponse"
      ( \o ->
          AddSheetResponse Core.<$> (o Core..:? "properties")
      )

instance Core.ToJSON AddSheetResponse where
  toJSON AddSheetResponse {..} =
    Core.object
      ( Core.catMaybes
          [("properties" Core..=) Core.<$> properties]
      )

-- | Adds a slicer to a sheet in the spreadsheet.
--
-- /See:/ 'newAddSlicerRequest' smart constructor.
newtype AddSlicerRequest = AddSlicerRequest
  { -- | The slicer that should be added to the spreadsheet, including the position where it should be placed. The slicerId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a slicer that already exists.)
    slicer :: (Core.Maybe Slicer)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddSlicerRequest' with the minimum fields required to make a request.
newAddSlicerRequest ::
  AddSlicerRequest
newAddSlicerRequest = AddSlicerRequest {slicer = Core.Nothing}

instance Core.FromJSON AddSlicerRequest where
  parseJSON =
    Core.withObject
      "AddSlicerRequest"
      ( \o ->
          AddSlicerRequest Core.<$> (o Core..:? "slicer")
      )

instance Core.ToJSON AddSlicerRequest where
  toJSON AddSlicerRequest {..} =
    Core.object
      (Core.catMaybes [("slicer" Core..=) Core.<$> slicer])

-- | The result of adding a slicer to a spreadsheet.
--
-- /See:/ 'newAddSlicerResponse' smart constructor.
newtype AddSlicerResponse = AddSlicerResponse
  { -- | The newly added slicer.
    slicer :: (Core.Maybe Slicer)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddSlicerResponse' with the minimum fields required to make a request.
newAddSlicerResponse ::
  AddSlicerResponse
newAddSlicerResponse = AddSlicerResponse {slicer = Core.Nothing}

instance Core.FromJSON AddSlicerResponse where
  parseJSON =
    Core.withObject
      "AddSlicerResponse"
      ( \o ->
          AddSlicerResponse Core.<$> (o Core..:? "slicer")
      )

instance Core.ToJSON AddSlicerResponse where
  toJSON AddSlicerResponse {..} =
    Core.object
      (Core.catMaybes [("slicer" Core..=) Core.<$> slicer])

-- | Adds new cells after the last row with data in a sheet, inserting new rows into the sheet if necessary.
--
-- /See:/ 'newAppendCellsRequest' smart constructor.
data AppendCellsRequest = AppendCellsRequest
  { -- | The fields of CellData that should be updated. At least one field must be specified. The root is the CellData; \'row.values.\' should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The data to append.
    rows :: (Core.Maybe [RowData]),
    -- | The sheet ID to append the data to.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppendCellsRequest' with the minimum fields required to make a request.
newAppendCellsRequest ::
  AppendCellsRequest
newAppendCellsRequest =
  AppendCellsRequest
    { fields = Core.Nothing,
      rows = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON AppendCellsRequest where
  parseJSON =
    Core.withObject
      "AppendCellsRequest"
      ( \o ->
          AppendCellsRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON AppendCellsRequest where
  toJSON AppendCellsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("rows" Core..=) Core.<$> rows,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | Appends rows or columns to the end of a sheet.
--
-- /See:/ 'newAppendDimensionRequest' smart constructor.
data AppendDimensionRequest = AppendDimensionRequest
  { -- | Whether rows or columns should be appended.
    dimension :: (Core.Maybe AppendDimensionRequest_Dimension),
    -- | The number of rows or columns to append.
    length :: (Core.Maybe Core.Int32),
    -- | The sheet to append rows or columns to.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppendDimensionRequest' with the minimum fields required to make a request.
newAppendDimensionRequest ::
  AppendDimensionRequest
newAppendDimensionRequest =
  AppendDimensionRequest
    { dimension = Core.Nothing,
      length = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON AppendDimensionRequest where
  parseJSON =
    Core.withObject
      "AppendDimensionRequest"
      ( \o ->
          AppendDimensionRequest
            Core.<$> (o Core..:? "dimension")
            Core.<*> (o Core..:? "length")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON AppendDimensionRequest where
  toJSON AppendDimensionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimension" Core..=) Core.<$> dimension,
            ("length" Core..=) Core.<$> length,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'newAppendValuesResponse' smart constructor.
data AppendValuesResponse = AppendValuesResponse
  { -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The range (in A1 notation) of the table that values are being appended to (before the values were appended). Empty if no table was found.
    tableRange :: (Core.Maybe Core.Text),
    -- | Information about the updates that were applied.
    updates :: (Core.Maybe UpdateValuesResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppendValuesResponse' with the minimum fields required to make a request.
newAppendValuesResponse ::
  AppendValuesResponse
newAppendValuesResponse =
  AppendValuesResponse
    { spreadsheetId = Core.Nothing,
      tableRange = Core.Nothing,
      updates = Core.Nothing
    }

instance Core.FromJSON AppendValuesResponse where
  parseJSON =
    Core.withObject
      "AppendValuesResponse"
      ( \o ->
          AppendValuesResponse
            Core.<$> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "tableRange")
            Core.<*> (o Core..:? "updates")
      )

instance Core.ToJSON AppendValuesResponse where
  toJSON AppendValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("tableRange" Core..=) Core.<$> tableRange,
            ("updates" Core..=) Core.<$> updates
          ]
      )

-- | Fills in more data based on existing data.
--
-- /See:/ 'newAutoFillRequest' smart constructor.
data AutoFillRequest = AutoFillRequest
  { -- | The range to autofill. This will examine the range and detect the location that has data and automatically fill that data in to the rest of the range.
    range :: (Core.Maybe GridRange),
    -- | The source and destination areas to autofill. This explicitly lists the source of the autofill and where to extend that data.
    sourceAndDestination :: (Core.Maybe SourceAndDestination),
    -- | True if we should generate data with the \"alternate\" series. This differs based on the type and amount of source data.
    useAlternateSeries :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoFillRequest' with the minimum fields required to make a request.
newAutoFillRequest ::
  AutoFillRequest
newAutoFillRequest =
  AutoFillRequest
    { range = Core.Nothing,
      sourceAndDestination = Core.Nothing,
      useAlternateSeries = Core.Nothing
    }

instance Core.FromJSON AutoFillRequest where
  parseJSON =
    Core.withObject
      "AutoFillRequest"
      ( \o ->
          AutoFillRequest
            Core.<$> (o Core..:? "range")
            Core.<*> (o Core..:? "sourceAndDestination")
            Core.<*> (o Core..:? "useAlternateSeries")
      )

instance Core.ToJSON AutoFillRequest where
  toJSON AutoFillRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("range" Core..=) Core.<$> range,
            ("sourceAndDestination" Core..=)
              Core.<$> sourceAndDestination,
            ("useAlternateSeries" Core..=)
              Core.<$> useAlternateSeries
          ]
      )

-- | Automatically resizes one or more dimensions based on the contents of the cells in that dimension.
--
-- /See:/ 'newAutoResizeDimensionsRequest' smart constructor.
data AutoResizeDimensionsRequest = AutoResizeDimensionsRequest
  { -- | The dimensions on a data source sheet to automatically resize.
    dataSourceSheetDimensions :: (Core.Maybe DataSourceSheetDimensionRange),
    -- | The dimensions to automatically resize.
    dimensions :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoResizeDimensionsRequest' with the minimum fields required to make a request.
newAutoResizeDimensionsRequest ::
  AutoResizeDimensionsRequest
newAutoResizeDimensionsRequest =
  AutoResizeDimensionsRequest
    { dataSourceSheetDimensions = Core.Nothing,
      dimensions = Core.Nothing
    }

instance Core.FromJSON AutoResizeDimensionsRequest where
  parseJSON =
    Core.withObject
      "AutoResizeDimensionsRequest"
      ( \o ->
          AutoResizeDimensionsRequest
            Core.<$> (o Core..:? "dataSourceSheetDimensions")
            Core.<*> (o Core..:? "dimensions")
      )

instance Core.ToJSON AutoResizeDimensionsRequest where
  toJSON AutoResizeDimensionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceSheetDimensions" Core..=)
              Core.<$> dataSourceSheetDimensions,
            ("dimensions" Core..=) Core.<$> dimensions
          ]
      )

-- | A banded (alternating colors) range in a sheet.
--
-- /See:/ 'newBandedRange' smart constructor.
data BandedRange = BandedRange
  { -- | The id of the banded range.
    bandedRangeId :: (Core.Maybe Core.Int32),
    -- | Properties for column bands. These properties are applied on a column- by-column basis throughout all the columns in the range. At least one of row/properties or column/properties must be specified.
    columnProperties :: (Core.Maybe BandingProperties),
    -- | The range over which these properties are applied.
    range :: (Core.Maybe GridRange),
    -- | Properties for row bands. These properties are applied on a row-by-row basis throughout all the rows in the range. At least one of row/properties or column/properties must be specified.
    rowProperties :: (Core.Maybe BandingProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BandedRange' with the minimum fields required to make a request.
newBandedRange ::
  BandedRange
newBandedRange =
  BandedRange
    { bandedRangeId = Core.Nothing,
      columnProperties = Core.Nothing,
      range = Core.Nothing,
      rowProperties = Core.Nothing
    }

instance Core.FromJSON BandedRange where
  parseJSON =
    Core.withObject
      "BandedRange"
      ( \o ->
          BandedRange
            Core.<$> (o Core..:? "bandedRangeId")
            Core.<*> (o Core..:? "columnProperties")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "rowProperties")
      )

instance Core.ToJSON BandedRange where
  toJSON BandedRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("bandedRangeId" Core..=) Core.<$> bandedRangeId,
            ("columnProperties" Core..=)
              Core.<$> columnProperties,
            ("range" Core..=) Core.<$> range,
            ("rowProperties" Core..=) Core.<$> rowProperties
          ]
      )

-- | Properties referring a single dimension (either row or column). If both BandedRange.row/properties and BandedRange.column/properties are set, the fill colors are applied to cells according to the following rules: * header/color and footer/color take priority over band colors. * first/band/color takes priority over second/band/color. * row/properties takes priority over column/properties. For example, the first row color takes priority over the first column color, but the first column color takes priority over the second row color. Similarly, the row header takes priority over the column header in the top left cell, but the column header takes priority over the first row color if the row header is not set.
--
-- /See:/ 'newBandingProperties' smart constructor.
data BandingProperties = BandingProperties
  { -- | The first color that is alternating. (Required)
    firstBandColor :: (Core.Maybe Color),
    -- | The first color that is alternating. (Required) If first/band/color is also set, this field takes precedence.
    firstBandColorStyle :: (Core.Maybe ColorStyle),
    -- | The color of the last row or column. If this field is not set, the last row or column is filled with either first/band/color or second/band/color, depending on the color of the previous row or column.
    footerColor :: (Core.Maybe Color),
    -- | The color of the last row or column. If this field is not set, the last row or column is filled with either first/band/color or second/band/color, depending on the color of the previous row or column. If footer_color is also set, this field takes precedence.
    footerColorStyle :: (Core.Maybe ColorStyle),
    -- | The color of the first row or column. If this field is set, the first row or column is filled with this color and the colors alternate between first/band/color and second/band/color starting from the second row or column. Otherwise, the first row or column is filled with first/band/color and the colors proceed to alternate as they normally would.
    headerColor :: (Core.Maybe Color),
    -- | The color of the first row or column. If this field is set, the first row or column is filled with this color and the colors alternate between first/band/color and second/band/color starting from the second row or column. Otherwise, the first row or column is filled with first/band/color and the colors proceed to alternate as they normally would. If header_color is also set, this field takes precedence.
    headerColorStyle :: (Core.Maybe ColorStyle),
    -- | The second color that is alternating. (Required)
    secondBandColor :: (Core.Maybe Color),
    -- | The second color that is alternating. (Required) If second/band/color is also set, this field takes precedence.
    secondBandColorStyle :: (Core.Maybe ColorStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BandingProperties' with the minimum fields required to make a request.
newBandingProperties ::
  BandingProperties
newBandingProperties =
  BandingProperties
    { firstBandColor = Core.Nothing,
      firstBandColorStyle = Core.Nothing,
      footerColor = Core.Nothing,
      footerColorStyle = Core.Nothing,
      headerColor = Core.Nothing,
      headerColorStyle = Core.Nothing,
      secondBandColor = Core.Nothing,
      secondBandColorStyle = Core.Nothing
    }

instance Core.FromJSON BandingProperties where
  parseJSON =
    Core.withObject
      "BandingProperties"
      ( \o ->
          BandingProperties
            Core.<$> (o Core..:? "firstBandColor")
            Core.<*> (o Core..:? "firstBandColorStyle")
            Core.<*> (o Core..:? "footerColor")
            Core.<*> (o Core..:? "footerColorStyle")
            Core.<*> (o Core..:? "headerColor")
            Core.<*> (o Core..:? "headerColorStyle")
            Core.<*> (o Core..:? "secondBandColor")
            Core.<*> (o Core..:? "secondBandColorStyle")
      )

instance Core.ToJSON BandingProperties where
  toJSON BandingProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("firstBandColor" Core..=) Core.<$> firstBandColor,
            ("firstBandColorStyle" Core..=)
              Core.<$> firstBandColorStyle,
            ("footerColor" Core..=) Core.<$> footerColor,
            ("footerColorStyle" Core..=)
              Core.<$> footerColorStyle,
            ("headerColor" Core..=) Core.<$> headerColor,
            ("headerColorStyle" Core..=)
              Core.<$> headerColorStyle,
            ("secondBandColor" Core..=) Core.<$> secondBandColor,
            ("secondBandColorStyle" Core..=)
              Core.<$> secondBandColorStyle
          ]
      )

-- | Formatting options for baseline value.
--
-- /See:/ 'newBaselineValueFormat' smart constructor.
data BaselineValueFormat = BaselineValueFormat
  { -- | The comparison type of key value with baseline value.
    comparisonType :: (Core.Maybe BaselineValueFormat_ComparisonType),
    -- | Description which is appended after the baseline value. This field is optional.
    description :: (Core.Maybe Core.Text),
    -- | Color to be used, in case baseline value represents a negative change for key value. This field is optional.
    negativeColor :: (Core.Maybe Color),
    -- | Color to be used, in case baseline value represents a negative change for key value. This field is optional. If negative_color is also set, this field takes precedence.
    negativeColorStyle :: (Core.Maybe ColorStyle),
    -- | Specifies the horizontal text positioning of baseline value. This field is optional. If not specified, default positioning is used.
    position :: (Core.Maybe TextPosition),
    -- | Color to be used, in case baseline value represents a positive change for key value. This field is optional.
    positiveColor :: (Core.Maybe Color),
    -- | Color to be used, in case baseline value represents a positive change for key value. This field is optional. If positive_color is also set, this field takes precedence.
    positiveColorStyle :: (Core.Maybe ColorStyle),
    -- | Text formatting options for baseline value. The link field is not supported.
    textFormat :: (Core.Maybe TextFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BaselineValueFormat' with the minimum fields required to make a request.
newBaselineValueFormat ::
  BaselineValueFormat
newBaselineValueFormat =
  BaselineValueFormat
    { comparisonType = Core.Nothing,
      description = Core.Nothing,
      negativeColor = Core.Nothing,
      negativeColorStyle = Core.Nothing,
      position = Core.Nothing,
      positiveColor = Core.Nothing,
      positiveColorStyle = Core.Nothing,
      textFormat = Core.Nothing
    }

instance Core.FromJSON BaselineValueFormat where
  parseJSON =
    Core.withObject
      "BaselineValueFormat"
      ( \o ->
          BaselineValueFormat
            Core.<$> (o Core..:? "comparisonType")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "negativeColor")
            Core.<*> (o Core..:? "negativeColorStyle")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "positiveColor")
            Core.<*> (o Core..:? "positiveColorStyle")
            Core.<*> (o Core..:? "textFormat")
      )

instance Core.ToJSON BaselineValueFormat where
  toJSON BaselineValueFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonType" Core..=) Core.<$> comparisonType,
            ("description" Core..=) Core.<$> description,
            ("negativeColor" Core..=) Core.<$> negativeColor,
            ("negativeColorStyle" Core..=)
              Core.<$> negativeColorStyle,
            ("position" Core..=) Core.<$> position,
            ("positiveColor" Core..=) Core.<$> positiveColor,
            ("positiveColorStyle" Core..=)
              Core.<$> positiveColorStyle,
            ("textFormat" Core..=) Core.<$> textFormat
          ]
      )

-- | An axis of the chart. A chart may not have more than one axis per axis position.
--
-- /See:/ 'newBasicChartAxis' smart constructor.
data BasicChartAxis = BasicChartAxis
  { -- | The format of the title. Only valid if the axis is not associated with the domain. The link field is not supported.
    format :: (Core.Maybe TextFormat),
    -- | The position of this axis.
    position :: (Core.Maybe BasicChartAxis_Position),
    -- | The title of this axis. If set, this overrides any title inferred from headers of the data.
    title :: (Core.Maybe Core.Text),
    -- | The axis title text position.
    titleTextPosition :: (Core.Maybe TextPosition),
    -- | The view window options for this axis.
    viewWindowOptions :: (Core.Maybe ChartAxisViewWindowOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicChartAxis' with the minimum fields required to make a request.
newBasicChartAxis ::
  BasicChartAxis
newBasicChartAxis =
  BasicChartAxis
    { format = Core.Nothing,
      position = Core.Nothing,
      title = Core.Nothing,
      titleTextPosition = Core.Nothing,
      viewWindowOptions = Core.Nothing
    }

instance Core.FromJSON BasicChartAxis where
  parseJSON =
    Core.withObject
      "BasicChartAxis"
      ( \o ->
          BasicChartAxis
            Core.<$> (o Core..:? "format")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "titleTextPosition")
            Core.<*> (o Core..:? "viewWindowOptions")
      )

instance Core.ToJSON BasicChartAxis where
  toJSON BasicChartAxis {..} =
    Core.object
      ( Core.catMaybes
          [ ("format" Core..=) Core.<$> format,
            ("position" Core..=) Core.<$> position,
            ("title" Core..=) Core.<$> title,
            ("titleTextPosition" Core..=)
              Core.<$> titleTextPosition,
            ("viewWindowOptions" Core..=)
              Core.<$> viewWindowOptions
          ]
      )

-- | The domain of a chart. For example, if charting stock prices over time, this would be the date.
--
-- /See:/ 'newBasicChartDomain' smart constructor.
data BasicChartDomain = BasicChartDomain
  { -- | The data of the domain. For example, if charting stock prices over time, this is the data representing the dates.
    domain :: (Core.Maybe ChartData),
    -- | True to reverse the order of the domain values (horizontal axis).
    reversed :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicChartDomain' with the minimum fields required to make a request.
newBasicChartDomain ::
  BasicChartDomain
newBasicChartDomain =
  BasicChartDomain {domain = Core.Nothing, reversed = Core.Nothing}

instance Core.FromJSON BasicChartDomain where
  parseJSON =
    Core.withObject
      "BasicChartDomain"
      ( \o ->
          BasicChartDomain
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "reversed")
      )

instance Core.ToJSON BasicChartDomain where
  toJSON BasicChartDomain {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("reversed" Core..=) Core.<$> reversed
          ]
      )

-- | A single series of data in a chart. For example, if charting stock prices over time, multiple series may exist, one for the \"Open Price\", \"High Price\", \"Low Price\" and \"Close Price\".
--
-- /See:/ 'newBasicChartSeries' smart constructor.
data BasicChartSeries = BasicChartSeries
  { -- | The color for elements (such as bars, lines, and points) associated with this series. If empty, a default color is used.
    color :: (Core.Maybe Color),
    -- | The color for elements (such as bars, lines, and points) associated with this series. If empty, a default color is used. If color is also set, this field takes precedence.
    colorStyle :: (Core.Maybe ColorStyle),
    -- | Information about the data labels for this series.
    dataLabel :: (Core.Maybe DataLabel),
    -- | The line style of this series. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA or LINE.
    lineStyle :: (Core.Maybe LineStyle),
    -- | The style for points associated with this series. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA, LINE, or SCATTER. If empty, a default point style is used.
    pointStyle :: (Core.Maybe PointStyle),
    -- | The data being visualized in this chart series.
    series :: (Core.Maybe ChartData),
    -- | Style override settings for series data points.
    styleOverrides :: (Core.Maybe [BasicSeriesDataPointStyleOverride]),
    -- | The minor axis that will specify the range of values for this series. For example, if charting stocks over time, the \"Volume\" series may want to be pinned to the right with the prices pinned to the left, because the scale of trading volume is different than the scale of prices. It is an error to specify an axis that isn\'t a valid minor axis for the chart\'s type.
    targetAxis :: (Core.Maybe BasicChartSeries_TargetAxis),
    -- | The type of this series. Valid only if the chartType is COMBO. Different types will change the way the series is visualized. Only LINE, AREA, and COLUMN are supported.
    type' :: (Core.Maybe BasicChartSeries_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicChartSeries' with the minimum fields required to make a request.
newBasicChartSeries ::
  BasicChartSeries
newBasicChartSeries =
  BasicChartSeries
    { color = Core.Nothing,
      colorStyle = Core.Nothing,
      dataLabel = Core.Nothing,
      lineStyle = Core.Nothing,
      pointStyle = Core.Nothing,
      series = Core.Nothing,
      styleOverrides = Core.Nothing,
      targetAxis = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON BasicChartSeries where
  parseJSON =
    Core.withObject
      "BasicChartSeries"
      ( \o ->
          BasicChartSeries
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorStyle")
            Core.<*> (o Core..:? "dataLabel")
            Core.<*> (o Core..:? "lineStyle")
            Core.<*> (o Core..:? "pointStyle")
            Core.<*> (o Core..:? "series")
            Core.<*> (o Core..:? "styleOverrides")
            Core.<*> (o Core..:? "targetAxis")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON BasicChartSeries where
  toJSON BasicChartSeries {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorStyle" Core..=) Core.<$> colorStyle,
            ("dataLabel" Core..=) Core.<$> dataLabel,
            ("lineStyle" Core..=) Core.<$> lineStyle,
            ("pointStyle" Core..=) Core.<$> pointStyle,
            ("series" Core..=) Core.<$> series,
            ("styleOverrides" Core..=) Core.<$> styleOverrides,
            ("targetAxis" Core..=) Core.<$> targetAxis,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The specification for a basic chart. See BasicChartType for the list of charts this supports.
--
-- /See:/ 'newBasicChartSpec' smart constructor.
data BasicChartSpec = BasicChartSpec
  { -- | The axis on the chart.
    axis :: (Core.Maybe [BasicChartAxis]),
    -- | The type of the chart.
    chartType :: (Core.Maybe BasicChartSpec_ChartType),
    -- | The behavior of tooltips and data highlighting when hovering on data and chart area.
    compareMode :: (Core.Maybe BasicChartSpec_CompareMode),
    -- | The domain of data this is charting. Only a single domain is supported.
    domains :: (Core.Maybe [BasicChartDomain]),
    -- | The number of rows or columns in the data that are \"headers\". If not set, Google Sheets will guess how many rows are headers based on the data. (Note that BasicChartAxis.title may override the axis title inferred from the header values.)
    headerCount :: (Core.Maybe Core.Int32),
    -- | If some values in a series are missing, gaps may appear in the chart (e.g, segments of lines in a line chart will be missing). To eliminate these gaps set this to true. Applies to Line, Area, and Combo charts.
    interpolateNulls :: (Core.Maybe Core.Bool),
    -- | The position of the chart legend.
    legendPosition :: (Core.Maybe BasicChartSpec_LegendPosition),
    -- | Gets whether all lines should be rendered smooth or straight by default. Applies to Line charts.
    lineSmoothing :: (Core.Maybe Core.Bool),
    -- | The data this chart is visualizing.
    series :: (Core.Maybe [BasicChartSeries]),
    -- | The stacked type for charts that support vertical stacking. Applies to Area, Bar, Column, Combo, and Stepped Area charts.
    stackedType :: (Core.Maybe BasicChartSpec_StackedType),
    -- | True to make the chart 3D. Applies to Bar and Column charts.
    threeDimensional :: (Core.Maybe Core.Bool),
    -- | Controls whether to display additional data labels on stacked charts which sum the total value of all stacked values at each value along the domain axis. These data labels can only be set when chart/type is one of AREA, BAR, COLUMN, COMBO or STEPPED/AREA and stacked/type is either STACKED or PERCENT/STACKED. In addition, for COMBO, this will only be supported if there is only one type of stackable series type or one type has more series than the others and each of the other types have no more than one series. For example, if a chart has two stacked bar series and one area series, the total data labels will be supported. If it has three bar series and two area series, total data labels are not allowed. Neither CUSTOM nor placement can be set on the total/data/label.
    totalDataLabel :: (Core.Maybe DataLabel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicChartSpec' with the minimum fields required to make a request.
newBasicChartSpec ::
  BasicChartSpec
newBasicChartSpec =
  BasicChartSpec
    { axis = Core.Nothing,
      chartType = Core.Nothing,
      compareMode = Core.Nothing,
      domains = Core.Nothing,
      headerCount = Core.Nothing,
      interpolateNulls = Core.Nothing,
      legendPosition = Core.Nothing,
      lineSmoothing = Core.Nothing,
      series = Core.Nothing,
      stackedType = Core.Nothing,
      threeDimensional = Core.Nothing,
      totalDataLabel = Core.Nothing
    }

instance Core.FromJSON BasicChartSpec where
  parseJSON =
    Core.withObject
      "BasicChartSpec"
      ( \o ->
          BasicChartSpec
            Core.<$> (o Core..:? "axis")
            Core.<*> (o Core..:? "chartType")
            Core.<*> (o Core..:? "compareMode")
            Core.<*> (o Core..:? "domains")
            Core.<*> (o Core..:? "headerCount")
            Core.<*> (o Core..:? "interpolateNulls")
            Core.<*> (o Core..:? "legendPosition")
            Core.<*> (o Core..:? "lineSmoothing")
            Core.<*> (o Core..:? "series")
            Core.<*> (o Core..:? "stackedType")
            Core.<*> (o Core..:? "threeDimensional")
            Core.<*> (o Core..:? "totalDataLabel")
      )

instance Core.ToJSON BasicChartSpec where
  toJSON BasicChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("axis" Core..=) Core.<$> axis,
            ("chartType" Core..=) Core.<$> chartType,
            ("compareMode" Core..=) Core.<$> compareMode,
            ("domains" Core..=) Core.<$> domains,
            ("headerCount" Core..=) Core.<$> headerCount,
            ("interpolateNulls" Core..=)
              Core.<$> interpolateNulls,
            ("legendPosition" Core..=) Core.<$> legendPosition,
            ("lineSmoothing" Core..=) Core.<$> lineSmoothing,
            ("series" Core..=) Core.<$> series,
            ("stackedType" Core..=) Core.<$> stackedType,
            ("threeDimensional" Core..=)
              Core.<$> threeDimensional,
            ("totalDataLabel" Core..=) Core.<$> totalDataLabel
          ]
      )

-- | The default filter associated with a sheet.
--
-- /See:/ 'newBasicFilter' smart constructor.
data BasicFilter = BasicFilter
  { -- | The criteria for showing\/hiding values per column. The map\'s key is the column index, and the value is the criteria for that column. This field is deprecated in favor of filter_specs.
    criteria :: (Core.Maybe BasicFilter_Criteria),
    -- | The filter criteria per column. Both criteria and filter_specs are populated in responses. If both fields are specified in an update request, this field takes precedence.
    filterSpecs :: (Core.Maybe [FilterSpec]),
    -- | The range the filter covers.
    range :: (Core.Maybe GridRange),
    -- | The sort order per column. Later specifications are used when values are equal in the earlier specifications.
    sortSpecs :: (Core.Maybe [SortSpec])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicFilter' with the minimum fields required to make a request.
newBasicFilter ::
  BasicFilter
newBasicFilter =
  BasicFilter
    { criteria = Core.Nothing,
      filterSpecs = Core.Nothing,
      range = Core.Nothing,
      sortSpecs = Core.Nothing
    }

instance Core.FromJSON BasicFilter where
  parseJSON =
    Core.withObject
      "BasicFilter"
      ( \o ->
          BasicFilter
            Core.<$> (o Core..:? "criteria")
            Core.<*> (o Core..:? "filterSpecs")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "sortSpecs")
      )

instance Core.ToJSON BasicFilter where
  toJSON BasicFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("criteria" Core..=) Core.<$> criteria,
            ("filterSpecs" Core..=) Core.<$> filterSpecs,
            ("range" Core..=) Core.<$> range,
            ("sortSpecs" Core..=) Core.<$> sortSpecs
          ]
      )

-- | The criteria for showing\/hiding values per column. The map\'s key is the column index, and the value is the criteria for that column. This field is deprecated in favor of filter_specs.
--
-- /See:/ 'newBasicFilter_Criteria' smart constructor.
newtype BasicFilter_Criteria = BasicFilter_Criteria
  { -- |
    additional :: (Core.HashMap Core.Text FilterCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicFilter_Criteria' with the minimum fields required to make a request.
newBasicFilter_Criteria ::
  -- |  See 'additional'.
  Core.HashMap Core.Text FilterCriteria ->
  BasicFilter_Criteria
newBasicFilter_Criteria additional =
  BasicFilter_Criteria {additional = additional}

instance Core.FromJSON BasicFilter_Criteria where
  parseJSON =
    Core.withObject
      "BasicFilter_Criteria"
      ( \o ->
          BasicFilter_Criteria
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BasicFilter_Criteria where
  toJSON BasicFilter_Criteria {..} =
    Core.toJSON additional

-- | Style override settings for a single series data point.
--
-- /See:/ 'newBasicSeriesDataPointStyleOverride' smart constructor.
data BasicSeriesDataPointStyleOverride = BasicSeriesDataPointStyleOverride
  { -- | Color of the series data point. If empty, the series default is used.
    color :: (Core.Maybe Color),
    -- | Color of the series data point. If empty, the series default is used. If color is also set, this field takes precedence.
    colorStyle :: (Core.Maybe ColorStyle),
    -- | Zero based index of the series data point.
    index :: (Core.Maybe Core.Int32),
    -- | Point style of the series data point. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA, LINE, or SCATTER. If empty, the series default is used.
    pointStyle :: (Core.Maybe PointStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasicSeriesDataPointStyleOverride' with the minimum fields required to make a request.
newBasicSeriesDataPointStyleOverride ::
  BasicSeriesDataPointStyleOverride
newBasicSeriesDataPointStyleOverride =
  BasicSeriesDataPointStyleOverride
    { color = Core.Nothing,
      colorStyle = Core.Nothing,
      index = Core.Nothing,
      pointStyle = Core.Nothing
    }

instance
  Core.FromJSON
    BasicSeriesDataPointStyleOverride
  where
  parseJSON =
    Core.withObject
      "BasicSeriesDataPointStyleOverride"
      ( \o ->
          BasicSeriesDataPointStyleOverride
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorStyle")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "pointStyle")
      )

instance
  Core.ToJSON
    BasicSeriesDataPointStyleOverride
  where
  toJSON BasicSeriesDataPointStyleOverride {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorStyle" Core..=) Core.<$> colorStyle,
            ("index" Core..=) Core.<$> index,
            ("pointStyle" Core..=) Core.<$> pointStyle
          ]
      )

-- | The request for clearing more than one range selected by a DataFilter in a spreadsheet.
--
-- /See:/ 'newBatchClearValuesByDataFilterRequest' smart constructor.
newtype BatchClearValuesByDataFilterRequest = BatchClearValuesByDataFilterRequest
  { -- | The DataFilters used to determine which ranges to clear.
    dataFilters :: (Core.Maybe [DataFilter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchClearValuesByDataFilterRequest' with the minimum fields required to make a request.
newBatchClearValuesByDataFilterRequest ::
  BatchClearValuesByDataFilterRequest
newBatchClearValuesByDataFilterRequest =
  BatchClearValuesByDataFilterRequest {dataFilters = Core.Nothing}

instance
  Core.FromJSON
    BatchClearValuesByDataFilterRequest
  where
  parseJSON =
    Core.withObject
      "BatchClearValuesByDataFilterRequest"
      ( \o ->
          BatchClearValuesByDataFilterRequest
            Core.<$> (o Core..:? "dataFilters")
      )

instance
  Core.ToJSON
    BatchClearValuesByDataFilterRequest
  where
  toJSON BatchClearValuesByDataFilterRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataFilters" Core..=) Core.<$> dataFilters]
      )

-- | The response when clearing a range of values selected with DataFilters in a spreadsheet.
--
-- /See:/ 'newBatchClearValuesByDataFilterResponse' smart constructor.
data BatchClearValuesByDataFilterResponse = BatchClearValuesByDataFilterResponse
  { -- | The ranges that were cleared, in </sheets/api/guides/concepts#cell A1 notation>. If the requests are for an unbounded range or a ranger larger than the bounds of the sheet, this is the actual ranges that were cleared, bounded to the sheet\'s limits.
    clearedRanges :: (Core.Maybe [Core.Text]),
    -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchClearValuesByDataFilterResponse' with the minimum fields required to make a request.
newBatchClearValuesByDataFilterResponse ::
  BatchClearValuesByDataFilterResponse
newBatchClearValuesByDataFilterResponse =
  BatchClearValuesByDataFilterResponse
    { clearedRanges = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance
  Core.FromJSON
    BatchClearValuesByDataFilterResponse
  where
  parseJSON =
    Core.withObject
      "BatchClearValuesByDataFilterResponse"
      ( \o ->
          BatchClearValuesByDataFilterResponse
            Core.<$> (o Core..:? "clearedRanges")
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance
  Core.ToJSON
    BatchClearValuesByDataFilterResponse
  where
  toJSON BatchClearValuesByDataFilterResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clearedRanges" Core..=) Core.<$> clearedRanges,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | The request for clearing more than one range of values in a spreadsheet.
--
-- /See:/ 'newBatchClearValuesRequest' smart constructor.
newtype BatchClearValuesRequest = BatchClearValuesRequest
  { -- | The ranges to clear, in </sheets/api/guides/concepts#cell A1 notation or R1C1 notation>.
    ranges :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchClearValuesRequest' with the minimum fields required to make a request.
newBatchClearValuesRequest ::
  BatchClearValuesRequest
newBatchClearValuesRequest = BatchClearValuesRequest {ranges = Core.Nothing}

instance Core.FromJSON BatchClearValuesRequest where
  parseJSON =
    Core.withObject
      "BatchClearValuesRequest"
      ( \o ->
          BatchClearValuesRequest
            Core.<$> (o Core..:? "ranges")
      )

instance Core.ToJSON BatchClearValuesRequest where
  toJSON BatchClearValuesRequest {..} =
    Core.object
      (Core.catMaybes [("ranges" Core..=) Core.<$> ranges])

-- | The response when clearing a range of values in a spreadsheet.
--
-- /See:/ 'newBatchClearValuesResponse' smart constructor.
data BatchClearValuesResponse = BatchClearValuesResponse
  { -- | The ranges that were cleared, in A1 notation. If the requests are for an unbounded range or a ranger larger than the bounds of the sheet, this is the actual ranges that were cleared, bounded to the sheet\'s limits.
    clearedRanges :: (Core.Maybe [Core.Text]),
    -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchClearValuesResponse' with the minimum fields required to make a request.
newBatchClearValuesResponse ::
  BatchClearValuesResponse
newBatchClearValuesResponse =
  BatchClearValuesResponse
    { clearedRanges = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance Core.FromJSON BatchClearValuesResponse where
  parseJSON =
    Core.withObject
      "BatchClearValuesResponse"
      ( \o ->
          BatchClearValuesResponse
            Core.<$> (o Core..:? "clearedRanges")
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance Core.ToJSON BatchClearValuesResponse where
  toJSON BatchClearValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clearedRanges" Core..=) Core.<$> clearedRanges,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | The request for retrieving a range of values in a spreadsheet selected by a set of DataFilters.
--
-- /See:/ 'newBatchGetValuesByDataFilterRequest' smart constructor.
data BatchGetValuesByDataFilterRequest = BatchGetValuesByDataFilterRequest
  { -- | The data filters used to match the ranges of values to retrieve. Ranges that match any of the specified data filters are included in the response.
    dataFilters :: (Core.Maybe [DataFilter]),
    -- | How dates, times, and durations should be represented in the output. This is ignored if value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL/NUMBER.
    dateTimeRenderOption :: (Core.Maybe BatchGetValuesByDataFilterRequest_DateTimeRenderOption),
    -- | The major dimension that results should use. For example, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then a request that selects that range and sets @majorDimension=ROWS@ returns @[[1,2],[3,4]]@, whereas a request that sets @majorDimension=COLUMNS@ returns @[[1,3],[2,4]]@.
    majorDimension :: (Core.Maybe BatchGetValuesByDataFilterRequest_MajorDimension),
    -- | How values should be represented in the output. The default render option is FORMATTED_VALUE.
    valueRenderOption :: (Core.Maybe BatchGetValuesByDataFilterRequest_ValueRenderOption)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetValuesByDataFilterRequest' with the minimum fields required to make a request.
newBatchGetValuesByDataFilterRequest ::
  BatchGetValuesByDataFilterRequest
newBatchGetValuesByDataFilterRequest =
  BatchGetValuesByDataFilterRequest
    { dataFilters = Core.Nothing,
      dateTimeRenderOption = Core.Nothing,
      majorDimension = Core.Nothing,
      valueRenderOption = Core.Nothing
    }

instance
  Core.FromJSON
    BatchGetValuesByDataFilterRequest
  where
  parseJSON =
    Core.withObject
      "BatchGetValuesByDataFilterRequest"
      ( \o ->
          BatchGetValuesByDataFilterRequest
            Core.<$> (o Core..:? "dataFilters")
            Core.<*> (o Core..:? "dateTimeRenderOption")
            Core.<*> (o Core..:? "majorDimension")
            Core.<*> (o Core..:? "valueRenderOption")
      )

instance
  Core.ToJSON
    BatchGetValuesByDataFilterRequest
  where
  toJSON BatchGetValuesByDataFilterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilters" Core..=) Core.<$> dataFilters,
            ("dateTimeRenderOption" Core..=)
              Core.<$> dateTimeRenderOption,
            ("majorDimension" Core..=) Core.<$> majorDimension,
            ("valueRenderOption" Core..=)
              Core.<$> valueRenderOption
          ]
      )

-- | The response when retrieving more than one range of values in a spreadsheet selected by DataFilters.
--
-- /See:/ 'newBatchGetValuesByDataFilterResponse' smart constructor.
data BatchGetValuesByDataFilterResponse = BatchGetValuesByDataFilterResponse
  { -- | The ID of the spreadsheet the data was retrieved from.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The requested values with the list of data filters that matched them.
    valueRanges :: (Core.Maybe [MatchedValueRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetValuesByDataFilterResponse' with the minimum fields required to make a request.
newBatchGetValuesByDataFilterResponse ::
  BatchGetValuesByDataFilterResponse
newBatchGetValuesByDataFilterResponse =
  BatchGetValuesByDataFilterResponse
    { spreadsheetId = Core.Nothing,
      valueRanges = Core.Nothing
    }

instance
  Core.FromJSON
    BatchGetValuesByDataFilterResponse
  where
  parseJSON =
    Core.withObject
      "BatchGetValuesByDataFilterResponse"
      ( \o ->
          BatchGetValuesByDataFilterResponse
            Core.<$> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "valueRanges")
      )

instance
  Core.ToJSON
    BatchGetValuesByDataFilterResponse
  where
  toJSON BatchGetValuesByDataFilterResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("valueRanges" Core..=) Core.<$> valueRanges
          ]
      )

-- | The response when retrieving more than one range of values in a spreadsheet.
--
-- /See:/ 'newBatchGetValuesResponse' smart constructor.
data BatchGetValuesResponse = BatchGetValuesResponse
  { -- | The ID of the spreadsheet the data was retrieved from.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The requested values. The order of the ValueRanges is the same as the order of the requested ranges.
    valueRanges :: (Core.Maybe [ValueRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetValuesResponse' with the minimum fields required to make a request.
newBatchGetValuesResponse ::
  BatchGetValuesResponse
newBatchGetValuesResponse =
  BatchGetValuesResponse
    { spreadsheetId = Core.Nothing,
      valueRanges = Core.Nothing
    }

instance Core.FromJSON BatchGetValuesResponse where
  parseJSON =
    Core.withObject
      "BatchGetValuesResponse"
      ( \o ->
          BatchGetValuesResponse
            Core.<$> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "valueRanges")
      )

instance Core.ToJSON BatchGetValuesResponse where
  toJSON BatchGetValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("valueRanges" Core..=) Core.<$> valueRanges
          ]
      )

-- | The request for updating any aspect of a spreadsheet.
--
-- /See:/ 'newBatchUpdateSpreadsheetRequest' smart constructor.
data BatchUpdateSpreadsheetRequest = BatchUpdateSpreadsheetRequest
  { -- | Determines if the update response should include the spreadsheet resource.
    includeSpreadsheetInResponse :: (Core.Maybe Core.Bool),
    -- | A list of updates to apply to the spreadsheet. Requests will be applied in the order they are specified. If any request is not valid, no requests will be applied.
    requests :: (Core.Maybe [Request']),
    -- | True if grid data should be returned. Meaningful only if include/spreadsheet/in_response is \'true\'. This parameter is ignored if a field mask was set in the request.
    responseIncludeGridData :: (Core.Maybe Core.Bool),
    -- | Limits the ranges included in the response spreadsheet. Meaningful only if include/spreadsheet/in_response is \'true\'.
    responseRanges :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateSpreadsheetRequest' with the minimum fields required to make a request.
newBatchUpdateSpreadsheetRequest ::
  BatchUpdateSpreadsheetRequest
newBatchUpdateSpreadsheetRequest =
  BatchUpdateSpreadsheetRequest
    { includeSpreadsheetInResponse = Core.Nothing,
      requests = Core.Nothing,
      responseIncludeGridData = Core.Nothing,
      responseRanges = Core.Nothing
    }

instance Core.FromJSON BatchUpdateSpreadsheetRequest where
  parseJSON =
    Core.withObject
      "BatchUpdateSpreadsheetRequest"
      ( \o ->
          BatchUpdateSpreadsheetRequest
            Core.<$> (o Core..:? "includeSpreadsheetInResponse")
            Core.<*> (o Core..:? "requests")
            Core.<*> (o Core..:? "responseIncludeGridData")
            Core.<*> (o Core..:? "responseRanges")
      )

instance Core.ToJSON BatchUpdateSpreadsheetRequest where
  toJSON BatchUpdateSpreadsheetRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("includeSpreadsheetInResponse" Core..=)
              Core.<$> includeSpreadsheetInResponse,
            ("requests" Core..=) Core.<$> requests,
            ("responseIncludeGridData" Core..=)
              Core.<$> responseIncludeGridData,
            ("responseRanges" Core..=) Core.<$> responseRanges
          ]
      )

-- | The reply for batch updating a spreadsheet.
--
-- /See:/ 'newBatchUpdateSpreadsheetResponse' smart constructor.
data BatchUpdateSpreadsheetResponse = BatchUpdateSpreadsheetResponse
  { -- | The reply of the updates. This maps 1:1 with the updates, although replies to some requests may be empty.
    replies :: (Core.Maybe [Response]),
    -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The spreadsheet after updates were applied. This is only set if BatchUpdateSpreadsheetRequest.include/spreadsheet/in_response is @true@.
    updatedSpreadsheet :: (Core.Maybe Spreadsheet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateSpreadsheetResponse' with the minimum fields required to make a request.
newBatchUpdateSpreadsheetResponse ::
  BatchUpdateSpreadsheetResponse
newBatchUpdateSpreadsheetResponse =
  BatchUpdateSpreadsheetResponse
    { replies = Core.Nothing,
      spreadsheetId = Core.Nothing,
      updatedSpreadsheet = Core.Nothing
    }

instance Core.FromJSON BatchUpdateSpreadsheetResponse where
  parseJSON =
    Core.withObject
      "BatchUpdateSpreadsheetResponse"
      ( \o ->
          BatchUpdateSpreadsheetResponse
            Core.<$> (o Core..:? "replies")
            Core.<*> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "updatedSpreadsheet")
      )

instance Core.ToJSON BatchUpdateSpreadsheetResponse where
  toJSON BatchUpdateSpreadsheetResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("replies" Core..=) Core.<$> replies,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("updatedSpreadsheet" Core..=)
              Core.<$> updatedSpreadsheet
          ]
      )

-- | The request for updating more than one range of values in a spreadsheet.
--
-- /See:/ 'newBatchUpdateValuesByDataFilterRequest' smart constructor.
data BatchUpdateValuesByDataFilterRequest = BatchUpdateValuesByDataFilterRequest
  { -- | The new values to apply to the spreadsheet. If more than one range is matched by the specified DataFilter the specified values are applied to all of those ranges.
    data' :: (Core.Maybe [DataFilterValueRange]),
    -- | Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. The @updatedData@ field within each of the BatchUpdateValuesResponse.responses contains the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).
    includeValuesInResponse :: (Core.Maybe Core.Bool),
    -- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
    responseDateTimeRenderOption ::
      ( Core.Maybe
          BatchUpdateValuesByDataFilterRequest_ResponseDateTimeRenderOption
      ),
    -- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
    responseValueRenderOption ::
      ( Core.Maybe
          BatchUpdateValuesByDataFilterRequest_ResponseValueRenderOption
      ),
    -- | How the input data should be interpreted.
    valueInputOption :: (Core.Maybe BatchUpdateValuesByDataFilterRequest_ValueInputOption)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateValuesByDataFilterRequest' with the minimum fields required to make a request.
newBatchUpdateValuesByDataFilterRequest ::
  BatchUpdateValuesByDataFilterRequest
newBatchUpdateValuesByDataFilterRequest =
  BatchUpdateValuesByDataFilterRequest
    { data' = Core.Nothing,
      includeValuesInResponse = Core.Nothing,
      responseDateTimeRenderOption = Core.Nothing,
      responseValueRenderOption = Core.Nothing,
      valueInputOption = Core.Nothing
    }

instance
  Core.FromJSON
    BatchUpdateValuesByDataFilterRequest
  where
  parseJSON =
    Core.withObject
      "BatchUpdateValuesByDataFilterRequest"
      ( \o ->
          BatchUpdateValuesByDataFilterRequest
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "includeValuesInResponse")
            Core.<*> (o Core..:? "responseDateTimeRenderOption")
            Core.<*> (o Core..:? "responseValueRenderOption")
            Core.<*> (o Core..:? "valueInputOption")
      )

instance
  Core.ToJSON
    BatchUpdateValuesByDataFilterRequest
  where
  toJSON BatchUpdateValuesByDataFilterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("includeValuesInResponse" Core..=)
              Core.<$> includeValuesInResponse,
            ("responseDateTimeRenderOption" Core..=)
              Core.<$> responseDateTimeRenderOption,
            ("responseValueRenderOption" Core..=)
              Core.<$> responseValueRenderOption,
            ("valueInputOption" Core..=)
              Core.<$> valueInputOption
          ]
      )

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'newBatchUpdateValuesByDataFilterResponse' smart constructor.
data BatchUpdateValuesByDataFilterResponse = BatchUpdateValuesByDataFilterResponse
  { -- | The response for each range updated.
    responses :: (Core.Maybe [UpdateValuesByDataFilterResponse]),
    -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The total number of cells updated.
    totalUpdatedCells :: (Core.Maybe Core.Int32),
    -- | The total number of columns where at least one cell in the column was updated.
    totalUpdatedColumns :: (Core.Maybe Core.Int32),
    -- | The total number of rows where at least one cell in the row was updated.
    totalUpdatedRows :: (Core.Maybe Core.Int32),
    -- | The total number of sheets where at least one cell in the sheet was updated.
    totalUpdatedSheets :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateValuesByDataFilterResponse' with the minimum fields required to make a request.
newBatchUpdateValuesByDataFilterResponse ::
  BatchUpdateValuesByDataFilterResponse
newBatchUpdateValuesByDataFilterResponse =
  BatchUpdateValuesByDataFilterResponse
    { responses = Core.Nothing,
      spreadsheetId = Core.Nothing,
      totalUpdatedCells = Core.Nothing,
      totalUpdatedColumns = Core.Nothing,
      totalUpdatedRows = Core.Nothing,
      totalUpdatedSheets = Core.Nothing
    }

instance
  Core.FromJSON
    BatchUpdateValuesByDataFilterResponse
  where
  parseJSON =
    Core.withObject
      "BatchUpdateValuesByDataFilterResponse"
      ( \o ->
          BatchUpdateValuesByDataFilterResponse
            Core.<$> (o Core..:? "responses")
            Core.<*> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "totalUpdatedCells")
            Core.<*> (o Core..:? "totalUpdatedColumns")
            Core.<*> (o Core..:? "totalUpdatedRows")
            Core.<*> (o Core..:? "totalUpdatedSheets")
      )

instance
  Core.ToJSON
    BatchUpdateValuesByDataFilterResponse
  where
  toJSON BatchUpdateValuesByDataFilterResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responses" Core..=) Core.<$> responses,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("totalUpdatedCells" Core..=)
              Core.<$> totalUpdatedCells,
            ("totalUpdatedColumns" Core..=)
              Core.<$> totalUpdatedColumns,
            ("totalUpdatedRows" Core..=)
              Core.<$> totalUpdatedRows,
            ("totalUpdatedSheets" Core..=)
              Core.<$> totalUpdatedSheets
          ]
      )

-- | The request for updating more than one range of values in a spreadsheet.
--
-- /See:/ 'newBatchUpdateValuesRequest' smart constructor.
data BatchUpdateValuesRequest = BatchUpdateValuesRequest
  { -- | The new values to apply to the spreadsheet.
    data' :: (Core.Maybe [ValueRange]),
    -- | Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. The @updatedData@ field within each of the BatchUpdateValuesResponse.responses contains the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).
    includeValuesInResponse :: (Core.Maybe Core.Bool),
    -- | Determines how dates, times, and durations in the response should be rendered. This is ignored if response/value/render/option is FORMATTED/VALUE. The default dateTime render option is SERIAL_NUMBER.
    responseDateTimeRenderOption :: (Core.Maybe BatchUpdateValuesRequest_ResponseDateTimeRenderOption),
    -- | Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.
    responseValueRenderOption :: (Core.Maybe BatchUpdateValuesRequest_ResponseValueRenderOption),
    -- | How the input data should be interpreted.
    valueInputOption :: (Core.Maybe BatchUpdateValuesRequest_ValueInputOption)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateValuesRequest' with the minimum fields required to make a request.
newBatchUpdateValuesRequest ::
  BatchUpdateValuesRequest
newBatchUpdateValuesRequest =
  BatchUpdateValuesRequest
    { data' = Core.Nothing,
      includeValuesInResponse = Core.Nothing,
      responseDateTimeRenderOption = Core.Nothing,
      responseValueRenderOption = Core.Nothing,
      valueInputOption = Core.Nothing
    }

instance Core.FromJSON BatchUpdateValuesRequest where
  parseJSON =
    Core.withObject
      "BatchUpdateValuesRequest"
      ( \o ->
          BatchUpdateValuesRequest
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "includeValuesInResponse")
            Core.<*> (o Core..:? "responseDateTimeRenderOption")
            Core.<*> (o Core..:? "responseValueRenderOption")
            Core.<*> (o Core..:? "valueInputOption")
      )

instance Core.ToJSON BatchUpdateValuesRequest where
  toJSON BatchUpdateValuesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("includeValuesInResponse" Core..=)
              Core.<$> includeValuesInResponse,
            ("responseDateTimeRenderOption" Core..=)
              Core.<$> responseDateTimeRenderOption,
            ("responseValueRenderOption" Core..=)
              Core.<$> responseValueRenderOption,
            ("valueInputOption" Core..=)
              Core.<$> valueInputOption
          ]
      )

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'newBatchUpdateValuesResponse' smart constructor.
data BatchUpdateValuesResponse = BatchUpdateValuesResponse
  { -- | One UpdateValuesResponse per requested range, in the same order as the requests appeared.
    responses :: (Core.Maybe [UpdateValuesResponse]),
    -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The total number of cells updated.
    totalUpdatedCells :: (Core.Maybe Core.Int32),
    -- | The total number of columns where at least one cell in the column was updated.
    totalUpdatedColumns :: (Core.Maybe Core.Int32),
    -- | The total number of rows where at least one cell in the row was updated.
    totalUpdatedRows :: (Core.Maybe Core.Int32),
    -- | The total number of sheets where at least one cell in the sheet was updated.
    totalUpdatedSheets :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateValuesResponse' with the minimum fields required to make a request.
newBatchUpdateValuesResponse ::
  BatchUpdateValuesResponse
newBatchUpdateValuesResponse =
  BatchUpdateValuesResponse
    { responses = Core.Nothing,
      spreadsheetId = Core.Nothing,
      totalUpdatedCells = Core.Nothing,
      totalUpdatedColumns = Core.Nothing,
      totalUpdatedRows = Core.Nothing,
      totalUpdatedSheets = Core.Nothing
    }

instance Core.FromJSON BatchUpdateValuesResponse where
  parseJSON =
    Core.withObject
      "BatchUpdateValuesResponse"
      ( \o ->
          BatchUpdateValuesResponse
            Core.<$> (o Core..:? "responses")
            Core.<*> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "totalUpdatedCells")
            Core.<*> (o Core..:? "totalUpdatedColumns")
            Core.<*> (o Core..:? "totalUpdatedRows")
            Core.<*> (o Core..:? "totalUpdatedSheets")
      )

instance Core.ToJSON BatchUpdateValuesResponse where
  toJSON BatchUpdateValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responses" Core..=) Core.<$> responses,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("totalUpdatedCells" Core..=)
              Core.<$> totalUpdatedCells,
            ("totalUpdatedColumns" Core..=)
              Core.<$> totalUpdatedColumns,
            ("totalUpdatedRows" Core..=)
              Core.<$> totalUpdatedRows,
            ("totalUpdatedSheets" Core..=)
              Core.<$> totalUpdatedSheets
          ]
      )

-- | The specification of a BigQuery data source that\'s connected to a sheet.
--
-- /See:/ 'newBigQueryDataSourceSpec' smart constructor.
data BigQueryDataSourceSpec = BigQueryDataSourceSpec
  { -- | The ID of a BigQuery enabled GCP project with a billing account attached. For any queries executed against the data source, the project is charged.
    projectId :: (Core.Maybe Core.Text),
    -- | A BigQueryQuerySpec.
    querySpec :: (Core.Maybe BigQueryQuerySpec),
    -- | A BigQueryTableSpec.
    tableSpec :: (Core.Maybe BigQueryTableSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryDataSourceSpec' with the minimum fields required to make a request.
newBigQueryDataSourceSpec ::
  BigQueryDataSourceSpec
newBigQueryDataSourceSpec =
  BigQueryDataSourceSpec
    { projectId = Core.Nothing,
      querySpec = Core.Nothing,
      tableSpec = Core.Nothing
    }

instance Core.FromJSON BigQueryDataSourceSpec where
  parseJSON =
    Core.withObject
      "BigQueryDataSourceSpec"
      ( \o ->
          BigQueryDataSourceSpec
            Core.<$> (o Core..:? "projectId")
            Core.<*> (o Core..:? "querySpec")
            Core.<*> (o Core..:? "tableSpec")
      )

instance Core.ToJSON BigQueryDataSourceSpec where
  toJSON BigQueryDataSourceSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectId" Core..=) Core.<$> projectId,
            ("querySpec" Core..=) Core.<$> querySpec,
            ("tableSpec" Core..=) Core.<$> tableSpec
          ]
      )

-- | Specifies a custom BigQuery query.
--
-- /See:/ 'newBigQueryQuerySpec' smart constructor.
newtype BigQueryQuerySpec = BigQueryQuerySpec
  { -- | The raw query string.
    rawQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryQuerySpec' with the minimum fields required to make a request.
newBigQueryQuerySpec ::
  BigQueryQuerySpec
newBigQueryQuerySpec = BigQueryQuerySpec {rawQuery = Core.Nothing}

instance Core.FromJSON BigQueryQuerySpec where
  parseJSON =
    Core.withObject
      "BigQueryQuerySpec"
      ( \o ->
          BigQueryQuerySpec Core.<$> (o Core..:? "rawQuery")
      )

instance Core.ToJSON BigQueryQuerySpec where
  toJSON BigQueryQuerySpec {..} =
    Core.object
      ( Core.catMaybes
          [("rawQuery" Core..=) Core.<$> rawQuery]
      )

-- | Specifies a BigQuery table definition. Only <https://cloud.google.com/bigquery/docs/tables-intro native tables> is allowed.
--
-- /See:/ 'newBigQueryTableSpec' smart constructor.
data BigQueryTableSpec = BigQueryTableSpec
  { -- | The BigQuery dataset id.
    datasetId :: (Core.Maybe Core.Text),
    -- | The BigQuery table id.
    tableId :: (Core.Maybe Core.Text),
    -- | The ID of a BigQuery project the table belongs to. If not specified, the project_id is assumed.
    tableProjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryTableSpec' with the minimum fields required to make a request.
newBigQueryTableSpec ::
  BigQueryTableSpec
newBigQueryTableSpec =
  BigQueryTableSpec
    { datasetId = Core.Nothing,
      tableId = Core.Nothing,
      tableProjectId = Core.Nothing
    }

instance Core.FromJSON BigQueryTableSpec where
  parseJSON =
    Core.withObject
      "BigQueryTableSpec"
      ( \o ->
          BigQueryTableSpec
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "tableProjectId")
      )

instance Core.ToJSON BigQueryTableSpec where
  toJSON BigQueryTableSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("tableId" Core..=) Core.<$> tableId,
            ("tableProjectId" Core..=) Core.<$> tableProjectId
          ]
      )

-- | A condition that can evaluate to true or false. BooleanConditions are used by conditional formatting, data validation, and the criteria in filters.
--
-- /See:/ 'newBooleanCondition' smart constructor.
data BooleanCondition = BooleanCondition
  { -- | The type of condition.
    type' :: (Core.Maybe BooleanCondition_Type),
    -- | The values of the condition. The number of supported values depends on the condition type. Some support zero values, others one or two values, and ConditionType.ONE/OF/LIST supports an arbitrary number of values.
    values :: (Core.Maybe [ConditionValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooleanCondition' with the minimum fields required to make a request.
newBooleanCondition ::
  BooleanCondition
newBooleanCondition =
  BooleanCondition {type' = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON BooleanCondition where
  parseJSON =
    Core.withObject
      "BooleanCondition"
      ( \o ->
          BooleanCondition
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON BooleanCondition where
  toJSON BooleanCondition {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("values" Core..=) Core.<$> values
          ]
      )

-- | A rule that may or may not match, depending on the condition.
--
-- /See:/ 'newBooleanRule' smart constructor.
data BooleanRule = BooleanRule
  { -- | The condition of the rule. If the condition evaluates to true, the format is applied.
    condition :: (Core.Maybe BooleanCondition),
    -- | The format to apply. Conditional formatting can only apply a subset of formatting: bold, italic, strikethrough, foreground color & background color.
    format :: (Core.Maybe CellFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooleanRule' with the minimum fields required to make a request.
newBooleanRule ::
  BooleanRule
newBooleanRule = BooleanRule {condition = Core.Nothing, format = Core.Nothing}

instance Core.FromJSON BooleanRule where
  parseJSON =
    Core.withObject
      "BooleanRule"
      ( \o ->
          BooleanRule
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "format")
      )

instance Core.ToJSON BooleanRule where
  toJSON BooleanRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("format" Core..=) Core.<$> format
          ]
      )

-- | A border along a cell.
--
-- /See:/ 'newBorder' smart constructor.
data Border = Border
  { -- | The color of the border.
    color :: (Core.Maybe Color),
    -- | The color of the border. If color is also set, this field takes precedence.
    colorStyle :: (Core.Maybe ColorStyle),
    -- | The style of the border.
    style :: (Core.Maybe Border_Style),
    -- | The width of the border, in pixels. Deprecated; the width is determined by the \"style\" field.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Border' with the minimum fields required to make a request.
newBorder ::
  Border
newBorder =
  Border
    { color = Core.Nothing,
      colorStyle = Core.Nothing,
      style = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Border where
  parseJSON =
    Core.withObject
      "Border"
      ( \o ->
          Border
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorStyle")
            Core.<*> (o Core..:? "style")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Border where
  toJSON Border {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorStyle" Core..=) Core.<$> colorStyle,
            ("style" Core..=) Core.<$> style,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | The borders of the cell.
--
-- /See:/ 'newBorders' smart constructor.
data Borders = Borders
  { -- | The bottom border of the cell.
    bottom :: (Core.Maybe Border),
    -- | The left border of the cell.
    left :: (Core.Maybe Border),
    -- | The right border of the cell.
    right :: (Core.Maybe Border),
    -- | The top border of the cell.
    top :: (Core.Maybe Border)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Borders' with the minimum fields required to make a request.
newBorders ::
  Borders
newBorders =
  Borders
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance Core.FromJSON Borders where
  parseJSON =
    Core.withObject
      "Borders"
      ( \o ->
          Borders
            Core.<$> (o Core..:? "bottom")
            Core.<*> (o Core..:? "left")
            Core.<*> (o Core..:? "right")
            Core.<*> (o Core..:? "top")
      )

instance Core.ToJSON Borders where
  toJSON Borders {..} =
    Core.object
      ( Core.catMaybes
          [ ("bottom" Core..=) Core.<$> bottom,
            ("left" Core..=) Core.<$> left,
            ("right" Core..=) Core.<$> right,
            ("top" Core..=) Core.<$> top
          ]
      )

-- | A bubble chart.
--
-- /See:/ 'newBubbleChartSpec' smart constructor.
data BubbleChartSpec = BubbleChartSpec
  { -- | The bubble border color.
    bubbleBorderColor :: (Core.Maybe Color),
    -- | The bubble border color. If bubble/border/color is also set, this field takes precedence.
    bubbleBorderColorStyle :: (Core.Maybe ColorStyle),
    -- | The data containing the bubble labels. These do not need to be unique.
    bubbleLabels :: (Core.Maybe ChartData),
    -- | The max radius size of the bubbles, in pixels. If specified, the field must be a positive value.
    bubbleMaxRadiusSize :: (Core.Maybe Core.Int32),
    -- | The minimum radius size of the bubbles, in pixels. If specific, the field must be a positive value.
    bubbleMinRadiusSize :: (Core.Maybe Core.Int32),
    -- | The opacity of the bubbles between 0 and 1.0. 0 is fully transparent and 1 is fully opaque.
    bubbleOpacity :: (Core.Maybe Core.Double),
    -- | The data containing the bubble sizes. Bubble sizes are used to draw the bubbles at different sizes relative to each other. If specified, group_ids must also be specified. This field is optional.
    bubbleSizes :: (Core.Maybe ChartData),
    -- | The format of the text inside the bubbles. Strikethrough, underline, and link are not supported.
    bubbleTextStyle :: (Core.Maybe TextFormat),
    -- | The data containing the bubble x-values. These values locate the bubbles in the chart horizontally.
    domain :: (Core.Maybe ChartData),
    -- | The data containing the bubble group IDs. All bubbles with the same group ID are drawn in the same color. If bubble_sizes is specified then this field must also be specified but may contain blank values. This field is optional.
    groupIds :: (Core.Maybe ChartData),
    -- | Where the legend of the chart should be drawn.
    legendPosition :: (Core.Maybe BubbleChartSpec_LegendPosition),
    -- | The data containing the bubble y-values. These values locate the bubbles in the chart vertically.
    series :: (Core.Maybe ChartData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BubbleChartSpec' with the minimum fields required to make a request.
newBubbleChartSpec ::
  BubbleChartSpec
newBubbleChartSpec =
  BubbleChartSpec
    { bubbleBorderColor = Core.Nothing,
      bubbleBorderColorStyle = Core.Nothing,
      bubbleLabels = Core.Nothing,
      bubbleMaxRadiusSize = Core.Nothing,
      bubbleMinRadiusSize = Core.Nothing,
      bubbleOpacity = Core.Nothing,
      bubbleSizes = Core.Nothing,
      bubbleTextStyle = Core.Nothing,
      domain = Core.Nothing,
      groupIds = Core.Nothing,
      legendPosition = Core.Nothing,
      series = Core.Nothing
    }

instance Core.FromJSON BubbleChartSpec where
  parseJSON =
    Core.withObject
      "BubbleChartSpec"
      ( \o ->
          BubbleChartSpec
            Core.<$> (o Core..:? "bubbleBorderColor")
            Core.<*> (o Core..:? "bubbleBorderColorStyle")
            Core.<*> (o Core..:? "bubbleLabels")
            Core.<*> (o Core..:? "bubbleMaxRadiusSize")
            Core.<*> (o Core..:? "bubbleMinRadiusSize")
            Core.<*> (o Core..:? "bubbleOpacity")
            Core.<*> (o Core..:? "bubbleSizes")
            Core.<*> (o Core..:? "bubbleTextStyle")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "groupIds")
            Core.<*> (o Core..:? "legendPosition")
            Core.<*> (o Core..:? "series")
      )

instance Core.ToJSON BubbleChartSpec where
  toJSON BubbleChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("bubbleBorderColor" Core..=)
              Core.<$> bubbleBorderColor,
            ("bubbleBorderColorStyle" Core..=)
              Core.<$> bubbleBorderColorStyle,
            ("bubbleLabels" Core..=) Core.<$> bubbleLabels,
            ("bubbleMaxRadiusSize" Core..=)
              Core.<$> bubbleMaxRadiusSize,
            ("bubbleMinRadiusSize" Core..=)
              Core.<$> bubbleMinRadiusSize,
            ("bubbleOpacity" Core..=) Core.<$> bubbleOpacity,
            ("bubbleSizes" Core..=) Core.<$> bubbleSizes,
            ("bubbleTextStyle" Core..=) Core.<$> bubbleTextStyle,
            ("domain" Core..=) Core.<$> domain,
            ("groupIds" Core..=) Core.<$> groupIds,
            ("legendPosition" Core..=) Core.<$> legendPosition,
            ("series" Core..=) Core.<$> series
          ]
      )

-- | A candlestick chart.
--
-- /See:/ 'newCandlestickChartSpec' smart constructor.
data CandlestickChartSpec = CandlestickChartSpec
  { -- | The Candlestick chart data. Only one CandlestickData is supported.
    data' :: (Core.Maybe [CandlestickData]),
    -- | The domain data (horizontal axis) for the candlestick chart. String data will be treated as discrete labels, other data will be treated as continuous values.
    domain :: (Core.Maybe CandlestickDomain)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CandlestickChartSpec' with the minimum fields required to make a request.
newCandlestickChartSpec ::
  CandlestickChartSpec
newCandlestickChartSpec =
  CandlestickChartSpec {data' = Core.Nothing, domain = Core.Nothing}

instance Core.FromJSON CandlestickChartSpec where
  parseJSON =
    Core.withObject
      "CandlestickChartSpec"
      ( \o ->
          CandlestickChartSpec
            Core.<$> (o Core..:? "data") Core.<*> (o Core..:? "domain")
      )

instance Core.ToJSON CandlestickChartSpec where
  toJSON CandlestickChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("domain" Core..=) Core.<$> domain
          ]
      )

-- | The Candlestick chart data, each containing the low, open, close, and high values for a series.
--
-- /See:/ 'newCandlestickData' smart constructor.
data CandlestickData = CandlestickData
  { -- | The range data (vertical axis) for the close\/final value for each candle. This is the top of the candle body. If greater than the open value the candle will be filled. Otherwise the candle will be hollow.
    closeSeries :: (Core.Maybe CandlestickSeries),
    -- | The range data (vertical axis) for the high\/maximum value for each candle. This is the top of the candle\'s center line.
    highSeries :: (Core.Maybe CandlestickSeries),
    -- | The range data (vertical axis) for the low\/minimum value for each candle. This is the bottom of the candle\'s center line.
    lowSeries :: (Core.Maybe CandlestickSeries),
    -- | The range data (vertical axis) for the open\/initial value for each candle. This is the bottom of the candle body. If less than the close value the candle will be filled. Otherwise the candle will be hollow.
    openSeries :: (Core.Maybe CandlestickSeries)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CandlestickData' with the minimum fields required to make a request.
newCandlestickData ::
  CandlestickData
newCandlestickData =
  CandlestickData
    { closeSeries = Core.Nothing,
      highSeries = Core.Nothing,
      lowSeries = Core.Nothing,
      openSeries = Core.Nothing
    }

instance Core.FromJSON CandlestickData where
  parseJSON =
    Core.withObject
      "CandlestickData"
      ( \o ->
          CandlestickData
            Core.<$> (o Core..:? "closeSeries")
            Core.<*> (o Core..:? "highSeries")
            Core.<*> (o Core..:? "lowSeries")
            Core.<*> (o Core..:? "openSeries")
      )

instance Core.ToJSON CandlestickData where
  toJSON CandlestickData {..} =
    Core.object
      ( Core.catMaybes
          [ ("closeSeries" Core..=) Core.<$> closeSeries,
            ("highSeries" Core..=) Core.<$> highSeries,
            ("lowSeries" Core..=) Core.<$> lowSeries,
            ("openSeries" Core..=) Core.<$> openSeries
          ]
      )

-- | The domain of a CandlestickChart.
--
-- /See:/ 'newCandlestickDomain' smart constructor.
data CandlestickDomain = CandlestickDomain
  { -- | The data of the CandlestickDomain.
    data' :: (Core.Maybe ChartData),
    -- | True to reverse the order of the domain values (horizontal axis).
    reversed :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CandlestickDomain' with the minimum fields required to make a request.
newCandlestickDomain ::
  CandlestickDomain
newCandlestickDomain =
  CandlestickDomain {data' = Core.Nothing, reversed = Core.Nothing}

instance Core.FromJSON CandlestickDomain where
  parseJSON =
    Core.withObject
      "CandlestickDomain"
      ( \o ->
          CandlestickDomain
            Core.<$> (o Core..:? "data") Core.<*> (o Core..:? "reversed")
      )

instance Core.ToJSON CandlestickDomain where
  toJSON CandlestickDomain {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("reversed" Core..=) Core.<$> reversed
          ]
      )

-- | The series of a CandlestickData.
--
-- /See:/ 'newCandlestickSeries' smart constructor.
newtype CandlestickSeries = CandlestickSeries
  { -- | The data of the CandlestickSeries.
    data' :: (Core.Maybe ChartData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CandlestickSeries' with the minimum fields required to make a request.
newCandlestickSeries ::
  CandlestickSeries
newCandlestickSeries = CandlestickSeries {data' = Core.Nothing}

instance Core.FromJSON CandlestickSeries where
  parseJSON =
    Core.withObject
      "CandlestickSeries"
      ( \o ->
          CandlestickSeries Core.<$> (o Core..:? "data")
      )

instance Core.ToJSON CandlestickSeries where
  toJSON CandlestickSeries {..} =
    Core.object
      (Core.catMaybes [("data" Core..=) Core.<$> data'])

-- | Data about a specific cell.
--
-- /See:/ 'newCellData' smart constructor.
data CellData = CellData
  { -- | Output only. Information about a data source formula on the cell. The field is set if user/entered/value is a formula referencing some DATA_SOURCE sheet, e.g. @=SUM(DataSheet!Column)@.
    dataSourceFormula :: (Core.Maybe DataSourceFormula),
    -- | A data source table anchored at this cell. The size of data source table itself is computed dynamically based on its configuration. Only the first cell of the data source table contains the data source table definition. The other cells will contain the display values of the data source table result in their effective_value fields.
    dataSourceTable :: (Core.Maybe DataSourceTable),
    -- | A data validation rule on the cell, if any. When writing, the new data validation rule will overwrite any prior rule.
    dataValidation :: (Core.Maybe DataValidationRule),
    -- | The effective format being used by the cell. This includes the results of applying any conditional formatting and, if the cell contains a formula, the computed number format. If the effective format is the default format, effective format will not be written. This field is read-only.
    effectiveFormat :: (Core.Maybe CellFormat),
    -- | The effective value of the cell. For cells with formulas, this is the calculated value. For cells with literals, this is the same as the user/entered/value. This field is read-only.
    effectiveValue :: (Core.Maybe ExtendedValue),
    -- | The formatted value of the cell. This is the value as it\'s shown to the user. This field is read-only.
    formattedValue :: (Core.Maybe Core.Text),
    -- | A hyperlink this cell points to, if any. If the cell contains multiple hyperlinks, this field will be empty. This field is read-only. To set it, use a @=HYPERLINK@ formula in the userEnteredValue.formulaValue field. A cell-level link can also be set from the userEnteredFormat.textFormat field. Alternatively, set a hyperlink in the textFormatRun.format.link field that spans the entire cell.
    hyperlink :: (Core.Maybe Core.Text),
    -- | Any note on the cell.
    note :: (Core.Maybe Core.Text),
    -- | A pivot table anchored at this cell. The size of pivot table itself is computed dynamically based on its data, grouping, filters, values, etc. Only the top-left cell of the pivot table contains the pivot table definition. The other cells will contain the calculated values of the results of the pivot in their effective_value fields.
    pivotTable :: (Core.Maybe PivotTable),
    -- | Runs of rich text applied to subsections of the cell. Runs are only valid on user entered strings, not formulas, bools, or numbers. Properties of a run start at a specific index in the text and continue until the next run. Runs will inherit the properties of the cell unless explicitly changed. When writing, the new runs will overwrite any prior runs. When writing a new user/entered/value, previous runs are erased.
    textFormatRuns :: (Core.Maybe [TextFormatRun]),
    -- | The format the user entered for the cell. When writing, the new format will be merged with the existing format.
    userEnteredFormat :: (Core.Maybe CellFormat),
    -- | The value the user entered in the cell. e.g, @1234@, @\'Hello\'@, or @=NOW()@ Note: Dates, Times and DateTimes are represented as doubles in serial number format.
    userEnteredValue :: (Core.Maybe ExtendedValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CellData' with the minimum fields required to make a request.
newCellData ::
  CellData
newCellData =
  CellData
    { dataSourceFormula = Core.Nothing,
      dataSourceTable = Core.Nothing,
      dataValidation = Core.Nothing,
      effectiveFormat = Core.Nothing,
      effectiveValue = Core.Nothing,
      formattedValue = Core.Nothing,
      hyperlink = Core.Nothing,
      note = Core.Nothing,
      pivotTable = Core.Nothing,
      textFormatRuns = Core.Nothing,
      userEnteredFormat = Core.Nothing,
      userEnteredValue = Core.Nothing
    }

instance Core.FromJSON CellData where
  parseJSON =
    Core.withObject
      "CellData"
      ( \o ->
          CellData
            Core.<$> (o Core..:? "dataSourceFormula")
            Core.<*> (o Core..:? "dataSourceTable")
            Core.<*> (o Core..:? "dataValidation")
            Core.<*> (o Core..:? "effectiveFormat")
            Core.<*> (o Core..:? "effectiveValue")
            Core.<*> (o Core..:? "formattedValue")
            Core.<*> (o Core..:? "hyperlink")
            Core.<*> (o Core..:? "note")
            Core.<*> (o Core..:? "pivotTable")
            Core.<*> (o Core..:? "textFormatRuns")
            Core.<*> (o Core..:? "userEnteredFormat")
            Core.<*> (o Core..:? "userEnteredValue")
      )

instance Core.ToJSON CellData where
  toJSON CellData {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceFormula" Core..=)
              Core.<$> dataSourceFormula,
            ("dataSourceTable" Core..=) Core.<$> dataSourceTable,
            ("dataValidation" Core..=) Core.<$> dataValidation,
            ("effectiveFormat" Core..=) Core.<$> effectiveFormat,
            ("effectiveValue" Core..=) Core.<$> effectiveValue,
            ("formattedValue" Core..=) Core.<$> formattedValue,
            ("hyperlink" Core..=) Core.<$> hyperlink,
            ("note" Core..=) Core.<$> note,
            ("pivotTable" Core..=) Core.<$> pivotTable,
            ("textFormatRuns" Core..=) Core.<$> textFormatRuns,
            ("userEnteredFormat" Core..=)
              Core.<$> userEnteredFormat,
            ("userEnteredValue" Core..=)
              Core.<$> userEnteredValue
          ]
      )

-- | The format of a cell.
--
-- /See:/ 'newCellFormat' smart constructor.
data CellFormat = CellFormat
  { -- | The background color of the cell.
    backgroundColor :: (Core.Maybe Color),
    -- | The background color of the cell. If background_color is also set, this field takes precedence.
    backgroundColorStyle :: (Core.Maybe ColorStyle),
    -- | The borders of the cell.
    borders :: (Core.Maybe Borders),
    -- | The horizontal alignment of the value in the cell.
    horizontalAlignment :: (Core.Maybe CellFormat_HorizontalAlignment),
    -- | How a hyperlink, if it exists, should be displayed in the cell.
    hyperlinkDisplayType :: (Core.Maybe CellFormat_HyperlinkDisplayType),
    -- | A format describing how number values should be represented to the user.
    numberFormat :: (Core.Maybe NumberFormat),
    -- | The padding of the cell.
    padding :: (Core.Maybe Padding),
    -- | The direction of the text in the cell.
    textDirection :: (Core.Maybe CellFormat_TextDirection),
    -- | The format of the text in the cell (unless overridden by a format run). Setting a cell-level link here will clear the cell\'s existing links. Setting the link field in a TextFormatRun will take precedence over the cell-level link.
    textFormat :: (Core.Maybe TextFormat),
    -- | The rotation applied to text in a cell
    textRotation :: (Core.Maybe TextRotation),
    -- | The vertical alignment of the value in the cell.
    verticalAlignment :: (Core.Maybe CellFormat_VerticalAlignment),
    -- | The wrap strategy for the value in the cell.
    wrapStrategy :: (Core.Maybe CellFormat_WrapStrategy)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CellFormat' with the minimum fields required to make a request.
newCellFormat ::
  CellFormat
newCellFormat =
  CellFormat
    { backgroundColor = Core.Nothing,
      backgroundColorStyle = Core.Nothing,
      borders = Core.Nothing,
      horizontalAlignment = Core.Nothing,
      hyperlinkDisplayType = Core.Nothing,
      numberFormat = Core.Nothing,
      padding = Core.Nothing,
      textDirection = Core.Nothing,
      textFormat = Core.Nothing,
      textRotation = Core.Nothing,
      verticalAlignment = Core.Nothing,
      wrapStrategy = Core.Nothing
    }

instance Core.FromJSON CellFormat where
  parseJSON =
    Core.withObject
      "CellFormat"
      ( \o ->
          CellFormat
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "backgroundColorStyle")
            Core.<*> (o Core..:? "borders")
            Core.<*> (o Core..:? "horizontalAlignment")
            Core.<*> (o Core..:? "hyperlinkDisplayType")
            Core.<*> (o Core..:? "numberFormat")
            Core.<*> (o Core..:? "padding")
            Core.<*> (o Core..:? "textDirection")
            Core.<*> (o Core..:? "textFormat")
            Core.<*> (o Core..:? "textRotation")
            Core.<*> (o Core..:? "verticalAlignment")
            Core.<*> (o Core..:? "wrapStrategy")
      )

instance Core.ToJSON CellFormat where
  toJSON CellFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=)
              Core.<$> backgroundColor,
            ("backgroundColorStyle" Core..=)
              Core.<$> backgroundColorStyle,
            ("borders" Core..=) Core.<$> borders,
            ("horizontalAlignment" Core..=)
              Core.<$> horizontalAlignment,
            ("hyperlinkDisplayType" Core..=)
              Core.<$> hyperlinkDisplayType,
            ("numberFormat" Core..=) Core.<$> numberFormat,
            ("padding" Core..=) Core.<$> padding,
            ("textDirection" Core..=) Core.<$> textDirection,
            ("textFormat" Core..=) Core.<$> textFormat,
            ("textRotation" Core..=) Core.<$> textRotation,
            ("verticalAlignment" Core..=)
              Core.<$> verticalAlignment,
            ("wrapStrategy" Core..=) Core.<$> wrapStrategy
          ]
      )

-- | The options that define a \"view window\" for a chart (such as the visible values in an axis).
--
-- /See:/ 'newChartAxisViewWindowOptions' smart constructor.
data ChartAxisViewWindowOptions = ChartAxisViewWindowOptions
  { -- | The maximum numeric value to be shown in this view window. If unset, will automatically determine a maximum value that looks good for the data.
    viewWindowMax :: (Core.Maybe Core.Double),
    -- | The minimum numeric value to be shown in this view window. If unset, will automatically determine a minimum value that looks good for the data.
    viewWindowMin :: (Core.Maybe Core.Double),
    -- | The view window\'s mode.
    viewWindowMode :: (Core.Maybe ChartAxisViewWindowOptions_ViewWindowMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartAxisViewWindowOptions' with the minimum fields required to make a request.
newChartAxisViewWindowOptions ::
  ChartAxisViewWindowOptions
newChartAxisViewWindowOptions =
  ChartAxisViewWindowOptions
    { viewWindowMax = Core.Nothing,
      viewWindowMin = Core.Nothing,
      viewWindowMode = Core.Nothing
    }

instance Core.FromJSON ChartAxisViewWindowOptions where
  parseJSON =
    Core.withObject
      "ChartAxisViewWindowOptions"
      ( \o ->
          ChartAxisViewWindowOptions
            Core.<$> (o Core..:? "viewWindowMax")
            Core.<*> (o Core..:? "viewWindowMin")
            Core.<*> (o Core..:? "viewWindowMode")
      )

instance Core.ToJSON ChartAxisViewWindowOptions where
  toJSON ChartAxisViewWindowOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("viewWindowMax" Core..=) Core.<$> viewWindowMax,
            ("viewWindowMin" Core..=) Core.<$> viewWindowMin,
            ("viewWindowMode" Core..=) Core.<$> viewWindowMode
          ]
      )

-- | Custom number formatting options for chart attributes.
--
-- /See:/ 'newChartCustomNumberFormatOptions' smart constructor.
data ChartCustomNumberFormatOptions = ChartCustomNumberFormatOptions
  { -- | Custom prefix to be prepended to the chart attribute. This field is optional.
    prefix :: (Core.Maybe Core.Text),
    -- | Custom suffix to be appended to the chart attribute. This field is optional.
    suffix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartCustomNumberFormatOptions' with the minimum fields required to make a request.
newChartCustomNumberFormatOptions ::
  ChartCustomNumberFormatOptions
newChartCustomNumberFormatOptions =
  ChartCustomNumberFormatOptions {prefix = Core.Nothing, suffix = Core.Nothing}

instance Core.FromJSON ChartCustomNumberFormatOptions where
  parseJSON =
    Core.withObject
      "ChartCustomNumberFormatOptions"
      ( \o ->
          ChartCustomNumberFormatOptions
            Core.<$> (o Core..:? "prefix") Core.<*> (o Core..:? "suffix")
      )

instance Core.ToJSON ChartCustomNumberFormatOptions where
  toJSON ChartCustomNumberFormatOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("prefix" Core..=) Core.<$> prefix,
            ("suffix" Core..=) Core.<$> suffix
          ]
      )

-- | The data included in a domain or series.
--
-- /See:/ 'newChartData' smart constructor.
data ChartData = ChartData
  { -- | The aggregation type for the series of a data source chart. Only supported for data source charts.
    aggregateType :: (Core.Maybe ChartData_AggregateType),
    -- | The reference to the data source column that the data reads from.
    columnReference :: (Core.Maybe DataSourceColumnReference),
    -- | The rule to group the data by if the ChartData backs the domain of a data source chart. Only supported for data source charts.
    groupRule :: (Core.Maybe ChartGroupRule),
    -- | The source ranges of the data.
    sourceRange :: (Core.Maybe ChartSourceRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartData' with the minimum fields required to make a request.
newChartData ::
  ChartData
newChartData =
  ChartData
    { aggregateType = Core.Nothing,
      columnReference = Core.Nothing,
      groupRule = Core.Nothing,
      sourceRange = Core.Nothing
    }

instance Core.FromJSON ChartData where
  parseJSON =
    Core.withObject
      "ChartData"
      ( \o ->
          ChartData
            Core.<$> (o Core..:? "aggregateType")
            Core.<*> (o Core..:? "columnReference")
            Core.<*> (o Core..:? "groupRule")
            Core.<*> (o Core..:? "sourceRange")
      )

instance Core.ToJSON ChartData where
  toJSON ChartData {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregateType" Core..=) Core.<$> aggregateType,
            ("columnReference" Core..=) Core.<$> columnReference,
            ("groupRule" Core..=) Core.<$> groupRule,
            ("sourceRange" Core..=) Core.<$> sourceRange
          ]
      )

-- | Allows you to organize the date-time values in a source data column into buckets based on selected parts of their date or time values.
--
-- /See:/ 'newChartDateTimeRule' smart constructor.
newtype ChartDateTimeRule = ChartDateTimeRule
  { -- | The type of date-time grouping to apply.
    type' :: (Core.Maybe ChartDateTimeRule_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartDateTimeRule' with the minimum fields required to make a request.
newChartDateTimeRule ::
  ChartDateTimeRule
newChartDateTimeRule = ChartDateTimeRule {type' = Core.Nothing}

instance Core.FromJSON ChartDateTimeRule where
  parseJSON =
    Core.withObject
      "ChartDateTimeRule"
      ( \o ->
          ChartDateTimeRule Core.<$> (o Core..:? "type")
      )

instance Core.ToJSON ChartDateTimeRule where
  toJSON ChartDateTimeRule {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | An optional setting on the ChartData of the domain of a data source chart that defines buckets for the values in the domain rather than breaking out each individual value. For example, when plotting a data source chart, you can specify a histogram rule on the domain (it should only contain numeric values), grouping its values into buckets. Any values of a chart series that fall into the same bucket are aggregated based on the aggregate_type.
--
-- /See:/ 'newChartGroupRule' smart constructor.
data ChartGroupRule = ChartGroupRule
  { -- | A ChartDateTimeRule.
    dateTimeRule :: (Core.Maybe ChartDateTimeRule),
    -- | A ChartHistogramRule
    histogramRule :: (Core.Maybe ChartHistogramRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartGroupRule' with the minimum fields required to make a request.
newChartGroupRule ::
  ChartGroupRule
newChartGroupRule =
  ChartGroupRule {dateTimeRule = Core.Nothing, histogramRule = Core.Nothing}

instance Core.FromJSON ChartGroupRule where
  parseJSON =
    Core.withObject
      "ChartGroupRule"
      ( \o ->
          ChartGroupRule
            Core.<$> (o Core..:? "dateTimeRule")
            Core.<*> (o Core..:? "histogramRule")
      )

instance Core.ToJSON ChartGroupRule where
  toJSON ChartGroupRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("dateTimeRule" Core..=) Core.<$> dateTimeRule,
            ("histogramRule" Core..=) Core.<$> histogramRule
          ]
      )

-- | Allows you to organize numeric values in a source data column into buckets of constant size.
--
-- /See:/ 'newChartHistogramRule' smart constructor.
data ChartHistogramRule = ChartHistogramRule
  { -- | The size of the buckets that are created. Must be positive.
    intervalSize :: (Core.Maybe Core.Double),
    -- | The maximum value at which items are placed into buckets. Values greater than the maximum are grouped into a single bucket. If omitted, it is determined by the maximum item value.
    maxValue :: (Core.Maybe Core.Double),
    -- | The minimum value at which items are placed into buckets. Values that are less than the minimum are grouped into a single bucket. If omitted, it is determined by the minimum item value.
    minValue :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartHistogramRule' with the minimum fields required to make a request.
newChartHistogramRule ::
  ChartHistogramRule
newChartHistogramRule =
  ChartHistogramRule
    { intervalSize = Core.Nothing,
      maxValue = Core.Nothing,
      minValue = Core.Nothing
    }

instance Core.FromJSON ChartHistogramRule where
  parseJSON =
    Core.withObject
      "ChartHistogramRule"
      ( \o ->
          ChartHistogramRule
            Core.<$> (o Core..:? "intervalSize")
            Core.<*> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
      )

instance Core.ToJSON ChartHistogramRule where
  toJSON ChartHistogramRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("intervalSize" Core..=) Core.<$> intervalSize,
            ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue
          ]
      )

-- | Source ranges for a chart.
--
-- /See:/ 'newChartSourceRange' smart constructor.
newtype ChartSourceRange = ChartSourceRange
  { -- | The ranges of data for a series or domain. Exactly one dimension must have a length of 1, and all sources in the list must have the same dimension with length 1. The domain (if it exists) & all series must have the same number of source ranges. If using more than one source range, then the source range at a given offset must be in order and contiguous across the domain and series. For example, these are valid configurations: domain sources: A1:A5 series1 sources: B1:B5 series2 sources: D6:D10 domain sources: A1:A5, C10:C12 series1 sources: B1:B5, D10:D12 series2 sources: C1:C5, E10:E12
    sources :: (Core.Maybe [GridRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartSourceRange' with the minimum fields required to make a request.
newChartSourceRange ::
  ChartSourceRange
newChartSourceRange = ChartSourceRange {sources = Core.Nothing}

instance Core.FromJSON ChartSourceRange where
  parseJSON =
    Core.withObject
      "ChartSourceRange"
      ( \o ->
          ChartSourceRange Core.<$> (o Core..:? "sources")
      )

instance Core.ToJSON ChartSourceRange where
  toJSON ChartSourceRange {..} =
    Core.object
      ( Core.catMaybes
          [("sources" Core..=) Core.<$> sources]
      )

-- | The specifications of a chart.
--
-- /See:/ 'newChartSpec' smart constructor.
data ChartSpec = ChartSpec
  { -- | The alternative text that describes the chart. This is often used for accessibility.
    altText :: (Core.Maybe Core.Text),
    -- | The background color of the entire chart. Not applicable to Org charts.
    backgroundColor :: (Core.Maybe Color),
    -- | The background color of the entire chart. Not applicable to Org charts. If background_color is also set, this field takes precedence.
    backgroundColorStyle :: (Core.Maybe ColorStyle),
    -- | A basic chart specification, can be one of many kinds of charts. See BasicChartType for the list of all charts this supports.
    basicChart :: (Core.Maybe BasicChartSpec),
    -- | A bubble chart specification.
    bubbleChart :: (Core.Maybe BubbleChartSpec),
    -- | A candlestick chart specification.
    candlestickChart :: (Core.Maybe CandlestickChartSpec),
    -- | If present, the field contains data source chart specific properties.
    dataSourceChartProperties :: (Core.Maybe DataSourceChartProperties),
    -- | The filters applied to the source data of the chart. Only supported for data source charts.
    filterSpecs :: (Core.Maybe [FilterSpec]),
    -- | The name of the font to use by default for all chart text (e.g. title, axis labels, legend). If a font is specified for a specific part of the chart it will override this font name.
    fontName :: (Core.Maybe Core.Text),
    -- | Determines how the charts will use hidden rows or columns.
    hiddenDimensionStrategy :: (Core.Maybe ChartSpec_HiddenDimensionStrategy),
    -- | A histogram chart specification.
    histogramChart :: (Core.Maybe HistogramChartSpec),
    -- | True to make a chart fill the entire space in which it\'s rendered with minimum padding. False to use the default padding. (Not applicable to Geo and Org charts.)
    maximized :: (Core.Maybe Core.Bool),
    -- | An org chart specification.
    orgChart :: (Core.Maybe OrgChartSpec),
    -- | A pie chart specification.
    pieChart :: (Core.Maybe PieChartSpec),
    -- | A scorecard chart specification.
    scorecardChart :: (Core.Maybe ScorecardChartSpec),
    -- | The order to sort the chart data by. Only a single sort spec is supported. Only supported for data source charts.
    sortSpecs :: (Core.Maybe [SortSpec]),
    -- | The subtitle of the chart.
    subtitle :: (Core.Maybe Core.Text),
    -- | The subtitle text format. Strikethrough, underline, and link are not supported.
    subtitleTextFormat :: (Core.Maybe TextFormat),
    -- | The subtitle text position. This field is optional.
    subtitleTextPosition :: (Core.Maybe TextPosition),
    -- | The title of the chart.
    title :: (Core.Maybe Core.Text),
    -- | The title text format. Strikethrough, underline, and link are not supported.
    titleTextFormat :: (Core.Maybe TextFormat),
    -- | The title text position. This field is optional.
    titleTextPosition :: (Core.Maybe TextPosition),
    -- | A treemap chart specification.
    treemapChart :: (Core.Maybe TreemapChartSpec),
    -- | A waterfall chart specification.
    waterfallChart :: (Core.Maybe WaterfallChartSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ChartSpec' with the minimum fields required to make a request.
newChartSpec ::
  ChartSpec
newChartSpec =
  ChartSpec
    { altText = Core.Nothing,
      backgroundColor = Core.Nothing,
      backgroundColorStyle = Core.Nothing,
      basicChart = Core.Nothing,
      bubbleChart = Core.Nothing,
      candlestickChart = Core.Nothing,
      dataSourceChartProperties = Core.Nothing,
      filterSpecs = Core.Nothing,
      fontName = Core.Nothing,
      hiddenDimensionStrategy = Core.Nothing,
      histogramChart = Core.Nothing,
      maximized = Core.Nothing,
      orgChart = Core.Nothing,
      pieChart = Core.Nothing,
      scorecardChart = Core.Nothing,
      sortSpecs = Core.Nothing,
      subtitle = Core.Nothing,
      subtitleTextFormat = Core.Nothing,
      subtitleTextPosition = Core.Nothing,
      title = Core.Nothing,
      titleTextFormat = Core.Nothing,
      titleTextPosition = Core.Nothing,
      treemapChart = Core.Nothing,
      waterfallChart = Core.Nothing
    }

instance Core.FromJSON ChartSpec where
  parseJSON =
    Core.withObject
      "ChartSpec"
      ( \o ->
          ChartSpec
            Core.<$> (o Core..:? "altText")
            Core.<*> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "backgroundColorStyle")
            Core.<*> (o Core..:? "basicChart")
            Core.<*> (o Core..:? "bubbleChart")
            Core.<*> (o Core..:? "candlestickChart")
            Core.<*> (o Core..:? "dataSourceChartProperties")
            Core.<*> (o Core..:? "filterSpecs")
            Core.<*> (o Core..:? "fontName")
            Core.<*> (o Core..:? "hiddenDimensionStrategy")
            Core.<*> (o Core..:? "histogramChart")
            Core.<*> (o Core..:? "maximized")
            Core.<*> (o Core..:? "orgChart")
            Core.<*> (o Core..:? "pieChart")
            Core.<*> (o Core..:? "scorecardChart")
            Core.<*> (o Core..:? "sortSpecs")
            Core.<*> (o Core..:? "subtitle")
            Core.<*> (o Core..:? "subtitleTextFormat")
            Core.<*> (o Core..:? "subtitleTextPosition")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "titleTextFormat")
            Core.<*> (o Core..:? "titleTextPosition")
            Core.<*> (o Core..:? "treemapChart")
            Core.<*> (o Core..:? "waterfallChart")
      )

instance Core.ToJSON ChartSpec where
  toJSON ChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("altText" Core..=) Core.<$> altText,
            ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("backgroundColorStyle" Core..=)
              Core.<$> backgroundColorStyle,
            ("basicChart" Core..=) Core.<$> basicChart,
            ("bubbleChart" Core..=) Core.<$> bubbleChart,
            ("candlestickChart" Core..=)
              Core.<$> candlestickChart,
            ("dataSourceChartProperties" Core..=)
              Core.<$> dataSourceChartProperties,
            ("filterSpecs" Core..=) Core.<$> filterSpecs,
            ("fontName" Core..=) Core.<$> fontName,
            ("hiddenDimensionStrategy" Core..=)
              Core.<$> hiddenDimensionStrategy,
            ("histogramChart" Core..=) Core.<$> histogramChart,
            ("maximized" Core..=) Core.<$> maximized,
            ("orgChart" Core..=) Core.<$> orgChart,
            ("pieChart" Core..=) Core.<$> pieChart,
            ("scorecardChart" Core..=) Core.<$> scorecardChart,
            ("sortSpecs" Core..=) Core.<$> sortSpecs,
            ("subtitle" Core..=) Core.<$> subtitle,
            ("subtitleTextFormat" Core..=)
              Core.<$> subtitleTextFormat,
            ("subtitleTextPosition" Core..=)
              Core.<$> subtitleTextPosition,
            ("title" Core..=) Core.<$> title,
            ("titleTextFormat" Core..=) Core.<$> titleTextFormat,
            ("titleTextPosition" Core..=)
              Core.<$> titleTextPosition,
            ("treemapChart" Core..=) Core.<$> treemapChart,
            ("waterfallChart" Core..=) Core.<$> waterfallChart
          ]
      )

-- | Clears the basic filter, if any exists on the sheet.
--
-- /See:/ 'newClearBasicFilterRequest' smart constructor.
newtype ClearBasicFilterRequest = ClearBasicFilterRequest
  { -- | The sheet ID on which the basic filter should be cleared.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClearBasicFilterRequest' with the minimum fields required to make a request.
newClearBasicFilterRequest ::
  ClearBasicFilterRequest
newClearBasicFilterRequest = ClearBasicFilterRequest {sheetId = Core.Nothing}

instance Core.FromJSON ClearBasicFilterRequest where
  parseJSON =
    Core.withObject
      "ClearBasicFilterRequest"
      ( \o ->
          ClearBasicFilterRequest
            Core.<$> (o Core..:? "sheetId")
      )

instance Core.ToJSON ClearBasicFilterRequest where
  toJSON ClearBasicFilterRequest {..} =
    Core.object
      ( Core.catMaybes
          [("sheetId" Core..=) Core.<$> sheetId]
      )

-- | The request for clearing a range of values in a spreadsheet.
--
-- /See:/ 'newClearValuesRequest' smart constructor.
data ClearValuesRequest = ClearValuesRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClearValuesRequest' with the minimum fields required to make a request.
newClearValuesRequest ::
  ClearValuesRequest
newClearValuesRequest = ClearValuesRequest

instance Core.FromJSON ClearValuesRequest where
  parseJSON =
    Core.withObject
      "ClearValuesRequest"
      (\o -> Core.pure ClearValuesRequest)

instance Core.ToJSON ClearValuesRequest where
  toJSON = Core.const Core.emptyObject

-- | The response when clearing a range of values in a spreadsheet.
--
-- /See:/ 'newClearValuesResponse' smart constructor.
data ClearValuesResponse = ClearValuesResponse
  { -- | The range (in A1 notation) that was cleared. (If the request was for an unbounded range or a ranger larger than the bounds of the sheet, this will be the actual range that was cleared, bounded to the sheet\'s limits.)
    clearedRange :: (Core.Maybe Core.Text),
    -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClearValuesResponse' with the minimum fields required to make a request.
newClearValuesResponse ::
  ClearValuesResponse
newClearValuesResponse =
  ClearValuesResponse
    { clearedRange = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance Core.FromJSON ClearValuesResponse where
  parseJSON =
    Core.withObject
      "ClearValuesResponse"
      ( \o ->
          ClearValuesResponse
            Core.<$> (o Core..:? "clearedRange")
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance Core.ToJSON ClearValuesResponse where
  toJSON ClearValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("clearedRange" Core..=) Core.<$> clearedRange,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to\/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of @java.awt.Color@ in Java; it can also be trivially provided to UIColor\'s @+colorWithRed:green:blue:alpha@ method in iOS; and, with just a little work, it can be easily formatted into a CSS @rgba()@ string in JavaScript. This reference page doesn\'t carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; \/\/ ... public static java.awt.Color fromProto(Color
-- protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red \/ denominator) .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); } return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/ ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha/wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha/wrapper != nil) { alpha = [alpha/wrapper value]; }
-- return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } \/\/ ... Example (JavaScript): \/\/ ... var protoToCssColor = function(rgb/color) { var redFrac = rgb/color.red || 0.0; var greenFrac = rgb/color.green || 0.0; var blueFrac = rgb/color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!(\'alpha\' in rgb/color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\', alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor =
-- function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \< missingZeros; i++) { resultBuilder.push(\'0\'); } resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/ ...
--
-- /See:/ 'newColor' smart constructor.
data Color = Color
  { -- | The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: @pixel color = alpha * (this color) + (1.0 - alpha) * (background color)@ This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).
    alpha :: (Core.Maybe Core.Double),
    -- | The amount of blue in the color as a value in the interval [0, 1].
    blue :: (Core.Maybe Core.Double),
    -- | The amount of green in the color as a value in the interval [0, 1].
    green :: (Core.Maybe Core.Double),
    -- | The amount of red in the color as a value in the interval [0, 1].
    red :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
newColor ::
  Color
newColor =
  Color
    { alpha = Core.Nothing,
      blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON Color where
  parseJSON =
    Core.withObject
      "Color"
      ( \o ->
          Color
            Core.<$> (o Core..:? "alpha")
            Core.<*> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON Color where
  toJSON Color {..} =
    Core.object
      ( Core.catMaybes
          [ ("alpha" Core..=) Core.<$> alpha,
            ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

-- | A color value.
--
-- /See:/ 'newColorStyle' smart constructor.
data ColorStyle = ColorStyle
  { -- | RGB color.
    rgbColor :: (Core.Maybe Color),
    -- | Theme color.
    themeColor :: (Core.Maybe ColorStyle_ThemeColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColorStyle' with the minimum fields required to make a request.
newColorStyle ::
  ColorStyle
newColorStyle = ColorStyle {rgbColor = Core.Nothing, themeColor = Core.Nothing}

instance Core.FromJSON ColorStyle where
  parseJSON =
    Core.withObject
      "ColorStyle"
      ( \o ->
          ColorStyle
            Core.<$> (o Core..:? "rgbColor")
            Core.<*> (o Core..:? "themeColor")
      )

instance Core.ToJSON ColorStyle where
  toJSON ColorStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("rgbColor" Core..=) Core.<$> rgbColor,
            ("themeColor" Core..=) Core.<$> themeColor
          ]
      )

-- | The value of the condition.
--
-- /See:/ 'newConditionValue' smart constructor.
data ConditionValue = ConditionValue
  { -- | A relative date (based on the current date). Valid only if the type is DATE/BEFORE, DATE/AFTER, DATE/ON/OR/BEFORE or DATE/ON/OR/AFTER. Relative dates are not supported in data validation. They are supported only in conditional formatting and conditional filters.
    relativeDate :: (Core.Maybe ConditionValue_RelativeDate),
    -- | A value the condition is based on. The value is parsed as if the user typed into a cell. Formulas are supported (and must begin with an @=@ or a \'+\').
    userEnteredValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConditionValue' with the minimum fields required to make a request.
newConditionValue ::
  ConditionValue
newConditionValue =
  ConditionValue {relativeDate = Core.Nothing, userEnteredValue = Core.Nothing}

instance Core.FromJSON ConditionValue where
  parseJSON =
    Core.withObject
      "ConditionValue"
      ( \o ->
          ConditionValue
            Core.<$> (o Core..:? "relativeDate")
            Core.<*> (o Core..:? "userEnteredValue")
      )

instance Core.ToJSON ConditionValue where
  toJSON ConditionValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("relativeDate" Core..=) Core.<$> relativeDate,
            ("userEnteredValue" Core..=)
              Core.<$> userEnteredValue
          ]
      )

-- | A rule describing a conditional format.
--
-- /See:/ 'newConditionalFormatRule' smart constructor.
data ConditionalFormatRule = ConditionalFormatRule
  { -- | The formatting is either \"on\" or \"off\" according to the rule.
    booleanRule :: (Core.Maybe BooleanRule),
    -- | The formatting will vary based on the gradients in the rule.
    gradientRule :: (Core.Maybe GradientRule),
    -- | The ranges that are formatted if the condition is true. All the ranges must be on the same grid.
    ranges :: (Core.Maybe [GridRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConditionalFormatRule' with the minimum fields required to make a request.
newConditionalFormatRule ::
  ConditionalFormatRule
newConditionalFormatRule =
  ConditionalFormatRule
    { booleanRule = Core.Nothing,
      gradientRule = Core.Nothing,
      ranges = Core.Nothing
    }

instance Core.FromJSON ConditionalFormatRule where
  parseJSON =
    Core.withObject
      "ConditionalFormatRule"
      ( \o ->
          ConditionalFormatRule
            Core.<$> (o Core..:? "booleanRule")
            Core.<*> (o Core..:? "gradientRule")
            Core.<*> (o Core..:? "ranges")
      )

instance Core.ToJSON ConditionalFormatRule where
  toJSON ConditionalFormatRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("booleanRule" Core..=) Core.<$> booleanRule,
            ("gradientRule" Core..=) Core.<$> gradientRule,
            ("ranges" Core..=) Core.<$> ranges
          ]
      )

-- | Copies data from the source to the destination.
--
-- /See:/ 'newCopyPasteRequest' smart constructor.
data CopyPasteRequest = CopyPasteRequest
  { -- | The location to paste to. If the range covers a span that\'s a multiple of the source\'s height or width, then the data will be repeated to fill in the destination range. If the range is smaller than the source range, the entire source data will still be copied (beyond the end of the destination range).
    destination :: (Core.Maybe GridRange),
    -- | How that data should be oriented when pasting.
    pasteOrientation :: (Core.Maybe CopyPasteRequest_PasteOrientation),
    -- | What kind of data to paste.
    pasteType :: (Core.Maybe CopyPasteRequest_PasteType),
    -- | The source range to copy.
    source :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyPasteRequest' with the minimum fields required to make a request.
newCopyPasteRequest ::
  CopyPasteRequest
newCopyPasteRequest =
  CopyPasteRequest
    { destination = Core.Nothing,
      pasteOrientation = Core.Nothing,
      pasteType = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON CopyPasteRequest where
  parseJSON =
    Core.withObject
      "CopyPasteRequest"
      ( \o ->
          CopyPasteRequest
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "pasteOrientation")
            Core.<*> (o Core..:? "pasteType")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON CopyPasteRequest where
  toJSON CopyPasteRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            ("pasteOrientation" Core..=)
              Core.<$> pasteOrientation,
            ("pasteType" Core..=) Core.<$> pasteType,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | The request to copy a sheet across spreadsheets.
--
-- /See:/ 'newCopySheetToAnotherSpreadsheetRequest' smart constructor.
newtype CopySheetToAnotherSpreadsheetRequest = CopySheetToAnotherSpreadsheetRequest
  { -- | The ID of the spreadsheet to copy the sheet to.
    destinationSpreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopySheetToAnotherSpreadsheetRequest' with the minimum fields required to make a request.
newCopySheetToAnotherSpreadsheetRequest ::
  CopySheetToAnotherSpreadsheetRequest
newCopySheetToAnotherSpreadsheetRequest =
  CopySheetToAnotherSpreadsheetRequest {destinationSpreadsheetId = Core.Nothing}

instance
  Core.FromJSON
    CopySheetToAnotherSpreadsheetRequest
  where
  parseJSON =
    Core.withObject
      "CopySheetToAnotherSpreadsheetRequest"
      ( \o ->
          CopySheetToAnotherSpreadsheetRequest
            Core.<$> (o Core..:? "destinationSpreadsheetId")
      )

instance
  Core.ToJSON
    CopySheetToAnotherSpreadsheetRequest
  where
  toJSON CopySheetToAnotherSpreadsheetRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationSpreadsheetId" Core..=)
              Core.<$> destinationSpreadsheetId
          ]
      )

-- | A request to create developer metadata.
--
-- /See:/ 'newCreateDeveloperMetadataRequest' smart constructor.
newtype CreateDeveloperMetadataRequest = CreateDeveloperMetadataRequest
  { -- | The developer metadata to create.
    developerMetadata :: (Core.Maybe DeveloperMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateDeveloperMetadataRequest' with the minimum fields required to make a request.
newCreateDeveloperMetadataRequest ::
  CreateDeveloperMetadataRequest
newCreateDeveloperMetadataRequest =
  CreateDeveloperMetadataRequest {developerMetadata = Core.Nothing}

instance Core.FromJSON CreateDeveloperMetadataRequest where
  parseJSON =
    Core.withObject
      "CreateDeveloperMetadataRequest"
      ( \o ->
          CreateDeveloperMetadataRequest
            Core.<$> (o Core..:? "developerMetadata")
      )

instance Core.ToJSON CreateDeveloperMetadataRequest where
  toJSON CreateDeveloperMetadataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerMetadata" Core..=)
              Core.<$> developerMetadata
          ]
      )

-- | The response from creating developer metadata.
--
-- /See:/ 'newCreateDeveloperMetadataResponse' smart constructor.
newtype CreateDeveloperMetadataResponse = CreateDeveloperMetadataResponse
  { -- | The developer metadata that was created.
    developerMetadata :: (Core.Maybe DeveloperMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateDeveloperMetadataResponse' with the minimum fields required to make a request.
newCreateDeveloperMetadataResponse ::
  CreateDeveloperMetadataResponse
newCreateDeveloperMetadataResponse =
  CreateDeveloperMetadataResponse {developerMetadata = Core.Nothing}

instance
  Core.FromJSON
    CreateDeveloperMetadataResponse
  where
  parseJSON =
    Core.withObject
      "CreateDeveloperMetadataResponse"
      ( \o ->
          CreateDeveloperMetadataResponse
            Core.<$> (o Core..:? "developerMetadata")
      )

instance Core.ToJSON CreateDeveloperMetadataResponse where
  toJSON CreateDeveloperMetadataResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerMetadata" Core..=)
              Core.<$> developerMetadata
          ]
      )

-- | Moves data from the source to the destination.
--
-- /See:/ 'newCutPasteRequest' smart constructor.
data CutPasteRequest = CutPasteRequest
  { -- | The top-left coordinate where the data should be pasted.
    destination :: (Core.Maybe GridCoordinate),
    -- | What kind of data to paste. All the source data will be cut, regardless of what is pasted.
    pasteType :: (Core.Maybe CutPasteRequest_PasteType),
    -- | The source data to cut.
    source :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CutPasteRequest' with the minimum fields required to make a request.
newCutPasteRequest ::
  CutPasteRequest
newCutPasteRequest =
  CutPasteRequest
    { destination = Core.Nothing,
      pasteType = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON CutPasteRequest where
  parseJSON =
    Core.withObject
      "CutPasteRequest"
      ( \o ->
          CutPasteRequest
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "pasteType")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON CutPasteRequest where
  toJSON CutPasteRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            ("pasteType" Core..=) Core.<$> pasteType,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | The data execution status. A data execution is created to sync a data source object with the latest data from a DataSource. It is usually scheduled to run at background, you can check its state to tell if an execution completes There are several scenarios where a data execution is triggered to run: * Adding a data source creates an associated data source sheet as well as a data execution to sync the data from the data source to the sheet. * Updating a data source creates a data execution to refresh the associated data source sheet similarly. * You can send refresh request to explicitly refresh one or multiple data source objects.
--
-- /See:/ 'newDataExecutionStatus' smart constructor.
data DataExecutionStatus = DataExecutionStatus
  { -- | The error code.
    errorCode :: (Core.Maybe DataExecutionStatus_ErrorCode),
    -- | The error message, which may be empty.
    errorMessage :: (Core.Maybe Core.Text),
    -- | Gets the time the data last successfully refreshed.
    lastRefreshTime :: (Core.Maybe Core.DateTime),
    -- | The state of the data execution.
    state :: (Core.Maybe DataExecutionStatus_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataExecutionStatus' with the minimum fields required to make a request.
newDataExecutionStatus ::
  DataExecutionStatus
newDataExecutionStatus =
  DataExecutionStatus
    { errorCode = Core.Nothing,
      errorMessage = Core.Nothing,
      lastRefreshTime = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON DataExecutionStatus where
  parseJSON =
    Core.withObject
      "DataExecutionStatus"
      ( \o ->
          DataExecutionStatus
            Core.<$> (o Core..:? "errorCode")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "lastRefreshTime")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON DataExecutionStatus where
  toJSON DataExecutionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorCode" Core..=) Core.<$> errorCode,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("lastRefreshTime" Core..=) Core.<$> lastRefreshTime,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Filter that describes what data should be selected or returned from a request.
--
-- /See:/ 'newDataFilter' smart constructor.
data DataFilter = DataFilter
  { -- | Selects data that matches the specified A1 range.
    a1Range :: (Core.Maybe Core.Text),
    -- | Selects data associated with the developer metadata matching the criteria described by this DeveloperMetadataLookup.
    developerMetadataLookup :: (Core.Maybe DeveloperMetadataLookup),
    -- | Selects data that matches the range described by the GridRange.
    gridRange :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFilter' with the minimum fields required to make a request.
newDataFilter ::
  DataFilter
newDataFilter =
  DataFilter
    { a1Range = Core.Nothing,
      developerMetadataLookup = Core.Nothing,
      gridRange = Core.Nothing
    }

instance Core.FromJSON DataFilter where
  parseJSON =
    Core.withObject
      "DataFilter"
      ( \o ->
          DataFilter
            Core.<$> (o Core..:? "a1Range")
            Core.<*> (o Core..:? "developerMetadataLookup")
            Core.<*> (o Core..:? "gridRange")
      )

instance Core.ToJSON DataFilter where
  toJSON DataFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("a1Range" Core..=) Core.<$> a1Range,
            ("developerMetadataLookup" Core..=)
              Core.<$> developerMetadataLookup,
            ("gridRange" Core..=) Core.<$> gridRange
          ]
      )

-- | A range of values whose location is specified by a DataFilter.
--
-- /See:/ 'newDataFilterValueRange' smart constructor.
data DataFilterValueRange = DataFilterValueRange
  { -- | The data filter describing the location of the values in the spreadsheet.
    dataFilter :: (Core.Maybe DataFilter),
    -- | The major dimension of the values.
    majorDimension :: (Core.Maybe DataFilterValueRange_MajorDimension),
    -- | The data to be written. If the provided values exceed any of the ranges matched by the data filter then the request fails. If the provided values are less than the matched ranges only the specified values are written, existing values in the matched ranges remain unaffected.
    values :: (Core.Maybe [[Core.Value]])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFilterValueRange' with the minimum fields required to make a request.
newDataFilterValueRange ::
  DataFilterValueRange
newDataFilterValueRange =
  DataFilterValueRange
    { dataFilter = Core.Nothing,
      majorDimension = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON DataFilterValueRange where
  parseJSON =
    Core.withObject
      "DataFilterValueRange"
      ( \o ->
          DataFilterValueRange
            Core.<$> (o Core..:? "dataFilter")
            Core.<*> (o Core..:? "majorDimension")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON DataFilterValueRange where
  toJSON DataFilterValueRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilter" Core..=) Core.<$> dataFilter,
            ("majorDimension" Core..=) Core.<$> majorDimension,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Settings for one set of data labels. Data labels are annotations that appear next to a set of data, such as the points on a line chart, and provide additional information about what the data represents, such as a text representation of the value behind that point on the graph.
--
-- /See:/ 'newDataLabel' smart constructor.
data DataLabel = DataLabel
  { -- | Data to use for custom labels. Only used if type is set to CUSTOM. This data must be the same length as the series or other element this data label is applied to. In addition, if the series is split into multiple source ranges, this source data must come from the next column in the source data. For example, if the series is B2:B4,E6:E8 then this data must come from C2:C4,F6:F8.
    customLabelData :: (Core.Maybe ChartData),
    -- | The placement of the data label relative to the labeled data.
    placement :: (Core.Maybe DataLabel_Placement),
    -- | The text format used for the data label. The link field is not supported.
    textFormat :: (Core.Maybe TextFormat),
    -- | The type of the data label.
    type' :: (Core.Maybe DataLabel_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataLabel' with the minimum fields required to make a request.
newDataLabel ::
  DataLabel
newDataLabel =
  DataLabel
    { customLabelData = Core.Nothing,
      placement = Core.Nothing,
      textFormat = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON DataLabel where
  parseJSON =
    Core.withObject
      "DataLabel"
      ( \o ->
          DataLabel
            Core.<$> (o Core..:? "customLabelData")
            Core.<*> (o Core..:? "placement")
            Core.<*> (o Core..:? "textFormat")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON DataLabel where
  toJSON DataLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("customLabelData" Core..=)
              Core.<$> customLabelData,
            ("placement" Core..=) Core.<$> placement,
            ("textFormat" Core..=) Core.<$> textFormat,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Information about an external data source in the spreadsheet.
--
-- /See:/ 'newDataSource' smart constructor.
data DataSource = DataSource
  { -- | All calculated columns in the data source.
    calculatedColumns :: (Core.Maybe [DataSourceColumn]),
    -- | The spreadsheet-scoped unique ID that identifies the data source. Example: 1080547365.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | The ID of the Sheet connected with the data source. The field cannot be changed once set. When creating a data source, an associated DATA_SOURCE sheet is also created, if the field is not specified, the ID of the created sheet will be randomly generated.
    sheetId :: (Core.Maybe Core.Int32),
    -- | The DataSourceSpec for the data source connected with this spreadsheet.
    spec :: (Core.Maybe DataSourceSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
newDataSource ::
  DataSource
newDataSource =
  DataSource
    { calculatedColumns = Core.Nothing,
      dataSourceId = Core.Nothing,
      sheetId = Core.Nothing,
      spec = Core.Nothing
    }

instance Core.FromJSON DataSource where
  parseJSON =
    Core.withObject
      "DataSource"
      ( \o ->
          DataSource
            Core.<$> (o Core..:? "calculatedColumns")
            Core.<*> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "sheetId")
            Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON DataSource where
  toJSON DataSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("calculatedColumns" Core..=)
              Core.<$> calculatedColumns,
            ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("sheetId" Core..=) Core.<$> sheetId,
            ("spec" Core..=) Core.<$> spec
          ]
      )

-- | Properties of a data source chart.
--
-- /See:/ 'newDataSourceChartProperties' smart constructor.
data DataSourceChartProperties = DataSourceChartProperties
  { -- | Output only. The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | ID of the data source that the chart is associated with.
    dataSourceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceChartProperties' with the minimum fields required to make a request.
newDataSourceChartProperties ::
  DataSourceChartProperties
newDataSourceChartProperties =
  DataSourceChartProperties
    { dataExecutionStatus = Core.Nothing,
      dataSourceId = Core.Nothing
    }

instance Core.FromJSON DataSourceChartProperties where
  parseJSON =
    Core.withObject
      "DataSourceChartProperties"
      ( \o ->
          DataSourceChartProperties
            Core.<$> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSourceId")
      )

instance Core.ToJSON DataSourceChartProperties where
  toJSON DataSourceChartProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSourceId" Core..=) Core.<$> dataSourceId
          ]
      )

-- | A column in a data source.
--
-- /See:/ 'newDataSourceColumn' smart constructor.
data DataSourceColumn = DataSourceColumn
  { -- | The formula of the calculated column.
    formula :: (Core.Maybe Core.Text),
    -- | The column reference.
    reference :: (Core.Maybe DataSourceColumnReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceColumn' with the minimum fields required to make a request.
newDataSourceColumn ::
  DataSourceColumn
newDataSourceColumn =
  DataSourceColumn {formula = Core.Nothing, reference = Core.Nothing}

instance Core.FromJSON DataSourceColumn where
  parseJSON =
    Core.withObject
      "DataSourceColumn"
      ( \o ->
          DataSourceColumn
            Core.<$> (o Core..:? "formula")
            Core.<*> (o Core..:? "reference")
      )

instance Core.ToJSON DataSourceColumn where
  toJSON DataSourceColumn {..} =
    Core.object
      ( Core.catMaybes
          [ ("formula" Core..=) Core.<$> formula,
            ("reference" Core..=) Core.<$> reference
          ]
      )

-- | An unique identifier that references a data source column.
--
-- /See:/ 'newDataSourceColumnReference' smart constructor.
newtype DataSourceColumnReference = DataSourceColumnReference
  { -- | The display name of the column. It should be unique within a data source.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceColumnReference' with the minimum fields required to make a request.
newDataSourceColumnReference ::
  DataSourceColumnReference
newDataSourceColumnReference = DataSourceColumnReference {name = Core.Nothing}

instance Core.FromJSON DataSourceColumnReference where
  parseJSON =
    Core.withObject
      "DataSourceColumnReference"
      ( \o ->
          DataSourceColumnReference
            Core.<$> (o Core..:? "name")
      )

instance Core.ToJSON DataSourceColumnReference where
  toJSON DataSourceColumnReference {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | A data source formula.
--
-- /See:/ 'newDataSourceFormula' smart constructor.
data DataSourceFormula = DataSourceFormula
  { -- | Output only. The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | The ID of the data source the formula is associated with.
    dataSourceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceFormula' with the minimum fields required to make a request.
newDataSourceFormula ::
  DataSourceFormula
newDataSourceFormula =
  DataSourceFormula
    { dataExecutionStatus = Core.Nothing,
      dataSourceId = Core.Nothing
    }

instance Core.FromJSON DataSourceFormula where
  parseJSON =
    Core.withObject
      "DataSourceFormula"
      ( \o ->
          DataSourceFormula
            Core.<$> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSourceId")
      )

instance Core.ToJSON DataSourceFormula where
  toJSON DataSourceFormula {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSourceId" Core..=) Core.<$> dataSourceId
          ]
      )

-- | Reference to a data source object.
--
-- /See:/ 'newDataSourceObjectReference' smart constructor.
data DataSourceObjectReference = DataSourceObjectReference
  { -- | References to a data source chart.
    chartId :: (Core.Maybe Core.Int32),
    -- | References to a cell containing DataSourceFormula.
    dataSourceFormulaCell :: (Core.Maybe GridCoordinate),
    -- | References to a data source PivotTable anchored at the cell.
    dataSourcePivotTableAnchorCell :: (Core.Maybe GridCoordinate),
    -- | References to a DataSourceTable anchored at the cell.
    dataSourceTableAnchorCell :: (Core.Maybe GridCoordinate),
    -- | References to a DATA_SOURCE sheet.
    sheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceObjectReference' with the minimum fields required to make a request.
newDataSourceObjectReference ::
  DataSourceObjectReference
newDataSourceObjectReference =
  DataSourceObjectReference
    { chartId = Core.Nothing,
      dataSourceFormulaCell = Core.Nothing,
      dataSourcePivotTableAnchorCell = Core.Nothing,
      dataSourceTableAnchorCell = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON DataSourceObjectReference where
  parseJSON =
    Core.withObject
      "DataSourceObjectReference"
      ( \o ->
          DataSourceObjectReference
            Core.<$> (o Core..:? "chartId")
            Core.<*> (o Core..:? "dataSourceFormulaCell")
            Core.<*> (o Core..:? "dataSourcePivotTableAnchorCell")
            Core.<*> (o Core..:? "dataSourceTableAnchorCell")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON DataSourceObjectReference where
  toJSON DataSourceObjectReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartId" Core..=) Core.<$> chartId,
            ("dataSourceFormulaCell" Core..=)
              Core.<$> dataSourceFormulaCell,
            ("dataSourcePivotTableAnchorCell" Core..=)
              Core.<$> dataSourcePivotTableAnchorCell,
            ("dataSourceTableAnchorCell" Core..=)
              Core.<$> dataSourceTableAnchorCell,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | A list of references to data source objects.
--
-- /See:/ 'newDataSourceObjectReferences' smart constructor.
newtype DataSourceObjectReferences = DataSourceObjectReferences
  { -- | The references.
    references :: (Core.Maybe [DataSourceObjectReference])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceObjectReferences' with the minimum fields required to make a request.
newDataSourceObjectReferences ::
  DataSourceObjectReferences
newDataSourceObjectReferences =
  DataSourceObjectReferences {references = Core.Nothing}

instance Core.FromJSON DataSourceObjectReferences where
  parseJSON =
    Core.withObject
      "DataSourceObjectReferences"
      ( \o ->
          DataSourceObjectReferences
            Core.<$> (o Core..:? "references")
      )

instance Core.ToJSON DataSourceObjectReferences where
  toJSON DataSourceObjectReferences {..} =
    Core.object
      ( Core.catMaybes
          [("references" Core..=) Core.<$> references]
      )

-- | A parameter in a data source\'s query. The parameter allows the user to pass in values from the spreadsheet into a query.
--
-- /See:/ 'newDataSourceParameter' smart constructor.
data DataSourceParameter = DataSourceParameter
  { -- | Named parameter. Must be a legitimate identifier for the DataSource that supports it. For example, <https://cloud.google.com/bigquery/docs/reference/standard-sql/lexical#identifiers BigQuery identifier>.
    name :: (Core.Maybe Core.Text),
    -- | ID of a NamedRange. Its size must be 1x1.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | A range that contains the value of the parameter. Its size must be 1x1.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceParameter' with the minimum fields required to make a request.
newDataSourceParameter ::
  DataSourceParameter
newDataSourceParameter =
  DataSourceParameter
    { name = Core.Nothing,
      namedRangeId = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON DataSourceParameter where
  parseJSON =
    Core.withObject
      "DataSourceParameter"
      ( \o ->
          DataSourceParameter
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON DataSourceParameter where
  toJSON DataSourceParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | A schedule for data to refresh every day in a given time interval.
--
-- /See:/ 'newDataSourceRefreshDailySchedule' smart constructor.
newtype DataSourceRefreshDailySchedule = DataSourceRefreshDailySchedule
  { -- | The start time of a time interval in which a data source refresh is scheduled. Only @hours@ part is used. The time interval size defaults to that in the Sheets editor.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceRefreshDailySchedule' with the minimum fields required to make a request.
newDataSourceRefreshDailySchedule ::
  DataSourceRefreshDailySchedule
newDataSourceRefreshDailySchedule =
  DataSourceRefreshDailySchedule {startTime = Core.Nothing}

instance Core.FromJSON DataSourceRefreshDailySchedule where
  parseJSON =
    Core.withObject
      "DataSourceRefreshDailySchedule"
      ( \o ->
          DataSourceRefreshDailySchedule
            Core.<$> (o Core..:? "startTime")
      )

instance Core.ToJSON DataSourceRefreshDailySchedule where
  toJSON DataSourceRefreshDailySchedule {..} =
    Core.object
      ( Core.catMaybes
          [("startTime" Core..=) Core.<$> startTime]
      )

-- | A monthly schedule for data to refresh on specific days in the month in a given time interval.
--
-- /See:/ 'newDataSourceRefreshMonthlySchedule' smart constructor.
data DataSourceRefreshMonthlySchedule = DataSourceRefreshMonthlySchedule
  { -- | Days of the month to refresh. Only 1-28 are supported, mapping to the 1st to the 28th day. At lesat one day must be specified.
    daysOfMonth :: (Core.Maybe [Core.Int32]),
    -- | The start time of a time interval in which a data source refresh is scheduled. Only @hours@ part is used. The time interval size defaults to that in the Sheets editor.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceRefreshMonthlySchedule' with the minimum fields required to make a request.
newDataSourceRefreshMonthlySchedule ::
  DataSourceRefreshMonthlySchedule
newDataSourceRefreshMonthlySchedule =
  DataSourceRefreshMonthlySchedule
    { daysOfMonth = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    DataSourceRefreshMonthlySchedule
  where
  parseJSON =
    Core.withObject
      "DataSourceRefreshMonthlySchedule"
      ( \o ->
          DataSourceRefreshMonthlySchedule
            Core.<$> (o Core..:? "daysOfMonth")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON DataSourceRefreshMonthlySchedule where
  toJSON DataSourceRefreshMonthlySchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("daysOfMonth" Core..=) Core.<$> daysOfMonth,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Schedule for refreshing the data source. Data sources in the spreadsheet are refreshed within a time interval. You can specify the start time by clicking the Scheduled Refresh button in the Sheets editor, but the interval is fixed at 4 hours. For example, if you specify a start time of 8am , the refresh will take place between 8am and 12pm every day.
--
-- /See:/ 'newDataSourceRefreshSchedule' smart constructor.
data DataSourceRefreshSchedule = DataSourceRefreshSchedule
  { -- | Daily refresh schedule.
    dailySchedule :: (Core.Maybe DataSourceRefreshDailySchedule),
    -- | True if the refresh schedule is enabled, or false otherwise.
    enabled :: (Core.Maybe Core.Bool),
    -- | Monthly refresh schedule.
    monthlySchedule :: (Core.Maybe DataSourceRefreshMonthlySchedule),
    -- | Output only. The time interval of the next run.
    nextRun :: (Core.Maybe Interval),
    -- | The scope of the refresh. Must be ALL/DATA/SOURCES.
    refreshScope :: (Core.Maybe DataSourceRefreshSchedule_RefreshScope),
    -- | Weekly refresh schedule.
    weeklySchedule :: (Core.Maybe DataSourceRefreshWeeklySchedule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceRefreshSchedule' with the minimum fields required to make a request.
newDataSourceRefreshSchedule ::
  DataSourceRefreshSchedule
newDataSourceRefreshSchedule =
  DataSourceRefreshSchedule
    { dailySchedule = Core.Nothing,
      enabled = Core.Nothing,
      monthlySchedule = Core.Nothing,
      nextRun = Core.Nothing,
      refreshScope = Core.Nothing,
      weeklySchedule = Core.Nothing
    }

instance Core.FromJSON DataSourceRefreshSchedule where
  parseJSON =
    Core.withObject
      "DataSourceRefreshSchedule"
      ( \o ->
          DataSourceRefreshSchedule
            Core.<$> (o Core..:? "dailySchedule")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "monthlySchedule")
            Core.<*> (o Core..:? "nextRun")
            Core.<*> (o Core..:? "refreshScope")
            Core.<*> (o Core..:? "weeklySchedule")
      )

instance Core.ToJSON DataSourceRefreshSchedule where
  toJSON DataSourceRefreshSchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("dailySchedule" Core..=) Core.<$> dailySchedule,
            ("enabled" Core..=) Core.<$> enabled,
            ("monthlySchedule" Core..=) Core.<$> monthlySchedule,
            ("nextRun" Core..=) Core.<$> nextRun,
            ("refreshScope" Core..=) Core.<$> refreshScope,
            ("weeklySchedule" Core..=) Core.<$> weeklySchedule
          ]
      )

-- | A weekly schedule for data to refresh on specific days in a given time interval.
--
-- /See:/ 'newDataSourceRefreshWeeklySchedule' smart constructor.
data DataSourceRefreshWeeklySchedule = DataSourceRefreshWeeklySchedule
  { -- | Days of the week to refresh. At least one day must be specified.
    daysOfWeek :: (Core.Maybe [DataSourceRefreshWeeklySchedule_DaysOfWeekItem]),
    -- | The start time of a time interval in which a data source refresh is scheduled. Only @hours@ part is used. The time interval size defaults to that in the Sheets editor.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceRefreshWeeklySchedule' with the minimum fields required to make a request.
newDataSourceRefreshWeeklySchedule ::
  DataSourceRefreshWeeklySchedule
newDataSourceRefreshWeeklySchedule =
  DataSourceRefreshWeeklySchedule
    { daysOfWeek = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    DataSourceRefreshWeeklySchedule
  where
  parseJSON =
    Core.withObject
      "DataSourceRefreshWeeklySchedule"
      ( \o ->
          DataSourceRefreshWeeklySchedule
            Core.<$> (o Core..:? "daysOfWeek")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON DataSourceRefreshWeeklySchedule where
  toJSON DataSourceRefreshWeeklySchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("daysOfWeek" Core..=) Core.<$> daysOfWeek,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A range along a single dimension on a DATA_SOURCE sheet.
--
-- /See:/ 'newDataSourceSheetDimensionRange' smart constructor.
data DataSourceSheetDimensionRange = DataSourceSheetDimensionRange
  { -- | The columns on the data source sheet.
    columnReferences :: (Core.Maybe [DataSourceColumnReference]),
    -- | The ID of the data source sheet the range is on.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceSheetDimensionRange' with the minimum fields required to make a request.
newDataSourceSheetDimensionRange ::
  DataSourceSheetDimensionRange
newDataSourceSheetDimensionRange =
  DataSourceSheetDimensionRange
    { columnReferences = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON DataSourceSheetDimensionRange where
  parseJSON =
    Core.withObject
      "DataSourceSheetDimensionRange"
      ( \o ->
          DataSourceSheetDimensionRange
            Core.<$> (o Core..:? "columnReferences")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON DataSourceSheetDimensionRange where
  toJSON DataSourceSheetDimensionRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnReferences" Core..=)
              Core.<$> columnReferences,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | Additional properties of a DATA_SOURCE sheet.
--
-- /See:/ 'newDataSourceSheetProperties' smart constructor.
data DataSourceSheetProperties = DataSourceSheetProperties
  { -- | The columns displayed on the sheet, corresponding to the values in RowData.
    columns :: (Core.Maybe [DataSourceColumn]),
    -- | The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | ID of the DataSource the sheet is connected to.
    dataSourceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceSheetProperties' with the minimum fields required to make a request.
newDataSourceSheetProperties ::
  DataSourceSheetProperties
newDataSourceSheetProperties =
  DataSourceSheetProperties
    { columns = Core.Nothing,
      dataExecutionStatus = Core.Nothing,
      dataSourceId = Core.Nothing
    }

instance Core.FromJSON DataSourceSheetProperties where
  parseJSON =
    Core.withObject
      "DataSourceSheetProperties"
      ( \o ->
          DataSourceSheetProperties
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSourceId")
      )

instance Core.ToJSON DataSourceSheetProperties where
  toJSON DataSourceSheetProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSourceId" Core..=) Core.<$> dataSourceId
          ]
      )

-- | This specifies the details of the data source. For example, for BigQuery, this specifies information about the BigQuery source.
--
-- /See:/ 'newDataSourceSpec' smart constructor.
data DataSourceSpec = DataSourceSpec
  { -- | A BigQueryDataSourceSpec.
    bigQuery :: (Core.Maybe BigQueryDataSourceSpec),
    -- | The parameters of the data source, used when querying the data source.
    parameters :: (Core.Maybe [DataSourceParameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceSpec' with the minimum fields required to make a request.
newDataSourceSpec ::
  DataSourceSpec
newDataSourceSpec =
  DataSourceSpec {bigQuery = Core.Nothing, parameters = Core.Nothing}

instance Core.FromJSON DataSourceSpec where
  parseJSON =
    Core.withObject
      "DataSourceSpec"
      ( \o ->
          DataSourceSpec
            Core.<$> (o Core..:? "bigQuery")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON DataSourceSpec where
  toJSON DataSourceSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigQuery" Core..=) Core.<$> bigQuery,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | A data source table, which allows the user to import a static table of data from the DataSource into Sheets. This is also known as \"Extract\" in the Sheets editor.
--
-- /See:/ 'newDataSourceTable' smart constructor.
data DataSourceTable = DataSourceTable
  { -- | The type to select columns for the data source table. Defaults to SELECTED.
    columnSelectionType :: (Core.Maybe DataSourceTable_ColumnSelectionType),
    -- | Columns selected for the data source table. The column/selection/type must be SELECTED.
    columns :: (Core.Maybe [DataSourceColumnReference]),
    -- | Output only. The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | The ID of the data source the data source table is associated with.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | Filter specifications in the data source table.
    filterSpecs :: (Core.Maybe [FilterSpec]),
    -- | The limit of rows to return. If not set, a default limit is applied. Please refer to the Sheets editor for the default and max limit.
    rowLimit :: (Core.Maybe Core.Int32),
    -- | Sort specifications in the data source table. The result of the data source table is sorted based on the sort specifications in order.
    sortSpecs :: (Core.Maybe [SortSpec])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceTable' with the minimum fields required to make a request.
newDataSourceTable ::
  DataSourceTable
newDataSourceTable =
  DataSourceTable
    { columnSelectionType = Core.Nothing,
      columns = Core.Nothing,
      dataExecutionStatus = Core.Nothing,
      dataSourceId = Core.Nothing,
      filterSpecs = Core.Nothing,
      rowLimit = Core.Nothing,
      sortSpecs = Core.Nothing
    }

instance Core.FromJSON DataSourceTable where
  parseJSON =
    Core.withObject
      "DataSourceTable"
      ( \o ->
          DataSourceTable
            Core.<$> (o Core..:? "columnSelectionType")
            Core.<*> (o Core..:? "columns")
            Core.<*> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "filterSpecs")
            Core.<*> (o Core..:? "rowLimit")
            Core.<*> (o Core..:? "sortSpecs")
      )

instance Core.ToJSON DataSourceTable where
  toJSON DataSourceTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnSelectionType" Core..=)
              Core.<$> columnSelectionType,
            ("columns" Core..=) Core.<$> columns,
            ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("filterSpecs" Core..=) Core.<$> filterSpecs,
            ("rowLimit" Core..=) Core.<$> rowLimit,
            ("sortSpecs" Core..=) Core.<$> sortSpecs
          ]
      )

-- | A data validation rule.
--
-- /See:/ 'newDataValidationRule' smart constructor.
data DataValidationRule = DataValidationRule
  { -- | The condition that data in the cell must match.
    condition :: (Core.Maybe BooleanCondition),
    -- | A message to show the user when adding data to the cell.
    inputMessage :: (Core.Maybe Core.Text),
    -- | True if the UI should be customized based on the kind of condition. If true, \"List\" conditions will show a dropdown.
    showCustomUi :: (Core.Maybe Core.Bool),
    -- | True if invalid data should be rejected.
    strict :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataValidationRule' with the minimum fields required to make a request.
newDataValidationRule ::
  DataValidationRule
newDataValidationRule =
  DataValidationRule
    { condition = Core.Nothing,
      inputMessage = Core.Nothing,
      showCustomUi = Core.Nothing,
      strict = Core.Nothing
    }

instance Core.FromJSON DataValidationRule where
  parseJSON =
    Core.withObject
      "DataValidationRule"
      ( \o ->
          DataValidationRule
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "inputMessage")
            Core.<*> (o Core..:? "showCustomUi")
            Core.<*> (o Core..:? "strict")
      )

instance Core.ToJSON DataValidationRule where
  toJSON DataValidationRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("inputMessage" Core..=) Core.<$> inputMessage,
            ("showCustomUi" Core..=) Core.<$> showCustomUi,
            ("strict" Core..=) Core.<$> strict
          ]
      )

-- | Allows you to organize the date-time values in a source data column into buckets based on selected parts of their date or time values. For example, consider a pivot table showing sales transactions by date: +----------+--------------+ | Date | SUM of Sales | +----------+--------------+ | 1\/1\/2017 | $621.14 | | 2\/3\/2017 | $708.84 | | 5\/8\/2017 | $326.84 | ... +----------+--------------+ Applying a date-time group rule with a DateTimeRuleType of YEAR_MONTH results in the following pivot table. +--------------+--------------+ | Grouped Date | SUM of Sales | +--------------+--------------+ | 2017-Jan | $53,731.78 | | 2017-Feb | $83,475.32 | | 2017-Mar | $94,385.05 | ... +--------------+--------------+
--
-- /See:/ 'newDateTimeRule' smart constructor.
newtype DateTimeRule = DateTimeRule
  { -- | The type of date-time grouping to apply.
    type' :: (Core.Maybe DateTimeRule_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateTimeRule' with the minimum fields required to make a request.
newDateTimeRule ::
  DateTimeRule
newDateTimeRule = DateTimeRule {type' = Core.Nothing}

instance Core.FromJSON DateTimeRule where
  parseJSON =
    Core.withObject
      "DateTimeRule"
      (\o -> DateTimeRule Core.<$> (o Core..:? "type"))

instance Core.ToJSON DateTimeRule where
  toJSON DateTimeRule {..} =
    Core.object
      (Core.catMaybes [("type" Core..=) Core.<$> type'])

-- | Removes the banded range with the given ID from the spreadsheet.
--
-- /See:/ 'newDeleteBandingRequest' smart constructor.
newtype DeleteBandingRequest = DeleteBandingRequest
  { -- | The ID of the banded range to delete.
    bandedRangeId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteBandingRequest' with the minimum fields required to make a request.
newDeleteBandingRequest ::
  DeleteBandingRequest
newDeleteBandingRequest = DeleteBandingRequest {bandedRangeId = Core.Nothing}

instance Core.FromJSON DeleteBandingRequest where
  parseJSON =
    Core.withObject
      "DeleteBandingRequest"
      ( \o ->
          DeleteBandingRequest
            Core.<$> (o Core..:? "bandedRangeId")
      )

instance Core.ToJSON DeleteBandingRequest where
  toJSON DeleteBandingRequest {..} =
    Core.object
      ( Core.catMaybes
          [("bandedRangeId" Core..=) Core.<$> bandedRangeId]
      )

-- | Deletes a conditional format rule at the given index. All subsequent rules\' indexes are decremented.
--
-- /See:/ 'newDeleteConditionalFormatRuleRequest' smart constructor.
data DeleteConditionalFormatRuleRequest = DeleteConditionalFormatRuleRequest
  { -- | The zero-based index of the rule to be deleted.
    index :: (Core.Maybe Core.Int32),
    -- | The sheet the rule is being deleted from.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteConditionalFormatRuleRequest' with the minimum fields required to make a request.
newDeleteConditionalFormatRuleRequest ::
  DeleteConditionalFormatRuleRequest
newDeleteConditionalFormatRuleRequest =
  DeleteConditionalFormatRuleRequest
    { index = Core.Nothing,
      sheetId = Core.Nothing
    }

instance
  Core.FromJSON
    DeleteConditionalFormatRuleRequest
  where
  parseJSON =
    Core.withObject
      "DeleteConditionalFormatRuleRequest"
      ( \o ->
          DeleteConditionalFormatRuleRequest
            Core.<$> (o Core..:? "index") Core.<*> (o Core..:? "sheetId")
      )

instance
  Core.ToJSON
    DeleteConditionalFormatRuleRequest
  where
  toJSON DeleteConditionalFormatRuleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | The result of deleting a conditional format rule.
--
-- /See:/ 'newDeleteConditionalFormatRuleResponse' smart constructor.
newtype DeleteConditionalFormatRuleResponse = DeleteConditionalFormatRuleResponse
  { -- | The rule that was deleted.
    rule :: (Core.Maybe ConditionalFormatRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteConditionalFormatRuleResponse' with the minimum fields required to make a request.
newDeleteConditionalFormatRuleResponse ::
  DeleteConditionalFormatRuleResponse
newDeleteConditionalFormatRuleResponse =
  DeleteConditionalFormatRuleResponse {rule = Core.Nothing}

instance
  Core.FromJSON
    DeleteConditionalFormatRuleResponse
  where
  parseJSON =
    Core.withObject
      "DeleteConditionalFormatRuleResponse"
      ( \o ->
          DeleteConditionalFormatRuleResponse
            Core.<$> (o Core..:? "rule")
      )

instance
  Core.ToJSON
    DeleteConditionalFormatRuleResponse
  where
  toJSON DeleteConditionalFormatRuleResponse {..} =
    Core.object
      (Core.catMaybes [("rule" Core..=) Core.<$> rule])

-- | Deletes a data source. The request also deletes the associated data source sheet, and unlinks all associated data source objects.
--
-- /See:/ 'newDeleteDataSourceRequest' smart constructor.
newtype DeleteDataSourceRequest = DeleteDataSourceRequest
  { -- | The ID of the data source to delete.
    dataSourceId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDataSourceRequest' with the minimum fields required to make a request.
newDeleteDataSourceRequest ::
  DeleteDataSourceRequest
newDeleteDataSourceRequest =
  DeleteDataSourceRequest {dataSourceId = Core.Nothing}

instance Core.FromJSON DeleteDataSourceRequest where
  parseJSON =
    Core.withObject
      "DeleteDataSourceRequest"
      ( \o ->
          DeleteDataSourceRequest
            Core.<$> (o Core..:? "dataSourceId")
      )

instance Core.ToJSON DeleteDataSourceRequest where
  toJSON DeleteDataSourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataSourceId" Core..=) Core.<$> dataSourceId]
      )

-- | A request to delete developer metadata.
--
-- /See:/ 'newDeleteDeveloperMetadataRequest' smart constructor.
newtype DeleteDeveloperMetadataRequest = DeleteDeveloperMetadataRequest
  { -- | The data filter describing the criteria used to select which developer metadata entry to delete.
    dataFilter :: (Core.Maybe DataFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDeveloperMetadataRequest' with the minimum fields required to make a request.
newDeleteDeveloperMetadataRequest ::
  DeleteDeveloperMetadataRequest
newDeleteDeveloperMetadataRequest =
  DeleteDeveloperMetadataRequest {dataFilter = Core.Nothing}

instance Core.FromJSON DeleteDeveloperMetadataRequest where
  parseJSON =
    Core.withObject
      "DeleteDeveloperMetadataRequest"
      ( \o ->
          DeleteDeveloperMetadataRequest
            Core.<$> (o Core..:? "dataFilter")
      )

instance Core.ToJSON DeleteDeveloperMetadataRequest where
  toJSON DeleteDeveloperMetadataRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataFilter" Core..=) Core.<$> dataFilter]
      )

-- | The response from deleting developer metadata.
--
-- /See:/ 'newDeleteDeveloperMetadataResponse' smart constructor.
newtype DeleteDeveloperMetadataResponse = DeleteDeveloperMetadataResponse
  { -- | The metadata that was deleted.
    deletedDeveloperMetadata :: (Core.Maybe [DeveloperMetadata])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDeveloperMetadataResponse' with the minimum fields required to make a request.
newDeleteDeveloperMetadataResponse ::
  DeleteDeveloperMetadataResponse
newDeleteDeveloperMetadataResponse =
  DeleteDeveloperMetadataResponse {deletedDeveloperMetadata = Core.Nothing}

instance
  Core.FromJSON
    DeleteDeveloperMetadataResponse
  where
  parseJSON =
    Core.withObject
      "DeleteDeveloperMetadataResponse"
      ( \o ->
          DeleteDeveloperMetadataResponse
            Core.<$> (o Core..:? "deletedDeveloperMetadata")
      )

instance Core.ToJSON DeleteDeveloperMetadataResponse where
  toJSON DeleteDeveloperMetadataResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletedDeveloperMetadata" Core..=)
              Core.<$> deletedDeveloperMetadata
          ]
      )

-- | Deletes a group over the specified range by decrementing the depth of the dimensions in the range. For example, assume the sheet has a depth-1 group over B:E and a depth-2 group over C:D. Deleting a group over D:E leaves the sheet with a depth-1 group over B:D and a depth-2 group over C:C.
--
-- /See:/ 'newDeleteDimensionGroupRequest' smart constructor.
newtype DeleteDimensionGroupRequest = DeleteDimensionGroupRequest
  { -- | The range of the group to be deleted.
    range :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDimensionGroupRequest' with the minimum fields required to make a request.
newDeleteDimensionGroupRequest ::
  DeleteDimensionGroupRequest
newDeleteDimensionGroupRequest =
  DeleteDimensionGroupRequest {range = Core.Nothing}

instance Core.FromJSON DeleteDimensionGroupRequest where
  parseJSON =
    Core.withObject
      "DeleteDimensionGroupRequest"
      ( \o ->
          DeleteDimensionGroupRequest
            Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON DeleteDimensionGroupRequest where
  toJSON DeleteDimensionGroupRequest {..} =
    Core.object
      (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | The result of deleting a group.
--
-- /See:/ 'newDeleteDimensionGroupResponse' smart constructor.
newtype DeleteDimensionGroupResponse = DeleteDimensionGroupResponse
  { -- | All groups of a dimension after deleting a group from that dimension.
    dimensionGroups :: (Core.Maybe [DimensionGroup])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDimensionGroupResponse' with the minimum fields required to make a request.
newDeleteDimensionGroupResponse ::
  DeleteDimensionGroupResponse
newDeleteDimensionGroupResponse =
  DeleteDimensionGroupResponse {dimensionGroups = Core.Nothing}

instance Core.FromJSON DeleteDimensionGroupResponse where
  parseJSON =
    Core.withObject
      "DeleteDimensionGroupResponse"
      ( \o ->
          DeleteDimensionGroupResponse
            Core.<$> (o Core..:? "dimensionGroups")
      )

instance Core.ToJSON DeleteDimensionGroupResponse where
  toJSON DeleteDimensionGroupResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionGroups" Core..=)
              Core.<$> dimensionGroups
          ]
      )

-- | Deletes the dimensions from the sheet.
--
-- /See:/ 'newDeleteDimensionRequest' smart constructor.
newtype DeleteDimensionRequest = DeleteDimensionRequest
  { -- | The dimensions to delete from the sheet.
    range :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDimensionRequest' with the minimum fields required to make a request.
newDeleteDimensionRequest ::
  DeleteDimensionRequest
newDeleteDimensionRequest = DeleteDimensionRequest {range = Core.Nothing}

instance Core.FromJSON DeleteDimensionRequest where
  parseJSON =
    Core.withObject
      "DeleteDimensionRequest"
      ( \o ->
          DeleteDimensionRequest Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON DeleteDimensionRequest where
  toJSON DeleteDimensionRequest {..} =
    Core.object
      (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | Removes rows within this range that contain values in the specified columns that are duplicates of values in any previous row. Rows with identical values but different letter cases, formatting, or formulas are considered to be duplicates. This request also removes duplicate rows hidden from view (for example, due to a filter). When removing duplicates, the first instance of each duplicate row scanning from the top downwards is kept in the resulting range. Content outside of the specified range isn\'t removed, and rows considered duplicates do not have to be adjacent to each other in the range.
--
-- /See:/ 'newDeleteDuplicatesRequest' smart constructor.
data DeleteDuplicatesRequest = DeleteDuplicatesRequest
  { -- | The columns in the range to analyze for duplicate values. If no columns are selected then all columns are analyzed for duplicates.
    comparisonColumns :: (Core.Maybe [DimensionRange]),
    -- | The range to remove duplicates rows from.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDuplicatesRequest' with the minimum fields required to make a request.
newDeleteDuplicatesRequest ::
  DeleteDuplicatesRequest
newDeleteDuplicatesRequest =
  DeleteDuplicatesRequest
    { comparisonColumns = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON DeleteDuplicatesRequest where
  parseJSON =
    Core.withObject
      "DeleteDuplicatesRequest"
      ( \o ->
          DeleteDuplicatesRequest
            Core.<$> (o Core..:? "comparisonColumns")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON DeleteDuplicatesRequest where
  toJSON DeleteDuplicatesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("comparisonColumns" Core..=)
              Core.<$> comparisonColumns,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | The result of removing duplicates in a range.
--
-- /See:/ 'newDeleteDuplicatesResponse' smart constructor.
newtype DeleteDuplicatesResponse = DeleteDuplicatesResponse
  { -- | The number of duplicate rows removed.
    duplicatesRemovedCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteDuplicatesResponse' with the minimum fields required to make a request.
newDeleteDuplicatesResponse ::
  DeleteDuplicatesResponse
newDeleteDuplicatesResponse =
  DeleteDuplicatesResponse {duplicatesRemovedCount = Core.Nothing}

instance Core.FromJSON DeleteDuplicatesResponse where
  parseJSON =
    Core.withObject
      "DeleteDuplicatesResponse"
      ( \o ->
          DeleteDuplicatesResponse
            Core.<$> (o Core..:? "duplicatesRemovedCount")
      )

instance Core.ToJSON DeleteDuplicatesResponse where
  toJSON DeleteDuplicatesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("duplicatesRemovedCount" Core..=)
              Core.<$> duplicatesRemovedCount
          ]
      )

-- | Deletes the embedded object with the given ID.
--
-- /See:/ 'newDeleteEmbeddedObjectRequest' smart constructor.
newtype DeleteEmbeddedObjectRequest = DeleteEmbeddedObjectRequest
  { -- | The ID of the embedded object to delete.
    objectId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteEmbeddedObjectRequest' with the minimum fields required to make a request.
newDeleteEmbeddedObjectRequest ::
  DeleteEmbeddedObjectRequest
newDeleteEmbeddedObjectRequest =
  DeleteEmbeddedObjectRequest {objectId = Core.Nothing}

instance Core.FromJSON DeleteEmbeddedObjectRequest where
  parseJSON =
    Core.withObject
      "DeleteEmbeddedObjectRequest"
      ( \o ->
          DeleteEmbeddedObjectRequest
            Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON DeleteEmbeddedObjectRequest where
  toJSON DeleteEmbeddedObjectRequest {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Deletes a particular filter view.
--
-- /See:/ 'newDeleteFilterViewRequest' smart constructor.
newtype DeleteFilterViewRequest = DeleteFilterViewRequest
  { -- | The ID of the filter to delete.
    filterId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteFilterViewRequest' with the minimum fields required to make a request.
newDeleteFilterViewRequest ::
  DeleteFilterViewRequest
newDeleteFilterViewRequest = DeleteFilterViewRequest {filterId = Core.Nothing}

instance Core.FromJSON DeleteFilterViewRequest where
  parseJSON =
    Core.withObject
      "DeleteFilterViewRequest"
      ( \o ->
          DeleteFilterViewRequest
            Core.<$> (o Core..:? "filterId")
      )

instance Core.ToJSON DeleteFilterViewRequest where
  toJSON DeleteFilterViewRequest {..} =
    Core.object
      ( Core.catMaybes
          [("filterId" Core..=) Core.<$> filterId]
      )

-- | Removes the named range with the given ID from the spreadsheet.
--
-- /See:/ 'newDeleteNamedRangeRequest' smart constructor.
newtype DeleteNamedRangeRequest = DeleteNamedRangeRequest
  { -- | The ID of the named range to delete.
    namedRangeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteNamedRangeRequest' with the minimum fields required to make a request.
newDeleteNamedRangeRequest ::
  DeleteNamedRangeRequest
newDeleteNamedRangeRequest =
  DeleteNamedRangeRequest {namedRangeId = Core.Nothing}

instance Core.FromJSON DeleteNamedRangeRequest where
  parseJSON =
    Core.withObject
      "DeleteNamedRangeRequest"
      ( \o ->
          DeleteNamedRangeRequest
            Core.<$> (o Core..:? "namedRangeId")
      )

instance Core.ToJSON DeleteNamedRangeRequest where
  toJSON DeleteNamedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("namedRangeId" Core..=) Core.<$> namedRangeId]
      )

-- | Deletes the protected range with the given ID.
--
-- /See:/ 'newDeleteProtectedRangeRequest' smart constructor.
newtype DeleteProtectedRangeRequest = DeleteProtectedRangeRequest
  { -- | The ID of the protected range to delete.
    protectedRangeId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteProtectedRangeRequest' with the minimum fields required to make a request.
newDeleteProtectedRangeRequest ::
  DeleteProtectedRangeRequest
newDeleteProtectedRangeRequest =
  DeleteProtectedRangeRequest {protectedRangeId = Core.Nothing}

instance Core.FromJSON DeleteProtectedRangeRequest where
  parseJSON =
    Core.withObject
      "DeleteProtectedRangeRequest"
      ( \o ->
          DeleteProtectedRangeRequest
            Core.<$> (o Core..:? "protectedRangeId")
      )

instance Core.ToJSON DeleteProtectedRangeRequest where
  toJSON DeleteProtectedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("protectedRangeId" Core..=)
              Core.<$> protectedRangeId
          ]
      )

-- | Deletes a range of cells, shifting other cells into the deleted area.
--
-- /See:/ 'newDeleteRangeRequest' smart constructor.
data DeleteRangeRequest = DeleteRangeRequest
  { -- | The range of cells to delete.
    range :: (Core.Maybe GridRange),
    -- | The dimension from which deleted cells will be replaced with. If ROWS, existing cells will be shifted upward to replace the deleted cells. If COLUMNS, existing cells will be shifted left to replace the deleted cells.
    shiftDimension :: (Core.Maybe DeleteRangeRequest_ShiftDimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteRangeRequest' with the minimum fields required to make a request.
newDeleteRangeRequest ::
  DeleteRangeRequest
newDeleteRangeRequest =
  DeleteRangeRequest {range = Core.Nothing, shiftDimension = Core.Nothing}

instance Core.FromJSON DeleteRangeRequest where
  parseJSON =
    Core.withObject
      "DeleteRangeRequest"
      ( \o ->
          DeleteRangeRequest
            Core.<$> (o Core..:? "range")
            Core.<*> (o Core..:? "shiftDimension")
      )

instance Core.ToJSON DeleteRangeRequest where
  toJSON DeleteRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("range" Core..=) Core.<$> range,
            ("shiftDimension" Core..=) Core.<$> shiftDimension
          ]
      )

-- | Deletes the requested sheet.
--
-- /See:/ 'newDeleteSheetRequest' smart constructor.
newtype DeleteSheetRequest = DeleteSheetRequest
  { -- | The ID of the sheet to delete. If the sheet is of DATA_SOURCE type, the associated DataSource is also deleted.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteSheetRequest' with the minimum fields required to make a request.
newDeleteSheetRequest ::
  DeleteSheetRequest
newDeleteSheetRequest = DeleteSheetRequest {sheetId = Core.Nothing}

instance Core.FromJSON DeleteSheetRequest where
  parseJSON =
    Core.withObject
      "DeleteSheetRequest"
      ( \o ->
          DeleteSheetRequest Core.<$> (o Core..:? "sheetId")
      )

instance Core.ToJSON DeleteSheetRequest where
  toJSON DeleteSheetRequest {..} =
    Core.object
      ( Core.catMaybes
          [("sheetId" Core..=) Core.<$> sheetId]
      )

-- | Developer metadata associated with a location or object in a spreadsheet. Developer metadata may be used to associate arbitrary data with various parts of a spreadsheet and will remain associated at those locations as they move around and the spreadsheet is edited. For example, if developer metadata is associated with row 5 and another row is then subsequently inserted above row 5, that original metadata will still be associated with the row it was first associated with (what is now row 6). If the associated object is deleted its metadata is deleted too.
--
-- /See:/ 'newDeveloperMetadata' smart constructor.
data DeveloperMetadata = DeveloperMetadata
  { -- | The location where the metadata is associated.
    location :: (Core.Maybe DeveloperMetadataLocation),
    -- | The spreadsheet-scoped unique ID that identifies the metadata. IDs may be specified when metadata is created, otherwise one will be randomly generated and assigned. Must be positive.
    metadataId :: (Core.Maybe Core.Int32),
    -- | The metadata key. There may be multiple metadata in a spreadsheet with the same key. Developer metadata must always have a key specified.
    metadataKey :: (Core.Maybe Core.Text),
    -- | Data associated with the metadata\'s key.
    metadataValue :: (Core.Maybe Core.Text),
    -- | The metadata visibility. Developer metadata must always have a visibility specified.
    visibility :: (Core.Maybe DeveloperMetadata_Visibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeveloperMetadata' with the minimum fields required to make a request.
newDeveloperMetadata ::
  DeveloperMetadata
newDeveloperMetadata =
  DeveloperMetadata
    { location = Core.Nothing,
      metadataId = Core.Nothing,
      metadataKey = Core.Nothing,
      metadataValue = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.FromJSON DeveloperMetadata where
  parseJSON =
    Core.withObject
      "DeveloperMetadata"
      ( \o ->
          DeveloperMetadata
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "metadataId")
            Core.<*> (o Core..:? "metadataKey")
            Core.<*> (o Core..:? "metadataValue")
            Core.<*> (o Core..:? "visibility")
      )

instance Core.ToJSON DeveloperMetadata where
  toJSON DeveloperMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("metadataId" Core..=) Core.<$> metadataId,
            ("metadataKey" Core..=) Core.<$> metadataKey,
            ("metadataValue" Core..=) Core.<$> metadataValue,
            ("visibility" Core..=) Core.<$> visibility
          ]
      )

-- | A location where metadata may be associated in a spreadsheet.
--
-- /See:/ 'newDeveloperMetadataLocation' smart constructor.
data DeveloperMetadataLocation = DeveloperMetadataLocation
  { -- | Represents the row or column when metadata is associated with a dimension. The specified DimensionRange must represent a single row or column; it cannot be unbounded or span multiple rows or columns.
    dimensionRange :: (Core.Maybe DimensionRange),
    -- | The type of location this object represents. This field is read-only.
    locationType :: (Core.Maybe DeveloperMetadataLocation_LocationType),
    -- | The ID of the sheet when metadata is associated with an entire sheet.
    sheetId :: (Core.Maybe Core.Int32),
    -- | True when metadata is associated with an entire spreadsheet.
    spreadsheet :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeveloperMetadataLocation' with the minimum fields required to make a request.
newDeveloperMetadataLocation ::
  DeveloperMetadataLocation
newDeveloperMetadataLocation =
  DeveloperMetadataLocation
    { dimensionRange = Core.Nothing,
      locationType = Core.Nothing,
      sheetId = Core.Nothing,
      spreadsheet = Core.Nothing
    }

instance Core.FromJSON DeveloperMetadataLocation where
  parseJSON =
    Core.withObject
      "DeveloperMetadataLocation"
      ( \o ->
          DeveloperMetadataLocation
            Core.<$> (o Core..:? "dimensionRange")
            Core.<*> (o Core..:? "locationType")
            Core.<*> (o Core..:? "sheetId")
            Core.<*> (o Core..:? "spreadsheet")
      )

instance Core.ToJSON DeveloperMetadataLocation where
  toJSON DeveloperMetadataLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionRange" Core..=) Core.<$> dimensionRange,
            ("locationType" Core..=) Core.<$> locationType,
            ("sheetId" Core..=) Core.<$> sheetId,
            ("spreadsheet" Core..=) Core.<$> spreadsheet
          ]
      )

-- | Selects DeveloperMetadata that matches all of the specified fields. For example, if only a metadata ID is specified this considers the DeveloperMetadata with that particular unique ID. If a metadata key is specified, this considers all developer metadata with that key. If a key, visibility, and location type are all specified, this considers all developer metadata with that key and visibility that are associated with a location of that type. In general, this selects all DeveloperMetadata that matches the intersection of all the specified fields; any field or combination of fields may be specified.
--
-- /See:/ 'newDeveloperMetadataLookup' smart constructor.
data DeveloperMetadataLookup = DeveloperMetadataLookup
  { -- | Determines how this lookup matches the location. If this field is specified as EXACT, only developer metadata associated on the exact location specified is matched. If this field is specified to INTERSECTING, developer metadata associated on intersecting locations is also matched. If left unspecified, this field assumes a default value of INTERSECTING. If this field is specified, a metadataLocation must also be specified.
    locationMatchingStrategy :: (Core.Maybe DeveloperMetadataLookup_LocationMatchingStrategy),
    -- | Limits the selected developer metadata to those entries which are associated with locations of the specified type. For example, when this field is specified as ROW this lookup only considers developer metadata associated on rows. If the field is left unspecified, all location types are considered. This field cannot be specified as SPREADSHEET when the locationMatchingStrategy is specified as INTERSECTING or when the metadataLocation is specified as a non-spreadsheet location: spreadsheet metadata cannot intersect any other developer metadata location. This field also must be left unspecified when the locationMatchingStrategy is specified as EXACT.
    locationType :: (Core.Maybe DeveloperMetadataLookup_LocationType),
    -- | Limits the selected developer metadata to that which has a matching DeveloperMetadata.metadata_id.
    metadataId :: (Core.Maybe Core.Int32),
    -- | Limits the selected developer metadata to that which has a matching DeveloperMetadata.metadata_key.
    metadataKey :: (Core.Maybe Core.Text),
    -- | Limits the selected developer metadata to those entries associated with the specified location. This field either matches exact locations or all intersecting locations according the specified locationMatchingStrategy.
    metadataLocation :: (Core.Maybe DeveloperMetadataLocation),
    -- | Limits the selected developer metadata to that which has a matching DeveloperMetadata.metadata_value.
    metadataValue :: (Core.Maybe Core.Text),
    -- | Limits the selected developer metadata to that which has a matching DeveloperMetadata.visibility. If left unspecified, all developer metadata visibile to the requesting project is considered.
    visibility :: (Core.Maybe DeveloperMetadataLookup_Visibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeveloperMetadataLookup' with the minimum fields required to make a request.
newDeveloperMetadataLookup ::
  DeveloperMetadataLookup
newDeveloperMetadataLookup =
  DeveloperMetadataLookup
    { locationMatchingStrategy = Core.Nothing,
      locationType = Core.Nothing,
      metadataId = Core.Nothing,
      metadataKey = Core.Nothing,
      metadataLocation = Core.Nothing,
      metadataValue = Core.Nothing,
      visibility = Core.Nothing
    }

instance Core.FromJSON DeveloperMetadataLookup where
  parseJSON =
    Core.withObject
      "DeveloperMetadataLookup"
      ( \o ->
          DeveloperMetadataLookup
            Core.<$> (o Core..:? "locationMatchingStrategy")
            Core.<*> (o Core..:? "locationType")
            Core.<*> (o Core..:? "metadataId")
            Core.<*> (o Core..:? "metadataKey")
            Core.<*> (o Core..:? "metadataLocation")
            Core.<*> (o Core..:? "metadataValue")
            Core.<*> (o Core..:? "visibility")
      )

instance Core.ToJSON DeveloperMetadataLookup where
  toJSON DeveloperMetadataLookup {..} =
    Core.object
      ( Core.catMaybes
          [ ("locationMatchingStrategy" Core..=)
              Core.<$> locationMatchingStrategy,
            ("locationType" Core..=) Core.<$> locationType,
            ("metadataId" Core..=) Core.<$> metadataId,
            ("metadataKey" Core..=) Core.<$> metadataKey,
            ("metadataLocation" Core..=)
              Core.<$> metadataLocation,
            ("metadataValue" Core..=) Core.<$> metadataValue,
            ("visibility" Core..=) Core.<$> visibility
          ]
      )

-- | A group over an interval of rows or columns on a sheet, which can contain or be contained within other groups. A group can be collapsed or expanded as a unit on the sheet.
--
-- /See:/ 'newDimensionGroup' smart constructor.
data DimensionGroup = DimensionGroup
  { -- | This field is true if this group is collapsed. A collapsed group remains collapsed if an overlapping group at a shallower depth is expanded. A true value does not imply that all dimensions within the group are hidden, since a dimension\'s visibility can change independently from this group property. However, when this property is updated, all dimensions within it are set to hidden if this field is true, or set to visible if this field is false.
    collapsed :: (Core.Maybe Core.Bool),
    -- | The depth of the group, representing how many groups have a range that wholly contains the range of this group.
    depth :: (Core.Maybe Core.Int32),
    -- | The range over which this group exists.
    range :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionGroup' with the minimum fields required to make a request.
newDimensionGroup ::
  DimensionGroup
newDimensionGroup =
  DimensionGroup
    { collapsed = Core.Nothing,
      depth = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON DimensionGroup where
  parseJSON =
    Core.withObject
      "DimensionGroup"
      ( \o ->
          DimensionGroup
            Core.<$> (o Core..:? "collapsed")
            Core.<*> (o Core..:? "depth")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON DimensionGroup where
  toJSON DimensionGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("collapsed" Core..=) Core.<$> collapsed,
            ("depth" Core..=) Core.<$> depth,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Properties about a dimension.
--
-- /See:/ 'newDimensionProperties' smart constructor.
data DimensionProperties = DimensionProperties
  { -- | Output only. If set, this is a column in a data source sheet.
    dataSourceColumnReference :: (Core.Maybe DataSourceColumnReference),
    -- | The developer metadata associated with a single row or column.
    developerMetadata :: (Core.Maybe [DeveloperMetadata]),
    -- | True if this dimension is being filtered. This field is read-only.
    hiddenByFilter :: (Core.Maybe Core.Bool),
    -- | True if this dimension is explicitly hidden.
    hiddenByUser :: (Core.Maybe Core.Bool),
    -- | The height (if a row) or width (if a column) of the dimension in pixels.
    pixelSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionProperties' with the minimum fields required to make a request.
newDimensionProperties ::
  DimensionProperties
newDimensionProperties =
  DimensionProperties
    { dataSourceColumnReference = Core.Nothing,
      developerMetadata = Core.Nothing,
      hiddenByFilter = Core.Nothing,
      hiddenByUser = Core.Nothing,
      pixelSize = Core.Nothing
    }

instance Core.FromJSON DimensionProperties where
  parseJSON =
    Core.withObject
      "DimensionProperties"
      ( \o ->
          DimensionProperties
            Core.<$> (o Core..:? "dataSourceColumnReference")
            Core.<*> (o Core..:? "developerMetadata")
            Core.<*> (o Core..:? "hiddenByFilter")
            Core.<*> (o Core..:? "hiddenByUser")
            Core.<*> (o Core..:? "pixelSize")
      )

instance Core.ToJSON DimensionProperties where
  toJSON DimensionProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceColumnReference" Core..=)
              Core.<$> dataSourceColumnReference,
            ("developerMetadata" Core..=)
              Core.<$> developerMetadata,
            ("hiddenByFilter" Core..=) Core.<$> hiddenByFilter,
            ("hiddenByUser" Core..=) Core.<$> hiddenByUser,
            ("pixelSize" Core..=) Core.<$> pixelSize
          ]
      )

-- | A range along a single dimension on a sheet. All indexes are zero-based. Indexes are half open: the start index is inclusive and the end index is exclusive. Missing indexes indicate the range is unbounded on that side.
--
-- /See:/ 'newDimensionRange' smart constructor.
data DimensionRange = DimensionRange
  { -- | The dimension of the span.
    dimension :: (Core.Maybe DimensionRange_Dimension),
    -- | The end (exclusive) of the span, or not set if unbounded.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The sheet this span is on.
    sheetId :: (Core.Maybe Core.Int32),
    -- | The start (inclusive) of the span, or not set if unbounded.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionRange' with the minimum fields required to make a request.
newDimensionRange ::
  DimensionRange
newDimensionRange =
  DimensionRange
    { dimension = Core.Nothing,
      endIndex = Core.Nothing,
      sheetId = Core.Nothing,
      startIndex = Core.Nothing
    }

instance Core.FromJSON DimensionRange where
  parseJSON =
    Core.withObject
      "DimensionRange"
      ( \o ->
          DimensionRange
            Core.<$> (o Core..:? "dimension")
            Core.<*> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "sheetId")
            Core.<*> (o Core..:? "startIndex")
      )

instance Core.ToJSON DimensionRange where
  toJSON DimensionRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimension" Core..=) Core.<$> dimension,
            ("endIndex" Core..=) Core.<$> endIndex,
            ("sheetId" Core..=) Core.<$> sheetId,
            ("startIndex" Core..=) Core.<$> startIndex
          ]
      )

-- | Duplicates a particular filter view.
--
-- /See:/ 'newDuplicateFilterViewRequest' smart constructor.
newtype DuplicateFilterViewRequest = DuplicateFilterViewRequest
  { -- | The ID of the filter being duplicated.
    filterId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateFilterViewRequest' with the minimum fields required to make a request.
newDuplicateFilterViewRequest ::
  DuplicateFilterViewRequest
newDuplicateFilterViewRequest =
  DuplicateFilterViewRequest {filterId = Core.Nothing}

instance Core.FromJSON DuplicateFilterViewRequest where
  parseJSON =
    Core.withObject
      "DuplicateFilterViewRequest"
      ( \o ->
          DuplicateFilterViewRequest
            Core.<$> (o Core..:? "filterId")
      )

instance Core.ToJSON DuplicateFilterViewRequest where
  toJSON DuplicateFilterViewRequest {..} =
    Core.object
      ( Core.catMaybes
          [("filterId" Core..=) Core.<$> filterId]
      )

-- | The result of a filter view being duplicated.
--
-- /See:/ 'newDuplicateFilterViewResponse' smart constructor.
newtype DuplicateFilterViewResponse = DuplicateFilterViewResponse
  { -- | The newly created filter.
    filter :: (Core.Maybe FilterView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateFilterViewResponse' with the minimum fields required to make a request.
newDuplicateFilterViewResponse ::
  DuplicateFilterViewResponse
newDuplicateFilterViewResponse =
  DuplicateFilterViewResponse {filter = Core.Nothing}

instance Core.FromJSON DuplicateFilterViewResponse where
  parseJSON =
    Core.withObject
      "DuplicateFilterViewResponse"
      ( \o ->
          DuplicateFilterViewResponse
            Core.<$> (o Core..:? "filter")
      )

instance Core.ToJSON DuplicateFilterViewResponse where
  toJSON DuplicateFilterViewResponse {..} =
    Core.object
      (Core.catMaybes [("filter" Core..=) Core.<$> filter])

-- | Duplicates the contents of a sheet.
--
-- /See:/ 'newDuplicateSheetRequest' smart constructor.
data DuplicateSheetRequest = DuplicateSheetRequest
  { -- | The zero-based index where the new sheet should be inserted. The index of all sheets after this are incremented.
    insertSheetIndex :: (Core.Maybe Core.Int32),
    -- | If set, the ID of the new sheet. If not set, an ID is chosen. If set, the ID must not conflict with any existing sheet ID. If set, it must be non-negative.
    newSheetId' :: (Core.Maybe Core.Int32),
    -- | The name of the new sheet. If empty, a new name is chosen for you.
    newSheetName' :: (Core.Maybe Core.Text),
    -- | The sheet to duplicate. If the source sheet is of DATA_SOURCE type, its backing DataSource is also duplicated and associated with the new copy of the sheet. No data execution is triggered, the grid data of this sheet is also copied over but only available after the batch request completes.
    sourceSheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateSheetRequest' with the minimum fields required to make a request.
newDuplicateSheetRequest ::
  DuplicateSheetRequest
newDuplicateSheetRequest =
  DuplicateSheetRequest
    { insertSheetIndex = Core.Nothing,
      newSheetId' = Core.Nothing,
      newSheetName' = Core.Nothing,
      sourceSheetId = Core.Nothing
    }

instance Core.FromJSON DuplicateSheetRequest where
  parseJSON =
    Core.withObject
      "DuplicateSheetRequest"
      ( \o ->
          DuplicateSheetRequest
            Core.<$> (o Core..:? "insertSheetIndex")
            Core.<*> (o Core..:? "newSheetId")
            Core.<*> (o Core..:? "newSheetName")
            Core.<*> (o Core..:? "sourceSheetId")
      )

instance Core.ToJSON DuplicateSheetRequest where
  toJSON DuplicateSheetRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertSheetIndex" Core..=)
              Core.<$> insertSheetIndex,
            ("newSheetId" Core..=) Core.<$> newSheetId',
            ("newSheetName" Core..=) Core.<$> newSheetName',
            ("sourceSheetId" Core..=) Core.<$> sourceSheetId
          ]
      )

-- | The result of duplicating a sheet.
--
-- /See:/ 'newDuplicateSheetResponse' smart constructor.
newtype DuplicateSheetResponse = DuplicateSheetResponse
  { -- | The properties of the duplicate sheet.
    properties :: (Core.Maybe SheetProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateSheetResponse' with the minimum fields required to make a request.
newDuplicateSheetResponse ::
  DuplicateSheetResponse
newDuplicateSheetResponse = DuplicateSheetResponse {properties = Core.Nothing}

instance Core.FromJSON DuplicateSheetResponse where
  parseJSON =
    Core.withObject
      "DuplicateSheetResponse"
      ( \o ->
          DuplicateSheetResponse
            Core.<$> (o Core..:? "properties")
      )

instance Core.ToJSON DuplicateSheetResponse where
  toJSON DuplicateSheetResponse {..} =
    Core.object
      ( Core.catMaybes
          [("properties" Core..=) Core.<$> properties]
      )

-- | The editors of a protected range.
--
-- /See:/ 'newEditors' smart constructor.
data Editors = Editors
  { -- | True if anyone in the document\'s domain has edit access to the protected range. Domain protection is only supported on documents within a domain.
    domainUsersCanEdit :: (Core.Maybe Core.Bool),
    -- | The email addresses of groups with edit access to the protected range.
    groups :: (Core.Maybe [Core.Text]),
    -- | The email addresses of users with edit access to the protected range.
    users :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Editors' with the minimum fields required to make a request.
newEditors ::
  Editors
newEditors =
  Editors
    { domainUsersCanEdit = Core.Nothing,
      groups = Core.Nothing,
      users = Core.Nothing
    }

instance Core.FromJSON Editors where
  parseJSON =
    Core.withObject
      "Editors"
      ( \o ->
          Editors
            Core.<$> (o Core..:? "domainUsersCanEdit")
            Core.<*> (o Core..:? "groups")
            Core.<*> (o Core..:? "users")
      )

instance Core.ToJSON Editors where
  toJSON Editors {..} =
    Core.object
      ( Core.catMaybes
          [ ("domainUsersCanEdit" Core..=)
              Core.<$> domainUsersCanEdit,
            ("groups" Core..=) Core.<$> groups,
            ("users" Core..=) Core.<$> users
          ]
      )

-- | A chart embedded in a sheet.
--
-- /See:/ 'newEmbeddedChart' smart constructor.
data EmbeddedChart = EmbeddedChart
  { -- | The border of the chart.
    border :: (Core.Maybe EmbeddedObjectBorder),
    -- | The ID of the chart.
    chartId :: (Core.Maybe Core.Int32),
    -- | The position of the chart.
    position :: (Core.Maybe EmbeddedObjectPosition),
    -- | The specification of the chart.
    spec :: (Core.Maybe ChartSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedChart' with the minimum fields required to make a request.
newEmbeddedChart ::
  EmbeddedChart
newEmbeddedChart =
  EmbeddedChart
    { border = Core.Nothing,
      chartId = Core.Nothing,
      position = Core.Nothing,
      spec = Core.Nothing
    }

instance Core.FromJSON EmbeddedChart where
  parseJSON =
    Core.withObject
      "EmbeddedChart"
      ( \o ->
          EmbeddedChart
            Core.<$> (o Core..:? "border")
            Core.<*> (o Core..:? "chartId")
            Core.<*> (o Core..:? "position")
            Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON EmbeddedChart where
  toJSON EmbeddedChart {..} =
    Core.object
      ( Core.catMaybes
          [ ("border" Core..=) Core.<$> border,
            ("chartId" Core..=) Core.<$> chartId,
            ("position" Core..=) Core.<$> position,
            ("spec" Core..=) Core.<$> spec
          ]
      )

-- | A border along an embedded object.
--
-- /See:/ 'newEmbeddedObjectBorder' smart constructor.
data EmbeddedObjectBorder = EmbeddedObjectBorder
  { -- | The color of the border.
    color :: (Core.Maybe Color),
    -- | The color of the border. If color is also set, this field takes precedence.
    colorStyle :: (Core.Maybe ColorStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedObjectBorder' with the minimum fields required to make a request.
newEmbeddedObjectBorder ::
  EmbeddedObjectBorder
newEmbeddedObjectBorder =
  EmbeddedObjectBorder {color = Core.Nothing, colorStyle = Core.Nothing}

instance Core.FromJSON EmbeddedObjectBorder where
  parseJSON =
    Core.withObject
      "EmbeddedObjectBorder"
      ( \o ->
          EmbeddedObjectBorder
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorStyle")
      )

instance Core.ToJSON EmbeddedObjectBorder where
  toJSON EmbeddedObjectBorder {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorStyle" Core..=) Core.<$> colorStyle
          ]
      )

-- | The position of an embedded object such as a chart.
--
-- /See:/ 'newEmbeddedObjectPosition' smart constructor.
data EmbeddedObjectPosition = EmbeddedObjectPosition
  { -- | If true, the embedded object is put on a new sheet whose ID is chosen for you. Used only when writing.
    newSheet' :: (Core.Maybe Core.Bool),
    -- | The position at which the object is overlaid on top of a grid.
    overlayPosition :: (Core.Maybe OverlayPosition),
    -- | The sheet this is on. Set only if the embedded object is on its own sheet. Must be non-negative.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedObjectPosition' with the minimum fields required to make a request.
newEmbeddedObjectPosition ::
  EmbeddedObjectPosition
newEmbeddedObjectPosition =
  EmbeddedObjectPosition
    { newSheet' = Core.Nothing,
      overlayPosition = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON EmbeddedObjectPosition where
  parseJSON =
    Core.withObject
      "EmbeddedObjectPosition"
      ( \o ->
          EmbeddedObjectPosition
            Core.<$> (o Core..:? "newSheet")
            Core.<*> (o Core..:? "overlayPosition")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON EmbeddedObjectPosition where
  toJSON EmbeddedObjectPosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("newSheet" Core..=) Core.<$> newSheet',
            ("overlayPosition" Core..=) Core.<$> overlayPosition,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | An error in a cell.
--
-- /See:/ 'newErrorValue' smart constructor.
data ErrorValue = ErrorValue
  { -- | A message with more information about the error (in the spreadsheet\'s locale).
    message :: (Core.Maybe Core.Text),
    -- | The type of error.
    type' :: (Core.Maybe ErrorValue_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorValue' with the minimum fields required to make a request.
newErrorValue ::
  ErrorValue
newErrorValue = ErrorValue {message = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON ErrorValue where
  parseJSON =
    Core.withObject
      "ErrorValue"
      ( \o ->
          ErrorValue
            Core.<$> (o Core..:? "message") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ErrorValue where
  toJSON ErrorValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("message" Core..=) Core.<$> message,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The kinds of value that a cell in a spreadsheet can have.
--
-- /See:/ 'newExtendedValue' smart constructor.
data ExtendedValue = ExtendedValue
  { -- | Represents a boolean value.
    boolValue :: (Core.Maybe Core.Bool),
    -- | Represents an error. This field is read-only.
    errorValue :: (Core.Maybe ErrorValue),
    -- | Represents a formula.
    formulaValue :: (Core.Maybe Core.Text),
    -- | Represents a double value. Note: Dates, Times and DateTimes are represented as doubles in SERIAL_NUMBER format.
    numberValue :: (Core.Maybe Core.Double),
    -- | Represents a string value. Leading single quotes are not included. For example, if the user typed @\'123@ into the UI, this would be represented as a @stringValue@ of @\"123\"@.
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExtendedValue' with the minimum fields required to make a request.
newExtendedValue ::
  ExtendedValue
newExtendedValue =
  ExtendedValue
    { boolValue = Core.Nothing,
      errorValue = Core.Nothing,
      formulaValue = Core.Nothing,
      numberValue = Core.Nothing,
      stringValue = Core.Nothing
    }

instance Core.FromJSON ExtendedValue where
  parseJSON =
    Core.withObject
      "ExtendedValue"
      ( \o ->
          ExtendedValue
            Core.<$> (o Core..:? "boolValue")
            Core.<*> (o Core..:? "errorValue")
            Core.<*> (o Core..:? "formulaValue")
            Core.<*> (o Core..:? "numberValue")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON ExtendedValue where
  toJSON ExtendedValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("boolValue" Core..=) Core.<$> boolValue,
            ("errorValue" Core..=) Core.<$> errorValue,
            ("formulaValue" Core..=) Core.<$> formulaValue,
            ("numberValue" Core..=) Core.<$> numberValue,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | Criteria for showing\/hiding rows in a filter or filter view.
--
-- /See:/ 'newFilterCriteria' smart constructor.
data FilterCriteria = FilterCriteria
  { -- | A condition that must be true for values to be shown. (This does not override hidden_values -- if a value is listed there, it will still be hidden.)
    condition :: (Core.Maybe BooleanCondition),
    -- | Values that should be hidden.
    hiddenValues :: (Core.Maybe [Core.Text]),
    -- | The background fill color to filter by; only cells with this fill color are shown. Mutually exclusive with visible/foreground/color.
    visibleBackgroundColor :: (Core.Maybe Color),
    -- | The background fill color to filter by; only cells with this fill color are shown. This field is mutually exclusive with visible/foreground/color, and must be set to an RGB-type color. If visible/background/color is also set, this field takes precedence.
    visibleBackgroundColorStyle :: (Core.Maybe ColorStyle),
    -- | The foreground color to filter by; only cells with this foreground color are shown. Mutually exclusive with visible/background/color.
    visibleForegroundColor :: (Core.Maybe Color),
    -- | The foreground color to filter by; only cells with this foreground color are shown. This field is mutually exclusive with visible/background/color, and must be set to an RGB-type color. If visible/foreground/color is also set, this field takes precedence.
    visibleForegroundColorStyle :: (Core.Maybe ColorStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterCriteria' with the minimum fields required to make a request.
newFilterCriteria ::
  FilterCriteria
newFilterCriteria =
  FilterCriteria
    { condition = Core.Nothing,
      hiddenValues = Core.Nothing,
      visibleBackgroundColor = Core.Nothing,
      visibleBackgroundColorStyle = Core.Nothing,
      visibleForegroundColor = Core.Nothing,
      visibleForegroundColorStyle = Core.Nothing
    }

instance Core.FromJSON FilterCriteria where
  parseJSON =
    Core.withObject
      "FilterCriteria"
      ( \o ->
          FilterCriteria
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "hiddenValues")
            Core.<*> (o Core..:? "visibleBackgroundColor")
            Core.<*> (o Core..:? "visibleBackgroundColorStyle")
            Core.<*> (o Core..:? "visibleForegroundColor")
            Core.<*> (o Core..:? "visibleForegroundColorStyle")
      )

instance Core.ToJSON FilterCriteria where
  toJSON FilterCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("hiddenValues" Core..=) Core.<$> hiddenValues,
            ("visibleBackgroundColor" Core..=)
              Core.<$> visibleBackgroundColor,
            ("visibleBackgroundColorStyle" Core..=)
              Core.<$> visibleBackgroundColorStyle,
            ("visibleForegroundColor" Core..=)
              Core.<$> visibleForegroundColor,
            ("visibleForegroundColorStyle" Core..=)
              Core.<$> visibleForegroundColorStyle
          ]
      )

-- | The filter criteria associated with a specific column.
--
-- /See:/ 'newFilterSpec' smart constructor.
data FilterSpec = FilterSpec
  { -- | The column index.
    columnIndex :: (Core.Maybe Core.Int32),
    -- | Reference to a data source column.
    dataSourceColumnReference :: (Core.Maybe DataSourceColumnReference),
    -- | The criteria for the column.
    filterCriteria :: (Core.Maybe FilterCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterSpec' with the minimum fields required to make a request.
newFilterSpec ::
  FilterSpec
newFilterSpec =
  FilterSpec
    { columnIndex = Core.Nothing,
      dataSourceColumnReference = Core.Nothing,
      filterCriteria = Core.Nothing
    }

instance Core.FromJSON FilterSpec where
  parseJSON =
    Core.withObject
      "FilterSpec"
      ( \o ->
          FilterSpec
            Core.<$> (o Core..:? "columnIndex")
            Core.<*> (o Core..:? "dataSourceColumnReference")
            Core.<*> (o Core..:? "filterCriteria")
      )

instance Core.ToJSON FilterSpec where
  toJSON FilterSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIndex" Core..=) Core.<$> columnIndex,
            ("dataSourceColumnReference" Core..=)
              Core.<$> dataSourceColumnReference,
            ("filterCriteria" Core..=) Core.<$> filterCriteria
          ]
      )

-- | A filter view.
--
-- /See:/ 'newFilterView' smart constructor.
data FilterView = FilterView
  { -- | The criteria for showing\/hiding values per column. The map\'s key is the column index, and the value is the criteria for that column. This field is deprecated in favor of filter_specs.
    criteria :: (Core.Maybe FilterView_Criteria),
    -- | The filter criteria for showing\/hiding values per column. Both criteria and filter_specs are populated in responses. If both fields are specified in an update request, this field takes precedence.
    filterSpecs :: (Core.Maybe [FilterSpec]),
    -- | The ID of the filter view.
    filterViewId :: (Core.Maybe Core.Int32),
    -- | The named range this filter view is backed by, if any. When writing, only one of range or named/range/id may be set.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | The range this filter view covers. When writing, only one of range or named/range/id may be set.
    range :: (Core.Maybe GridRange),
    -- | The sort order per column. Later specifications are used when values are equal in the earlier specifications.
    sortSpecs :: (Core.Maybe [SortSpec]),
    -- | The name of the filter view.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterView' with the minimum fields required to make a request.
newFilterView ::
  FilterView
newFilterView =
  FilterView
    { criteria = Core.Nothing,
      filterSpecs = Core.Nothing,
      filterViewId = Core.Nothing,
      namedRangeId = Core.Nothing,
      range = Core.Nothing,
      sortSpecs = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON FilterView where
  parseJSON =
    Core.withObject
      "FilterView"
      ( \o ->
          FilterView
            Core.<$> (o Core..:? "criteria")
            Core.<*> (o Core..:? "filterSpecs")
            Core.<*> (o Core..:? "filterViewId")
            Core.<*> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "sortSpecs")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON FilterView where
  toJSON FilterView {..} =
    Core.object
      ( Core.catMaybes
          [ ("criteria" Core..=) Core.<$> criteria,
            ("filterSpecs" Core..=) Core.<$> filterSpecs,
            ("filterViewId" Core..=) Core.<$> filterViewId,
            ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("range" Core..=) Core.<$> range,
            ("sortSpecs" Core..=) Core.<$> sortSpecs,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | The criteria for showing\/hiding values per column. The map\'s key is the column index, and the value is the criteria for that column. This field is deprecated in favor of filter_specs.
--
-- /See:/ 'newFilterView_Criteria' smart constructor.
newtype FilterView_Criteria = FilterView_Criteria
  { -- |
    additional :: (Core.HashMap Core.Text FilterCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterView_Criteria' with the minimum fields required to make a request.
newFilterView_Criteria ::
  -- |  See 'additional'.
  Core.HashMap Core.Text FilterCriteria ->
  FilterView_Criteria
newFilterView_Criteria additional =
  FilterView_Criteria {additional = additional}

instance Core.FromJSON FilterView_Criteria where
  parseJSON =
    Core.withObject
      "FilterView_Criteria"
      ( \o ->
          FilterView_Criteria
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON FilterView_Criteria where
  toJSON FilterView_Criteria {..} =
    Core.toJSON additional

-- | Finds and replaces data in cells over a range, sheet, or all sheets.
--
-- /See:/ 'newFindReplaceRequest' smart constructor.
data FindReplaceRequest = FindReplaceRequest
  { -- | True to find\/replace over all sheets.
    allSheets :: (Core.Maybe Core.Bool),
    -- | The value to search.
    find :: (Core.Maybe Core.Text),
    -- | True if the search should include cells with formulas. False to skip cells with formulas.
    includeFormulas :: (Core.Maybe Core.Bool),
    -- | True if the search is case sensitive.
    matchCase :: (Core.Maybe Core.Bool),
    -- | True if the find value should match the entire cell.
    matchEntireCell :: (Core.Maybe Core.Bool),
    -- | The range to find\/replace over.
    range :: (Core.Maybe GridRange),
    -- | The value to use as the replacement.
    replacement :: (Core.Maybe Core.Text),
    -- | True if the find value is a regex. The regular expression and replacement should follow Java regex rules at https:\/\/docs.oracle.com\/javase\/8\/docs\/api\/java\/util\/regex\/Pattern.html. The replacement string is allowed to refer to capturing groups. For example, if one cell has the contents @\"Google Sheets\"@ and another has @\"Google Docs\"@, then searching for @\"o.* (.*)\"@ with a replacement of @\"$1 Rocks\"@ would change the contents of the cells to @\"GSheets Rocks\"@ and @\"GDocs Rocks\"@ respectively.
    searchByRegex :: (Core.Maybe Core.Bool),
    -- | The sheet to find\/replace over.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindReplaceRequest' with the minimum fields required to make a request.
newFindReplaceRequest ::
  FindReplaceRequest
newFindReplaceRequest =
  FindReplaceRequest
    { allSheets = Core.Nothing,
      find = Core.Nothing,
      includeFormulas = Core.Nothing,
      matchCase = Core.Nothing,
      matchEntireCell = Core.Nothing,
      range = Core.Nothing,
      replacement = Core.Nothing,
      searchByRegex = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON FindReplaceRequest where
  parseJSON =
    Core.withObject
      "FindReplaceRequest"
      ( \o ->
          FindReplaceRequest
            Core.<$> (o Core..:? "allSheets")
            Core.<*> (o Core..:? "find")
            Core.<*> (o Core..:? "includeFormulas")
            Core.<*> (o Core..:? "matchCase")
            Core.<*> (o Core..:? "matchEntireCell")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "replacement")
            Core.<*> (o Core..:? "searchByRegex")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON FindReplaceRequest where
  toJSON FindReplaceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("allSheets" Core..=) Core.<$> allSheets,
            ("find" Core..=) Core.<$> find,
            ("includeFormulas" Core..=) Core.<$> includeFormulas,
            ("matchCase" Core..=) Core.<$> matchCase,
            ("matchEntireCell" Core..=) Core.<$> matchEntireCell,
            ("range" Core..=) Core.<$> range,
            ("replacement" Core..=) Core.<$> replacement,
            ("searchByRegex" Core..=) Core.<$> searchByRegex,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | The result of the find\/replace.
--
-- /See:/ 'newFindReplaceResponse' smart constructor.
data FindReplaceResponse = FindReplaceResponse
  { -- | The number of formula cells changed.
    formulasChanged :: (Core.Maybe Core.Int32),
    -- | The number of occurrences (possibly multiple within a cell) changed. For example, if replacing @\"e\"@ with @\"o\"@ in @\"Google Sheets\"@, this would be @\"3\"@ because @\"Google Sheets\"@ -> @\"Googlo Shoots\"@.
    occurrencesChanged :: (Core.Maybe Core.Int32),
    -- | The number of rows changed.
    rowsChanged :: (Core.Maybe Core.Int32),
    -- | The number of sheets changed.
    sheetsChanged :: (Core.Maybe Core.Int32),
    -- | The number of non-formula cells changed.
    valuesChanged :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FindReplaceResponse' with the minimum fields required to make a request.
newFindReplaceResponse ::
  FindReplaceResponse
newFindReplaceResponse =
  FindReplaceResponse
    { formulasChanged = Core.Nothing,
      occurrencesChanged = Core.Nothing,
      rowsChanged = Core.Nothing,
      sheetsChanged = Core.Nothing,
      valuesChanged = Core.Nothing
    }

instance Core.FromJSON FindReplaceResponse where
  parseJSON =
    Core.withObject
      "FindReplaceResponse"
      ( \o ->
          FindReplaceResponse
            Core.<$> (o Core..:? "formulasChanged")
            Core.<*> (o Core..:? "occurrencesChanged")
            Core.<*> (o Core..:? "rowsChanged")
            Core.<*> (o Core..:? "sheetsChanged")
            Core.<*> (o Core..:? "valuesChanged")
      )

instance Core.ToJSON FindReplaceResponse where
  toJSON FindReplaceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("formulasChanged" Core..=)
              Core.<$> formulasChanged,
            ("occurrencesChanged" Core..=)
              Core.<$> occurrencesChanged,
            ("rowsChanged" Core..=) Core.<$> rowsChanged,
            ("sheetsChanged" Core..=) Core.<$> sheetsChanged,
            ("valuesChanged" Core..=) Core.<$> valuesChanged
          ]
      )

-- | The request for retrieving a Spreadsheet.
--
-- /See:/ 'newGetSpreadsheetByDataFilterRequest' smart constructor.
data GetSpreadsheetByDataFilterRequest = GetSpreadsheetByDataFilterRequest
  { -- | The DataFilters used to select which ranges to retrieve from the spreadsheet.
    dataFilters :: (Core.Maybe [DataFilter]),
    -- | True if grid data should be returned. This parameter is ignored if a field mask was set in the request.
    includeGridData :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetSpreadsheetByDataFilterRequest' with the minimum fields required to make a request.
newGetSpreadsheetByDataFilterRequest ::
  GetSpreadsheetByDataFilterRequest
newGetSpreadsheetByDataFilterRequest =
  GetSpreadsheetByDataFilterRequest
    { dataFilters = Core.Nothing,
      includeGridData = Core.Nothing
    }

instance
  Core.FromJSON
    GetSpreadsheetByDataFilterRequest
  where
  parseJSON =
    Core.withObject
      "GetSpreadsheetByDataFilterRequest"
      ( \o ->
          GetSpreadsheetByDataFilterRequest
            Core.<$> (o Core..:? "dataFilters")
            Core.<*> (o Core..:? "includeGridData")
      )

instance
  Core.ToJSON
    GetSpreadsheetByDataFilterRequest
  where
  toJSON GetSpreadsheetByDataFilterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilters" Core..=) Core.<$> dataFilters,
            ("includeGridData" Core..=)
              Core.<$> includeGridData
          ]
      )

-- | A rule that applies a gradient color scale format, based on the interpolation points listed. The format of a cell will vary based on its contents as compared to the values of the interpolation points.
--
-- /See:/ 'newGradientRule' smart constructor.
data GradientRule = GradientRule
  { -- | The final interpolation point.
    maxpoint :: (Core.Maybe InterpolationPoint),
    -- | An optional midway interpolation point.
    midpoint :: (Core.Maybe InterpolationPoint),
    -- | The starting interpolation point.
    minpoint :: (Core.Maybe InterpolationPoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GradientRule' with the minimum fields required to make a request.
newGradientRule ::
  GradientRule
newGradientRule =
  GradientRule
    { maxpoint = Core.Nothing,
      midpoint = Core.Nothing,
      minpoint = Core.Nothing
    }

instance Core.FromJSON GradientRule where
  parseJSON =
    Core.withObject
      "GradientRule"
      ( \o ->
          GradientRule
            Core.<$> (o Core..:? "maxpoint")
            Core.<*> (o Core..:? "midpoint")
            Core.<*> (o Core..:? "minpoint")
      )

instance Core.ToJSON GradientRule where
  toJSON GradientRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxpoint" Core..=) Core.<$> maxpoint,
            ("midpoint" Core..=) Core.<$> midpoint,
            ("minpoint" Core..=) Core.<$> minpoint
          ]
      )

-- | A coordinate in a sheet. All indexes are zero-based.
--
-- /See:/ 'newGridCoordinate' smart constructor.
data GridCoordinate = GridCoordinate
  { -- | The column index of the coordinate.
    columnIndex :: (Core.Maybe Core.Int32),
    -- | The row index of the coordinate.
    rowIndex :: (Core.Maybe Core.Int32),
    -- | The sheet this coordinate is on.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GridCoordinate' with the minimum fields required to make a request.
newGridCoordinate ::
  GridCoordinate
newGridCoordinate =
  GridCoordinate
    { columnIndex = Core.Nothing,
      rowIndex = Core.Nothing,
      sheetId = Core.Nothing
    }

instance Core.FromJSON GridCoordinate where
  parseJSON =
    Core.withObject
      "GridCoordinate"
      ( \o ->
          GridCoordinate
            Core.<$> (o Core..:? "columnIndex")
            Core.<*> (o Core..:? "rowIndex")
            Core.<*> (o Core..:? "sheetId")
      )

instance Core.ToJSON GridCoordinate where
  toJSON GridCoordinate {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIndex" Core..=) Core.<$> columnIndex,
            ("rowIndex" Core..=) Core.<$> rowIndex,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | Data in the grid, as well as metadata about the dimensions.
--
-- /See:/ 'newGridData' smart constructor.
data GridData = GridData
  { -- | Metadata about the requested columns in the grid, starting with the column in start_column.
    columnMetadata :: (Core.Maybe [DimensionProperties]),
    -- | The data in the grid, one entry per row, starting with the row in startRow. The values in RowData will correspond to columns starting at start_column.
    rowData :: (Core.Maybe [RowData]),
    -- | Metadata about the requested rows in the grid, starting with the row in start_row.
    rowMetadata :: (Core.Maybe [DimensionProperties]),
    -- | The first column this GridData refers to, zero-based.
    startColumn :: (Core.Maybe Core.Int32),
    -- | The first row this GridData refers to, zero-based.
    startRow :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GridData' with the minimum fields required to make a request.
newGridData ::
  GridData
newGridData =
  GridData
    { columnMetadata = Core.Nothing,
      rowData = Core.Nothing,
      rowMetadata = Core.Nothing,
      startColumn = Core.Nothing,
      startRow = Core.Nothing
    }

instance Core.FromJSON GridData where
  parseJSON =
    Core.withObject
      "GridData"
      ( \o ->
          GridData
            Core.<$> (o Core..:? "columnMetadata")
            Core.<*> (o Core..:? "rowData")
            Core.<*> (o Core..:? "rowMetadata")
            Core.<*> (o Core..:? "startColumn")
            Core.<*> (o Core..:? "startRow")
      )

instance Core.ToJSON GridData where
  toJSON GridData {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnMetadata" Core..=) Core.<$> columnMetadata,
            ("rowData" Core..=) Core.<$> rowData,
            ("rowMetadata" Core..=) Core.<$> rowMetadata,
            ("startColumn" Core..=) Core.<$> startColumn,
            ("startRow" Core..=) Core.<$> startRow
          ]
      )

-- | Properties of a grid.
--
-- /See:/ 'newGridProperties' smart constructor.
data GridProperties = GridProperties
  { -- | The number of columns in the grid.
    columnCount :: (Core.Maybe Core.Int32),
    -- | True if the column grouping control toggle is shown after the group.
    columnGroupControlAfter :: (Core.Maybe Core.Bool),
    -- | The number of columns that are frozen in the grid.
    frozenColumnCount :: (Core.Maybe Core.Int32),
    -- | The number of rows that are frozen in the grid.
    frozenRowCount :: (Core.Maybe Core.Int32),
    -- | True if the grid isn\'t showing gridlines in the UI.
    hideGridlines :: (Core.Maybe Core.Bool),
    -- | The number of rows in the grid.
    rowCount :: (Core.Maybe Core.Int32),
    -- | True if the row grouping control toggle is shown after the group.
    rowGroupControlAfter :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GridProperties' with the minimum fields required to make a request.
newGridProperties ::
  GridProperties
newGridProperties =
  GridProperties
    { columnCount = Core.Nothing,
      columnGroupControlAfter = Core.Nothing,
      frozenColumnCount = Core.Nothing,
      frozenRowCount = Core.Nothing,
      hideGridlines = Core.Nothing,
      rowCount = Core.Nothing,
      rowGroupControlAfter = Core.Nothing
    }

instance Core.FromJSON GridProperties where
  parseJSON =
    Core.withObject
      "GridProperties"
      ( \o ->
          GridProperties
            Core.<$> (o Core..:? "columnCount")
            Core.<*> (o Core..:? "columnGroupControlAfter")
            Core.<*> (o Core..:? "frozenColumnCount")
            Core.<*> (o Core..:? "frozenRowCount")
            Core.<*> (o Core..:? "hideGridlines")
            Core.<*> (o Core..:? "rowCount")
            Core.<*> (o Core..:? "rowGroupControlAfter")
      )

instance Core.ToJSON GridProperties where
  toJSON GridProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnCount" Core..=) Core.<$> columnCount,
            ("columnGroupControlAfter" Core..=)
              Core.<$> columnGroupControlAfter,
            ("frozenColumnCount" Core..=)
              Core.<$> frozenColumnCount,
            ("frozenRowCount" Core..=) Core.<$> frozenRowCount,
            ("hideGridlines" Core..=) Core.<$> hideGridlines,
            ("rowCount" Core..=) Core.<$> rowCount,
            ("rowGroupControlAfter" Core..=)
              Core.<$> rowGroupControlAfter
          ]
      )

-- | A range on a sheet. All indexes are zero-based. Indexes are half open, i.e. the start index is inclusive and the end index is exclusive -- [start/index, end/index). Missing indexes indicate the range is unbounded on that side. For example, if @\"Sheet1\"@ is sheet ID 123456, then: @Sheet1!A1:A1 == sheet_id: 123456, start_row_index: 0, end_row_index: 1, start_column_index: 0, end_column_index: 1@ @Sheet1!A3:B4 == sheet_id: 123456, start_row_index: 2, end_row_index: 4, start_column_index: 0, end_column_index: 2@ @Sheet1!A:B == sheet_id: 123456, start_column_index: 0, end_column_index: 2@ @Sheet1!A5:B == sheet_id: 123456, start_row_index: 4, start_column_index: 0, end_column_index: 2@ @Sheet1 == sheet_id: 123456@ The start index must always be less than or equal to the end index. If the start index equals the end index, then the range is empty. Empty ranges are typically not meaningful and are usually rendered in the UI as @#REF!@.
--
-- /See:/ 'newGridRange' smart constructor.
data GridRange = GridRange
  { -- | The end column (exclusive) of the range, or not set if unbounded.
    endColumnIndex :: (Core.Maybe Core.Int32),
    -- | The end row (exclusive) of the range, or not set if unbounded.
    endRowIndex :: (Core.Maybe Core.Int32),
    -- | The sheet this range is on.
    sheetId :: (Core.Maybe Core.Int32),
    -- | The start column (inclusive) of the range, or not set if unbounded.
    startColumnIndex :: (Core.Maybe Core.Int32),
    -- | The start row (inclusive) of the range, or not set if unbounded.
    startRowIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GridRange' with the minimum fields required to make a request.
newGridRange ::
  GridRange
newGridRange =
  GridRange
    { endColumnIndex = Core.Nothing,
      endRowIndex = Core.Nothing,
      sheetId = Core.Nothing,
      startColumnIndex = Core.Nothing,
      startRowIndex = Core.Nothing
    }

instance Core.FromJSON GridRange where
  parseJSON =
    Core.withObject
      "GridRange"
      ( \o ->
          GridRange
            Core.<$> (o Core..:? "endColumnIndex")
            Core.<*> (o Core..:? "endRowIndex")
            Core.<*> (o Core..:? "sheetId")
            Core.<*> (o Core..:? "startColumnIndex")
            Core.<*> (o Core..:? "startRowIndex")
      )

instance Core.ToJSON GridRange where
  toJSON GridRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endColumnIndex" Core..=) Core.<$> endColumnIndex,
            ("endRowIndex" Core..=) Core.<$> endRowIndex,
            ("sheetId" Core..=) Core.<$> sheetId,
            ("startColumnIndex" Core..=)
              Core.<$> startColumnIndex,
            ("startRowIndex" Core..=) Core.<$> startRowIndex
          ]
      )

-- | A histogram chart. A histogram chart groups data items into bins, displaying each bin as a column of stacked items. Histograms are used to display the distribution of a dataset. Each column of items represents a range into which those items fall. The number of bins can be chosen automatically or specified explicitly.
--
-- /See:/ 'newHistogramChartSpec' smart constructor.
data HistogramChartSpec = HistogramChartSpec
  { -- | By default the bucket size (the range of values stacked in a single column) is chosen automatically, but it may be overridden here. E.g., A bucket size of 1.5 results in buckets from 0 - 1.5, 1.5 - 3.0, etc. Cannot be negative. This field is optional.
    bucketSize :: (Core.Maybe Core.Double),
    -- | The position of the chart legend.
    legendPosition :: (Core.Maybe HistogramChartSpec_LegendPosition),
    -- | The outlier percentile is used to ensure that outliers do not adversely affect the calculation of bucket sizes. For example, setting an outlier percentile of 0.05 indicates that the top and bottom 5% of values when calculating buckets. The values are still included in the chart, they will be added to the first or last buckets instead of their own buckets. Must be between 0.0 and 0.5.
    outlierPercentile :: (Core.Maybe Core.Double),
    -- | The series for a histogram may be either a single series of values to be bucketed or multiple series, each of the same length, containing the name of the series followed by the values to be bucketed for that series.
    series :: (Core.Maybe [HistogramSeries]),
    -- | Whether horizontal divider lines should be displayed between items in each column.
    showItemDividers :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistogramChartSpec' with the minimum fields required to make a request.
newHistogramChartSpec ::
  HistogramChartSpec
newHistogramChartSpec =
  HistogramChartSpec
    { bucketSize = Core.Nothing,
      legendPosition = Core.Nothing,
      outlierPercentile = Core.Nothing,
      series = Core.Nothing,
      showItemDividers = Core.Nothing
    }

instance Core.FromJSON HistogramChartSpec where
  parseJSON =
    Core.withObject
      "HistogramChartSpec"
      ( \o ->
          HistogramChartSpec
            Core.<$> (o Core..:? "bucketSize")
            Core.<*> (o Core..:? "legendPosition")
            Core.<*> (o Core..:? "outlierPercentile")
            Core.<*> (o Core..:? "series")
            Core.<*> (o Core..:? "showItemDividers")
      )

instance Core.ToJSON HistogramChartSpec where
  toJSON HistogramChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucketSize" Core..=) Core.<$> bucketSize,
            ("legendPosition" Core..=) Core.<$> legendPosition,
            ("outlierPercentile" Core..=)
              Core.<$> outlierPercentile,
            ("series" Core..=) Core.<$> series,
            ("showItemDividers" Core..=)
              Core.<$> showItemDividers
          ]
      )

-- | Allows you to organize the numeric values in a source data column into buckets of a constant size. All values from HistogramRule.start to HistogramRule.end are placed into groups of size HistogramRule.interval. In addition, all values below HistogramRule.start are placed in one group, and all values above HistogramRule.end are placed in another. Only HistogramRule.interval is required, though if HistogramRule.start and HistogramRule.end are both provided, HistogramRule.start must be less than HistogramRule.end. For example, a pivot table showing average purchase amount by age that has 50+ rows: +-----+-------------------+ | Age | AVERAGE of Amount | +-----+-------------------+ | 16 | $27.13 | | 17 | $5.24 | | 18 | $20.15 | ... +-----+-------------------+ could be turned into a pivot table that looks like the one below by applying a histogram group rule with a HistogramRule.start of 25, an HistogramRule.interval of 20, and an HistogramRule.end of 65. +-------------+-------------------+ | Grouped Age | AVERAGE
-- of Amount | +-------------+-------------------+ | \< 25 | $19.34 | | 25-45 | $31.43 | | 45-65 | $35.87 | | > 65 | $27.55 | +-------------+-------------------+ | Grand Total | $29.12 | +-------------+-------------------+
--
-- /See:/ 'newHistogramRule' smart constructor.
data HistogramRule = HistogramRule
  { -- | The maximum value at which items are placed into buckets of constant size. Values above end are lumped into a single bucket. This field is optional.
    end :: (Core.Maybe Core.Double),
    -- | The size of the buckets that are created. Must be positive.
    interval :: (Core.Maybe Core.Double),
    -- | The minimum value at which items are placed into buckets of constant size. Values below start are lumped into a single bucket. This field is optional.
    start :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistogramRule' with the minimum fields required to make a request.
newHistogramRule ::
  HistogramRule
newHistogramRule =
  HistogramRule
    { end = Core.Nothing,
      interval = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON HistogramRule where
  parseJSON =
    Core.withObject
      "HistogramRule"
      ( \o ->
          HistogramRule
            Core.<$> (o Core..:? "end")
            Core.<*> (o Core..:? "interval")
            Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON HistogramRule where
  toJSON HistogramRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("end" Core..=) Core.<$> end,
            ("interval" Core..=) Core.<$> interval,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | A histogram series containing the series color and data.
--
-- /See:/ 'newHistogramSeries' smart constructor.
data HistogramSeries = HistogramSeries
  { -- | The color of the column representing this series in each bucket. This field is optional.
    barColor :: (Core.Maybe Color),
    -- | The color of the column representing this series in each bucket. This field is optional. If bar_color is also set, this field takes precedence.
    barColorStyle :: (Core.Maybe ColorStyle),
    -- | The data for this histogram series.
    data' :: (Core.Maybe ChartData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistogramSeries' with the minimum fields required to make a request.
newHistogramSeries ::
  HistogramSeries
newHistogramSeries =
  HistogramSeries
    { barColor = Core.Nothing,
      barColorStyle = Core.Nothing,
      data' = Core.Nothing
    }

instance Core.FromJSON HistogramSeries where
  parseJSON =
    Core.withObject
      "HistogramSeries"
      ( \o ->
          HistogramSeries
            Core.<$> (o Core..:? "barColor")
            Core.<*> (o Core..:? "barColorStyle")
            Core.<*> (o Core..:? "data")
      )

instance Core.ToJSON HistogramSeries where
  toJSON HistogramSeries {..} =
    Core.object
      ( Core.catMaybes
          [ ("barColor" Core..=) Core.<$> barColor,
            ("barColorStyle" Core..=) Core.<$> barColorStyle,
            ("data" Core..=) Core.<$> data'
          ]
      )

-- | Inserts rows or columns in a sheet at a particular index.
--
-- /See:/ 'newInsertDimensionRequest' smart constructor.
data InsertDimensionRequest = InsertDimensionRequest
  { -- | Whether dimension properties should be extended from the dimensions before or after the newly inserted dimensions. True to inherit from the dimensions before (in which case the start index must be greater than 0), and false to inherit from the dimensions after. For example, if row index 0 has red background and row index 1 has a green background, then inserting 2 rows at index 1 can inherit either the green or red background. If @inheritFromBefore@ is true, the two new rows will be red (because the row before the insertion point was red), whereas if @inheritFromBefore@ is false, the two new rows will be green (because the row after the insertion point was green).
    inheritFromBefore :: (Core.Maybe Core.Bool),
    -- | The dimensions to insert. Both the start and end indexes must be bounded.
    range :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertDimensionRequest' with the minimum fields required to make a request.
newInsertDimensionRequest ::
  InsertDimensionRequest
newInsertDimensionRequest =
  InsertDimensionRequest
    { inheritFromBefore = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON InsertDimensionRequest where
  parseJSON =
    Core.withObject
      "InsertDimensionRequest"
      ( \o ->
          InsertDimensionRequest
            Core.<$> (o Core..:? "inheritFromBefore")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON InsertDimensionRequest where
  toJSON InsertDimensionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inheritFromBefore" Core..=)
              Core.<$> inheritFromBefore,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Inserts cells into a range, shifting the existing cells over or down.
--
-- /See:/ 'newInsertRangeRequest' smart constructor.
data InsertRangeRequest = InsertRangeRequest
  { -- | The range to insert new cells into.
    range :: (Core.Maybe GridRange),
    -- | The dimension which will be shifted when inserting cells. If ROWS, existing cells will be shifted down. If COLUMNS, existing cells will be shifted right.
    shiftDimension :: (Core.Maybe InsertRangeRequest_ShiftDimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertRangeRequest' with the minimum fields required to make a request.
newInsertRangeRequest ::
  InsertRangeRequest
newInsertRangeRequest =
  InsertRangeRequest {range = Core.Nothing, shiftDimension = Core.Nothing}

instance Core.FromJSON InsertRangeRequest where
  parseJSON =
    Core.withObject
      "InsertRangeRequest"
      ( \o ->
          InsertRangeRequest
            Core.<$> (o Core..:? "range")
            Core.<*> (o Core..:? "shiftDimension")
      )

instance Core.ToJSON InsertRangeRequest where
  toJSON InsertRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("range" Core..=) Core.<$> range,
            ("shiftDimension" Core..=) Core.<$> shiftDimension
          ]
      )

-- | A single interpolation point on a gradient conditional format. These pin the gradient color scale according to the color, type and value chosen.
--
-- /See:/ 'newInterpolationPoint' smart constructor.
data InterpolationPoint = InterpolationPoint
  { -- | The color this interpolation point should use.
    color :: (Core.Maybe Color),
    -- | The color this interpolation point should use. If color is also set, this field takes precedence.
    colorStyle :: (Core.Maybe ColorStyle),
    -- | How the value should be interpreted.
    type' :: (Core.Maybe InterpolationPoint_Type),
    -- | The value this interpolation point uses. May be a formula. Unused if type is MIN or MAX.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InterpolationPoint' with the minimum fields required to make a request.
newInterpolationPoint ::
  InterpolationPoint
newInterpolationPoint =
  InterpolationPoint
    { color = Core.Nothing,
      colorStyle = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON InterpolationPoint where
  parseJSON =
    Core.withObject
      "InterpolationPoint"
      ( \o ->
          InterpolationPoint
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorStyle")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON InterpolationPoint where
  toJSON InterpolationPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorStyle" Core..=) Core.<$> colorStyle,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
--
-- /See:/ 'newInterval' smart constructor.
data Interval = Interval
  { -- | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Interval' with the minimum fields required to make a request.
newInterval ::
  Interval
newInterval = Interval {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON Interval where
  parseJSON =
    Core.withObject
      "Interval"
      ( \o ->
          Interval
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON Interval where
  toJSON Interval {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Settings to control how circular dependencies are resolved with iterative calculation.
--
-- /See:/ 'newIterativeCalculationSettings' smart constructor.
data IterativeCalculationSettings = IterativeCalculationSettings
  { -- | When iterative calculation is enabled and successive results differ by less than this threshold value, the calculation rounds stop.
    convergenceThreshold :: (Core.Maybe Core.Double),
    -- | When iterative calculation is enabled, the maximum number of calculation rounds to perform.
    maxIterations :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IterativeCalculationSettings' with the minimum fields required to make a request.
newIterativeCalculationSettings ::
  IterativeCalculationSettings
newIterativeCalculationSettings =
  IterativeCalculationSettings
    { convergenceThreshold = Core.Nothing,
      maxIterations = Core.Nothing
    }

instance Core.FromJSON IterativeCalculationSettings where
  parseJSON =
    Core.withObject
      "IterativeCalculationSettings"
      ( \o ->
          IterativeCalculationSettings
            Core.<$> (o Core..:? "convergenceThreshold")
            Core.<*> (o Core..:? "maxIterations")
      )

instance Core.ToJSON IterativeCalculationSettings where
  toJSON IterativeCalculationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("convergenceThreshold" Core..=)
              Core.<$> convergenceThreshold,
            ("maxIterations" Core..=) Core.<$> maxIterations
          ]
      )

-- | Formatting options for key value.
--
-- /See:/ 'newKeyValueFormat' smart constructor.
data KeyValueFormat = KeyValueFormat
  { -- | Specifies the horizontal text positioning of key value. This field is optional. If not specified, default positioning is used.
    position :: (Core.Maybe TextPosition),
    -- | Text formatting options for key value. The link field is not supported.
    textFormat :: (Core.Maybe TextFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyValueFormat' with the minimum fields required to make a request.
newKeyValueFormat ::
  KeyValueFormat
newKeyValueFormat =
  KeyValueFormat {position = Core.Nothing, textFormat = Core.Nothing}

instance Core.FromJSON KeyValueFormat where
  parseJSON =
    Core.withObject
      "KeyValueFormat"
      ( \o ->
          KeyValueFormat
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "textFormat")
      )

instance Core.ToJSON KeyValueFormat where
  toJSON KeyValueFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("textFormat" Core..=) Core.<$> textFormat
          ]
      )

-- | Properties that describe the style of a line.
--
-- /See:/ 'newLineStyle' smart constructor.
data LineStyle = LineStyle
  { -- | The dash type of the line.
    type' :: (Core.Maybe LineStyle_Type),
    -- | The thickness of the line, in px.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LineStyle' with the minimum fields required to make a request.
newLineStyle ::
  LineStyle
newLineStyle = LineStyle {type' = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON LineStyle where
  parseJSON =
    Core.withObject
      "LineStyle"
      ( \o ->
          LineStyle
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON LineStyle where
  toJSON LineStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("width" Core..=) Core.<$> width
          ]
      )

-- | An external or local reference.
--
-- /See:/ 'newLink' smart constructor.
newtype Link = Link
  { -- | The link identifier.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
newLink ::
  Link
newLink = Link {uri = Core.Nothing}

instance Core.FromJSON Link where
  parseJSON =
    Core.withObject
      "Link"
      (\o -> Link Core.<$> (o Core..:? "uri"))

instance Core.ToJSON Link where
  toJSON Link {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | Allows you to manually organize the values in a source data column into buckets with names of your choosing. For example, a pivot table that aggregates population by state: +-------+-------------------+ | State | SUM of Population | +-------+-------------------+ | AK | 0.7 | | AL | 4.8 | | AR | 2.9 | ... +-------+-------------------+ could be turned into a pivot table that aggregates population by time zone by providing a list of groups (for example, groupName = \'Central\', items = [\'AL\', \'AR\', \'IA\', ...]) to a manual group rule. Note that a similar effect could be achieved by adding a time zone column to the source data and adjusting the pivot table. +-----------+-------------------+ | Time Zone | SUM of Population | +-----------+-------------------+ | Central | 106.3 | | Eastern | 151.9 | | Mountain | 17.4 | ... +-----------+-------------------+
--
-- /See:/ 'newManualRule' smart constructor.
newtype ManualRule = ManualRule
  { -- | The list of group names and the corresponding items from the source data that map to each group name.
    groups :: (Core.Maybe [ManualRuleGroup])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManualRule' with the minimum fields required to make a request.
newManualRule ::
  ManualRule
newManualRule = ManualRule {groups = Core.Nothing}

instance Core.FromJSON ManualRule where
  parseJSON =
    Core.withObject
      "ManualRule"
      (\o -> ManualRule Core.<$> (o Core..:? "groups"))

instance Core.ToJSON ManualRule where
  toJSON ManualRule {..} =
    Core.object
      (Core.catMaybes [("groups" Core..=) Core.<$> groups])

-- | A group name and a list of items from the source data that should be placed in the group with this name.
--
-- /See:/ 'newManualRuleGroup' smart constructor.
data ManualRuleGroup = ManualRuleGroup
  { -- | The group name, which must be a string. Each group in a given ManualRule must have a unique group name.
    groupName :: (Core.Maybe ExtendedValue),
    -- | The items in the source data that should be placed into this group. Each item may be a string, number, or boolean. Items may appear in at most one group within a given ManualRule. Items that do not appear in any group will appear on their own.
    items :: (Core.Maybe [ExtendedValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManualRuleGroup' with the minimum fields required to make a request.
newManualRuleGroup ::
  ManualRuleGroup
newManualRuleGroup =
  ManualRuleGroup {groupName = Core.Nothing, items = Core.Nothing}

instance Core.FromJSON ManualRuleGroup where
  parseJSON =
    Core.withObject
      "ManualRuleGroup"
      ( \o ->
          ManualRuleGroup
            Core.<$> (o Core..:? "groupName")
            Core.<*> (o Core..:? "items")
      )

instance Core.ToJSON ManualRuleGroup where
  toJSON ManualRuleGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("groupName" Core..=) Core.<$> groupName,
            ("items" Core..=) Core.<$> items
          ]
      )

-- | A developer metadata entry and the data filters specified in the original request that matched it.
--
-- /See:/ 'newMatchedDeveloperMetadata' smart constructor.
data MatchedDeveloperMetadata = MatchedDeveloperMetadata
  { -- | All filters matching the returned developer metadata.
    dataFilters :: (Core.Maybe [DataFilter]),
    -- | The developer metadata matching the specified filters.
    developerMetadata :: (Core.Maybe DeveloperMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchedDeveloperMetadata' with the minimum fields required to make a request.
newMatchedDeveloperMetadata ::
  MatchedDeveloperMetadata
newMatchedDeveloperMetadata =
  MatchedDeveloperMetadata
    { dataFilters = Core.Nothing,
      developerMetadata = Core.Nothing
    }

instance Core.FromJSON MatchedDeveloperMetadata where
  parseJSON =
    Core.withObject
      "MatchedDeveloperMetadata"
      ( \o ->
          MatchedDeveloperMetadata
            Core.<$> (o Core..:? "dataFilters")
            Core.<*> (o Core..:? "developerMetadata")
      )

instance Core.ToJSON MatchedDeveloperMetadata where
  toJSON MatchedDeveloperMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilters" Core..=) Core.<$> dataFilters,
            ("developerMetadata" Core..=)
              Core.<$> developerMetadata
          ]
      )

-- | A value range that was matched by one or more data filers.
--
-- /See:/ 'newMatchedValueRange' smart constructor.
data MatchedValueRange = MatchedValueRange
  { -- | The DataFilters from the request that matched the range of values.
    dataFilters :: (Core.Maybe [DataFilter]),
    -- | The values matched by the DataFilter.
    valueRange :: (Core.Maybe ValueRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MatchedValueRange' with the minimum fields required to make a request.
newMatchedValueRange ::
  MatchedValueRange
newMatchedValueRange =
  MatchedValueRange {dataFilters = Core.Nothing, valueRange = Core.Nothing}

instance Core.FromJSON MatchedValueRange where
  parseJSON =
    Core.withObject
      "MatchedValueRange"
      ( \o ->
          MatchedValueRange
            Core.<$> (o Core..:? "dataFilters")
            Core.<*> (o Core..:? "valueRange")
      )

instance Core.ToJSON MatchedValueRange where
  toJSON MatchedValueRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilters" Core..=) Core.<$> dataFilters,
            ("valueRange" Core..=) Core.<$> valueRange
          ]
      )

-- | Merges all cells in the range.
--
-- /See:/ 'newMergeCellsRequest' smart constructor.
data MergeCellsRequest = MergeCellsRequest
  { -- | How the cells should be merged.
    mergeType :: (Core.Maybe MergeCellsRequest_MergeType),
    -- | The range of cells to merge.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MergeCellsRequest' with the minimum fields required to make a request.
newMergeCellsRequest ::
  MergeCellsRequest
newMergeCellsRequest =
  MergeCellsRequest {mergeType = Core.Nothing, range = Core.Nothing}

instance Core.FromJSON MergeCellsRequest where
  parseJSON =
    Core.withObject
      "MergeCellsRequest"
      ( \o ->
          MergeCellsRequest
            Core.<$> (o Core..:? "mergeType")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON MergeCellsRequest where
  toJSON MergeCellsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("mergeType" Core..=) Core.<$> mergeType,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Moves one or more rows or columns.
--
-- /See:/ 'newMoveDimensionRequest' smart constructor.
data MoveDimensionRequest = MoveDimensionRequest
  { -- | The zero-based start index of where to move the source data to, based on the coordinates /before/ the source data is removed from the grid. Existing data will be shifted down or right (depending on the dimension) to make room for the moved dimensions. The source dimensions are removed from the grid, so the the data may end up in a different index than specified. For example, given @A1..A5@ of @0, 1, 2, 3, 4@ and wanting to move @\"1\"@ and @\"2\"@ to between @\"3\"@ and @\"4\"@, the source would be @ROWS [1..3)@,and the destination index would be @\"4\"@ (the zero-based index of row 5). The end result would be @A1..A5@ of @0, 3, 1, 2, 4@.
    destinationIndex :: (Core.Maybe Core.Int32),
    -- | The source dimensions to move.
    source :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MoveDimensionRequest' with the minimum fields required to make a request.
newMoveDimensionRequest ::
  MoveDimensionRequest
newMoveDimensionRequest =
  MoveDimensionRequest {destinationIndex = Core.Nothing, source = Core.Nothing}

instance Core.FromJSON MoveDimensionRequest where
  parseJSON =
    Core.withObject
      "MoveDimensionRequest"
      ( \o ->
          MoveDimensionRequest
            Core.<$> (o Core..:? "destinationIndex")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON MoveDimensionRequest where
  toJSON MoveDimensionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationIndex" Core..=)
              Core.<$> destinationIndex,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | A named range.
--
-- /See:/ 'newNamedRange' smart constructor.
data NamedRange = NamedRange
  { -- | The name of the named range.
    name :: (Core.Maybe Core.Text),
    -- | The ID of the named range.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | The range this represents.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedRange' with the minimum fields required to make a request.
newNamedRange ::
  NamedRange
newNamedRange =
  NamedRange
    { name = Core.Nothing,
      namedRangeId = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON NamedRange where
  parseJSON =
    Core.withObject
      "NamedRange"
      ( \o ->
          NamedRange
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON NamedRange where
  toJSON NamedRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | The number format of a cell.
--
-- /See:/ 'newNumberFormat' smart constructor.
data NumberFormat = NumberFormat
  { -- | Pattern string used for formatting. If not set, a default pattern based on the user\'s locale will be used if necessary for the given type. See the </sheets/api/guides/formats Date and Number Formats guide> for more information about the supported patterns.
    pattern' :: (Core.Maybe Core.Text),
    -- | The type of the number format. When writing, this field must be set.
    type' :: (Core.Maybe NumberFormat_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NumberFormat' with the minimum fields required to make a request.
newNumberFormat ::
  NumberFormat
newNumberFormat = NumberFormat {pattern' = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON NumberFormat where
  parseJSON =
    Core.withObject
      "NumberFormat"
      ( \o ->
          NumberFormat
            Core.<$> (o Core..:? "pattern") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON NumberFormat where
  toJSON NumberFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("pattern" Core..=) Core.<$> pattern',
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An org chart. Org charts require a unique set of labels in labels and may optionally include parent/labels and tooltips. parent/labels contain, for each node, the label identifying the parent node. tooltips contain, for each node, an optional tooltip. For example, to describe an OrgChart with Alice as the CEO, Bob as the President (reporting to Alice) and Cathy as VP of Sales (also reporting to Alice), have labels contain \"Alice\", \"Bob\", \"Cathy\", parent_labels contain \"\", \"Alice\", \"Alice\" and tooltips contain \"CEO\", \"President\", \"VP Sales\".
--
-- /See:/ 'newOrgChartSpec' smart constructor.
data OrgChartSpec = OrgChartSpec
  { -- | The data containing the labels for all the nodes in the chart. Labels must be unique.
    labels :: (Core.Maybe ChartData),
    -- | The color of the org chart nodes.
    nodeColor :: (Core.Maybe Color),
    -- | The color of the org chart nodes. If node_color is also set, this field takes precedence.
    nodeColorStyle :: (Core.Maybe ColorStyle),
    -- | The size of the org chart nodes.
    nodeSize :: (Core.Maybe OrgChartSpec_NodeSize),
    -- | The data containing the label of the parent for the corresponding node. A blank value indicates that the node has no parent and is a top-level node. This field is optional.
    parentLabels :: (Core.Maybe ChartData),
    -- | The color of the selected org chart nodes.
    selectedNodeColor :: (Core.Maybe Color),
    -- | The color of the selected org chart nodes. If selected/node/color is also set, this field takes precedence.
    selectedNodeColorStyle :: (Core.Maybe ColorStyle),
    -- | The data containing the tooltip for the corresponding node. A blank value results in no tooltip being displayed for the node. This field is optional.
    tooltips :: (Core.Maybe ChartData)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrgChartSpec' with the minimum fields required to make a request.
newOrgChartSpec ::
  OrgChartSpec
newOrgChartSpec =
  OrgChartSpec
    { labels = Core.Nothing,
      nodeColor = Core.Nothing,
      nodeColorStyle = Core.Nothing,
      nodeSize = Core.Nothing,
      parentLabels = Core.Nothing,
      selectedNodeColor = Core.Nothing,
      selectedNodeColorStyle = Core.Nothing,
      tooltips = Core.Nothing
    }

instance Core.FromJSON OrgChartSpec where
  parseJSON =
    Core.withObject
      "OrgChartSpec"
      ( \o ->
          OrgChartSpec
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "nodeColor")
            Core.<*> (o Core..:? "nodeColorStyle")
            Core.<*> (o Core..:? "nodeSize")
            Core.<*> (o Core..:? "parentLabels")
            Core.<*> (o Core..:? "selectedNodeColor")
            Core.<*> (o Core..:? "selectedNodeColorStyle")
            Core.<*> (o Core..:? "tooltips")
      )

instance Core.ToJSON OrgChartSpec where
  toJSON OrgChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("nodeColor" Core..=) Core.<$> nodeColor,
            ("nodeColorStyle" Core..=) Core.<$> nodeColorStyle,
            ("nodeSize" Core..=) Core.<$> nodeSize,
            ("parentLabels" Core..=) Core.<$> parentLabels,
            ("selectedNodeColor" Core..=)
              Core.<$> selectedNodeColor,
            ("selectedNodeColorStyle" Core..=)
              Core.<$> selectedNodeColorStyle,
            ("tooltips" Core..=) Core.<$> tooltips
          ]
      )

-- | The location an object is overlaid on top of a grid.
--
-- /See:/ 'newOverlayPosition' smart constructor.
data OverlayPosition = OverlayPosition
  { -- | The cell the object is anchored to.
    anchorCell :: (Core.Maybe GridCoordinate),
    -- | The height of the object, in pixels. Defaults to 371.
    heightPixels :: (Core.Maybe Core.Int32),
    -- | The horizontal offset, in pixels, that the object is offset from the anchor cell.
    offsetXPixels :: (Core.Maybe Core.Int32),
    -- | The vertical offset, in pixels, that the object is offset from the anchor cell.
    offsetYPixels :: (Core.Maybe Core.Int32),
    -- | The width of the object, in pixels. Defaults to 600.
    widthPixels :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OverlayPosition' with the minimum fields required to make a request.
newOverlayPosition ::
  OverlayPosition
newOverlayPosition =
  OverlayPosition
    { anchorCell = Core.Nothing,
      heightPixels = Core.Nothing,
      offsetXPixels = Core.Nothing,
      offsetYPixels = Core.Nothing,
      widthPixels = Core.Nothing
    }

instance Core.FromJSON OverlayPosition where
  parseJSON =
    Core.withObject
      "OverlayPosition"
      ( \o ->
          OverlayPosition
            Core.<$> (o Core..:? "anchorCell")
            Core.<*> (o Core..:? "heightPixels")
            Core.<*> (o Core..:? "offsetXPixels")
            Core.<*> (o Core..:? "offsetYPixels")
            Core.<*> (o Core..:? "widthPixels")
      )

instance Core.ToJSON OverlayPosition where
  toJSON OverlayPosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("anchorCell" Core..=) Core.<$> anchorCell,
            ("heightPixels" Core..=) Core.<$> heightPixels,
            ("offsetXPixels" Core..=) Core.<$> offsetXPixels,
            ("offsetYPixels" Core..=) Core.<$> offsetYPixels,
            ("widthPixels" Core..=) Core.<$> widthPixels
          ]
      )

-- | The amount of padding around the cell, in pixels. When updating padding, every field must be specified.
--
-- /See:/ 'newPadding' smart constructor.
data Padding = Padding
  { -- | The bottom padding of the cell.
    bottom :: (Core.Maybe Core.Int32),
    -- | The left padding of the cell.
    left :: (Core.Maybe Core.Int32),
    -- | The right padding of the cell.
    right :: (Core.Maybe Core.Int32),
    -- | The top padding of the cell.
    top :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Padding' with the minimum fields required to make a request.
newPadding ::
  Padding
newPadding =
  Padding
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance Core.FromJSON Padding where
  parseJSON =
    Core.withObject
      "Padding"
      ( \o ->
          Padding
            Core.<$> (o Core..:? "bottom")
            Core.<*> (o Core..:? "left")
            Core.<*> (o Core..:? "right")
            Core.<*> (o Core..:? "top")
      )

instance Core.ToJSON Padding where
  toJSON Padding {..} =
    Core.object
      ( Core.catMaybes
          [ ("bottom" Core..=) Core.<$> bottom,
            ("left" Core..=) Core.<$> left,
            ("right" Core..=) Core.<$> right,
            ("top" Core..=) Core.<$> top
          ]
      )

-- | Inserts data into the spreadsheet starting at the specified coordinate.
--
-- /See:/ 'newPasteDataRequest' smart constructor.
data PasteDataRequest = PasteDataRequest
  { -- | The coordinate at which the data should start being inserted.
    coordinate :: (Core.Maybe GridCoordinate),
    -- | The data to insert.
    data' :: (Core.Maybe Core.Text),
    -- | The delimiter in the data.
    delimiter :: (Core.Maybe Core.Text),
    -- | True if the data is HTML.
    html :: (Core.Maybe Core.Bool),
    -- | How the data should be pasted.
    type' :: (Core.Maybe PasteDataRequest_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PasteDataRequest' with the minimum fields required to make a request.
newPasteDataRequest ::
  PasteDataRequest
newPasteDataRequest =
  PasteDataRequest
    { coordinate = Core.Nothing,
      data' = Core.Nothing,
      delimiter = Core.Nothing,
      html = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON PasteDataRequest where
  parseJSON =
    Core.withObject
      "PasteDataRequest"
      ( \o ->
          PasteDataRequest
            Core.<$> (o Core..:? "coordinate")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "delimiter")
            Core.<*> (o Core..:? "html")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON PasteDataRequest where
  toJSON PasteDataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("coordinate" Core..=) Core.<$> coordinate,
            ("data" Core..=) Core.<$> data',
            ("delimiter" Core..=) Core.<$> delimiter,
            ("html" Core..=) Core.<$> html,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A pie chart.
--
-- /See:/ 'newPieChartSpec' smart constructor.
data PieChartSpec = PieChartSpec
  { -- | The data that covers the domain of the pie chart.
    domain :: (Core.Maybe ChartData),
    -- | Where the legend of the pie chart should be drawn.
    legendPosition :: (Core.Maybe PieChartSpec_LegendPosition),
    -- | The size of the hole in the pie chart.
    pieHole :: (Core.Maybe Core.Double),
    -- | The data that covers the one and only series of the pie chart.
    series :: (Core.Maybe ChartData),
    -- | True if the pie is three dimensional.
    threeDimensional :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PieChartSpec' with the minimum fields required to make a request.
newPieChartSpec ::
  PieChartSpec
newPieChartSpec =
  PieChartSpec
    { domain = Core.Nothing,
      legendPosition = Core.Nothing,
      pieHole = Core.Nothing,
      series = Core.Nothing,
      threeDimensional = Core.Nothing
    }

instance Core.FromJSON PieChartSpec where
  parseJSON =
    Core.withObject
      "PieChartSpec"
      ( \o ->
          PieChartSpec
            Core.<$> (o Core..:? "domain")
            Core.<*> (o Core..:? "legendPosition")
            Core.<*> (o Core..:? "pieHole")
            Core.<*> (o Core..:? "series")
            Core.<*> (o Core..:? "threeDimensional")
      )

instance Core.ToJSON PieChartSpec where
  toJSON PieChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("domain" Core..=) Core.<$> domain,
            ("legendPosition" Core..=) Core.<$> legendPosition,
            ("pieHole" Core..=) Core.<$> pieHole,
            ("series" Core..=) Core.<$> series,
            ("threeDimensional" Core..=)
              Core.<$> threeDimensional
          ]
      )

-- | Criteria for showing\/hiding rows in a pivot table.
--
-- /See:/ 'newPivotFilterCriteria' smart constructor.
data PivotFilterCriteria = PivotFilterCriteria
  { -- | A condition that must be true for values to be shown. (@visibleValues@ does not override this -- even if a value is listed there, it is still hidden if it does not meet the condition.) Condition values that refer to ranges in A1-notation are evaluated relative to the pivot table sheet. References are treated absolutely, so are not filled down the pivot table. For example, a condition value of @=A1@ on \"Pivot Table 1\" is treated as @\'Pivot Table 1\'!$A$1@. The source data of the pivot table can be referenced by column header name. For example, if the source data has columns named \"Revenue\" and \"Cost\" and a condition is applied to the \"Revenue\" column with type @NUMBER_GREATER@ and value @=Cost@, then only columns where \"Revenue\" > \"Cost\" are included.
    condition :: (Core.Maybe BooleanCondition),
    -- | Whether values are visible by default. If true, the visible/values are ignored, all values that meet condition (if specified) are shown. If false, values that are both in visible/values and meet condition are shown.
    visibleByDefault :: (Core.Maybe Core.Bool),
    -- | Values that should be included. Values not listed here are excluded.
    visibleValues :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotFilterCriteria' with the minimum fields required to make a request.
newPivotFilterCriteria ::
  PivotFilterCriteria
newPivotFilterCriteria =
  PivotFilterCriteria
    { condition = Core.Nothing,
      visibleByDefault = Core.Nothing,
      visibleValues = Core.Nothing
    }

instance Core.FromJSON PivotFilterCriteria where
  parseJSON =
    Core.withObject
      "PivotFilterCriteria"
      ( \o ->
          PivotFilterCriteria
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "visibleByDefault")
            Core.<*> (o Core..:? "visibleValues")
      )

instance Core.ToJSON PivotFilterCriteria where
  toJSON PivotFilterCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("visibleByDefault" Core..=)
              Core.<$> visibleByDefault,
            ("visibleValues" Core..=) Core.<$> visibleValues
          ]
      )

-- | The pivot table filter criteria associated with a specific source column offset.
--
-- /See:/ 'newPivotFilterSpec' smart constructor.
data PivotFilterSpec = PivotFilterSpec
  { -- | The column offset of the source range.
    columnOffsetIndex :: (Core.Maybe Core.Int32),
    -- | The reference to the data source column.
    dataSourceColumnReference :: (Core.Maybe DataSourceColumnReference),
    -- | The criteria for the column.
    filterCriteria :: (Core.Maybe PivotFilterCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotFilterSpec' with the minimum fields required to make a request.
newPivotFilterSpec ::
  PivotFilterSpec
newPivotFilterSpec =
  PivotFilterSpec
    { columnOffsetIndex = Core.Nothing,
      dataSourceColumnReference = Core.Nothing,
      filterCriteria = Core.Nothing
    }

instance Core.FromJSON PivotFilterSpec where
  parseJSON =
    Core.withObject
      "PivotFilterSpec"
      ( \o ->
          PivotFilterSpec
            Core.<$> (o Core..:? "columnOffsetIndex")
            Core.<*> (o Core..:? "dataSourceColumnReference")
            Core.<*> (o Core..:? "filterCriteria")
      )

instance Core.ToJSON PivotFilterSpec where
  toJSON PivotFilterSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnOffsetIndex" Core..=)
              Core.<$> columnOffsetIndex,
            ("dataSourceColumnReference" Core..=)
              Core.<$> dataSourceColumnReference,
            ("filterCriteria" Core..=) Core.<$> filterCriteria
          ]
      )

-- | A single grouping (either row or column) in a pivot table.
--
-- /See:/ 'newPivotGroup' smart constructor.
data PivotGroup = PivotGroup
  { -- | The reference to the data source column this grouping is based on.
    dataSourceColumnReference :: (Core.Maybe DataSourceColumnReference),
    -- | The count limit on rows or columns to apply to this pivot group.
    groupLimit :: (Core.Maybe PivotGroupLimit),
    -- | The group rule to apply to this row\/column group.
    groupRule :: (Core.Maybe PivotGroupRule),
    -- | The labels to use for the row\/column groups which can be customized. For example, in the following pivot table, the row label is @Region@ (which could be renamed to @State@) and the column label is @Product@ (which could be renamed @Item@). Pivot tables created before December 2017 do not have header labels. If you\'d like to add header labels to an existing pivot table, please delete the existing pivot table and then create a new pivot table with same parameters. +--------------+---------+-------+ | SUM of Units | Product | | | Region | Pen | Paper | +--------------+---------+-------+ | New York | 345 | 98 | | Oregon | 234 | 123 | | Tennessee | 531 | 415 | +--------------+---------+-------+ | Grand Total | 1110 | 636 | +--------------+---------+-------+
    label :: (Core.Maybe Core.Text),
    -- | True if the headings in this pivot group should be repeated. This is only valid for row groupings and is ignored by columns. By default, we minimize repetition of headings by not showing higher level headings where they are the same. For example, even though the third row below corresponds to \"Q1 Mar\", \"Q1\" is not shown because it is redundant with previous rows. Setting repeat_headings to true would cause \"Q1\" to be repeated for \"Feb\" and \"Mar\". +--------------+ | Q1 | Jan | | | Feb | | | Mar | +--------+-----+ | Q1 Total | +--------------+
    repeatHeadings :: (Core.Maybe Core.Bool),
    -- | True if the pivot table should include the totals for this grouping.
    showTotals :: (Core.Maybe Core.Bool),
    -- | The order the values in this group should be sorted.
    sortOrder :: (Core.Maybe PivotGroup_SortOrder),
    -- | The column offset of the source range that this grouping is based on. For example, if the source was @C10:E15@, a @sourceColumnOffset@ of @0@ means this group refers to column @C@, whereas the offset @1@ would refer to column @D@.
    sourceColumnOffset :: (Core.Maybe Core.Int32),
    -- | The bucket of the opposite pivot group to sort by. If not specified, sorting is alphabetical by this group\'s values.
    valueBucket :: (Core.Maybe PivotGroupSortValueBucket),
    -- | Metadata about values in the grouping.
    valueMetadata :: (Core.Maybe [PivotGroupValueMetadata])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotGroup' with the minimum fields required to make a request.
newPivotGroup ::
  PivotGroup
newPivotGroup =
  PivotGroup
    { dataSourceColumnReference = Core.Nothing,
      groupLimit = Core.Nothing,
      groupRule = Core.Nothing,
      label = Core.Nothing,
      repeatHeadings = Core.Nothing,
      showTotals = Core.Nothing,
      sortOrder = Core.Nothing,
      sourceColumnOffset = Core.Nothing,
      valueBucket = Core.Nothing,
      valueMetadata = Core.Nothing
    }

instance Core.FromJSON PivotGroup where
  parseJSON =
    Core.withObject
      "PivotGroup"
      ( \o ->
          PivotGroup
            Core.<$> (o Core..:? "dataSourceColumnReference")
            Core.<*> (o Core..:? "groupLimit")
            Core.<*> (o Core..:? "groupRule")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "repeatHeadings")
            Core.<*> (o Core..:? "showTotals")
            Core.<*> (o Core..:? "sortOrder")
            Core.<*> (o Core..:? "sourceColumnOffset")
            Core.<*> (o Core..:? "valueBucket")
            Core.<*> (o Core..:? "valueMetadata")
      )

instance Core.ToJSON PivotGroup where
  toJSON PivotGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceColumnReference" Core..=)
              Core.<$> dataSourceColumnReference,
            ("groupLimit" Core..=) Core.<$> groupLimit,
            ("groupRule" Core..=) Core.<$> groupRule,
            ("label" Core..=) Core.<$> label,
            ("repeatHeadings" Core..=) Core.<$> repeatHeadings,
            ("showTotals" Core..=) Core.<$> showTotals,
            ("sortOrder" Core..=) Core.<$> sortOrder,
            ("sourceColumnOffset" Core..=)
              Core.<$> sourceColumnOffset,
            ("valueBucket" Core..=) Core.<$> valueBucket,
            ("valueMetadata" Core..=) Core.<$> valueMetadata
          ]
      )

-- | The count limit on rows or columns in the pivot group.
--
-- /See:/ 'newPivotGroupLimit' smart constructor.
data PivotGroupLimit = PivotGroupLimit
  { -- | The order in which the group limit is applied to the pivot table. Pivot group limits are applied from lower to higher order number. Order numbers are normalized to consecutive integers from 0. For write request, to fully customize the applying orders, all pivot group limits should have this field set with an unique number. Otherwise, the order is determined by the index in the PivotTable.rows list and then the PivotTable.columns list.
    applyOrder :: (Core.Maybe Core.Int32),
    -- | The count limit.
    countLimit :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotGroupLimit' with the minimum fields required to make a request.
newPivotGroupLimit ::
  PivotGroupLimit
newPivotGroupLimit =
  PivotGroupLimit {applyOrder = Core.Nothing, countLimit = Core.Nothing}

instance Core.FromJSON PivotGroupLimit where
  parseJSON =
    Core.withObject
      "PivotGroupLimit"
      ( \o ->
          PivotGroupLimit
            Core.<$> (o Core..:? "applyOrder")
            Core.<*> (o Core..:? "countLimit")
      )

instance Core.ToJSON PivotGroupLimit where
  toJSON PivotGroupLimit {..} =
    Core.object
      ( Core.catMaybes
          [ ("applyOrder" Core..=) Core.<$> applyOrder,
            ("countLimit" Core..=) Core.<$> countLimit
          ]
      )

-- | An optional setting on a PivotGroup that defines buckets for the values in the source data column rather than breaking out each individual value. Only one PivotGroup with a group rule may be added for each column in the source data, though on any given column you may add both a PivotGroup that has a rule and a PivotGroup that does not.
--
-- /See:/ 'newPivotGroupRule' smart constructor.
data PivotGroupRule = PivotGroupRule
  { -- | A DateTimeRule.
    dateTimeRule :: (Core.Maybe DateTimeRule),
    -- | A HistogramRule.
    histogramRule :: (Core.Maybe HistogramRule),
    -- | A ManualRule.
    manualRule :: (Core.Maybe ManualRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotGroupRule' with the minimum fields required to make a request.
newPivotGroupRule ::
  PivotGroupRule
newPivotGroupRule =
  PivotGroupRule
    { dateTimeRule = Core.Nothing,
      histogramRule = Core.Nothing,
      manualRule = Core.Nothing
    }

instance Core.FromJSON PivotGroupRule where
  parseJSON =
    Core.withObject
      "PivotGroupRule"
      ( \o ->
          PivotGroupRule
            Core.<$> (o Core..:? "dateTimeRule")
            Core.<*> (o Core..:? "histogramRule")
            Core.<*> (o Core..:? "manualRule")
      )

instance Core.ToJSON PivotGroupRule where
  toJSON PivotGroupRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("dateTimeRule" Core..=) Core.<$> dateTimeRule,
            ("histogramRule" Core..=) Core.<$> histogramRule,
            ("manualRule" Core..=) Core.<$> manualRule
          ]
      )

-- | Information about which values in a pivot group should be used for sorting.
--
-- /See:/ 'newPivotGroupSortValueBucket' smart constructor.
data PivotGroupSortValueBucket = PivotGroupSortValueBucket
  { -- | Determines the bucket from which values are chosen to sort. For example, in a pivot table with one row group & two column groups, the row group can list up to two values. The first value corresponds to a value within the first column group, and the second value corresponds to a value in the second column group. If no values are listed, this would indicate that the row should be sorted according to the \"Grand Total\" over the column groups. If a single value is listed, this would correspond to using the \"Total\" of that bucket.
    buckets :: (Core.Maybe [ExtendedValue]),
    -- | The offset in the PivotTable.values list which the values in this grouping should be sorted by.
    valuesIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotGroupSortValueBucket' with the minimum fields required to make a request.
newPivotGroupSortValueBucket ::
  PivotGroupSortValueBucket
newPivotGroupSortValueBucket =
  PivotGroupSortValueBucket {buckets = Core.Nothing, valuesIndex = Core.Nothing}

instance Core.FromJSON PivotGroupSortValueBucket where
  parseJSON =
    Core.withObject
      "PivotGroupSortValueBucket"
      ( \o ->
          PivotGroupSortValueBucket
            Core.<$> (o Core..:? "buckets")
            Core.<*> (o Core..:? "valuesIndex")
      )

instance Core.ToJSON PivotGroupSortValueBucket where
  toJSON PivotGroupSortValueBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("buckets" Core..=) Core.<$> buckets,
            ("valuesIndex" Core..=) Core.<$> valuesIndex
          ]
      )

-- | Metadata about a value in a pivot grouping.
--
-- /See:/ 'newPivotGroupValueMetadata' smart constructor.
data PivotGroupValueMetadata = PivotGroupValueMetadata
  { -- | True if the data corresponding to the value is collapsed.
    collapsed :: (Core.Maybe Core.Bool),
    -- | The calculated value the metadata corresponds to. (Note that formulaValue is not valid, because the values will be calculated.)
    value :: (Core.Maybe ExtendedValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotGroupValueMetadata' with the minimum fields required to make a request.
newPivotGroupValueMetadata ::
  PivotGroupValueMetadata
newPivotGroupValueMetadata =
  PivotGroupValueMetadata {collapsed = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON PivotGroupValueMetadata where
  parseJSON =
    Core.withObject
      "PivotGroupValueMetadata"
      ( \o ->
          PivotGroupValueMetadata
            Core.<$> (o Core..:? "collapsed")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON PivotGroupValueMetadata where
  toJSON PivotGroupValueMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("collapsed" Core..=) Core.<$> collapsed,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A pivot table.
--
-- /See:/ 'newPivotTable' smart constructor.
data PivotTable = PivotTable
  { -- | Each column grouping in the pivot table.
    columns :: (Core.Maybe [PivotGroup]),
    -- | An optional mapping of filters per source column offset. The filters are applied before aggregating data into the pivot table. The map\'s key is the column offset of the source range that you want to filter, and the value is the criteria for that column. For example, if the source was @C10:E15@, a key of @0@ will have the filter for column @C@, whereas the key @1@ is for column @D@. This field is deprecated in favor of filter_specs.
    criteria :: (Core.Maybe PivotTable_Criteria),
    -- | Output only. The data execution status for data source pivot tables.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | The ID of the data source the pivot table is reading data from.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | The filters applied to the source columns before aggregating data for the pivot table. Both criteria and filter_specs are populated in responses. If both fields are specified in an update request, this field takes precedence.
    filterSpecs :: (Core.Maybe [PivotFilterSpec]),
    -- | Each row grouping in the pivot table.
    rows :: (Core.Maybe [PivotGroup]),
    -- | The range the pivot table is reading data from.
    source :: (Core.Maybe GridRange),
    -- | Whether values should be listed horizontally (as columns) or vertically (as rows).
    valueLayout :: (Core.Maybe PivotTable_ValueLayout),
    -- | A list of values to include in the pivot table.
    values :: (Core.Maybe [PivotValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotTable' with the minimum fields required to make a request.
newPivotTable ::
  PivotTable
newPivotTable =
  PivotTable
    { columns = Core.Nothing,
      criteria = Core.Nothing,
      dataExecutionStatus = Core.Nothing,
      dataSourceId = Core.Nothing,
      filterSpecs = Core.Nothing,
      rows = Core.Nothing,
      source = Core.Nothing,
      valueLayout = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON PivotTable where
  parseJSON =
    Core.withObject
      "PivotTable"
      ( \o ->
          PivotTable
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "criteria")
            Core.<*> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "filterSpecs")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "valueLayout")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON PivotTable where
  toJSON PivotTable {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("criteria" Core..=) Core.<$> criteria,
            ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("filterSpecs" Core..=) Core.<$> filterSpecs,
            ("rows" Core..=) Core.<$> rows,
            ("source" Core..=) Core.<$> source,
            ("valueLayout" Core..=) Core.<$> valueLayout,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | An optional mapping of filters per source column offset. The filters are applied before aggregating data into the pivot table. The map\'s key is the column offset of the source range that you want to filter, and the value is the criteria for that column. For example, if the source was @C10:E15@, a key of @0@ will have the filter for column @C@, whereas the key @1@ is for column @D@. This field is deprecated in favor of filter_specs.
--
-- /See:/ 'newPivotTable_Criteria' smart constructor.
newtype PivotTable_Criteria = PivotTable_Criteria
  { -- |
    additional :: (Core.HashMap Core.Text PivotFilterCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotTable_Criteria' with the minimum fields required to make a request.
newPivotTable_Criteria ::
  -- |  See 'additional'.
  Core.HashMap Core.Text PivotFilterCriteria ->
  PivotTable_Criteria
newPivotTable_Criteria additional =
  PivotTable_Criteria {additional = additional}

instance Core.FromJSON PivotTable_Criteria where
  parseJSON =
    Core.withObject
      "PivotTable_Criteria"
      ( \o ->
          PivotTable_Criteria
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PivotTable_Criteria where
  toJSON PivotTable_Criteria {..} =
    Core.toJSON additional

-- | The definition of how a value in a pivot table should be calculated.
--
-- /See:/ 'newPivotValue' smart constructor.
data PivotValue = PivotValue
  { -- | If specified, indicates that pivot values should be displayed as the result of a calculation with another pivot value. For example, if calculated/display/type is specified as PERCENT/OF/GRAND_TOTAL, all the pivot values are displayed as the percentage of the grand total. In the Sheets editor, this is referred to as \"Show As\" in the value section of a pivot table.
    calculatedDisplayType :: (Core.Maybe PivotValue_CalculatedDisplayType),
    -- | The reference to the data source column that this value reads from.
    dataSourceColumnReference :: (Core.Maybe DataSourceColumnReference),
    -- | A custom formula to calculate the value. The formula must start with an @=@ character.
    formula :: (Core.Maybe Core.Text),
    -- | A name to use for the value.
    name :: (Core.Maybe Core.Text),
    -- | The column offset of the source range that this value reads from. For example, if the source was @C10:E15@, a @sourceColumnOffset@ of @0@ means this value refers to column @C@, whereas the offset @1@ would refer to column @D@.
    sourceColumnOffset :: (Core.Maybe Core.Int32),
    -- | A function to summarize the value. If formula is set, the only supported values are SUM and CUSTOM. If sourceColumnOffset is set, then @CUSTOM@ is not supported.
    summarizeFunction :: (Core.Maybe PivotValue_SummarizeFunction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotValue' with the minimum fields required to make a request.
newPivotValue ::
  PivotValue
newPivotValue =
  PivotValue
    { calculatedDisplayType = Core.Nothing,
      dataSourceColumnReference = Core.Nothing,
      formula = Core.Nothing,
      name = Core.Nothing,
      sourceColumnOffset = Core.Nothing,
      summarizeFunction = Core.Nothing
    }

instance Core.FromJSON PivotValue where
  parseJSON =
    Core.withObject
      "PivotValue"
      ( \o ->
          PivotValue
            Core.<$> (o Core..:? "calculatedDisplayType")
            Core.<*> (o Core..:? "dataSourceColumnReference")
            Core.<*> (o Core..:? "formula")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sourceColumnOffset")
            Core.<*> (o Core..:? "summarizeFunction")
      )

instance Core.ToJSON PivotValue where
  toJSON PivotValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("calculatedDisplayType" Core..=)
              Core.<$> calculatedDisplayType,
            ("dataSourceColumnReference" Core..=)
              Core.<$> dataSourceColumnReference,
            ("formula" Core..=) Core.<$> formula,
            ("name" Core..=) Core.<$> name,
            ("sourceColumnOffset" Core..=)
              Core.<$> sourceColumnOffset,
            ("summarizeFunction" Core..=)
              Core.<$> summarizeFunction
          ]
      )

-- | The style of a point on the chart.
--
-- /See:/ 'newPointStyle' smart constructor.
data PointStyle = PointStyle
  { -- | The point shape. If empty or unspecified, a default shape is used.
    shape :: (Core.Maybe PointStyle_Shape),
    -- | The point size. If empty, a default size is used.
    size :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PointStyle' with the minimum fields required to make a request.
newPointStyle ::
  PointStyle
newPointStyle = PointStyle {shape = Core.Nothing, size = Core.Nothing}

instance Core.FromJSON PointStyle where
  parseJSON =
    Core.withObject
      "PointStyle"
      ( \o ->
          PointStyle
            Core.<$> (o Core..:? "shape") Core.<*> (o Core..:? "size")
      )

instance Core.ToJSON PointStyle where
  toJSON PointStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("shape" Core..=) Core.<$> shape,
            ("size" Core..=) Core.<$> size
          ]
      )

-- | A protected range.
--
-- /See:/ 'newProtectedRange' smart constructor.
data ProtectedRange = ProtectedRange
  { -- | The description of this protected range.
    description :: (Core.Maybe Core.Text),
    -- | The users and groups with edit access to the protected range. This field is only visible to users with edit access to the protected range and the document. Editors are not supported with warning_only protection.
    editors :: (Core.Maybe Editors),
    -- | The named range this protected range is backed by, if any. When writing, only one of range or named/range/id may be set.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | The ID of the protected range. This field is read-only.
    protectedRangeId :: (Core.Maybe Core.Int32),
    -- | The range that is being protected. The range may be fully unbounded, in which case this is considered a protected sheet. When writing, only one of range or named/range/id may be set.
    range :: (Core.Maybe GridRange),
    -- | True if the user who requested this protected range can edit the protected area. This field is read-only.
    requestingUserCanEdit :: (Core.Maybe Core.Bool),
    -- | The list of unprotected ranges within a protected sheet. Unprotected ranges are only supported on protected sheets.
    unprotectedRanges :: (Core.Maybe [GridRange]),
    -- | True if this protected range will show a warning when editing. Warning-based protection means that every user can edit data in the protected range, except editing will prompt a warning asking the user to confirm the edit. When writing: if this field is true, then editors is ignored. Additionally, if this field is changed from true to false and the @editors@ field is not set (nor included in the field mask), then the editors will be set to all the editors in the document.
    warningOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProtectedRange' with the minimum fields required to make a request.
newProtectedRange ::
  ProtectedRange
newProtectedRange =
  ProtectedRange
    { description = Core.Nothing,
      editors = Core.Nothing,
      namedRangeId = Core.Nothing,
      protectedRangeId = Core.Nothing,
      range = Core.Nothing,
      requestingUserCanEdit = Core.Nothing,
      unprotectedRanges = Core.Nothing,
      warningOnly = Core.Nothing
    }

instance Core.FromJSON ProtectedRange where
  parseJSON =
    Core.withObject
      "ProtectedRange"
      ( \o ->
          ProtectedRange
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "editors")
            Core.<*> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "protectedRangeId")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "requestingUserCanEdit")
            Core.<*> (o Core..:? "unprotectedRanges")
            Core.<*> (o Core..:? "warningOnly")
      )

instance Core.ToJSON ProtectedRange where
  toJSON ProtectedRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("editors" Core..=) Core.<$> editors,
            ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("protectedRangeId" Core..=)
              Core.<$> protectedRangeId,
            ("range" Core..=) Core.<$> range,
            ("requestingUserCanEdit" Core..=)
              Core.<$> requestingUserCanEdit,
            ("unprotectedRanges" Core..=)
              Core.<$> unprotectedRanges,
            ("warningOnly" Core..=) Core.<$> warningOnly
          ]
      )

-- | Randomizes the order of the rows in a range.
--
-- /See:/ 'newRandomizeRangeRequest' smart constructor.
newtype RandomizeRangeRequest = RandomizeRangeRequest
  { -- | The range to randomize.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RandomizeRangeRequest' with the minimum fields required to make a request.
newRandomizeRangeRequest ::
  RandomizeRangeRequest
newRandomizeRangeRequest = RandomizeRangeRequest {range = Core.Nothing}

instance Core.FromJSON RandomizeRangeRequest where
  parseJSON =
    Core.withObject
      "RandomizeRangeRequest"
      ( \o ->
          RandomizeRangeRequest Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON RandomizeRangeRequest where
  toJSON RandomizeRangeRequest {..} =
    Core.object
      (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | The execution status of refreshing one data source object.
--
-- /See:/ 'newRefreshDataSourceObjectExecutionStatus' smart constructor.
data RefreshDataSourceObjectExecutionStatus = RefreshDataSourceObjectExecutionStatus
  { -- | The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | Reference to a data source object being refreshed.
    reference :: (Core.Maybe DataSourceObjectReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RefreshDataSourceObjectExecutionStatus' with the minimum fields required to make a request.
newRefreshDataSourceObjectExecutionStatus ::
  RefreshDataSourceObjectExecutionStatus
newRefreshDataSourceObjectExecutionStatus =
  RefreshDataSourceObjectExecutionStatus
    { dataExecutionStatus = Core.Nothing,
      reference = Core.Nothing
    }

instance
  Core.FromJSON
    RefreshDataSourceObjectExecutionStatus
  where
  parseJSON =
    Core.withObject
      "RefreshDataSourceObjectExecutionStatus"
      ( \o ->
          RefreshDataSourceObjectExecutionStatus
            Core.<$> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "reference")
      )

instance
  Core.ToJSON
    RefreshDataSourceObjectExecutionStatus
  where
  toJSON RefreshDataSourceObjectExecutionStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("reference" Core..=) Core.<$> reference
          ]
      )

-- | Refreshes one or multiple data source objects in the spreadsheet by the specified references. The request requires an additional @bigquery.readonly@ OAuth scope. If there are multiple refresh requests referencing the same data source objects in one batch, only the last refresh request is processed, and all those requests will have the same response accordingly.
--
-- /See:/ 'newRefreshDataSourceRequest' smart constructor.
data RefreshDataSourceRequest = RefreshDataSourceRequest
  { -- | Reference to a DataSource. If specified, refreshes all associated data source objects for the data source.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | Refreshes the data source objects regardless of the current state. If not set and a referenced data source object was in error state, the refresh will fail immediately.
    force :: (Core.Maybe Core.Bool),
    -- | Refreshes all existing data source objects in the spreadsheet.
    isAll :: (Core.Maybe Core.Bool),
    -- | References to data source objects to refresh.
    references :: (Core.Maybe DataSourceObjectReferences)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RefreshDataSourceRequest' with the minimum fields required to make a request.
newRefreshDataSourceRequest ::
  RefreshDataSourceRequest
newRefreshDataSourceRequest =
  RefreshDataSourceRequest
    { dataSourceId = Core.Nothing,
      force = Core.Nothing,
      isAll = Core.Nothing,
      references = Core.Nothing
    }

instance Core.FromJSON RefreshDataSourceRequest where
  parseJSON =
    Core.withObject
      "RefreshDataSourceRequest"
      ( \o ->
          RefreshDataSourceRequest
            Core.<$> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "force")
            Core.<*> (o Core..:? "isAll")
            Core.<*> (o Core..:? "references")
      )

instance Core.ToJSON RefreshDataSourceRequest where
  toJSON RefreshDataSourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("force" Core..=) Core.<$> force,
            ("isAll" Core..=) Core.<$> isAll,
            ("references" Core..=) Core.<$> references
          ]
      )

-- | The response from refreshing one or multiple data source objects.
--
-- /See:/ 'newRefreshDataSourceResponse' smart constructor.
newtype RefreshDataSourceResponse = RefreshDataSourceResponse
  { -- | All the refresh status for the data source object references specified in the request. If is_all is specified, the field contains only those in failure status.
    statuses :: (Core.Maybe [RefreshDataSourceObjectExecutionStatus])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RefreshDataSourceResponse' with the minimum fields required to make a request.
newRefreshDataSourceResponse ::
  RefreshDataSourceResponse
newRefreshDataSourceResponse =
  RefreshDataSourceResponse {statuses = Core.Nothing}

instance Core.FromJSON RefreshDataSourceResponse where
  parseJSON =
    Core.withObject
      "RefreshDataSourceResponse"
      ( \o ->
          RefreshDataSourceResponse
            Core.<$> (o Core..:? "statuses")
      )

instance Core.ToJSON RefreshDataSourceResponse where
  toJSON RefreshDataSourceResponse {..} =
    Core.object
      ( Core.catMaybes
          [("statuses" Core..=) Core.<$> statuses]
      )

-- | Updates all cells in the range to the values in the given Cell object. Only the fields listed in the fields field are updated; others are unchanged. If writing a cell with a formula, the formula\'s ranges will automatically increment for each field in the range. For example, if writing a cell with formula @=A1@ into range B2:C4, B2 would be @=A1@, B3 would be @=A2@, B4 would be @=A3@, C2 would be @=B1@, C3 would be @=B2@, C4 would be @=B3@. To keep the formula\'s ranges static, use the @$@ indicator. For example, use the formula @=$A$1@ to prevent both the row and the column from incrementing.
--
-- /See:/ 'newRepeatCellRequest' smart constructor.
data RepeatCellRequest = RepeatCellRequest
  { -- | The data to write.
    cell :: (Core.Maybe CellData),
    -- | The fields that should be updated. At least one field must be specified. The root @cell@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The range to repeat the cell in.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepeatCellRequest' with the minimum fields required to make a request.
newRepeatCellRequest ::
  RepeatCellRequest
newRepeatCellRequest =
  RepeatCellRequest
    { cell = Core.Nothing,
      fields = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON RepeatCellRequest where
  parseJSON =
    Core.withObject
      "RepeatCellRequest"
      ( \o ->
          RepeatCellRequest
            Core.<$> (o Core..:? "cell")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON RepeatCellRequest where
  toJSON RepeatCellRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cell" Core..=) Core.<$> cell,
            ("fields" Core..=) Core.<$> fields,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | A single kind of update to apply to a spreadsheet.
--
-- /See:/ 'newRequest' smart constructor.
data Request' = Request'
  { -- | Adds a new banded range
    addBanding :: (Core.Maybe AddBandingRequest),
    -- | Adds a chart.
    addChart :: (Core.Maybe AddChartRequest),
    -- | Adds a new conditional format rule.
    addConditionalFormatRule :: (Core.Maybe AddConditionalFormatRuleRequest),
    -- | Adds a data source.
    addDataSource :: (Core.Maybe AddDataSourceRequest),
    -- | Creates a group over the specified range.
    addDimensionGroup :: (Core.Maybe AddDimensionGroupRequest),
    -- | Adds a filter view.
    addFilterView :: (Core.Maybe AddFilterViewRequest),
    -- | Adds a named range.
    addNamedRange :: (Core.Maybe AddNamedRangeRequest),
    -- | Adds a protected range.
    addProtectedRange :: (Core.Maybe AddProtectedRangeRequest),
    -- | Adds a sheet.
    addSheet :: (Core.Maybe AddSheetRequest),
    -- | Adds a slicer.
    addSlicer :: (Core.Maybe AddSlicerRequest),
    -- | Appends cells after the last row with data in a sheet.
    appendCells :: (Core.Maybe AppendCellsRequest),
    -- | Appends dimensions to the end of a sheet.
    appendDimension :: (Core.Maybe AppendDimensionRequest),
    -- | Automatically fills in more data based on existing data.
    autoFill :: (Core.Maybe AutoFillRequest),
    -- | Automatically resizes one or more dimensions based on the contents of the cells in that dimension.
    autoResizeDimensions :: (Core.Maybe AutoResizeDimensionsRequest),
    -- | Clears the basic filter on a sheet.
    clearBasicFilter :: (Core.Maybe ClearBasicFilterRequest),
    -- | Copies data from one area and pastes it to another.
    copyPaste :: (Core.Maybe CopyPasteRequest),
    -- | Creates new developer metadata
    createDeveloperMetadata :: (Core.Maybe CreateDeveloperMetadataRequest),
    -- | Cuts data from one area and pastes it to another.
    cutPaste :: (Core.Maybe CutPasteRequest),
    -- | Removes a banded range
    deleteBanding :: (Core.Maybe DeleteBandingRequest),
    -- | Deletes an existing conditional format rule.
    deleteConditionalFormatRule :: (Core.Maybe DeleteConditionalFormatRuleRequest),
    -- | Deletes a data source.
    deleteDataSource :: (Core.Maybe DeleteDataSourceRequest),
    -- | Deletes developer metadata
    deleteDeveloperMetadata :: (Core.Maybe DeleteDeveloperMetadataRequest),
    -- | Deletes rows or columns in a sheet.
    deleteDimension :: (Core.Maybe DeleteDimensionRequest),
    -- | Deletes a group over the specified range.
    deleteDimensionGroup :: (Core.Maybe DeleteDimensionGroupRequest),
    -- | Removes rows containing duplicate values in specified columns of a cell range.
    deleteDuplicates :: (Core.Maybe DeleteDuplicatesRequest),
    -- | Deletes an embedded object (e.g, chart, image) in a sheet.
    deleteEmbeddedObject :: (Core.Maybe DeleteEmbeddedObjectRequest),
    -- | Deletes a filter view from a sheet.
    deleteFilterView :: (Core.Maybe DeleteFilterViewRequest),
    -- | Deletes a named range.
    deleteNamedRange :: (Core.Maybe DeleteNamedRangeRequest),
    -- | Deletes a protected range.
    deleteProtectedRange :: (Core.Maybe DeleteProtectedRangeRequest),
    -- | Deletes a range of cells from a sheet, shifting the remaining cells.
    deleteRange :: (Core.Maybe DeleteRangeRequest),
    -- | Deletes a sheet.
    deleteSheet :: (Core.Maybe DeleteSheetRequest),
    -- | Duplicates a filter view.
    duplicateFilterView :: (Core.Maybe DuplicateFilterViewRequest),
    -- | Duplicates a sheet.
    duplicateSheet :: (Core.Maybe DuplicateSheetRequest),
    -- | Finds and replaces occurrences of some text with other text.
    findReplace :: (Core.Maybe FindReplaceRequest),
    -- | Inserts new rows or columns in a sheet.
    insertDimension :: (Core.Maybe InsertDimensionRequest),
    -- | Inserts new cells in a sheet, shifting the existing cells.
    insertRange :: (Core.Maybe InsertRangeRequest),
    -- | Merges cells together.
    mergeCells :: (Core.Maybe MergeCellsRequest),
    -- | Moves rows or columns to another location in a sheet.
    moveDimension :: (Core.Maybe MoveDimensionRequest),
    -- | Pastes data (HTML or delimited) into a sheet.
    pasteData :: (Core.Maybe PasteDataRequest),
    -- | Randomizes the order of the rows in a range.
    randomizeRange :: (Core.Maybe RandomizeRangeRequest),
    -- | Refreshs one or multiple data sources and associated dbobjects.
    refreshDataSource :: (Core.Maybe RefreshDataSourceRequest),
    -- | Repeats a single cell across a range.
    repeatCell :: (Core.Maybe RepeatCellRequest),
    -- | Sets the basic filter on a sheet.
    setBasicFilter :: (Core.Maybe SetBasicFilterRequest),
    -- | Sets data validation for one or more cells.
    setDataValidation :: (Core.Maybe SetDataValidationRequest),
    -- | Sorts data in a range.
    sortRange :: (Core.Maybe SortRangeRequest),
    -- | Converts a column of text into many columns of text.
    textToColumns :: (Core.Maybe TextToColumnsRequest),
    -- | Trims cells of whitespace (such as spaces, tabs, or new lines).
    trimWhitespace :: (Core.Maybe TrimWhitespaceRequest),
    -- | Unmerges merged cells.
    unmergeCells :: (Core.Maybe UnmergeCellsRequest),
    -- | Updates a banded range
    updateBanding :: (Core.Maybe UpdateBandingRequest),
    -- | Updates the borders in a range of cells.
    updateBorders :: (Core.Maybe UpdateBordersRequest),
    -- | Updates many cells at once.
    updateCells :: (Core.Maybe UpdateCellsRequest),
    -- | Updates a chart\'s specifications.
    updateChartSpec :: (Core.Maybe UpdateChartSpecRequest),
    -- | Updates an existing conditional format rule.
    updateConditionalFormatRule :: (Core.Maybe UpdateConditionalFormatRuleRequest),
    -- | Updates a data source.
    updateDataSource :: (Core.Maybe UpdateDataSourceRequest),
    -- | Updates an existing developer metadata entry
    updateDeveloperMetadata :: (Core.Maybe UpdateDeveloperMetadataRequest),
    -- | Updates the state of the specified group.
    updateDimensionGroup :: (Core.Maybe UpdateDimensionGroupRequest),
    -- | Updates dimensions\' properties.
    updateDimensionProperties :: (Core.Maybe UpdateDimensionPropertiesRequest),
    -- | Updates an embedded object\'s border.
    updateEmbeddedObjectBorder :: (Core.Maybe UpdateEmbeddedObjectBorderRequest),
    -- | Updates an embedded object\'s (e.g. chart, image) position.
    updateEmbeddedObjectPosition :: (Core.Maybe UpdateEmbeddedObjectPositionRequest),
    -- | Updates the properties of a filter view.
    updateFilterView :: (Core.Maybe UpdateFilterViewRequest),
    -- | Updates a named range.
    updateNamedRange :: (Core.Maybe UpdateNamedRangeRequest),
    -- | Updates a protected range.
    updateProtectedRange :: (Core.Maybe UpdateProtectedRangeRequest),
    -- | Updates a sheet\'s properties.
    updateSheetProperties :: (Core.Maybe UpdateSheetPropertiesRequest),
    -- | Updates a slicer\'s specifications.
    updateSlicerSpec :: (Core.Maybe UpdateSlicerSpecRequest),
    -- | Updates the spreadsheet\'s properties.
    updateSpreadsheetProperties :: (Core.Maybe UpdateSpreadsheetPropertiesRequest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Request' with the minimum fields required to make a request.
newRequest ::
  Request'
newRequest =
  Request'
    { addBanding = Core.Nothing,
      addChart = Core.Nothing,
      addConditionalFormatRule = Core.Nothing,
      addDataSource = Core.Nothing,
      addDimensionGroup = Core.Nothing,
      addFilterView = Core.Nothing,
      addNamedRange = Core.Nothing,
      addProtectedRange = Core.Nothing,
      addSheet = Core.Nothing,
      addSlicer = Core.Nothing,
      appendCells = Core.Nothing,
      appendDimension = Core.Nothing,
      autoFill = Core.Nothing,
      autoResizeDimensions = Core.Nothing,
      clearBasicFilter = Core.Nothing,
      copyPaste = Core.Nothing,
      createDeveloperMetadata = Core.Nothing,
      cutPaste = Core.Nothing,
      deleteBanding = Core.Nothing,
      deleteConditionalFormatRule = Core.Nothing,
      deleteDataSource = Core.Nothing,
      deleteDeveloperMetadata = Core.Nothing,
      deleteDimension = Core.Nothing,
      deleteDimensionGroup = Core.Nothing,
      deleteDuplicates = Core.Nothing,
      deleteEmbeddedObject = Core.Nothing,
      deleteFilterView = Core.Nothing,
      deleteNamedRange = Core.Nothing,
      deleteProtectedRange = Core.Nothing,
      deleteRange = Core.Nothing,
      deleteSheet = Core.Nothing,
      duplicateFilterView = Core.Nothing,
      duplicateSheet = Core.Nothing,
      findReplace = Core.Nothing,
      insertDimension = Core.Nothing,
      insertRange = Core.Nothing,
      mergeCells = Core.Nothing,
      moveDimension = Core.Nothing,
      pasteData = Core.Nothing,
      randomizeRange = Core.Nothing,
      refreshDataSource = Core.Nothing,
      repeatCell = Core.Nothing,
      setBasicFilter = Core.Nothing,
      setDataValidation = Core.Nothing,
      sortRange = Core.Nothing,
      textToColumns = Core.Nothing,
      trimWhitespace = Core.Nothing,
      unmergeCells = Core.Nothing,
      updateBanding = Core.Nothing,
      updateBorders = Core.Nothing,
      updateCells = Core.Nothing,
      updateChartSpec = Core.Nothing,
      updateConditionalFormatRule = Core.Nothing,
      updateDataSource = Core.Nothing,
      updateDeveloperMetadata = Core.Nothing,
      updateDimensionGroup = Core.Nothing,
      updateDimensionProperties = Core.Nothing,
      updateEmbeddedObjectBorder = Core.Nothing,
      updateEmbeddedObjectPosition = Core.Nothing,
      updateFilterView = Core.Nothing,
      updateNamedRange = Core.Nothing,
      updateProtectedRange = Core.Nothing,
      updateSheetProperties = Core.Nothing,
      updateSlicerSpec = Core.Nothing,
      updateSpreadsheetProperties = Core.Nothing
    }

instance Core.FromJSON Request' where
  parseJSON =
    Core.withObject
      "Request'"
      ( \o ->
          Request'
            Core.<$> (o Core..:? "addBanding")
            Core.<*> (o Core..:? "addChart")
            Core.<*> (o Core..:? "addConditionalFormatRule")
            Core.<*> (o Core..:? "addDataSource")
            Core.<*> (o Core..:? "addDimensionGroup")
            Core.<*> (o Core..:? "addFilterView")
            Core.<*> (o Core..:? "addNamedRange")
            Core.<*> (o Core..:? "addProtectedRange")
            Core.<*> (o Core..:? "addSheet")
            Core.<*> (o Core..:? "addSlicer")
            Core.<*> (o Core..:? "appendCells")
            Core.<*> (o Core..:? "appendDimension")
            Core.<*> (o Core..:? "autoFill")
            Core.<*> (o Core..:? "autoResizeDimensions")
            Core.<*> (o Core..:? "clearBasicFilter")
            Core.<*> (o Core..:? "copyPaste")
            Core.<*> (o Core..:? "createDeveloperMetadata")
            Core.<*> (o Core..:? "cutPaste")
            Core.<*> (o Core..:? "deleteBanding")
            Core.<*> (o Core..:? "deleteConditionalFormatRule")
            Core.<*> (o Core..:? "deleteDataSource")
            Core.<*> (o Core..:? "deleteDeveloperMetadata")
            Core.<*> (o Core..:? "deleteDimension")
            Core.<*> (o Core..:? "deleteDimensionGroup")
            Core.<*> (o Core..:? "deleteDuplicates")
            Core.<*> (o Core..:? "deleteEmbeddedObject")
            Core.<*> (o Core..:? "deleteFilterView")
            Core.<*> (o Core..:? "deleteNamedRange")
            Core.<*> (o Core..:? "deleteProtectedRange")
            Core.<*> (o Core..:? "deleteRange")
            Core.<*> (o Core..:? "deleteSheet")
            Core.<*> (o Core..:? "duplicateFilterView")
            Core.<*> (o Core..:? "duplicateSheet")
            Core.<*> (o Core..:? "findReplace")
            Core.<*> (o Core..:? "insertDimension")
            Core.<*> (o Core..:? "insertRange")
            Core.<*> (o Core..:? "mergeCells")
            Core.<*> (o Core..:? "moveDimension")
            Core.<*> (o Core..:? "pasteData")
            Core.<*> (o Core..:? "randomizeRange")
            Core.<*> (o Core..:? "refreshDataSource")
            Core.<*> (o Core..:? "repeatCell")
            Core.<*> (o Core..:? "setBasicFilter")
            Core.<*> (o Core..:? "setDataValidation")
            Core.<*> (o Core..:? "sortRange")
            Core.<*> (o Core..:? "textToColumns")
            Core.<*> (o Core..:? "trimWhitespace")
            Core.<*> (o Core..:? "unmergeCells")
            Core.<*> (o Core..:? "updateBanding")
            Core.<*> (o Core..:? "updateBorders")
            Core.<*> (o Core..:? "updateCells")
            Core.<*> (o Core..:? "updateChartSpec")
            Core.<*> (o Core..:? "updateConditionalFormatRule")
            Core.<*> (o Core..:? "updateDataSource")
            Core.<*> (o Core..:? "updateDeveloperMetadata")
            Core.<*> (o Core..:? "updateDimensionGroup")
            Core.<*> (o Core..:? "updateDimensionProperties")
            Core.<*> (o Core..:? "updateEmbeddedObjectBorder")
            Core.<*> (o Core..:? "updateEmbeddedObjectPosition")
            Core.<*> (o Core..:? "updateFilterView")
            Core.<*> (o Core..:? "updateNamedRange")
            Core.<*> (o Core..:? "updateProtectedRange")
            Core.<*> (o Core..:? "updateSheetProperties")
            Core.<*> (o Core..:? "updateSlicerSpec")
            Core.<*> (o Core..:? "updateSpreadsheetProperties")
      )

instance Core.ToJSON Request' where
  toJSON Request' {..} =
    Core.object
      ( Core.catMaybes
          [ ("addBanding" Core..=) Core.<$> addBanding,
            ("addChart" Core..=) Core.<$> addChart,
            ("addConditionalFormatRule" Core..=)
              Core.<$> addConditionalFormatRule,
            ("addDataSource" Core..=) Core.<$> addDataSource,
            ("addDimensionGroup" Core..=)
              Core.<$> addDimensionGroup,
            ("addFilterView" Core..=) Core.<$> addFilterView,
            ("addNamedRange" Core..=) Core.<$> addNamedRange,
            ("addProtectedRange" Core..=)
              Core.<$> addProtectedRange,
            ("addSheet" Core..=) Core.<$> addSheet,
            ("addSlicer" Core..=) Core.<$> addSlicer,
            ("appendCells" Core..=) Core.<$> appendCells,
            ("appendDimension" Core..=) Core.<$> appendDimension,
            ("autoFill" Core..=) Core.<$> autoFill,
            ("autoResizeDimensions" Core..=)
              Core.<$> autoResizeDimensions,
            ("clearBasicFilter" Core..=)
              Core.<$> clearBasicFilter,
            ("copyPaste" Core..=) Core.<$> copyPaste,
            ("createDeveloperMetadata" Core..=)
              Core.<$> createDeveloperMetadata,
            ("cutPaste" Core..=) Core.<$> cutPaste,
            ("deleteBanding" Core..=) Core.<$> deleteBanding,
            ("deleteConditionalFormatRule" Core..=)
              Core.<$> deleteConditionalFormatRule,
            ("deleteDataSource" Core..=)
              Core.<$> deleteDataSource,
            ("deleteDeveloperMetadata" Core..=)
              Core.<$> deleteDeveloperMetadata,
            ("deleteDimension" Core..=) Core.<$> deleteDimension,
            ("deleteDimensionGroup" Core..=)
              Core.<$> deleteDimensionGroup,
            ("deleteDuplicates" Core..=)
              Core.<$> deleteDuplicates,
            ("deleteEmbeddedObject" Core..=)
              Core.<$> deleteEmbeddedObject,
            ("deleteFilterView" Core..=)
              Core.<$> deleteFilterView,
            ("deleteNamedRange" Core..=)
              Core.<$> deleteNamedRange,
            ("deleteProtectedRange" Core..=)
              Core.<$> deleteProtectedRange,
            ("deleteRange" Core..=) Core.<$> deleteRange,
            ("deleteSheet" Core..=) Core.<$> deleteSheet,
            ("duplicateFilterView" Core..=)
              Core.<$> duplicateFilterView,
            ("duplicateSheet" Core..=) Core.<$> duplicateSheet,
            ("findReplace" Core..=) Core.<$> findReplace,
            ("insertDimension" Core..=) Core.<$> insertDimension,
            ("insertRange" Core..=) Core.<$> insertRange,
            ("mergeCells" Core..=) Core.<$> mergeCells,
            ("moveDimension" Core..=) Core.<$> moveDimension,
            ("pasteData" Core..=) Core.<$> pasteData,
            ("randomizeRange" Core..=) Core.<$> randomizeRange,
            ("refreshDataSource" Core..=)
              Core.<$> refreshDataSource,
            ("repeatCell" Core..=) Core.<$> repeatCell,
            ("setBasicFilter" Core..=) Core.<$> setBasicFilter,
            ("setDataValidation" Core..=)
              Core.<$> setDataValidation,
            ("sortRange" Core..=) Core.<$> sortRange,
            ("textToColumns" Core..=) Core.<$> textToColumns,
            ("trimWhitespace" Core..=) Core.<$> trimWhitespace,
            ("unmergeCells" Core..=) Core.<$> unmergeCells,
            ("updateBanding" Core..=) Core.<$> updateBanding,
            ("updateBorders" Core..=) Core.<$> updateBorders,
            ("updateCells" Core..=) Core.<$> updateCells,
            ("updateChartSpec" Core..=) Core.<$> updateChartSpec,
            ("updateConditionalFormatRule" Core..=)
              Core.<$> updateConditionalFormatRule,
            ("updateDataSource" Core..=)
              Core.<$> updateDataSource,
            ("updateDeveloperMetadata" Core..=)
              Core.<$> updateDeveloperMetadata,
            ("updateDimensionGroup" Core..=)
              Core.<$> updateDimensionGroup,
            ("updateDimensionProperties" Core..=)
              Core.<$> updateDimensionProperties,
            ("updateEmbeddedObjectBorder" Core..=)
              Core.<$> updateEmbeddedObjectBorder,
            ("updateEmbeddedObjectPosition" Core..=)
              Core.<$> updateEmbeddedObjectPosition,
            ("updateFilterView" Core..=)
              Core.<$> updateFilterView,
            ("updateNamedRange" Core..=)
              Core.<$> updateNamedRange,
            ("updateProtectedRange" Core..=)
              Core.<$> updateProtectedRange,
            ("updateSheetProperties" Core..=)
              Core.<$> updateSheetProperties,
            ("updateSlicerSpec" Core..=)
              Core.<$> updateSlicerSpec,
            ("updateSpreadsheetProperties" Core..=)
              Core.<$> updateSpreadsheetProperties
          ]
      )

-- | A single response from an update.
--
-- /See:/ 'newResponse' smart constructor.
data Response = Response
  { -- | A reply from adding a banded range.
    addBanding :: (Core.Maybe AddBandingResponse),
    -- | A reply from adding a chart.
    addChart :: (Core.Maybe AddChartResponse),
    -- | A reply from adding a data source.
    addDataSource :: (Core.Maybe AddDataSourceResponse),
    -- | A reply from adding a dimension group.
    addDimensionGroup :: (Core.Maybe AddDimensionGroupResponse),
    -- | A reply from adding a filter view.
    addFilterView :: (Core.Maybe AddFilterViewResponse),
    -- | A reply from adding a named range.
    addNamedRange :: (Core.Maybe AddNamedRangeResponse),
    -- | A reply from adding a protected range.
    addProtectedRange :: (Core.Maybe AddProtectedRangeResponse),
    -- | A reply from adding a sheet.
    addSheet :: (Core.Maybe AddSheetResponse),
    -- | A reply from adding a slicer.
    addSlicer :: (Core.Maybe AddSlicerResponse),
    -- | A reply from creating a developer metadata entry.
    createDeveloperMetadata :: (Core.Maybe CreateDeveloperMetadataResponse),
    -- | A reply from deleting a conditional format rule.
    deleteConditionalFormatRule :: (Core.Maybe DeleteConditionalFormatRuleResponse),
    -- | A reply from deleting a developer metadata entry.
    deleteDeveloperMetadata :: (Core.Maybe DeleteDeveloperMetadataResponse),
    -- | A reply from deleting a dimension group.
    deleteDimensionGroup :: (Core.Maybe DeleteDimensionGroupResponse),
    -- | A reply from removing rows containing duplicate values.
    deleteDuplicates :: (Core.Maybe DeleteDuplicatesResponse),
    -- | A reply from duplicating a filter view.
    duplicateFilterView :: (Core.Maybe DuplicateFilterViewResponse),
    -- | A reply from duplicating a sheet.
    duplicateSheet :: (Core.Maybe DuplicateSheetResponse),
    -- | A reply from doing a find\/replace.
    findReplace :: (Core.Maybe FindReplaceResponse),
    -- | A reply from refreshing data source objects.
    refreshDataSource :: (Core.Maybe RefreshDataSourceResponse),
    -- | A reply from trimming whitespace.
    trimWhitespace :: (Core.Maybe TrimWhitespaceResponse),
    -- | A reply from updating a conditional format rule.
    updateConditionalFormatRule :: (Core.Maybe UpdateConditionalFormatRuleResponse),
    -- | A reply from updating a data source.
    updateDataSource :: (Core.Maybe UpdateDataSourceResponse),
    -- | A reply from updating a developer metadata entry.
    updateDeveloperMetadata :: (Core.Maybe UpdateDeveloperMetadataResponse),
    -- | A reply from updating an embedded object\'s position.
    updateEmbeddedObjectPosition :: (Core.Maybe UpdateEmbeddedObjectPositionResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Response' with the minimum fields required to make a request.
newResponse ::
  Response
newResponse =
  Response
    { addBanding = Core.Nothing,
      addChart = Core.Nothing,
      addDataSource = Core.Nothing,
      addDimensionGroup = Core.Nothing,
      addFilterView = Core.Nothing,
      addNamedRange = Core.Nothing,
      addProtectedRange = Core.Nothing,
      addSheet = Core.Nothing,
      addSlicer = Core.Nothing,
      createDeveloperMetadata = Core.Nothing,
      deleteConditionalFormatRule = Core.Nothing,
      deleteDeveloperMetadata = Core.Nothing,
      deleteDimensionGroup = Core.Nothing,
      deleteDuplicates = Core.Nothing,
      duplicateFilterView = Core.Nothing,
      duplicateSheet = Core.Nothing,
      findReplace = Core.Nothing,
      refreshDataSource = Core.Nothing,
      trimWhitespace = Core.Nothing,
      updateConditionalFormatRule = Core.Nothing,
      updateDataSource = Core.Nothing,
      updateDeveloperMetadata = Core.Nothing,
      updateEmbeddedObjectPosition = Core.Nothing
    }

instance Core.FromJSON Response where
  parseJSON =
    Core.withObject
      "Response"
      ( \o ->
          Response
            Core.<$> (o Core..:? "addBanding")
            Core.<*> (o Core..:? "addChart")
            Core.<*> (o Core..:? "addDataSource")
            Core.<*> (o Core..:? "addDimensionGroup")
            Core.<*> (o Core..:? "addFilterView")
            Core.<*> (o Core..:? "addNamedRange")
            Core.<*> (o Core..:? "addProtectedRange")
            Core.<*> (o Core..:? "addSheet")
            Core.<*> (o Core..:? "addSlicer")
            Core.<*> (o Core..:? "createDeveloperMetadata")
            Core.<*> (o Core..:? "deleteConditionalFormatRule")
            Core.<*> (o Core..:? "deleteDeveloperMetadata")
            Core.<*> (o Core..:? "deleteDimensionGroup")
            Core.<*> (o Core..:? "deleteDuplicates")
            Core.<*> (o Core..:? "duplicateFilterView")
            Core.<*> (o Core..:? "duplicateSheet")
            Core.<*> (o Core..:? "findReplace")
            Core.<*> (o Core..:? "refreshDataSource")
            Core.<*> (o Core..:? "trimWhitespace")
            Core.<*> (o Core..:? "updateConditionalFormatRule")
            Core.<*> (o Core..:? "updateDataSource")
            Core.<*> (o Core..:? "updateDeveloperMetadata")
            Core.<*> (o Core..:? "updateEmbeddedObjectPosition")
      )

instance Core.ToJSON Response where
  toJSON Response {..} =
    Core.object
      ( Core.catMaybes
          [ ("addBanding" Core..=) Core.<$> addBanding,
            ("addChart" Core..=) Core.<$> addChart,
            ("addDataSource" Core..=) Core.<$> addDataSource,
            ("addDimensionGroup" Core..=)
              Core.<$> addDimensionGroup,
            ("addFilterView" Core..=) Core.<$> addFilterView,
            ("addNamedRange" Core..=) Core.<$> addNamedRange,
            ("addProtectedRange" Core..=)
              Core.<$> addProtectedRange,
            ("addSheet" Core..=) Core.<$> addSheet,
            ("addSlicer" Core..=) Core.<$> addSlicer,
            ("createDeveloperMetadata" Core..=)
              Core.<$> createDeveloperMetadata,
            ("deleteConditionalFormatRule" Core..=)
              Core.<$> deleteConditionalFormatRule,
            ("deleteDeveloperMetadata" Core..=)
              Core.<$> deleteDeveloperMetadata,
            ("deleteDimensionGroup" Core..=)
              Core.<$> deleteDimensionGroup,
            ("deleteDuplicates" Core..=)
              Core.<$> deleteDuplicates,
            ("duplicateFilterView" Core..=)
              Core.<$> duplicateFilterView,
            ("duplicateSheet" Core..=) Core.<$> duplicateSheet,
            ("findReplace" Core..=) Core.<$> findReplace,
            ("refreshDataSource" Core..=)
              Core.<$> refreshDataSource,
            ("trimWhitespace" Core..=) Core.<$> trimWhitespace,
            ("updateConditionalFormatRule" Core..=)
              Core.<$> updateConditionalFormatRule,
            ("updateDataSource" Core..=)
              Core.<$> updateDataSource,
            ("updateDeveloperMetadata" Core..=)
              Core.<$> updateDeveloperMetadata,
            ("updateEmbeddedObjectPosition" Core..=)
              Core.<$> updateEmbeddedObjectPosition
          ]
      )

-- | Data about each cell in a row.
--
-- /See:/ 'newRowData' smart constructor.
newtype RowData = RowData
  { -- | The values in the row, one per column.
    values :: (Core.Maybe [CellData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RowData' with the minimum fields required to make a request.
newRowData ::
  RowData
newRowData = RowData {values = Core.Nothing}

instance Core.FromJSON RowData where
  parseJSON =
    Core.withObject
      "RowData"
      (\o -> RowData Core.<$> (o Core..:? "values"))

instance Core.ToJSON RowData where
  toJSON RowData {..} =
    Core.object
      (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | A scorecard chart. Scorecard charts are used to highlight key performance indicators, known as KPIs, on the spreadsheet. A scorecard chart can represent things like total sales, average cost, or a top selling item. You can specify a single data value, or aggregate over a range of data. Percentage or absolute difference from a baseline value can be highlighted, like changes over time.
--
-- /See:/ 'newScorecardChartSpec' smart constructor.
data ScorecardChartSpec = ScorecardChartSpec
  { -- | The aggregation type for key and baseline chart data in scorecard chart. This field is not supported for data source charts. Use the ChartData.aggregateType field of the key/value/data or baseline/value/data instead for data source charts. This field is optional.
    aggregateType :: (Core.Maybe ScorecardChartSpec_AggregateType),
    -- | The data for scorecard baseline value. This field is optional.
    baselineValueData :: (Core.Maybe ChartData),
    -- | Formatting options for baseline value. This field is needed only if baseline/value/data is specified.
    baselineValueFormat :: (Core.Maybe BaselineValueFormat),
    -- | Custom formatting options for numeric key\/baseline values in scorecard chart. This field is used only when number/format/source is set to CUSTOM. This field is optional.
    customFormatOptions :: (Core.Maybe ChartCustomNumberFormatOptions),
    -- | The data for scorecard key value.
    keyValueData :: (Core.Maybe ChartData),
    -- | Formatting options for key value.
    keyValueFormat :: (Core.Maybe KeyValueFormat),
    -- | The number format source used in the scorecard chart. This field is optional.
    numberFormatSource :: (Core.Maybe ScorecardChartSpec_NumberFormatSource),
    -- | Value to scale scorecard key and baseline value. For example, a factor of 10 can be used to divide all values in the chart by 10. This field is optional.
    scaleFactor :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScorecardChartSpec' with the minimum fields required to make a request.
newScorecardChartSpec ::
  ScorecardChartSpec
newScorecardChartSpec =
  ScorecardChartSpec
    { aggregateType = Core.Nothing,
      baselineValueData = Core.Nothing,
      baselineValueFormat = Core.Nothing,
      customFormatOptions = Core.Nothing,
      keyValueData = Core.Nothing,
      keyValueFormat = Core.Nothing,
      numberFormatSource = Core.Nothing,
      scaleFactor = Core.Nothing
    }

instance Core.FromJSON ScorecardChartSpec where
  parseJSON =
    Core.withObject
      "ScorecardChartSpec"
      ( \o ->
          ScorecardChartSpec
            Core.<$> (o Core..:? "aggregateType")
            Core.<*> (o Core..:? "baselineValueData")
            Core.<*> (o Core..:? "baselineValueFormat")
            Core.<*> (o Core..:? "customFormatOptions")
            Core.<*> (o Core..:? "keyValueData")
            Core.<*> (o Core..:? "keyValueFormat")
            Core.<*> (o Core..:? "numberFormatSource")
            Core.<*> (o Core..:? "scaleFactor")
      )

instance Core.ToJSON ScorecardChartSpec where
  toJSON ScorecardChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregateType" Core..=) Core.<$> aggregateType,
            ("baselineValueData" Core..=)
              Core.<$> baselineValueData,
            ("baselineValueFormat" Core..=)
              Core.<$> baselineValueFormat,
            ("customFormatOptions" Core..=)
              Core.<$> customFormatOptions,
            ("keyValueData" Core..=) Core.<$> keyValueData,
            ("keyValueFormat" Core..=) Core.<$> keyValueFormat,
            ("numberFormatSource" Core..=)
              Core.<$> numberFormatSource,
            ("scaleFactor" Core..=) Core.<$> scaleFactor
          ]
      )

-- | A request to retrieve all developer metadata matching the set of specified criteria.
--
-- /See:/ 'newSearchDeveloperMetadataRequest' smart constructor.
newtype SearchDeveloperMetadataRequest = SearchDeveloperMetadataRequest
  { -- | The data filters describing the criteria used to determine which DeveloperMetadata entries to return. DeveloperMetadata matching any of the specified filters are included in the response.
    dataFilters :: (Core.Maybe [DataFilter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchDeveloperMetadataRequest' with the minimum fields required to make a request.
newSearchDeveloperMetadataRequest ::
  SearchDeveloperMetadataRequest
newSearchDeveloperMetadataRequest =
  SearchDeveloperMetadataRequest {dataFilters = Core.Nothing}

instance Core.FromJSON SearchDeveloperMetadataRequest where
  parseJSON =
    Core.withObject
      "SearchDeveloperMetadataRequest"
      ( \o ->
          SearchDeveloperMetadataRequest
            Core.<$> (o Core..:? "dataFilters")
      )

instance Core.ToJSON SearchDeveloperMetadataRequest where
  toJSON SearchDeveloperMetadataRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataFilters" Core..=) Core.<$> dataFilters]
      )

-- | A reply to a developer metadata search request.
--
-- /See:/ 'newSearchDeveloperMetadataResponse' smart constructor.
newtype SearchDeveloperMetadataResponse = SearchDeveloperMetadataResponse
  { -- | The metadata matching the criteria of the search request.
    matchedDeveloperMetadata :: (Core.Maybe [MatchedDeveloperMetadata])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchDeveloperMetadataResponse' with the minimum fields required to make a request.
newSearchDeveloperMetadataResponse ::
  SearchDeveloperMetadataResponse
newSearchDeveloperMetadataResponse =
  SearchDeveloperMetadataResponse {matchedDeveloperMetadata = Core.Nothing}

instance
  Core.FromJSON
    SearchDeveloperMetadataResponse
  where
  parseJSON =
    Core.withObject
      "SearchDeveloperMetadataResponse"
      ( \o ->
          SearchDeveloperMetadataResponse
            Core.<$> (o Core..:? "matchedDeveloperMetadata")
      )

instance Core.ToJSON SearchDeveloperMetadataResponse where
  toJSON SearchDeveloperMetadataResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("matchedDeveloperMetadata" Core..=)
              Core.<$> matchedDeveloperMetadata
          ]
      )

-- | Sets the basic filter associated with a sheet.
--
-- /See:/ 'newSetBasicFilterRequest' smart constructor.
newtype SetBasicFilterRequest = SetBasicFilterRequest
  { -- | The filter to set.
    filter :: (Core.Maybe BasicFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetBasicFilterRequest' with the minimum fields required to make a request.
newSetBasicFilterRequest ::
  SetBasicFilterRequest
newSetBasicFilterRequest = SetBasicFilterRequest {filter = Core.Nothing}

instance Core.FromJSON SetBasicFilterRequest where
  parseJSON =
    Core.withObject
      "SetBasicFilterRequest"
      ( \o ->
          SetBasicFilterRequest Core.<$> (o Core..:? "filter")
      )

instance Core.ToJSON SetBasicFilterRequest where
  toJSON SetBasicFilterRequest {..} =
    Core.object
      (Core.catMaybes [("filter" Core..=) Core.<$> filter])

-- | Sets a data validation rule to every cell in the range. To clear validation in a range, call this with no rule specified.
--
-- /See:/ 'newSetDataValidationRequest' smart constructor.
data SetDataValidationRequest = SetDataValidationRequest
  { -- | The range the data validation rule should apply to.
    range :: (Core.Maybe GridRange),
    -- | The data validation rule to set on each cell in the range, or empty to clear the data validation in the range.
    rule :: (Core.Maybe DataValidationRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetDataValidationRequest' with the minimum fields required to make a request.
newSetDataValidationRequest ::
  SetDataValidationRequest
newSetDataValidationRequest =
  SetDataValidationRequest {range = Core.Nothing, rule = Core.Nothing}

instance Core.FromJSON SetDataValidationRequest where
  parseJSON =
    Core.withObject
      "SetDataValidationRequest"
      ( \o ->
          SetDataValidationRequest
            Core.<$> (o Core..:? "range") Core.<*> (o Core..:? "rule")
      )

instance Core.ToJSON SetDataValidationRequest where
  toJSON SetDataValidationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("range" Core..=) Core.<$> range,
            ("rule" Core..=) Core.<$> rule
          ]
      )

-- | A sheet in a spreadsheet.
--
-- /See:/ 'newSheet' smart constructor.
data Sheet = Sheet
  { -- | The banded (alternating colors) ranges on this sheet.
    bandedRanges :: (Core.Maybe [BandedRange]),
    -- | The filter on this sheet, if any.
    basicFilter :: (Core.Maybe BasicFilter),
    -- | The specifications of every chart on this sheet.
    charts :: (Core.Maybe [EmbeddedChart]),
    -- | All column groups on this sheet, ordered by increasing range start index, then by group depth.
    columnGroups :: (Core.Maybe [DimensionGroup]),
    -- | The conditional format rules in this sheet.
    conditionalFormats :: (Core.Maybe [ConditionalFormatRule]),
    -- | Data in the grid, if this is a grid sheet. The number of GridData objects returned is dependent on the number of ranges requested on this sheet. For example, if this is representing @Sheet1@, and the spreadsheet was requested with ranges @Sheet1!A1:C10@ and @Sheet1!D15:E20@, then the first GridData will have a startRow\/startColumn of @0@, while the second one will have @startRow 14@ (zero-based row 15), and @startColumn 3@ (zero-based column D). For a DATA_SOURCE sheet, you can not request a specific range, the GridData contains all the values.
    data' :: (Core.Maybe [GridData]),
    -- | The developer metadata associated with a sheet.
    developerMetadata :: (Core.Maybe [DeveloperMetadata]),
    -- | The filter views in this sheet.
    filterViews :: (Core.Maybe [FilterView]),
    -- | The ranges that are merged together.
    merges :: (Core.Maybe [GridRange]),
    -- | The properties of the sheet.
    properties :: (Core.Maybe SheetProperties),
    -- | The protected ranges in this sheet.
    protectedRanges :: (Core.Maybe [ProtectedRange]),
    -- | All row groups on this sheet, ordered by increasing range start index, then by group depth.
    rowGroups :: (Core.Maybe [DimensionGroup]),
    -- | The slicers on this sheet.
    slicers :: (Core.Maybe [Slicer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sheet' with the minimum fields required to make a request.
newSheet ::
  Sheet
newSheet =
  Sheet
    { bandedRanges = Core.Nothing,
      basicFilter = Core.Nothing,
      charts = Core.Nothing,
      columnGroups = Core.Nothing,
      conditionalFormats = Core.Nothing,
      data' = Core.Nothing,
      developerMetadata = Core.Nothing,
      filterViews = Core.Nothing,
      merges = Core.Nothing,
      properties = Core.Nothing,
      protectedRanges = Core.Nothing,
      rowGroups = Core.Nothing,
      slicers = Core.Nothing
    }

instance Core.FromJSON Sheet where
  parseJSON =
    Core.withObject
      "Sheet"
      ( \o ->
          Sheet
            Core.<$> (o Core..:? "bandedRanges")
            Core.<*> (o Core..:? "basicFilter")
            Core.<*> (o Core..:? "charts")
            Core.<*> (o Core..:? "columnGroups")
            Core.<*> (o Core..:? "conditionalFormats")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "developerMetadata")
            Core.<*> (o Core..:? "filterViews")
            Core.<*> (o Core..:? "merges")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "protectedRanges")
            Core.<*> (o Core..:? "rowGroups")
            Core.<*> (o Core..:? "slicers")
      )

instance Core.ToJSON Sheet where
  toJSON Sheet {..} =
    Core.object
      ( Core.catMaybes
          [ ("bandedRanges" Core..=) Core.<$> bandedRanges,
            ("basicFilter" Core..=) Core.<$> basicFilter,
            ("charts" Core..=) Core.<$> charts,
            ("columnGroups" Core..=) Core.<$> columnGroups,
            ("conditionalFormats" Core..=)
              Core.<$> conditionalFormats,
            ("data" Core..=) Core.<$> data',
            ("developerMetadata" Core..=)
              Core.<$> developerMetadata,
            ("filterViews" Core..=) Core.<$> filterViews,
            ("merges" Core..=) Core.<$> merges,
            ("properties" Core..=) Core.<$> properties,
            ("protectedRanges" Core..=) Core.<$> protectedRanges,
            ("rowGroups" Core..=) Core.<$> rowGroups,
            ("slicers" Core..=) Core.<$> slicers
          ]
      )

-- | Properties of a sheet.
--
-- /See:/ 'newSheetProperties' smart constructor.
data SheetProperties = SheetProperties
  { -- | Output only. If present, the field contains DATA_SOURCE sheet specific properties.
    dataSourceSheetProperties :: (Core.Maybe DataSourceSheetProperties),
    -- | Additional properties of the sheet if this sheet is a grid. (If the sheet is an object sheet, containing a chart or image, then this field will be absent.) When writing it is an error to set any grid properties on non-grid sheets. If this sheet is a DATA/SOURCE sheet, this field is output only but contains the properties that reflect how a data source sheet is rendered in the UI, e.g. row/count.
    gridProperties :: (Core.Maybe GridProperties),
    -- | True if the sheet is hidden in the UI, false if it\'s visible.
    hidden :: (Core.Maybe Core.Bool),
    -- | The index of the sheet within the spreadsheet. When adding or updating sheet properties, if this field is excluded then the sheet is added or moved to the end of the sheet list. When updating sheet indices or inserting sheets, movement is considered in \"before the move\" indexes. For example, if there were 3 sheets (S1, S2, S3) in order to move S1 ahead of S2 the index would have to be set to 2. A sheet index update request is ignored if the requested index is identical to the sheets current index or if the requested new index is equal to the current sheet index + 1.
    index :: (Core.Maybe Core.Int32),
    -- | True if the sheet is an RTL sheet instead of an LTR sheet.
    rightToLeft :: (Core.Maybe Core.Bool),
    -- | The ID of the sheet. Must be non-negative. This field cannot be changed once set.
    sheetId :: (Core.Maybe Core.Int32),
    -- | The type of sheet. Defaults to GRID. This field cannot be changed once set.
    sheetType :: (Core.Maybe SheetProperties_SheetType),
    -- | The color of the tab in the UI.
    tabColor :: (Core.Maybe Color),
    -- | The color of the tab in the UI. If tab_color is also set, this field takes precedence.
    tabColorStyle :: (Core.Maybe ColorStyle),
    -- | The name of the sheet.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetProperties' with the minimum fields required to make a request.
newSheetProperties ::
  SheetProperties
newSheetProperties =
  SheetProperties
    { dataSourceSheetProperties = Core.Nothing,
      gridProperties = Core.Nothing,
      hidden = Core.Nothing,
      index = Core.Nothing,
      rightToLeft = Core.Nothing,
      sheetId = Core.Nothing,
      sheetType = Core.Nothing,
      tabColor = Core.Nothing,
      tabColorStyle = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SheetProperties where
  parseJSON =
    Core.withObject
      "SheetProperties"
      ( \o ->
          SheetProperties
            Core.<$> (o Core..:? "dataSourceSheetProperties")
            Core.<*> (o Core..:? "gridProperties")
            Core.<*> (o Core..:? "hidden")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "rightToLeft")
            Core.<*> (o Core..:? "sheetId")
            Core.<*> (o Core..:? "sheetType")
            Core.<*> (o Core..:? "tabColor")
            Core.<*> (o Core..:? "tabColorStyle")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SheetProperties where
  toJSON SheetProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceSheetProperties" Core..=)
              Core.<$> dataSourceSheetProperties,
            ("gridProperties" Core..=) Core.<$> gridProperties,
            ("hidden" Core..=) Core.<$> hidden,
            ("index" Core..=) Core.<$> index,
            ("rightToLeft" Core..=) Core.<$> rightToLeft,
            ("sheetId" Core..=) Core.<$> sheetId,
            ("sheetType" Core..=) Core.<$> sheetType,
            ("tabColor" Core..=) Core.<$> tabColor,
            ("tabColorStyle" Core..=) Core.<$> tabColorStyle,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A slicer in a sheet.
--
-- /See:/ 'newSlicer' smart constructor.
data Slicer = Slicer
  { -- | The position of the slicer. Note that slicer can be positioned only on existing sheet. Also, width and height of slicer can be automatically adjusted to keep it within permitted limits.
    position :: (Core.Maybe EmbeddedObjectPosition),
    -- | The ID of the slicer.
    slicerId :: (Core.Maybe Core.Int32),
    -- | The specification of the slicer.
    spec :: (Core.Maybe SlicerSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Slicer' with the minimum fields required to make a request.
newSlicer ::
  Slicer
newSlicer =
  Slicer {position = Core.Nothing, slicerId = Core.Nothing, spec = Core.Nothing}

instance Core.FromJSON Slicer where
  parseJSON =
    Core.withObject
      "Slicer"
      ( \o ->
          Slicer
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "slicerId")
            Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON Slicer where
  toJSON Slicer {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("slicerId" Core..=) Core.<$> slicerId,
            ("spec" Core..=) Core.<$> spec
          ]
      )

-- | The specifications of a slicer.
--
-- /See:/ 'newSlicerSpec' smart constructor.
data SlicerSpec = SlicerSpec
  { -- | True if the filter should apply to pivot tables. If not set, default to @True@.
    applyToPivotTables :: (Core.Maybe Core.Bool),
    -- | The background color of the slicer.
    backgroundColor :: (Core.Maybe Color),
    -- | The background color of the slicer. If background_color is also set, this field takes precedence.
    backgroundColorStyle :: (Core.Maybe ColorStyle),
    -- | The column index in the data table on which the filter is applied to.
    columnIndex :: (Core.Maybe Core.Int32),
    -- | The data range of the slicer.
    dataRange :: (Core.Maybe GridRange),
    -- | The filtering criteria of the slicer.
    filterCriteria :: (Core.Maybe FilterCriteria),
    -- | The horizontal alignment of title in the slicer. If unspecified, defaults to @LEFT@
    horizontalAlignment :: (Core.Maybe SlicerSpec_HorizontalAlignment),
    -- | The text format of title in the slicer. The link field is not supported.
    textFormat :: (Core.Maybe TextFormat),
    -- | The title of the slicer.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlicerSpec' with the minimum fields required to make a request.
newSlicerSpec ::
  SlicerSpec
newSlicerSpec =
  SlicerSpec
    { applyToPivotTables = Core.Nothing,
      backgroundColor = Core.Nothing,
      backgroundColorStyle = Core.Nothing,
      columnIndex = Core.Nothing,
      dataRange = Core.Nothing,
      filterCriteria = Core.Nothing,
      horizontalAlignment = Core.Nothing,
      textFormat = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SlicerSpec where
  parseJSON =
    Core.withObject
      "SlicerSpec"
      ( \o ->
          SlicerSpec
            Core.<$> (o Core..:? "applyToPivotTables")
            Core.<*> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "backgroundColorStyle")
            Core.<*> (o Core..:? "columnIndex")
            Core.<*> (o Core..:? "dataRange")
            Core.<*> (o Core..:? "filterCriteria")
            Core.<*> (o Core..:? "horizontalAlignment")
            Core.<*> (o Core..:? "textFormat")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SlicerSpec where
  toJSON SlicerSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("applyToPivotTables" Core..=)
              Core.<$> applyToPivotTables,
            ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("backgroundColorStyle" Core..=)
              Core.<$> backgroundColorStyle,
            ("columnIndex" Core..=) Core.<$> columnIndex,
            ("dataRange" Core..=) Core.<$> dataRange,
            ("filterCriteria" Core..=) Core.<$> filterCriteria,
            ("horizontalAlignment" Core..=)
              Core.<$> horizontalAlignment,
            ("textFormat" Core..=) Core.<$> textFormat,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Sorts data in rows based on a sort order per column.
--
-- /See:/ 'newSortRangeRequest' smart constructor.
data SortRangeRequest = SortRangeRequest
  { -- | The range to sort.
    range :: (Core.Maybe GridRange),
    -- | The sort order per column. Later specifications are used when values are equal in the earlier specifications.
    sortSpecs :: (Core.Maybe [SortSpec])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SortRangeRequest' with the minimum fields required to make a request.
newSortRangeRequest ::
  SortRangeRequest
newSortRangeRequest =
  SortRangeRequest {range = Core.Nothing, sortSpecs = Core.Nothing}

instance Core.FromJSON SortRangeRequest where
  parseJSON =
    Core.withObject
      "SortRangeRequest"
      ( \o ->
          SortRangeRequest
            Core.<$> (o Core..:? "range")
            Core.<*> (o Core..:? "sortSpecs")
      )

instance Core.ToJSON SortRangeRequest where
  toJSON SortRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("range" Core..=) Core.<$> range,
            ("sortSpecs" Core..=) Core.<$> sortSpecs
          ]
      )

-- | A sort order associated with a specific column or row.
--
-- /See:/ 'newSortSpec' smart constructor.
data SortSpec = SortSpec
  { -- | The background fill color to sort by; cells with this fill color are sorted to the top. Mutually exclusive with foreground_color.
    backgroundColor :: (Core.Maybe Color),
    -- | The background fill color to sort by; cells with this fill color are sorted to the top. Mutually exclusive with foreground/color, and must be an RGB-type color. If background/color is also set, this field takes precedence.
    backgroundColorStyle :: (Core.Maybe ColorStyle),
    -- | Reference to a data source column.
    dataSourceColumnReference :: (Core.Maybe DataSourceColumnReference),
    -- | The dimension the sort should be applied to.
    dimensionIndex :: (Core.Maybe Core.Int32),
    -- | The foreground color to sort by; cells with this foreground color are sorted to the top. Mutually exclusive with background_color.
    foregroundColor :: (Core.Maybe Color),
    -- | The foreground color to sort by; cells with this foreground color are sorted to the top. Mutually exclusive with background/color, and must be an RGB-type color. If foreground/color is also set, this field takes precedence.
    foregroundColorStyle :: (Core.Maybe ColorStyle),
    -- | The order data should be sorted.
    sortOrder :: (Core.Maybe SortSpec_SortOrder)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SortSpec' with the minimum fields required to make a request.
newSortSpec ::
  SortSpec
newSortSpec =
  SortSpec
    { backgroundColor = Core.Nothing,
      backgroundColorStyle = Core.Nothing,
      dataSourceColumnReference = Core.Nothing,
      dimensionIndex = Core.Nothing,
      foregroundColor = Core.Nothing,
      foregroundColorStyle = Core.Nothing,
      sortOrder = Core.Nothing
    }

instance Core.FromJSON SortSpec where
  parseJSON =
    Core.withObject
      "SortSpec"
      ( \o ->
          SortSpec
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "backgroundColorStyle")
            Core.<*> (o Core..:? "dataSourceColumnReference")
            Core.<*> (o Core..:? "dimensionIndex")
            Core.<*> (o Core..:? "foregroundColor")
            Core.<*> (o Core..:? "foregroundColorStyle")
            Core.<*> (o Core..:? "sortOrder")
      )

instance Core.ToJSON SortSpec where
  toJSON SortSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=)
              Core.<$> backgroundColor,
            ("backgroundColorStyle" Core..=)
              Core.<$> backgroundColorStyle,
            ("dataSourceColumnReference" Core..=)
              Core.<$> dataSourceColumnReference,
            ("dimensionIndex" Core..=) Core.<$> dimensionIndex,
            ("foregroundColor" Core..=) Core.<$> foregroundColor,
            ("foregroundColorStyle" Core..=)
              Core.<$> foregroundColorStyle,
            ("sortOrder" Core..=) Core.<$> sortOrder
          ]
      )

-- | A combination of a source range and how to extend that source.
--
-- /See:/ 'newSourceAndDestination' smart constructor.
data SourceAndDestination = SourceAndDestination
  { -- | The dimension that data should be filled into.
    dimension :: (Core.Maybe SourceAndDestination_Dimension),
    -- | The number of rows or columns that data should be filled into. Positive numbers expand beyond the last row or last column of the source. Negative numbers expand before the first row or first column of the source.
    fillLength :: (Core.Maybe Core.Int32),
    -- | The location of the data to use as the source of the autofill.
    source :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceAndDestination' with the minimum fields required to make a request.
newSourceAndDestination ::
  SourceAndDestination
newSourceAndDestination =
  SourceAndDestination
    { dimension = Core.Nothing,
      fillLength = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON SourceAndDestination where
  parseJSON =
    Core.withObject
      "SourceAndDestination"
      ( \o ->
          SourceAndDestination
            Core.<$> (o Core..:? "dimension")
            Core.<*> (o Core..:? "fillLength")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON SourceAndDestination where
  toJSON SourceAndDestination {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimension" Core..=) Core.<$> dimension,
            ("fillLength" Core..=) Core.<$> fillLength,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | Resource that represents a spreadsheet.
--
-- /See:/ 'newSpreadsheet' smart constructor.
data Spreadsheet = Spreadsheet
  { -- | Output only. A list of data source refresh schedules.
    dataSourceSchedules :: (Core.Maybe [DataSourceRefreshSchedule]),
    -- | A list of external data sources connected with the spreadsheet.
    dataSources :: (Core.Maybe [DataSource]),
    -- | The developer metadata associated with a spreadsheet.
    developerMetadata :: (Core.Maybe [DeveloperMetadata]),
    -- | The named ranges defined in a spreadsheet.
    namedRanges :: (Core.Maybe [NamedRange]),
    -- | Overall properties of a spreadsheet.
    properties :: (Core.Maybe SpreadsheetProperties),
    -- | The sheets that are part of a spreadsheet.
    sheets :: (Core.Maybe [Sheet]),
    -- | The ID of the spreadsheet. This field is read-only.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The url of the spreadsheet. This field is read-only.
    spreadsheetUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Spreadsheet' with the minimum fields required to make a request.
newSpreadsheet ::
  Spreadsheet
newSpreadsheet =
  Spreadsheet
    { dataSourceSchedules = Core.Nothing,
      dataSources = Core.Nothing,
      developerMetadata = Core.Nothing,
      namedRanges = Core.Nothing,
      properties = Core.Nothing,
      sheets = Core.Nothing,
      spreadsheetId = Core.Nothing,
      spreadsheetUrl = Core.Nothing
    }

instance Core.FromJSON Spreadsheet where
  parseJSON =
    Core.withObject
      "Spreadsheet"
      ( \o ->
          Spreadsheet
            Core.<$> (o Core..:? "dataSourceSchedules")
            Core.<*> (o Core..:? "dataSources")
            Core.<*> (o Core..:? "developerMetadata")
            Core.<*> (o Core..:? "namedRanges")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "sheets")
            Core.<*> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "spreadsheetUrl")
      )

instance Core.ToJSON Spreadsheet where
  toJSON Spreadsheet {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceSchedules" Core..=)
              Core.<$> dataSourceSchedules,
            ("dataSources" Core..=) Core.<$> dataSources,
            ("developerMetadata" Core..=)
              Core.<$> developerMetadata,
            ("namedRanges" Core..=) Core.<$> namedRanges,
            ("properties" Core..=) Core.<$> properties,
            ("sheets" Core..=) Core.<$> sheets,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("spreadsheetUrl" Core..=) Core.<$> spreadsheetUrl
          ]
      )

-- | Properties of a spreadsheet.
--
-- /See:/ 'newSpreadsheetProperties' smart constructor.
data SpreadsheetProperties = SpreadsheetProperties
  { -- | The amount of time to wait before volatile functions are recalculated.
    autoRecalc :: (Core.Maybe SpreadsheetProperties_AutoRecalc),
    -- | The default format of all cells in the spreadsheet. CellData.effectiveFormat will not be set if the cell\'s format is equal to this default format. This field is read-only.
    defaultFormat :: (Core.Maybe CellFormat),
    -- | Determines whether and how circular references are resolved with iterative calculation. Absence of this field means that circular references result in calculation errors.
    iterativeCalculationSettings :: (Core.Maybe IterativeCalculationSettings),
    -- | The locale of the spreadsheet in one of the following formats: * an ISO 639-1 language code such as @en@ * an ISO 639-2 language code such as @fil@, if no 639-1 code exists * a combination of the ISO language code and country code, such as @en_US@ Note: when updating this field, not all locales\/languages are supported.
    locale :: (Core.Maybe Core.Text),
    -- | Theme applied to the spreadsheet.
    spreadsheetTheme :: (Core.Maybe SpreadsheetTheme),
    -- | The time zone of the spreadsheet, in CLDR format such as @America\/New_York@. If the time zone isn\'t recognized, this may be a custom time zone such as @GMT-07:00@.
    timeZone :: (Core.Maybe Core.Text),
    -- | The title of the spreadsheet.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpreadsheetProperties' with the minimum fields required to make a request.
newSpreadsheetProperties ::
  SpreadsheetProperties
newSpreadsheetProperties =
  SpreadsheetProperties
    { autoRecalc = Core.Nothing,
      defaultFormat = Core.Nothing,
      iterativeCalculationSettings = Core.Nothing,
      locale = Core.Nothing,
      spreadsheetTheme = Core.Nothing,
      timeZone = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SpreadsheetProperties where
  parseJSON =
    Core.withObject
      "SpreadsheetProperties"
      ( \o ->
          SpreadsheetProperties
            Core.<$> (o Core..:? "autoRecalc")
            Core.<*> (o Core..:? "defaultFormat")
            Core.<*> (o Core..:? "iterativeCalculationSettings")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "spreadsheetTheme")
            Core.<*> (o Core..:? "timeZone")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SpreadsheetProperties where
  toJSON SpreadsheetProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRecalc" Core..=) Core.<$> autoRecalc,
            ("defaultFormat" Core..=) Core.<$> defaultFormat,
            ("iterativeCalculationSettings" Core..=)
              Core.<$> iterativeCalculationSettings,
            ("locale" Core..=) Core.<$> locale,
            ("spreadsheetTheme" Core..=)
              Core.<$> spreadsheetTheme,
            ("timeZone" Core..=) Core.<$> timeZone,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Represents spreadsheet theme
--
-- /See:/ 'newSpreadsheetTheme' smart constructor.
data SpreadsheetTheme = SpreadsheetTheme
  { -- | Name of the primary font family.
    primaryFontFamily :: (Core.Maybe Core.Text),
    -- | The spreadsheet theme color pairs. To update you must provide all theme color pairs.
    themeColors :: (Core.Maybe [ThemeColorPair])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpreadsheetTheme' with the minimum fields required to make a request.
newSpreadsheetTheme ::
  SpreadsheetTheme
newSpreadsheetTheme =
  SpreadsheetTheme
    { primaryFontFamily = Core.Nothing,
      themeColors = Core.Nothing
    }

instance Core.FromJSON SpreadsheetTheme where
  parseJSON =
    Core.withObject
      "SpreadsheetTheme"
      ( \o ->
          SpreadsheetTheme
            Core.<$> (o Core..:? "primaryFontFamily")
            Core.<*> (o Core..:? "themeColors")
      )

instance Core.ToJSON SpreadsheetTheme where
  toJSON SpreadsheetTheme {..} =
    Core.object
      ( Core.catMaybes
          [ ("primaryFontFamily" Core..=)
              Core.<$> primaryFontFamily,
            ("themeColors" Core..=) Core.<$> themeColors
          ]
      )

-- | The format of a run of text in a cell. Absent values indicate that the field isn\'t specified.
--
-- /See:/ 'newTextFormat' smart constructor.
data TextFormat = TextFormat
  { -- | True if the text is bold.
    bold :: (Core.Maybe Core.Bool),
    -- | The font family.
    fontFamily :: (Core.Maybe Core.Text),
    -- | The size of the font.
    fontSize :: (Core.Maybe Core.Int32),
    -- | The foreground color of the text.
    foregroundColor :: (Core.Maybe Color),
    -- | The foreground color of the text. If foreground_color is also set, this field takes precedence.
    foregroundColorStyle :: (Core.Maybe ColorStyle),
    -- | True if the text is italicized.
    italic :: (Core.Maybe Core.Bool),
    -- | The link destination of the text, if any. Setting the link field in a TextFormatRun will clear the cell\'s existing links or a cell-level link set in the same request. When a link is set, the text foreground color will be set to the default link color and the text will be underlined. If these fields are modified in the same request, those values will be used instead of the link defaults.
    link :: (Core.Maybe Link),
    -- | True if the text has a strikethrough.
    strikethrough :: (Core.Maybe Core.Bool),
    -- | True if the text is underlined.
    underline :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextFormat' with the minimum fields required to make a request.
newTextFormat ::
  TextFormat
newTextFormat =
  TextFormat
    { bold = Core.Nothing,
      fontFamily = Core.Nothing,
      fontSize = Core.Nothing,
      foregroundColor = Core.Nothing,
      foregroundColorStyle = Core.Nothing,
      italic = Core.Nothing,
      link = Core.Nothing,
      strikethrough = Core.Nothing,
      underline = Core.Nothing
    }

instance Core.FromJSON TextFormat where
  parseJSON =
    Core.withObject
      "TextFormat"
      ( \o ->
          TextFormat
            Core.<$> (o Core..:? "bold")
            Core.<*> (o Core..:? "fontFamily")
            Core.<*> (o Core..:? "fontSize")
            Core.<*> (o Core..:? "foregroundColor")
            Core.<*> (o Core..:? "foregroundColorStyle")
            Core.<*> (o Core..:? "italic")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "strikethrough")
            Core.<*> (o Core..:? "underline")
      )

instance Core.ToJSON TextFormat where
  toJSON TextFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("bold" Core..=) Core.<$> bold,
            ("fontFamily" Core..=) Core.<$> fontFamily,
            ("fontSize" Core..=) Core.<$> fontSize,
            ("foregroundColor" Core..=) Core.<$> foregroundColor,
            ("foregroundColorStyle" Core..=)
              Core.<$> foregroundColorStyle,
            ("italic" Core..=) Core.<$> italic,
            ("link" Core..=) Core.<$> link,
            ("strikethrough" Core..=) Core.<$> strikethrough,
            ("underline" Core..=) Core.<$> underline
          ]
      )

-- | A run of a text format. The format of this run continues until the start index of the next run. When updating, all fields must be set.
--
-- /See:/ 'newTextFormatRun' smart constructor.
data TextFormatRun = TextFormatRun
  { -- | The format of this run. Absent values inherit the cell\'s format.
    format :: (Core.Maybe TextFormat),
    -- | The character index where this run starts.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextFormatRun' with the minimum fields required to make a request.
newTextFormatRun ::
  TextFormatRun
newTextFormatRun =
  TextFormatRun {format = Core.Nothing, startIndex = Core.Nothing}

instance Core.FromJSON TextFormatRun where
  parseJSON =
    Core.withObject
      "TextFormatRun"
      ( \o ->
          TextFormatRun
            Core.<$> (o Core..:? "format")
            Core.<*> (o Core..:? "startIndex")
      )

instance Core.ToJSON TextFormatRun where
  toJSON TextFormatRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("format" Core..=) Core.<$> format,
            ("startIndex" Core..=) Core.<$> startIndex
          ]
      )

-- | Position settings for text.
--
-- /See:/ 'newTextPosition' smart constructor.
newtype TextPosition = TextPosition
  { -- | Horizontal alignment setting for the piece of text.
    horizontalAlignment :: (Core.Maybe TextPosition_HorizontalAlignment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextPosition' with the minimum fields required to make a request.
newTextPosition ::
  TextPosition
newTextPosition = TextPosition {horizontalAlignment = Core.Nothing}

instance Core.FromJSON TextPosition where
  parseJSON =
    Core.withObject
      "TextPosition"
      ( \o ->
          TextPosition
            Core.<$> (o Core..:? "horizontalAlignment")
      )

instance Core.ToJSON TextPosition where
  toJSON TextPosition {..} =
    Core.object
      ( Core.catMaybes
          [ ("horizontalAlignment" Core..=)
              Core.<$> horizontalAlignment
          ]
      )

-- | The rotation applied to text in a cell.
--
-- /See:/ 'newTextRotation' smart constructor.
data TextRotation = TextRotation
  { -- | The angle between the standard orientation and the desired orientation. Measured in degrees. Valid values are between -90 and 90. Positive angles are angled upwards, negative are angled downwards. Note: For LTR text direction positive angles are in the counterclockwise direction, whereas for RTL they are in the clockwise direction
    angle :: (Core.Maybe Core.Int32),
    -- | If true, text reads top to bottom, but the orientation of individual characters is unchanged. For example: | V | | e | | r | | t | | i | | c | | a | | l |
    vertical :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextRotation' with the minimum fields required to make a request.
newTextRotation ::
  TextRotation
newTextRotation = TextRotation {angle = Core.Nothing, vertical = Core.Nothing}

instance Core.FromJSON TextRotation where
  parseJSON =
    Core.withObject
      "TextRotation"
      ( \o ->
          TextRotation
            Core.<$> (o Core..:? "angle")
            Core.<*> (o Core..:? "vertical")
      )

instance Core.ToJSON TextRotation where
  toJSON TextRotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("angle" Core..=) Core.<$> angle,
            ("vertical" Core..=) Core.<$> vertical
          ]
      )

-- | Splits a column of text into multiple columns, based on a delimiter in each cell.
--
-- /See:/ 'newTextToColumnsRequest' smart constructor.
data TextToColumnsRequest = TextToColumnsRequest
  { -- | The delimiter to use. Used only if delimiterType is CUSTOM.
    delimiter :: (Core.Maybe Core.Text),
    -- | The delimiter type to use.
    delimiterType :: (Core.Maybe TextToColumnsRequest_DelimiterType),
    -- | The source data range. This must span exactly one column.
    source :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextToColumnsRequest' with the minimum fields required to make a request.
newTextToColumnsRequest ::
  TextToColumnsRequest
newTextToColumnsRequest =
  TextToColumnsRequest
    { delimiter = Core.Nothing,
      delimiterType = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON TextToColumnsRequest where
  parseJSON =
    Core.withObject
      "TextToColumnsRequest"
      ( \o ->
          TextToColumnsRequest
            Core.<$> (o Core..:? "delimiter")
            Core.<*> (o Core..:? "delimiterType")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON TextToColumnsRequest where
  toJSON TextToColumnsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("delimiter" Core..=) Core.<$> delimiter,
            ("delimiterType" Core..=) Core.<$> delimiterType,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | A pair mapping a spreadsheet theme color type to the concrete color it represents.
--
-- /See:/ 'newThemeColorPair' smart constructor.
data ThemeColorPair = ThemeColorPair
  { -- | The concrete color corresponding to the theme color type.
    color :: (Core.Maybe ColorStyle),
    -- | The type of the spreadsheet theme color.
    colorType :: (Core.Maybe ThemeColorPair_ColorType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThemeColorPair' with the minimum fields required to make a request.
newThemeColorPair ::
  ThemeColorPair
newThemeColorPair =
  ThemeColorPair {color = Core.Nothing, colorType = Core.Nothing}

instance Core.FromJSON ThemeColorPair where
  parseJSON =
    Core.withObject
      "ThemeColorPair"
      ( \o ->
          ThemeColorPair
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorType")
      )

instance Core.ToJSON ThemeColorPair where
  toJSON ThemeColorPair {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorType" Core..=) Core.<$> colorType
          ]
      )

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | A color scale for a treemap chart.
--
-- /See:/ 'newTreemapChartColorScale' smart constructor.
data TreemapChartColorScale = TreemapChartColorScale
  { -- | The background color for cells with a color value greater than or equal to maxValue. Defaults to #109618 if not specified.
    maxValueColor :: (Core.Maybe Color),
    -- | The background color for cells with a color value greater than or equal to maxValue. Defaults to #109618 if not specified. If max/value/color is also set, this field takes precedence.
    maxValueColorStyle :: (Core.Maybe ColorStyle),
    -- | The background color for cells with a color value at the midpoint between minValue and maxValue. Defaults to #efe6dc if not specified.
    midValueColor :: (Core.Maybe Color),
    -- | The background color for cells with a color value at the midpoint between minValue and maxValue. Defaults to #efe6dc if not specified. If mid/value/color is also set, this field takes precedence.
    midValueColorStyle :: (Core.Maybe ColorStyle),
    -- | The background color for cells with a color value less than or equal to minValue. Defaults to #dc3912 if not specified.
    minValueColor :: (Core.Maybe Color),
    -- | The background color for cells with a color value less than or equal to minValue. Defaults to #dc3912 if not specified. If min/value/color is also set, this field takes precedence.
    minValueColorStyle :: (Core.Maybe ColorStyle),
    -- | The background color for cells that have no color data associated with them. Defaults to #000000 if not specified.
    noDataColor :: (Core.Maybe Color),
    -- | The background color for cells that have no color data associated with them. Defaults to #000000 if not specified. If no/data/color is also set, this field takes precedence.
    noDataColorStyle :: (Core.Maybe ColorStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TreemapChartColorScale' with the minimum fields required to make a request.
newTreemapChartColorScale ::
  TreemapChartColorScale
newTreemapChartColorScale =
  TreemapChartColorScale
    { maxValueColor = Core.Nothing,
      maxValueColorStyle = Core.Nothing,
      midValueColor = Core.Nothing,
      midValueColorStyle = Core.Nothing,
      minValueColor = Core.Nothing,
      minValueColorStyle = Core.Nothing,
      noDataColor = Core.Nothing,
      noDataColorStyle = Core.Nothing
    }

instance Core.FromJSON TreemapChartColorScale where
  parseJSON =
    Core.withObject
      "TreemapChartColorScale"
      ( \o ->
          TreemapChartColorScale
            Core.<$> (o Core..:? "maxValueColor")
            Core.<*> (o Core..:? "maxValueColorStyle")
            Core.<*> (o Core..:? "midValueColor")
            Core.<*> (o Core..:? "midValueColorStyle")
            Core.<*> (o Core..:? "minValueColor")
            Core.<*> (o Core..:? "minValueColorStyle")
            Core.<*> (o Core..:? "noDataColor")
            Core.<*> (o Core..:? "noDataColorStyle")
      )

instance Core.ToJSON TreemapChartColorScale where
  toJSON TreemapChartColorScale {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxValueColor" Core..=) Core.<$> maxValueColor,
            ("maxValueColorStyle" Core..=)
              Core.<$> maxValueColorStyle,
            ("midValueColor" Core..=) Core.<$> midValueColor,
            ("midValueColorStyle" Core..=)
              Core.<$> midValueColorStyle,
            ("minValueColor" Core..=) Core.<$> minValueColor,
            ("minValueColorStyle" Core..=)
              Core.<$> minValueColorStyle,
            ("noDataColor" Core..=) Core.<$> noDataColor,
            ("noDataColorStyle" Core..=)
              Core.<$> noDataColorStyle
          ]
      )

-- | A Treemap chart.
--
-- /See:/ 'newTreemapChartSpec' smart constructor.
data TreemapChartSpec = TreemapChartSpec
  { -- | The data that determines the background color of each treemap data cell. This field is optional. If not specified, size/data is used to determine background colors. If specified, the data is expected to be numeric. color/scale will determine how the values in this data map to data cell background colors.
    colorData :: (Core.Maybe ChartData),
    -- | The color scale for data cells in the treemap chart. Data cells are assigned colors based on their color values. These color values come from color/data, or from size/data if color/data is not specified. Cells with color values less than or equal to min/value will have minValueColor as their background color. Cells with color values greater than or equal to max/value will have maxValueColor as their background color. Cells with color values between min/value and max_value will have background colors on a gradient between minValueColor and maxValueColor, the midpoint of the gradient being midValueColor. Cells with missing or non-numeric color values will have noDataColor as their background color.
    colorScale :: (Core.Maybe TreemapChartColorScale),
    -- | The background color for header cells.
    headerColor :: (Core.Maybe Color),
    -- | The background color for header cells. If header_color is also set, this field takes precedence.
    headerColorStyle :: (Core.Maybe ColorStyle),
    -- | True to hide tooltips.
    hideTooltips :: (Core.Maybe Core.Bool),
    -- | The number of additional data levels beyond the labeled levels to be shown on the treemap chart. These levels are not interactive and are shown without their labels. Defaults to 0 if not specified.
    hintedLevels :: (Core.Maybe Core.Int32),
    -- | The data that contains the treemap cell labels.
    labels :: (Core.Maybe ChartData),
    -- | The number of data levels to show on the treemap chart. These levels are interactive and are shown with their labels. Defaults to 2 if not specified.
    levels :: (Core.Maybe Core.Int32),
    -- | The maximum possible data value. Cells with values greater than this will have the same color as cells with this value. If not specified, defaults to the actual maximum value from color/data, or the maximum value from size/data if color_data is not specified.
    maxValue :: (Core.Maybe Core.Double),
    -- | The minimum possible data value. Cells with values less than this will have the same color as cells with this value. If not specified, defaults to the actual minimum value from color/data, or the minimum value from size/data if color_data is not specified.
    minValue :: (Core.Maybe Core.Double),
    -- | The data the contains the treemap cells\' parent labels.
    parentLabels :: (Core.Maybe ChartData),
    -- | The data that determines the size of each treemap data cell. This data is expected to be numeric. The cells corresponding to non-numeric or missing data will not be rendered. If color_data is not specified, this data is used to determine data cell background colors as well.
    sizeData :: (Core.Maybe ChartData),
    -- | The text format for all labels on the chart. The link field is not supported.
    textFormat :: (Core.Maybe TextFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TreemapChartSpec' with the minimum fields required to make a request.
newTreemapChartSpec ::
  TreemapChartSpec
newTreemapChartSpec =
  TreemapChartSpec
    { colorData = Core.Nothing,
      colorScale = Core.Nothing,
      headerColor = Core.Nothing,
      headerColorStyle = Core.Nothing,
      hideTooltips = Core.Nothing,
      hintedLevels = Core.Nothing,
      labels = Core.Nothing,
      levels = Core.Nothing,
      maxValue = Core.Nothing,
      minValue = Core.Nothing,
      parentLabels = Core.Nothing,
      sizeData = Core.Nothing,
      textFormat = Core.Nothing
    }

instance Core.FromJSON TreemapChartSpec where
  parseJSON =
    Core.withObject
      "TreemapChartSpec"
      ( \o ->
          TreemapChartSpec
            Core.<$> (o Core..:? "colorData")
            Core.<*> (o Core..:? "colorScale")
            Core.<*> (o Core..:? "headerColor")
            Core.<*> (o Core..:? "headerColorStyle")
            Core.<*> (o Core..:? "hideTooltips")
            Core.<*> (o Core..:? "hintedLevels")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "levels")
            Core.<*> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
            Core.<*> (o Core..:? "parentLabels")
            Core.<*> (o Core..:? "sizeData")
            Core.<*> (o Core..:? "textFormat")
      )

instance Core.ToJSON TreemapChartSpec where
  toJSON TreemapChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("colorData" Core..=) Core.<$> colorData,
            ("colorScale" Core..=) Core.<$> colorScale,
            ("headerColor" Core..=) Core.<$> headerColor,
            ("headerColorStyle" Core..=)
              Core.<$> headerColorStyle,
            ("hideTooltips" Core..=) Core.<$> hideTooltips,
            ("hintedLevels" Core..=) Core.<$> hintedLevels,
            ("labels" Core..=) Core.<$> labels,
            ("levels" Core..=) Core.<$> levels,
            ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue,
            ("parentLabels" Core..=) Core.<$> parentLabels,
            ("sizeData" Core..=) Core.<$> sizeData,
            ("textFormat" Core..=) Core.<$> textFormat
          ]
      )

-- | Trims the whitespace (such as spaces, tabs, or new lines) in every cell in the specified range. This request removes all whitespace from the start and end of each cell\'s text, and reduces any subsequence of remaining whitespace characters to a single space. If the resulting trimmed text starts with a \'+\' or \'=\' character, the text remains as a string value and isn\'t interpreted as a formula.
--
-- /See:/ 'newTrimWhitespaceRequest' smart constructor.
newtype TrimWhitespaceRequest = TrimWhitespaceRequest
  { -- | The range whose cells to trim.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrimWhitespaceRequest' with the minimum fields required to make a request.
newTrimWhitespaceRequest ::
  TrimWhitespaceRequest
newTrimWhitespaceRequest = TrimWhitespaceRequest {range = Core.Nothing}

instance Core.FromJSON TrimWhitespaceRequest where
  parseJSON =
    Core.withObject
      "TrimWhitespaceRequest"
      ( \o ->
          TrimWhitespaceRequest Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON TrimWhitespaceRequest where
  toJSON TrimWhitespaceRequest {..} =
    Core.object
      (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | The result of trimming whitespace in cells.
--
-- /See:/ 'newTrimWhitespaceResponse' smart constructor.
newtype TrimWhitespaceResponse = TrimWhitespaceResponse
  { -- | The number of cells that were trimmed of whitespace.
    cellsChangedCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrimWhitespaceResponse' with the minimum fields required to make a request.
newTrimWhitespaceResponse ::
  TrimWhitespaceResponse
newTrimWhitespaceResponse =
  TrimWhitespaceResponse {cellsChangedCount = Core.Nothing}

instance Core.FromJSON TrimWhitespaceResponse where
  parseJSON =
    Core.withObject
      "TrimWhitespaceResponse"
      ( \o ->
          TrimWhitespaceResponse
            Core.<$> (o Core..:? "cellsChangedCount")
      )

instance Core.ToJSON TrimWhitespaceResponse where
  toJSON TrimWhitespaceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellsChangedCount" Core..=)
              Core.<$> cellsChangedCount
          ]
      )

-- | Unmerges cells in the given range.
--
-- /See:/ 'newUnmergeCellsRequest' smart constructor.
newtype UnmergeCellsRequest = UnmergeCellsRequest
  { -- | The range within which all cells should be unmerged. If the range spans multiple merges, all will be unmerged. The range must not partially span any merge.
    range :: (Core.Maybe GridRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnmergeCellsRequest' with the minimum fields required to make a request.
newUnmergeCellsRequest ::
  UnmergeCellsRequest
newUnmergeCellsRequest = UnmergeCellsRequest {range = Core.Nothing}

instance Core.FromJSON UnmergeCellsRequest where
  parseJSON =
    Core.withObject
      "UnmergeCellsRequest"
      ( \o ->
          UnmergeCellsRequest Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON UnmergeCellsRequest where
  toJSON UnmergeCellsRequest {..} =
    Core.object
      (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | Updates properties of the supplied banded range.
--
-- /See:/ 'newUpdateBandingRequest' smart constructor.
data UpdateBandingRequest = UpdateBandingRequest
  { -- | The banded range to update with the new properties.
    bandedRange :: (Core.Maybe BandedRange),
    -- | The fields that should be updated. At least one field must be specified. The root @bandedRange@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateBandingRequest' with the minimum fields required to make a request.
newUpdateBandingRequest ::
  UpdateBandingRequest
newUpdateBandingRequest =
  UpdateBandingRequest {bandedRange = Core.Nothing, fields = Core.Nothing}

instance Core.FromJSON UpdateBandingRequest where
  parseJSON =
    Core.withObject
      "UpdateBandingRequest"
      ( \o ->
          UpdateBandingRequest
            Core.<$> (o Core..:? "bandedRange")
            Core.<*> (o Core..:? "fields")
      )

instance Core.ToJSON UpdateBandingRequest where
  toJSON UpdateBandingRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bandedRange" Core..=) Core.<$> bandedRange,
            ("fields" Core..=) Core.<$> fields
          ]
      )

-- | Updates the borders of a range. If a field is not set in the request, that means the border remains as-is. For example, with two subsequent UpdateBordersRequest: 1. range: A1:A5 @{ top: RED, bottom: WHITE }@ 2. range: A1:A5 @{ left: BLUE }@ That would result in A1:A5 having a borders of @{ top: RED, bottom: WHITE, left: BLUE }@. If you want to clear a border, explicitly set the style to NONE.
--
-- /See:/ 'newUpdateBordersRequest' smart constructor.
data UpdateBordersRequest = UpdateBordersRequest
  { -- | The border to put at the bottom of the range.
    bottom :: (Core.Maybe Border),
    -- | The horizontal border to put within the range.
    innerHorizontal :: (Core.Maybe Border),
    -- | The vertical border to put within the range.
    innerVertical :: (Core.Maybe Border),
    -- | The border to put at the left of the range.
    left :: (Core.Maybe Border),
    -- | The range whose borders should be updated.
    range :: (Core.Maybe GridRange),
    -- | The border to put at the right of the range.
    right :: (Core.Maybe Border),
    -- | The border to put at the top of the range.
    top :: (Core.Maybe Border)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateBordersRequest' with the minimum fields required to make a request.
newUpdateBordersRequest ::
  UpdateBordersRequest
newUpdateBordersRequest =
  UpdateBordersRequest
    { bottom = Core.Nothing,
      innerHorizontal = Core.Nothing,
      innerVertical = Core.Nothing,
      left = Core.Nothing,
      range = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance Core.FromJSON UpdateBordersRequest where
  parseJSON =
    Core.withObject
      "UpdateBordersRequest"
      ( \o ->
          UpdateBordersRequest
            Core.<$> (o Core..:? "bottom")
            Core.<*> (o Core..:? "innerHorizontal")
            Core.<*> (o Core..:? "innerVertical")
            Core.<*> (o Core..:? "left")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "right")
            Core.<*> (o Core..:? "top")
      )

instance Core.ToJSON UpdateBordersRequest where
  toJSON UpdateBordersRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bottom" Core..=) Core.<$> bottom,
            ("innerHorizontal" Core..=) Core.<$> innerHorizontal,
            ("innerVertical" Core..=) Core.<$> innerVertical,
            ("left" Core..=) Core.<$> left,
            ("range" Core..=) Core.<$> range,
            ("right" Core..=) Core.<$> right,
            ("top" Core..=) Core.<$> top
          ]
      )

-- | Updates all cells in a range with new data.
--
-- /See:/ 'newUpdateCellsRequest' smart constructor.
data UpdateCellsRequest = UpdateCellsRequest
  { -- | The fields of CellData that should be updated. At least one field must be specified. The root is the CellData; \'row.values.\' should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The range to write data to. If the data in rows does not cover the entire requested range, the fields matching those set in fields will be cleared.
    range :: (Core.Maybe GridRange),
    -- | The data to write.
    rows :: (Core.Maybe [RowData]),
    -- | The coordinate to start writing data at. Any number of rows and columns (including a different number of columns per row) may be written.
    start :: (Core.Maybe GridCoordinate)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateCellsRequest' with the minimum fields required to make a request.
newUpdateCellsRequest ::
  UpdateCellsRequest
newUpdateCellsRequest =
  UpdateCellsRequest
    { fields = Core.Nothing,
      range = Core.Nothing,
      rows = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON UpdateCellsRequest where
  parseJSON =
    Core.withObject
      "UpdateCellsRequest"
      ( \o ->
          UpdateCellsRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON UpdateCellsRequest where
  toJSON UpdateCellsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("range" Core..=) Core.<$> range,
            ("rows" Core..=) Core.<$> rows,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | Updates a chart\'s specifications. (This does not move or resize a chart. To move or resize a chart, use UpdateEmbeddedObjectPositionRequest.)
--
-- /See:/ 'newUpdateChartSpecRequest' smart constructor.
data UpdateChartSpecRequest = UpdateChartSpecRequest
  { -- | The ID of the chart to update.
    chartId :: (Core.Maybe Core.Int32),
    -- | The specification to apply to the chart.
    spec :: (Core.Maybe ChartSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateChartSpecRequest' with the minimum fields required to make a request.
newUpdateChartSpecRequest ::
  UpdateChartSpecRequest
newUpdateChartSpecRequest =
  UpdateChartSpecRequest {chartId = Core.Nothing, spec = Core.Nothing}

instance Core.FromJSON UpdateChartSpecRequest where
  parseJSON =
    Core.withObject
      "UpdateChartSpecRequest"
      ( \o ->
          UpdateChartSpecRequest
            Core.<$> (o Core..:? "chartId") Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON UpdateChartSpecRequest where
  toJSON UpdateChartSpecRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartId" Core..=) Core.<$> chartId,
            ("spec" Core..=) Core.<$> spec
          ]
      )

-- | Updates a conditional format rule at the given index, or moves a conditional format rule to another index.
--
-- /See:/ 'newUpdateConditionalFormatRuleRequest' smart constructor.
data UpdateConditionalFormatRuleRequest = UpdateConditionalFormatRuleRequest
  { -- | The zero-based index of the rule that should be replaced or moved.
    index :: (Core.Maybe Core.Int32),
    -- | The zero-based new index the rule should end up at.
    newIndex' :: (Core.Maybe Core.Int32),
    -- | The rule that should replace the rule at the given index.
    rule :: (Core.Maybe ConditionalFormatRule),
    -- | The sheet of the rule to move. Required if new_index is set, unused otherwise.
    sheetId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateConditionalFormatRuleRequest' with the minimum fields required to make a request.
newUpdateConditionalFormatRuleRequest ::
  UpdateConditionalFormatRuleRequest
newUpdateConditionalFormatRuleRequest =
  UpdateConditionalFormatRuleRequest
    { index = Core.Nothing,
      newIndex' = Core.Nothing,
      rule = Core.Nothing,
      sheetId = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateConditionalFormatRuleRequest
  where
  parseJSON =
    Core.withObject
      "UpdateConditionalFormatRuleRequest"
      ( \o ->
          UpdateConditionalFormatRuleRequest
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "newIndex")
            Core.<*> (o Core..:? "rule")
            Core.<*> (o Core..:? "sheetId")
      )

instance
  Core.ToJSON
    UpdateConditionalFormatRuleRequest
  where
  toJSON UpdateConditionalFormatRuleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("newIndex" Core..=) Core.<$> newIndex',
            ("rule" Core..=) Core.<$> rule,
            ("sheetId" Core..=) Core.<$> sheetId
          ]
      )

-- | The result of updating a conditional format rule.
--
-- /See:/ 'newUpdateConditionalFormatRuleResponse' smart constructor.
data UpdateConditionalFormatRuleResponse = UpdateConditionalFormatRuleResponse
  { -- | The index of the new rule.
    newIndex' :: (Core.Maybe Core.Int32),
    -- | The new rule that replaced the old rule (if replacing), or the rule that was moved (if moved)
    newRule' :: (Core.Maybe ConditionalFormatRule),
    -- | The old index of the rule. Not set if a rule was replaced (because it is the same as new_index).
    oldIndex :: (Core.Maybe Core.Int32),
    -- | The old (deleted) rule. Not set if a rule was moved (because it is the same as new_rule).
    oldRule :: (Core.Maybe ConditionalFormatRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateConditionalFormatRuleResponse' with the minimum fields required to make a request.
newUpdateConditionalFormatRuleResponse ::
  UpdateConditionalFormatRuleResponse
newUpdateConditionalFormatRuleResponse =
  UpdateConditionalFormatRuleResponse
    { newIndex' = Core.Nothing,
      newRule' = Core.Nothing,
      oldIndex = Core.Nothing,
      oldRule = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateConditionalFormatRuleResponse
  where
  parseJSON =
    Core.withObject
      "UpdateConditionalFormatRuleResponse"
      ( \o ->
          UpdateConditionalFormatRuleResponse
            Core.<$> (o Core..:? "newIndex")
            Core.<*> (o Core..:? "newRule")
            Core.<*> (o Core..:? "oldIndex")
            Core.<*> (o Core..:? "oldRule")
      )

instance
  Core.ToJSON
    UpdateConditionalFormatRuleResponse
  where
  toJSON UpdateConditionalFormatRuleResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("newIndex" Core..=) Core.<$> newIndex',
            ("newRule" Core..=) Core.<$> newRule',
            ("oldIndex" Core..=) Core.<$> oldIndex,
            ("oldRule" Core..=) Core.<$> oldRule
          ]
      )

-- | Updates a data source. After the data source is updated successfully, an execution is triggered to refresh the associated DATA_SOURCE sheet to read data from the updated data source. The request requires an additional @bigquery.readonly@ OAuth scope.
--
-- /See:/ 'newUpdateDataSourceRequest' smart constructor.
data UpdateDataSourceRequest = UpdateDataSourceRequest
  { -- | The data source to update.
    dataSource :: (Core.Maybe DataSource),
    -- | The fields that should be updated. At least one field must be specified. The root @dataSource@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDataSourceRequest' with the minimum fields required to make a request.
newUpdateDataSourceRequest ::
  UpdateDataSourceRequest
newUpdateDataSourceRequest =
  UpdateDataSourceRequest {dataSource = Core.Nothing, fields = Core.Nothing}

instance Core.FromJSON UpdateDataSourceRequest where
  parseJSON =
    Core.withObject
      "UpdateDataSourceRequest"
      ( \o ->
          UpdateDataSourceRequest
            Core.<$> (o Core..:? "dataSource")
            Core.<*> (o Core..:? "fields")
      )

instance Core.ToJSON UpdateDataSourceRequest where
  toJSON UpdateDataSourceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSource" Core..=) Core.<$> dataSource,
            ("fields" Core..=) Core.<$> fields
          ]
      )

-- | The response from updating data source.
--
-- /See:/ 'newUpdateDataSourceResponse' smart constructor.
data UpdateDataSourceResponse = UpdateDataSourceResponse
  { -- | The data execution status.
    dataExecutionStatus :: (Core.Maybe DataExecutionStatus),
    -- | The updated data source.
    dataSource :: (Core.Maybe DataSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDataSourceResponse' with the minimum fields required to make a request.
newUpdateDataSourceResponse ::
  UpdateDataSourceResponse
newUpdateDataSourceResponse =
  UpdateDataSourceResponse
    { dataExecutionStatus = Core.Nothing,
      dataSource = Core.Nothing
    }

instance Core.FromJSON UpdateDataSourceResponse where
  parseJSON =
    Core.withObject
      "UpdateDataSourceResponse"
      ( \o ->
          UpdateDataSourceResponse
            Core.<$> (o Core..:? "dataExecutionStatus")
            Core.<*> (o Core..:? "dataSource")
      )

instance Core.ToJSON UpdateDataSourceResponse where
  toJSON UpdateDataSourceResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataExecutionStatus" Core..=)
              Core.<$> dataExecutionStatus,
            ("dataSource" Core..=) Core.<$> dataSource
          ]
      )

-- | A request to update properties of developer metadata. Updates the properties of the developer metadata selected by the filters to the values provided in the DeveloperMetadata resource. Callers must specify the properties they wish to update in the fields parameter, as well as specify at least one DataFilter matching the metadata they wish to update.
--
-- /See:/ 'newUpdateDeveloperMetadataRequest' smart constructor.
data UpdateDeveloperMetadataRequest = UpdateDeveloperMetadataRequest
  { -- | The filters matching the developer metadata entries to update.
    dataFilters :: (Core.Maybe [DataFilter]),
    -- | The value that all metadata matched by the data filters will be updated to.
    developerMetadata :: (Core.Maybe DeveloperMetadata),
    -- | The fields that should be updated. At least one field must be specified. The root @developerMetadata@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDeveloperMetadataRequest' with the minimum fields required to make a request.
newUpdateDeveloperMetadataRequest ::
  UpdateDeveloperMetadataRequest
newUpdateDeveloperMetadataRequest =
  UpdateDeveloperMetadataRequest
    { dataFilters = Core.Nothing,
      developerMetadata = Core.Nothing,
      fields = Core.Nothing
    }

instance Core.FromJSON UpdateDeveloperMetadataRequest where
  parseJSON =
    Core.withObject
      "UpdateDeveloperMetadataRequest"
      ( \o ->
          UpdateDeveloperMetadataRequest
            Core.<$> (o Core..:? "dataFilters")
            Core.<*> (o Core..:? "developerMetadata")
            Core.<*> (o Core..:? "fields")
      )

instance Core.ToJSON UpdateDeveloperMetadataRequest where
  toJSON UpdateDeveloperMetadataRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilters" Core..=) Core.<$> dataFilters,
            ("developerMetadata" Core..=)
              Core.<$> developerMetadata,
            ("fields" Core..=) Core.<$> fields
          ]
      )

-- | The response from updating developer metadata.
--
-- /See:/ 'newUpdateDeveloperMetadataResponse' smart constructor.
newtype UpdateDeveloperMetadataResponse = UpdateDeveloperMetadataResponse
  { -- | The updated developer metadata.
    developerMetadata :: (Core.Maybe [DeveloperMetadata])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDeveloperMetadataResponse' with the minimum fields required to make a request.
newUpdateDeveloperMetadataResponse ::
  UpdateDeveloperMetadataResponse
newUpdateDeveloperMetadataResponse =
  UpdateDeveloperMetadataResponse {developerMetadata = Core.Nothing}

instance
  Core.FromJSON
    UpdateDeveloperMetadataResponse
  where
  parseJSON =
    Core.withObject
      "UpdateDeveloperMetadataResponse"
      ( \o ->
          UpdateDeveloperMetadataResponse
            Core.<$> (o Core..:? "developerMetadata")
      )

instance Core.ToJSON UpdateDeveloperMetadataResponse where
  toJSON UpdateDeveloperMetadataResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerMetadata" Core..=)
              Core.<$> developerMetadata
          ]
      )

-- | Updates the state of the specified group.
--
-- /See:/ 'newUpdateDimensionGroupRequest' smart constructor.
data UpdateDimensionGroupRequest = UpdateDimensionGroupRequest
  { -- | The group whose state should be updated. The range and depth of the group should specify a valid group on the sheet, and all other fields updated.
    dimensionGroup :: (Core.Maybe DimensionGroup),
    -- | The fields that should be updated. At least one field must be specified. The root @dimensionGroup@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDimensionGroupRequest' with the minimum fields required to make a request.
newUpdateDimensionGroupRequest ::
  UpdateDimensionGroupRequest
newUpdateDimensionGroupRequest =
  UpdateDimensionGroupRequest
    { dimensionGroup = Core.Nothing,
      fields = Core.Nothing
    }

instance Core.FromJSON UpdateDimensionGroupRequest where
  parseJSON =
    Core.withObject
      "UpdateDimensionGroupRequest"
      ( \o ->
          UpdateDimensionGroupRequest
            Core.<$> (o Core..:? "dimensionGroup")
            Core.<*> (o Core..:? "fields")
      )

instance Core.ToJSON UpdateDimensionGroupRequest where
  toJSON UpdateDimensionGroupRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimensionGroup" Core..=) Core.<$> dimensionGroup,
            ("fields" Core..=) Core.<$> fields
          ]
      )

-- | Updates properties of dimensions within the specified range.
--
-- /See:/ 'newUpdateDimensionPropertiesRequest' smart constructor.
data UpdateDimensionPropertiesRequest = UpdateDimensionPropertiesRequest
  { -- | The columns on a data source sheet to update.
    dataSourceSheetRange :: (Core.Maybe DataSourceSheetDimensionRange),
    -- | The fields that should be updated. At least one field must be specified. The root @properties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | Properties to update.
    properties :: (Core.Maybe DimensionProperties),
    -- | The rows or columns to update.
    range :: (Core.Maybe DimensionRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDimensionPropertiesRequest' with the minimum fields required to make a request.
newUpdateDimensionPropertiesRequest ::
  UpdateDimensionPropertiesRequest
newUpdateDimensionPropertiesRequest =
  UpdateDimensionPropertiesRequest
    { dataSourceSheetRange = Core.Nothing,
      fields = Core.Nothing,
      properties = Core.Nothing,
      range = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateDimensionPropertiesRequest
  where
  parseJSON =
    Core.withObject
      "UpdateDimensionPropertiesRequest"
      ( \o ->
          UpdateDimensionPropertiesRequest
            Core.<$> (o Core..:? "dataSourceSheetRange")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON UpdateDimensionPropertiesRequest where
  toJSON UpdateDimensionPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceSheetRange" Core..=)
              Core.<$> dataSourceSheetRange,
            ("fields" Core..=) Core.<$> fields,
            ("properties" Core..=) Core.<$> properties,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Updates an embedded object\'s border property.
--
-- /See:/ 'newUpdateEmbeddedObjectBorderRequest' smart constructor.
data UpdateEmbeddedObjectBorderRequest = UpdateEmbeddedObjectBorderRequest
  { -- | The border that applies to the embedded object.
    border :: (Core.Maybe EmbeddedObjectBorder),
    -- | The fields that should be updated. At least one field must be specified. The root @border@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The ID of the embedded object to update.
    objectId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateEmbeddedObjectBorderRequest' with the minimum fields required to make a request.
newUpdateEmbeddedObjectBorderRequest ::
  UpdateEmbeddedObjectBorderRequest
newUpdateEmbeddedObjectBorderRequest =
  UpdateEmbeddedObjectBorderRequest
    { border = Core.Nothing,
      fields = Core.Nothing,
      objectId = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateEmbeddedObjectBorderRequest
  where
  parseJSON =
    Core.withObject
      "UpdateEmbeddedObjectBorderRequest"
      ( \o ->
          UpdateEmbeddedObjectBorderRequest
            Core.<$> (o Core..:? "border")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
      )

instance
  Core.ToJSON
    UpdateEmbeddedObjectBorderRequest
  where
  toJSON UpdateEmbeddedObjectBorderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("border" Core..=) Core.<$> border,
            ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | Update an embedded object\'s position (such as a moving or resizing a chart or image).
--
-- /See:/ 'newUpdateEmbeddedObjectPositionRequest' smart constructor.
data UpdateEmbeddedObjectPositionRequest = UpdateEmbeddedObjectPositionRequest
  { -- | The fields of OverlayPosition that should be updated when setting a new position. Used only if newPosition.overlayPosition is set, in which case at least one field must be specified. The root @newPosition.overlayPosition@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | An explicit position to move the embedded object to. If newPosition.sheetId is set, a new sheet with that ID will be created. If newPosition.newSheet is set to true, a new sheet will be created with an ID that will be chosen for you.
    newPosition' :: (Core.Maybe EmbeddedObjectPosition),
    -- | The ID of the object to moved.
    objectId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateEmbeddedObjectPositionRequest' with the minimum fields required to make a request.
newUpdateEmbeddedObjectPositionRequest ::
  UpdateEmbeddedObjectPositionRequest
newUpdateEmbeddedObjectPositionRequest =
  UpdateEmbeddedObjectPositionRequest
    { fields = Core.Nothing,
      newPosition' = Core.Nothing,
      objectId = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateEmbeddedObjectPositionRequest
  where
  parseJSON =
    Core.withObject
      "UpdateEmbeddedObjectPositionRequest"
      ( \o ->
          UpdateEmbeddedObjectPositionRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "newPosition")
            Core.<*> (o Core..:? "objectId")
      )

instance
  Core.ToJSON
    UpdateEmbeddedObjectPositionRequest
  where
  toJSON UpdateEmbeddedObjectPositionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("newPosition" Core..=) Core.<$> newPosition',
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | The result of updating an embedded object\'s position.
--
-- /See:/ 'newUpdateEmbeddedObjectPositionResponse' smart constructor.
newtype UpdateEmbeddedObjectPositionResponse = UpdateEmbeddedObjectPositionResponse
  { -- | The new position of the embedded object.
    position :: (Core.Maybe EmbeddedObjectPosition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateEmbeddedObjectPositionResponse' with the minimum fields required to make a request.
newUpdateEmbeddedObjectPositionResponse ::
  UpdateEmbeddedObjectPositionResponse
newUpdateEmbeddedObjectPositionResponse =
  UpdateEmbeddedObjectPositionResponse {position = Core.Nothing}

instance
  Core.FromJSON
    UpdateEmbeddedObjectPositionResponse
  where
  parseJSON =
    Core.withObject
      "UpdateEmbeddedObjectPositionResponse"
      ( \o ->
          UpdateEmbeddedObjectPositionResponse
            Core.<$> (o Core..:? "position")
      )

instance
  Core.ToJSON
    UpdateEmbeddedObjectPositionResponse
  where
  toJSON UpdateEmbeddedObjectPositionResponse {..} =
    Core.object
      ( Core.catMaybes
          [("position" Core..=) Core.<$> position]
      )

-- | Updates properties of the filter view.
--
-- /See:/ 'newUpdateFilterViewRequest' smart constructor.
data UpdateFilterViewRequest = UpdateFilterViewRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @filter@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The new properties of the filter view.
    filter :: (Core.Maybe FilterView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateFilterViewRequest' with the minimum fields required to make a request.
newUpdateFilterViewRequest ::
  UpdateFilterViewRequest
newUpdateFilterViewRequest =
  UpdateFilterViewRequest {fields = Core.Nothing, filter = Core.Nothing}

instance Core.FromJSON UpdateFilterViewRequest where
  parseJSON =
    Core.withObject
      "UpdateFilterViewRequest"
      ( \o ->
          UpdateFilterViewRequest
            Core.<$> (o Core..:? "fields") Core.<*> (o Core..:? "filter")
      )

instance Core.ToJSON UpdateFilterViewRequest where
  toJSON UpdateFilterViewRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("filter" Core..=) Core.<$> filter
          ]
      )

-- | Updates properties of the named range with the specified namedRangeId.
--
-- /See:/ 'newUpdateNamedRangeRequest' smart constructor.
data UpdateNamedRangeRequest = UpdateNamedRangeRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @namedRange@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The named range to update with the new properties.
    namedRange :: (Core.Maybe NamedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateNamedRangeRequest' with the minimum fields required to make a request.
newUpdateNamedRangeRequest ::
  UpdateNamedRangeRequest
newUpdateNamedRangeRequest =
  UpdateNamedRangeRequest {fields = Core.Nothing, namedRange = Core.Nothing}

instance Core.FromJSON UpdateNamedRangeRequest where
  parseJSON =
    Core.withObject
      "UpdateNamedRangeRequest"
      ( \o ->
          UpdateNamedRangeRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "namedRange")
      )

instance Core.ToJSON UpdateNamedRangeRequest where
  toJSON UpdateNamedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("namedRange" Core..=) Core.<$> namedRange
          ]
      )

-- | Updates an existing protected range with the specified protectedRangeId.
--
-- /See:/ 'newUpdateProtectedRangeRequest' smart constructor.
data UpdateProtectedRangeRequest = UpdateProtectedRangeRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @protectedRange@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The protected range to update with the new properties.
    protectedRange :: (Core.Maybe ProtectedRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateProtectedRangeRequest' with the minimum fields required to make a request.
newUpdateProtectedRangeRequest ::
  UpdateProtectedRangeRequest
newUpdateProtectedRangeRequest =
  UpdateProtectedRangeRequest
    { fields = Core.Nothing,
      protectedRange = Core.Nothing
    }

instance Core.FromJSON UpdateProtectedRangeRequest where
  parseJSON =
    Core.withObject
      "UpdateProtectedRangeRequest"
      ( \o ->
          UpdateProtectedRangeRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "protectedRange")
      )

instance Core.ToJSON UpdateProtectedRangeRequest where
  toJSON UpdateProtectedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("protectedRange" Core..=) Core.<$> protectedRange
          ]
      )

-- | Updates properties of the sheet with the specified sheetId.
--
-- /See:/ 'newUpdateSheetPropertiesRequest' smart constructor.
data UpdateSheetPropertiesRequest = UpdateSheetPropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @properties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The properties to update.
    properties :: (Core.Maybe SheetProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSheetPropertiesRequest' with the minimum fields required to make a request.
newUpdateSheetPropertiesRequest ::
  UpdateSheetPropertiesRequest
newUpdateSheetPropertiesRequest =
  UpdateSheetPropertiesRequest
    { fields = Core.Nothing,
      properties = Core.Nothing
    }

instance Core.FromJSON UpdateSheetPropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateSheetPropertiesRequest"
      ( \o ->
          UpdateSheetPropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "properties")
      )

instance Core.ToJSON UpdateSheetPropertiesRequest where
  toJSON UpdateSheetPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | Updates a slicer\'s specifications. (This does not move or resize a slicer. To move or resize a slicer use UpdateEmbeddedObjectPositionRequest.
--
-- /See:/ 'newUpdateSlicerSpecRequest' smart constructor.
data UpdateSlicerSpecRequest = UpdateSlicerSpecRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @SlicerSpec@ is implied and should not be specified. A single \"*\"\` can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The id of the slicer to update.
    slicerId :: (Core.Maybe Core.Int32),
    -- | The specification to apply to the slicer.
    spec :: (Core.Maybe SlicerSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSlicerSpecRequest' with the minimum fields required to make a request.
newUpdateSlicerSpecRequest ::
  UpdateSlicerSpecRequest
newUpdateSlicerSpecRequest =
  UpdateSlicerSpecRequest
    { fields = Core.Nothing,
      slicerId = Core.Nothing,
      spec = Core.Nothing
    }

instance Core.FromJSON UpdateSlicerSpecRequest where
  parseJSON =
    Core.withObject
      "UpdateSlicerSpecRequest"
      ( \o ->
          UpdateSlicerSpecRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "slicerId")
            Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON UpdateSlicerSpecRequest where
  toJSON UpdateSlicerSpecRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("slicerId" Core..=) Core.<$> slicerId,
            ("spec" Core..=) Core.<$> spec
          ]
      )

-- | Updates properties of a spreadsheet.
--
-- /See:/ 'newUpdateSpreadsheetPropertiesRequest' smart constructor.
data UpdateSpreadsheetPropertiesRequest = UpdateSpreadsheetPropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root \'properties\' is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The properties to update.
    properties :: (Core.Maybe SpreadsheetProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSpreadsheetPropertiesRequest' with the minimum fields required to make a request.
newUpdateSpreadsheetPropertiesRequest ::
  UpdateSpreadsheetPropertiesRequest
newUpdateSpreadsheetPropertiesRequest =
  UpdateSpreadsheetPropertiesRequest
    { fields = Core.Nothing,
      properties = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateSpreadsheetPropertiesRequest
  where
  parseJSON =
    Core.withObject
      "UpdateSpreadsheetPropertiesRequest"
      ( \o ->
          UpdateSpreadsheetPropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "properties")
      )

instance
  Core.ToJSON
    UpdateSpreadsheetPropertiesRequest
  where
  toJSON UpdateSpreadsheetPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("properties" Core..=) Core.<$> properties
          ]
      )

-- | The response when updating a range of values by a data filter in a spreadsheet.
--
-- /See:/ 'newUpdateValuesByDataFilterResponse' smart constructor.
data UpdateValuesByDataFilterResponse = UpdateValuesByDataFilterResponse
  { -- | The data filter that selected the range that was updated.
    dataFilter :: (Core.Maybe DataFilter),
    -- | The number of cells updated.
    updatedCells :: (Core.Maybe Core.Int32),
    -- | The number of columns where at least one cell in the column was updated.
    updatedColumns :: (Core.Maybe Core.Int32),
    -- | The values of the cells in the range matched by the dataFilter after all updates were applied. This is only included if the request\'s @includeValuesInResponse@ field was @true@.
    updatedData :: (Core.Maybe ValueRange),
    -- | The range (in </sheets/api/guides/concepts#cell A1 notation>) that updates were applied to.
    updatedRange :: (Core.Maybe Core.Text),
    -- | The number of rows where at least one cell in the row was updated.
    updatedRows :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateValuesByDataFilterResponse' with the minimum fields required to make a request.
newUpdateValuesByDataFilterResponse ::
  UpdateValuesByDataFilterResponse
newUpdateValuesByDataFilterResponse =
  UpdateValuesByDataFilterResponse
    { dataFilter = Core.Nothing,
      updatedCells = Core.Nothing,
      updatedColumns = Core.Nothing,
      updatedData = Core.Nothing,
      updatedRange = Core.Nothing,
      updatedRows = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateValuesByDataFilterResponse
  where
  parseJSON =
    Core.withObject
      "UpdateValuesByDataFilterResponse"
      ( \o ->
          UpdateValuesByDataFilterResponse
            Core.<$> (o Core..:? "dataFilter")
            Core.<*> (o Core..:? "updatedCells")
            Core.<*> (o Core..:? "updatedColumns")
            Core.<*> (o Core..:? "updatedData")
            Core.<*> (o Core..:? "updatedRange")
            Core.<*> (o Core..:? "updatedRows")
      )

instance Core.ToJSON UpdateValuesByDataFilterResponse where
  toJSON UpdateValuesByDataFilterResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataFilter" Core..=) Core.<$> dataFilter,
            ("updatedCells" Core..=) Core.<$> updatedCells,
            ("updatedColumns" Core..=) Core.<$> updatedColumns,
            ("updatedData" Core..=) Core.<$> updatedData,
            ("updatedRange" Core..=) Core.<$> updatedRange,
            ("updatedRows" Core..=) Core.<$> updatedRows
          ]
      )

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'newUpdateValuesResponse' smart constructor.
data UpdateValuesResponse = UpdateValuesResponse
  { -- | The spreadsheet the updates were applied to.
    spreadsheetId :: (Core.Maybe Core.Text),
    -- | The number of cells updated.
    updatedCells :: (Core.Maybe Core.Int32),
    -- | The number of columns where at least one cell in the column was updated.
    updatedColumns :: (Core.Maybe Core.Int32),
    -- | The values of the cells after updates were applied. This is only included if the request\'s @includeValuesInResponse@ field was @true@.
    updatedData :: (Core.Maybe ValueRange),
    -- | The range (in A1 notation) that updates were applied to.
    updatedRange :: (Core.Maybe Core.Text),
    -- | The number of rows where at least one cell in the row was updated.
    updatedRows :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateValuesResponse' with the minimum fields required to make a request.
newUpdateValuesResponse ::
  UpdateValuesResponse
newUpdateValuesResponse =
  UpdateValuesResponse
    { spreadsheetId = Core.Nothing,
      updatedCells = Core.Nothing,
      updatedColumns = Core.Nothing,
      updatedData = Core.Nothing,
      updatedRange = Core.Nothing,
      updatedRows = Core.Nothing
    }

instance Core.FromJSON UpdateValuesResponse where
  parseJSON =
    Core.withObject
      "UpdateValuesResponse"
      ( \o ->
          UpdateValuesResponse
            Core.<$> (o Core..:? "spreadsheetId")
            Core.<*> (o Core..:? "updatedCells")
            Core.<*> (o Core..:? "updatedColumns")
            Core.<*> (o Core..:? "updatedData")
            Core.<*> (o Core..:? "updatedRange")
            Core.<*> (o Core..:? "updatedRows")
      )

instance Core.ToJSON UpdateValuesResponse where
  toJSON UpdateValuesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("spreadsheetId" Core..=) Core.<$> spreadsheetId,
            ("updatedCells" Core..=) Core.<$> updatedCells,
            ("updatedColumns" Core..=) Core.<$> updatedColumns,
            ("updatedData" Core..=) Core.<$> updatedData,
            ("updatedRange" Core..=) Core.<$> updatedRange,
            ("updatedRows" Core..=) Core.<$> updatedRows
          ]
      )

-- | Data within a range of the spreadsheet.
--
-- /See:/ 'newValueRange' smart constructor.
data ValueRange = ValueRange
  { -- | The major dimension of the values. For output, if the spreadsheet data is: @A1=1,B1=2,A2=3,B2=4@, then requesting @range=A1:B2,majorDimension=ROWS@ will return @[[1,2],[3,4]]@, whereas requesting @range=A1:B2,majorDimension=COLUMNS@ will return @[[1,3],[2,4]]@. For input, with @range=A1:B2,majorDimension=ROWS@ then @[[1,2],[3,4]]@ will set @A1=1,B1=2,A2=3,B2=4@. With @range=A1:B2,majorDimension=COLUMNS@ then @[[1,2],[3,4]]@ will set @A1=1,B1=3,A2=2,B2=4@. When writing, if this field is not set, it defaults to ROWS.
    majorDimension :: (Core.Maybe ValueRange_MajorDimension),
    -- | The range the values cover, in </sheets/api/guides/concepts#cell A1 notation>. For output, this range indicates the entire requested range, even though the values will exclude trailing rows and columns. When appending values, this field represents the range to search for a table, after which values will be appended.
    range :: (Core.Maybe Core.Text),
    -- | The data that was read or to be written. This is an array of arrays, the outer array representing all the data and each inner array representing a major dimension. Each item in the inner array corresponds with one cell. For output, empty trailing rows and columns will not be included. For input, supported value types are: bool, string, and double. Null values will be skipped. To set a cell to an empty value, set the string value to an empty string.
    values :: (Core.Maybe [[Core.Value]])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValueRange' with the minimum fields required to make a request.
newValueRange ::
  ValueRange
newValueRange =
  ValueRange
    { majorDimension = Core.Nothing,
      range = Core.Nothing,
      values = Core.Nothing
    }

instance Core.FromJSON ValueRange where
  parseJSON =
    Core.withObject
      "ValueRange"
      ( \o ->
          ValueRange
            Core.<$> (o Core..:? "majorDimension")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON ValueRange where
  toJSON ValueRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("majorDimension" Core..=) Core.<$> majorDimension,
            ("range" Core..=) Core.<$> range,
            ("values" Core..=) Core.<$> values
          ]
      )

-- | Styles for a waterfall chart column.
--
-- /See:/ 'newWaterfallChartColumnStyle' smart constructor.
data WaterfallChartColumnStyle = WaterfallChartColumnStyle
  { -- | The color of the column.
    color :: (Core.Maybe Color),
    -- | The color of the column. If color is also set, this field takes precedence.
    colorStyle :: (Core.Maybe ColorStyle),
    -- | The label of the column\'s legend.
    label :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaterfallChartColumnStyle' with the minimum fields required to make a request.
newWaterfallChartColumnStyle ::
  WaterfallChartColumnStyle
newWaterfallChartColumnStyle =
  WaterfallChartColumnStyle
    { color = Core.Nothing,
      colorStyle = Core.Nothing,
      label = Core.Nothing
    }

instance Core.FromJSON WaterfallChartColumnStyle where
  parseJSON =
    Core.withObject
      "WaterfallChartColumnStyle"
      ( \o ->
          WaterfallChartColumnStyle
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "colorStyle")
            Core.<*> (o Core..:? "label")
      )

instance Core.ToJSON WaterfallChartColumnStyle where
  toJSON WaterfallChartColumnStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("colorStyle" Core..=) Core.<$> colorStyle,
            ("label" Core..=) Core.<$> label
          ]
      )

-- | A custom subtotal column for a waterfall chart series.
--
-- /See:/ 'newWaterfallChartCustomSubtotal' smart constructor.
data WaterfallChartCustomSubtotal = WaterfallChartCustomSubtotal
  { -- | True if the data point at subtotal_index is the subtotal. If false, the subtotal will be computed and appear after the data point.
    dataIsSubtotal :: (Core.Maybe Core.Bool),
    -- | A label for the subtotal column.
    label :: (Core.Maybe Core.Text),
    -- | The 0-based index of a data point within the series. If data/is/subtotal is true, the data point at this index is the subtotal. Otherwise, the subtotal appears after the data point with this index. A series can have multiple subtotals at arbitrary indices, but subtotals do not affect the indices of the data points. For example, if a series has three data points, their indices will always be 0, 1, and 2, regardless of how many subtotals exist on the series or what data points they are associated with.
    subtotalIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaterfallChartCustomSubtotal' with the minimum fields required to make a request.
newWaterfallChartCustomSubtotal ::
  WaterfallChartCustomSubtotal
newWaterfallChartCustomSubtotal =
  WaterfallChartCustomSubtotal
    { dataIsSubtotal = Core.Nothing,
      label = Core.Nothing,
      subtotalIndex = Core.Nothing
    }

instance Core.FromJSON WaterfallChartCustomSubtotal where
  parseJSON =
    Core.withObject
      "WaterfallChartCustomSubtotal"
      ( \o ->
          WaterfallChartCustomSubtotal
            Core.<$> (o Core..:? "dataIsSubtotal")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "subtotalIndex")
      )

instance Core.ToJSON WaterfallChartCustomSubtotal where
  toJSON WaterfallChartCustomSubtotal {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataIsSubtotal" Core..=) Core.<$> dataIsSubtotal,
            ("label" Core..=) Core.<$> label,
            ("subtotalIndex" Core..=) Core.<$> subtotalIndex
          ]
      )

-- | The domain of a waterfall chart.
--
-- /See:/ 'newWaterfallChartDomain' smart constructor.
data WaterfallChartDomain = WaterfallChartDomain
  { -- | The data of the WaterfallChartDomain.
    data' :: (Core.Maybe ChartData),
    -- | True to reverse the order of the domain values (horizontal axis).
    reversed :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaterfallChartDomain' with the minimum fields required to make a request.
newWaterfallChartDomain ::
  WaterfallChartDomain
newWaterfallChartDomain =
  WaterfallChartDomain {data' = Core.Nothing, reversed = Core.Nothing}

instance Core.FromJSON WaterfallChartDomain where
  parseJSON =
    Core.withObject
      "WaterfallChartDomain"
      ( \o ->
          WaterfallChartDomain
            Core.<$> (o Core..:? "data") Core.<*> (o Core..:? "reversed")
      )

instance Core.ToJSON WaterfallChartDomain where
  toJSON WaterfallChartDomain {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("reversed" Core..=) Core.<$> reversed
          ]
      )

-- | A single series of data for a waterfall chart.
--
-- /See:/ 'newWaterfallChartSeries' smart constructor.
data WaterfallChartSeries = WaterfallChartSeries
  { -- | Custom subtotal columns appearing in this series. The order in which subtotals are defined is not significant. Only one subtotal may be defined for each data point.
    customSubtotals :: (Core.Maybe [WaterfallChartCustomSubtotal]),
    -- | The data being visualized in this series.
    data' :: (Core.Maybe ChartData),
    -- | Information about the data labels for this series.
    dataLabel :: (Core.Maybe DataLabel),
    -- | True to hide the subtotal column from the end of the series. By default, a subtotal column will appear at the end of each series. Setting this field to true will hide that subtotal column for this series.
    hideTrailingSubtotal :: (Core.Maybe Core.Bool),
    -- | Styles for all columns in this series with negative values.
    negativeColumnsStyle :: (Core.Maybe WaterfallChartColumnStyle),
    -- | Styles for all columns in this series with positive values.
    positiveColumnsStyle :: (Core.Maybe WaterfallChartColumnStyle),
    -- | Styles for all subtotal columns in this series.
    subtotalColumnsStyle :: (Core.Maybe WaterfallChartColumnStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaterfallChartSeries' with the minimum fields required to make a request.
newWaterfallChartSeries ::
  WaterfallChartSeries
newWaterfallChartSeries =
  WaterfallChartSeries
    { customSubtotals = Core.Nothing,
      data' = Core.Nothing,
      dataLabel = Core.Nothing,
      hideTrailingSubtotal = Core.Nothing,
      negativeColumnsStyle = Core.Nothing,
      positiveColumnsStyle = Core.Nothing,
      subtotalColumnsStyle = Core.Nothing
    }

instance Core.FromJSON WaterfallChartSeries where
  parseJSON =
    Core.withObject
      "WaterfallChartSeries"
      ( \o ->
          WaterfallChartSeries
            Core.<$> (o Core..:? "customSubtotals")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "dataLabel")
            Core.<*> (o Core..:? "hideTrailingSubtotal")
            Core.<*> (o Core..:? "negativeColumnsStyle")
            Core.<*> (o Core..:? "positiveColumnsStyle")
            Core.<*> (o Core..:? "subtotalColumnsStyle")
      )

instance Core.ToJSON WaterfallChartSeries where
  toJSON WaterfallChartSeries {..} =
    Core.object
      ( Core.catMaybes
          [ ("customSubtotals" Core..=)
              Core.<$> customSubtotals,
            ("data" Core..=) Core.<$> data',
            ("dataLabel" Core..=) Core.<$> dataLabel,
            ("hideTrailingSubtotal" Core..=)
              Core.<$> hideTrailingSubtotal,
            ("negativeColumnsStyle" Core..=)
              Core.<$> negativeColumnsStyle,
            ("positiveColumnsStyle" Core..=)
              Core.<$> positiveColumnsStyle,
            ("subtotalColumnsStyle" Core..=)
              Core.<$> subtotalColumnsStyle
          ]
      )

-- | A waterfall chart.
--
-- /See:/ 'newWaterfallChartSpec' smart constructor.
data WaterfallChartSpec = WaterfallChartSpec
  { -- | The line style for the connector lines.
    connectorLineStyle :: (Core.Maybe LineStyle),
    -- | The domain data (horizontal axis) for the waterfall chart.
    domain :: (Core.Maybe WaterfallChartDomain),
    -- | True to interpret the first value as a total.
    firstValueIsTotal :: (Core.Maybe Core.Bool),
    -- | True to hide connector lines between columns.
    hideConnectorLines :: (Core.Maybe Core.Bool),
    -- | The data this waterfall chart is visualizing.
    series :: (Core.Maybe [WaterfallChartSeries]),
    -- | The stacked type.
    stackedType :: (Core.Maybe WaterfallChartSpec_StackedType),
    -- | Controls whether to display additional data labels on stacked charts which sum the total value of all stacked values at each value along the domain axis. stacked/type must be STACKED and neither CUSTOM nor placement can be set on the total/data_label.
    totalDataLabel :: (Core.Maybe DataLabel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WaterfallChartSpec' with the minimum fields required to make a request.
newWaterfallChartSpec ::
  WaterfallChartSpec
newWaterfallChartSpec =
  WaterfallChartSpec
    { connectorLineStyle = Core.Nothing,
      domain = Core.Nothing,
      firstValueIsTotal = Core.Nothing,
      hideConnectorLines = Core.Nothing,
      series = Core.Nothing,
      stackedType = Core.Nothing,
      totalDataLabel = Core.Nothing
    }

instance Core.FromJSON WaterfallChartSpec where
  parseJSON =
    Core.withObject
      "WaterfallChartSpec"
      ( \o ->
          WaterfallChartSpec
            Core.<$> (o Core..:? "connectorLineStyle")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "firstValueIsTotal")
            Core.<*> (o Core..:? "hideConnectorLines")
            Core.<*> (o Core..:? "series")
            Core.<*> (o Core..:? "stackedType")
            Core.<*> (o Core..:? "totalDataLabel")
      )

instance Core.ToJSON WaterfallChartSpec where
  toJSON WaterfallChartSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectorLineStyle" Core..=)
              Core.<$> connectorLineStyle,
            ("domain" Core..=) Core.<$> domain,
            ("firstValueIsTotal" Core..=)
              Core.<$> firstValueIsTotal,
            ("hideConnectorLines" Core..=)
              Core.<$> hideConnectorLines,
            ("series" Core..=) Core.<$> series,
            ("stackedType" Core..=) Core.<$> stackedType,
            ("totalDataLabel" Core..=) Core.<$> totalDataLabel
          ]
      )

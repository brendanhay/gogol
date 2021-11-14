{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Sheets
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads and writes Google Sheets.
--
-- /See:/ <https://developers.google.com/sheets/ Google Sheets API Reference>
module Network.Google.Sheets
    (
    -- * Service Configuration
      sheetsService

    -- * OAuth Scopes
    , spreadsheetsReadOnlyScope
    , driveReadOnlyScope
    , driveScope
    , driveFileScope
    , spreadsheetsScope

    -- * API Declaration
    , SheetsAPI

    -- * Resources

    -- ** sheets.spreadsheets.batchUpdate
    , module Network.Google.Resource.Sheets.Spreadsheets.BatchUpdate

    -- ** sheets.spreadsheets.create
    , module Network.Google.Resource.Sheets.Spreadsheets.Create

    -- ** sheets.spreadsheets.developerMetadata.get
    , module Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Get

    -- ** sheets.spreadsheets.developerMetadata.search
    , module Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Search

    -- ** sheets.spreadsheets.get
    , module Network.Google.Resource.Sheets.Spreadsheets.Get

    -- ** sheets.spreadsheets.getByDataFilter
    , module Network.Google.Resource.Sheets.Spreadsheets.GetByDataFilter

    -- ** sheets.spreadsheets.sheets.copyTo
    , module Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo

    -- ** sheets.spreadsheets.values.append
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Append

    -- ** sheets.spreadsheets.values.batchClear
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear

    -- ** sheets.spreadsheets.values.batchClearByDataFilter
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClearByDataFilter

    -- ** sheets.spreadsheets.values.batchGet
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet

    -- ** sheets.spreadsheets.values.batchGetByDataFilter
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGetByDataFilter

    -- ** sheets.spreadsheets.values.batchUpdate
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate

    -- ** sheets.spreadsheets.values.batchUpdateByDataFilter
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdateByDataFilter

    -- ** sheets.spreadsheets.values.clear
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Clear

    -- ** sheets.spreadsheets.values.get
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Get

    -- ** sheets.spreadsheets.values.update
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Update

    -- * Types

    -- ** SpreadsheetsValuesBatchGetMajorDimension
    , SpreadsheetsValuesBatchGetMajorDimension (..)

    -- ** DataSourceRefreshDailySchedule
    , DataSourceRefreshDailySchedule
    , dataSourceRefreshDailySchedule
    , dsrdsStartTime

    -- ** BasicChartSpecStackedType
    , BasicChartSpecStackedType (..)

    -- ** PivotGroupSortValueBucket
    , PivotGroupSortValueBucket
    , pivotGroupSortValueBucket
    , pgsvbBuckets
    , pgsvbValuesIndex

    -- ** ValueRange
    , ValueRange
    , valueRange
    , vrValues
    , vrRange
    , vrMajorDimension

    -- ** SortRangeRequest
    , SortRangeRequest
    , sortRangeRequest
    , srrSortSpecs
    , srrRange

    -- ** CopyPasteRequestPasteType
    , CopyPasteRequestPasteType (..)

    -- ** DeveloperMetadataLookupLocationMatchingStrategy
    , DeveloperMetadataLookupLocationMatchingStrategy (..)

    -- ** BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption
    , BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption (..)

    -- ** DeleteNamedRangeRequest
    , DeleteNamedRangeRequest
    , deleteNamedRangeRequest
    , dnrrNamedRangeId

    -- ** UpdateNamedRangeRequest
    , UpdateNamedRangeRequest
    , updateNamedRangeRequest
    , unrrNamedRange
    , unrrFields

    -- ** BasicChartAxisPosition
    , BasicChartAxisPosition (..)

    -- ** ChartData
    , ChartData
    , chartData
    , cdColumnReference
    , cdSourceRange
    , cdAggregateType
    , cdGroupRule

    -- ** ChartAxisViewWindowOptionsViewWindowMode
    , ChartAxisViewWindowOptionsViewWindowMode (..)

    -- ** BatchClearValuesRequest
    , BatchClearValuesRequest
    , batchClearValuesRequest
    , bcvrRanges

    -- ** CreateDeveloperMetadataResponse
    , CreateDeveloperMetadataResponse
    , createDeveloperMetadataResponse
    , cdmrDeveloperMetadata

    -- ** DateTimeRule
    , DateTimeRule
    , dateTimeRule
    , dtrType

    -- ** DeleteRangeRequestShiftDimension
    , DeleteRangeRequestShiftDimension (..)

    -- ** SpreadsheetsValuesBatchGetDateTimeRenderOption
    , SpreadsheetsValuesBatchGetDateTimeRenderOption (..)

    -- ** BasicChartSeriesTargetAxis
    , BasicChartSeriesTargetAxis (..)

    -- ** DataFilterValueRangeMajorDimension
    , DataFilterValueRangeMajorDimension (..)

    -- ** SpreadsheetProperties
    , SpreadsheetProperties
    , spreadsheetProperties
    , spSpreadsheetTheme
    , spDefaultFormat
    , spLocale
    , spIterativeCalculationSettings
    , spAutoRecalc
    , spTitle
    , spTimeZone

    -- ** BOrders
    , BOrders
    , bOrders
    , boBottom
    , boLeft
    , boRight
    , boTop

    -- ** BatchClearValuesByDataFilterRequest
    , BatchClearValuesByDataFilterRequest
    , batchClearValuesByDataFilterRequest
    , bcvbdfrDataFilters

    -- ** TextFormatRun
    , TextFormatRun
    , textFormatRun
    , tfrFormat
    , tfrStartIndex

    -- ** DeleteDimensionGroupRequest
    , DeleteDimensionGroupRequest
    , deleteDimensionGroupRequest
    , ddgrRange

    -- ** UpdateDimensionGroupRequest
    , UpdateDimensionGroupRequest
    , updateDimensionGroupRequest
    , udgrDimensionGroup
    , udgrFields

    -- ** BubbleChartSpecLegendPosition
    , BubbleChartSpecLegendPosition (..)

    -- ** AddSheetRequest
    , AddSheetRequest
    , addSheetRequest
    , asrProperties

    -- ** SortSpec
    , SortSpec
    , sortSpec
    , ssDataSourceColumnReference
    , ssBackgRoundColor
    , ssForegRoundColor
    , ssSortOrder
    , ssBackgRoundColorStyle
    , ssDimensionIndex
    , ssForegRoundColorStyle

    -- ** DimensionGroup
    , DimensionGroup
    , dimensionGroup
    , dgCollapsed
    , dgRange
    , dgDepth

    -- ** KeyValueFormat
    , KeyValueFormat
    , keyValueFormat
    , kvfTextFormat
    , kvfPosition

    -- ** BatchUpdateValuesRequestResponseDateTimeRenderOption
    , BatchUpdateValuesRequestResponseDateTimeRenderOption (..)

    -- ** CopyPasteRequest
    , CopyPasteRequest
    , copyPasteRequest
    , cprDestination
    , cprSource
    , cprPasteOrientation
    , cprPasteType

    -- ** GridRange
    , GridRange
    , gridRange
    , grEndColumnIndex
    , grStartColumnIndex
    , grEndRowIndex
    , grStartRowIndex
    , grSheetId

    -- ** AppendDimensionRequestDimension
    , AppendDimensionRequestDimension (..)

    -- ** SpreadsheetsValuesUpdateResponseDateTimeRenderOption
    , SpreadsheetsValuesUpdateResponseDateTimeRenderOption (..)

    -- ** AddFilterViewResponse
    , AddFilterViewResponse
    , addFilterViewResponse
    , afvrFilter

    -- ** DimensionRangeDimension
    , DimensionRangeDimension (..)

    -- ** UpdateDataSourceResponse
    , UpdateDataSourceResponse
    , updateDataSourceResponse
    , udsrDataExecutionStatus
    , udsrDataSource

    -- ** BooleanCondition
    , BooleanCondition
    , booleanCondition
    , bcValues
    , bcType

    -- ** AutoResizeDimensionsRequest
    , AutoResizeDimensionsRequest
    , autoResizeDimensionsRequest
    , ardrDimensions
    , ardrDataSourceSheetDimensions

    -- ** BubbleChartSpec
    , BubbleChartSpec
    , bubbleChartSpec
    , bcsBubbleTextStyle
    , bcsBubbleBOrderColor
    , bcsLegendPosition
    , bcsDomain
    , bcsSeries
    , bcsBubbleLabels
    , bcsGroupIds
    , bcsBubbleMinRadiusSize
    , bcsBubbleMaxRadiusSize
    , bcsBubbleOpacity
    , bcsBubbleSizes
    , bcsBubbleBOrderColorStyle

    -- ** DeleteRangeRequest
    , DeleteRangeRequest
    , deleteRangeRequest
    , drrShiftDimension
    , drrRange

    -- ** SpreadsheetTheme
    , SpreadsheetTheme
    , spreadsheetTheme
    , stThemeColors
    , stPrimaryFontFamily

    -- ** Sheet
    , Sheet
    , sheet
    , sColumnGroups
    , sData
    , sMerges
    , sRowGroups
    , sProtectedRanges
    , sBandedRanges
    , sCharts
    , sBasicFilter
    , sDeveloperMetadata
    , sConditionalFormats
    , sFilterViews
    , sSlicers
    , sProperties

    -- ** GridCoordinate
    , GridCoordinate
    , gridCoordinate
    , gcColumnIndex
    , gcRowIndex
    , gcSheetId

    -- ** ClearValuesResponse
    , ClearValuesResponse
    , clearValuesResponse
    , cvrClearedRange
    , cvrSpreadsheetId

    -- ** ClearBasicFilterRequest
    , ClearBasicFilterRequest
    , clearBasicFilterRequest
    , cbfrSheetId

    -- ** AddSlicerRequest
    , AddSlicerRequest
    , addSlicerRequest
    , asrSlicer

    -- ** ChartHistogramRule
    , ChartHistogramRule
    , chartHistogramRule
    , chrMaxValue
    , chrIntervalSize
    , chrMinValue

    -- ** BatchGetValuesByDataFilterRequestValueRenderOption
    , BatchGetValuesByDataFilterRequestValueRenderOption (..)

    -- ** UpdateEmbeddedObjectPositionRequest
    , UpdateEmbeddedObjectPositionRequest
    , updateEmbeddedObjectPositionRequest
    , ueoprNewPosition
    , ueoprObjectId
    , ueoprFields

    -- ** SourceAndDestinationDimension
    , SourceAndDestinationDimension (..)

    -- ** BooleanRule
    , BooleanRule
    , booleanRule
    , brFormat
    , brCondition

    -- ** SpreadsheetsValuesUpdateValueInputOption
    , SpreadsheetsValuesUpdateValueInputOption (..)

    -- ** CellFormatWrapStrategy
    , CellFormatWrapStrategy (..)

    -- ** DataSourceRefreshScheduleRefreshScope
    , DataSourceRefreshScheduleRefreshScope (..)

    -- ** SpreadsheetsValuesAppendResponseValueRenderOption
    , SpreadsheetsValuesAppendResponseValueRenderOption (..)

    -- ** Slicer
    , Slicer
    , slicer
    , sSlicerId
    , sSpec
    , sPosition

    -- ** BatchGetValuesByDataFilterResponse
    , BatchGetValuesByDataFilterResponse
    , batchGetValuesByDataFilterResponse
    , bgvbdfrSpreadsheetId
    , bgvbdfrValueRanges

    -- ** SourceAndDestination
    , SourceAndDestination
    , sourceAndDestination
    , sadDimension
    , sadSource
    , sadFillLength

    -- ** PasteDataRequest
    , PasteDataRequest
    , pasteDataRequest
    , pdrData
    , pdrCoordinate
    , pdrHTML
    , pdrType
    , pdrDelimiter

    -- ** BatchUpdateValuesRequestValueInputOption
    , BatchUpdateValuesRequestValueInputOption (..)

    -- ** AppendCellsRequest
    , AppendCellsRequest
    , appendCellsRequest
    , acrRows
    , acrSheetId
    , acrFields

    -- ** FindReplaceResponse
    , FindReplaceResponse
    , findReplaceResponse
    , frrValuesChanged
    , frrFormulasChanged
    , frrRowsChanged
    , frrSheetsChanged
    , frrOccurrencesChanged

    -- ** AddDimensionGroupResponse
    , AddDimensionGroupResponse
    , addDimensionGroupResponse
    , adgrDimensionGroups

    -- ** PieChartSpec
    , PieChartSpec
    , pieChartSpec
    , pcsPieHole
    , pcsLegendPosition
    , pcsDomain
    , pcsSeries
    , pcsThreeDimensional

    -- ** SpreadsheetsValuesUpdateResponseValueRenderOption
    , SpreadsheetsValuesUpdateResponseValueRenderOption (..)

    -- ** BatchUpdateValuesByDataFilterResponse
    , BatchUpdateValuesByDataFilterResponse
    , batchUpdateValuesByDataFilterResponse
    , buvbdfrTotalUpdatedColumns
    , buvbdfrResponses
    , buvbdfrSpreadsheetId
    , buvbdfrTotalUpdatedSheets
    , buvbdfrTotalUpdatedCells
    , buvbdfrTotalUpdatedRows

    -- ** TextPositionHorizontalAlignment
    , TextPositionHorizontalAlignment (..)

    -- ** AppendValuesResponse
    , AppendValuesResponse
    , appendValuesResponse
    , avrSpreadsheetId
    , avrUpdates
    , avrTableRange

    -- ** DeveloperMetadataVisibility
    , DeveloperMetadataVisibility (..)

    -- ** BatchUpdateValuesRequestResponseValueRenderOption
    , BatchUpdateValuesRequestResponseValueRenderOption (..)

    -- ** DataValidationRule
    , DataValidationRule
    , dataValidationRule
    , dvrShowCustomUi
    , dvrInputMessage
    , dvrStrict
    , dvrCondition

    -- ** FilterView
    , FilterView
    , filterView
    , fvSortSpecs
    , fvNamedRangeId
    , fvRange
    , fvFilterViewId
    , fvTitle
    , fvCriteria
    , fvFilterSpecs

    -- ** DataSourceRefreshSchedule
    , DataSourceRefreshSchedule
    , dataSourceRefreshSchedule
    , dsrsDailySchedule
    , dsrsRefreshScope
    , dsrsEnabled
    , dsrsMonthlySchedule
    , dsrsNextRun
    , dsrsWeeklySchedule

    -- ** Color
    , Color
    , color
    , cRed
    , cAlpha
    , cGreen
    , cBlue

    -- ** AddDataSourceRequest
    , AddDataSourceRequest
    , addDataSourceRequest
    , adsrDataSource

    -- ** SpreadsheetsValuesBatchGetValueRenderOption
    , SpreadsheetsValuesBatchGetValueRenderOption (..)

    -- ** DeleteFilterViewRequest
    , DeleteFilterViewRequest
    , deleteFilterViewRequest
    , dfvrFilterId

    -- ** UpdateFilterViewRequest
    , UpdateFilterViewRequest
    , updateFilterViewRequest
    , ufvrFilter
    , ufvrFields

    -- ** BasicChartSeries
    , BasicChartSeries
    , basicChartSeries
    , bTargetAxis
    , bColor
    , bSeries
    , bColorStyle
    , bStyleOverrides
    , bType
    , bPointStyle
    , bDataLabel
    , bLineStyle

    -- ** FilterSpec
    , FilterSpec
    , filterSpec
    , fsDataSourceColumnReference
    , fsColumnIndex
    , fsFilterCriteria

    -- ** PivotGroupRule
    , PivotGroupRule
    , pivotGroupRule
    , pgrDateTimeRule
    , pgrManualRule
    , pgrHistogramRule

    -- ** AddProtectedRangeRequest
    , AddProtectedRangeRequest
    , addProtectedRangeRequest
    , aprrProtectedRange

    -- ** PieChartSpecLegendPosition
    , PieChartSpecLegendPosition (..)

    -- ** RepeatCellRequest
    , RepeatCellRequest
    , repeatCellRequest
    , rcrCell
    , rcrRange
    , rcrFields

    -- ** ConditionValue
    , ConditionValue
    , conditionValue
    , cvRelativeDate
    , cvUserEnteredValue

    -- ** DeleteDimensionRequest
    , DeleteDimensionRequest
    , deleteDimensionRequest
    , ddrRange

    -- ** ClearValuesRequest
    , ClearValuesRequest
    , clearValuesRequest

    -- ** FindReplaceRequest
    , FindReplaceRequest
    , findReplaceRequest
    , frrMatchCase
    , frrAllSheets
    , frrIncludeFormulas
    , frrMatchEntireCell
    , frrRange
    , frrSheetId
    , frrFind
    , frrSearchByRegex
    , frrReplacement

    -- ** DataSourceRefreshMonthlySchedule
    , DataSourceRefreshMonthlySchedule
    , dataSourceRefreshMonthlySchedule
    , dsrmsStartTime
    , dsrmsDaysOfMonth

    -- ** MoveDimensionRequest
    , MoveDimensionRequest
    , moveDimensionRequest
    , mdrDestinationIndex
    , mdrSource

    -- ** BatchGetValuesByDataFilterRequest
    , BatchGetValuesByDataFilterRequest
    , batchGetValuesByDataFilterRequest
    , bgvbdfrValueRenderOption
    , bgvbdfrDataFilters
    , bgvbdfrDateTimeRenderOption
    , bgvbdfrMajorDimension

    -- ** CellFormatVerticalAlignment
    , CellFormatVerticalAlignment (..)

    -- ** NumberFormatType
    , NumberFormatType (..)

    -- ** DataSourceSpec
    , DataSourceSpec
    , dataSourceSpec
    , dssParameters
    , dssBigQuery

    -- ** Link
    , Link
    , link
    , lURI

    -- ** DataSourceColumnReference
    , DataSourceColumnReference
    , dataSourceColumnReference
    , dscrName

    -- ** GradientRule
    , GradientRule
    , gradientRule
    , grMidpoint
    , grMaxpoint
    , grMinpoint

    -- ** DataSourceObjectReferences
    , DataSourceObjectReferences
    , dataSourceObjectReferences
    , dsorReferences

    -- ** CutPasteRequest
    , CutPasteRequest
    , cutPasteRequest
    , cDestination
    , cSource
    , cPasteType

    -- ** UpdateEmbeddedObjectPositionResponse
    , UpdateEmbeddedObjectPositionResponse
    , updateEmbeddedObjectPositionResponse
    , ueoprPosition

    -- ** ConditionValueRelativeDate
    , ConditionValueRelativeDate (..)

    -- ** AddSlicerResponse
    , AddSlicerResponse
    , addSlicerResponse
    , aSlicer

    -- ** ThemeColorPairColorType
    , ThemeColorPairColorType (..)

    -- ** WaterfallChartCustomSubtotal
    , WaterfallChartCustomSubtotal
    , waterfallChartCustomSubtotal
    , wccsDataIsSubtotal
    , wccsSubtotalIndex
    , wccsLabel

    -- ** DeveloperMetadataLocationLocationType
    , DeveloperMetadataLocationLocationType (..)

    -- ** Response
    , Response
    , response
    , rAddFilterView
    , rUpdateDataSource
    , rCreateDeveloperMetadata
    , rDuplicateFilterView
    , rAddSlicer
    , rUpdateEmbeddedObjectPosition
    , rDeleteDimensionGroup
    , rAddSheet
    , rFindReplace
    , rAddProtectedRange
    , rAddDataSource
    , rDeleteConditionalFormatRule
    , rUpdateConditionalFormatRule
    , rDeleteDeveloperMetadata
    , rUpdateDeveloperMetadata
    , rAddNamedRange
    , rAddChart
    , rDeleteDuplicates
    , rAddBanding
    , rDuplicateSheet
    , rRefreshDataSource
    , rAddDimensionGroup
    , rTrimWhitespace

    -- ** ChartDateTimeRule
    , ChartDateTimeRule
    , chartDateTimeRule
    , cdtrType

    -- ** FilterCriteria
    , FilterCriteria
    , filterCriteria
    , fcVisibleForegRoundColorStyle
    , fcVisibleBackgRoundColorStyle
    , fcVisibleForegRoundColor
    , fcHiddenValues
    , fcVisibleBackgRoundColor
    , fcCondition

    -- ** DataSourceObjectReference
    , DataSourceObjectReference
    , dataSourceObjectReference
    , dsorDataSourceFormulaCell
    , dsorDataSourceTableAnchorCell
    , dsorSheetId
    , dsorDataSourcePivotTableAnchorCell
    , dsorChartId

    -- ** BaselineValueFormat
    , BaselineValueFormat
    , baselineValueFormat
    , bvfNegativeColor
    , bvfPositiveColorStyle
    , bvfPositiveColor
    , bvfTextFormat
    , bvfDescription
    , bvfComparisonType
    , bvfPosition
    , bvfNegativeColorStyle

    -- ** DataExecutionStatusErrorCode
    , DataExecutionStatusErrorCode (..)

    -- ** DataSourceRefreshWeeklyScheduleDaysOfWeekItem
    , DataSourceRefreshWeeklyScheduleDaysOfWeekItem (..)

    -- ** ErrorValue
    , ErrorValue
    , errorValue
    , evType
    , evMessage

    -- ** RefreshDataSourceObjectExecutionStatus
    , RefreshDataSourceObjectExecutionStatus
    , refreshDataSourceObjectExecutionStatus
    , rdsoesReference
    , rdsoesDataExecutionStatus

    -- ** UpdateConditionalFormatRuleRequest
    , UpdateConditionalFormatRuleRequest
    , updateConditionalFormatRuleRequest
    , ucfrrRule
    , ucfrrNewIndex
    , ucfrrSheetId
    , ucfrrIndex

    -- ** DeleteConditionalFormatRuleRequest
    , DeleteConditionalFormatRuleRequest
    , deleteConditionalFormatRuleRequest
    , dcfrrSheetId
    , dcfrrIndex

    -- ** DataSourceTable
    , DataSourceTable
    , dataSourceTable
    , dstSortSpecs
    , dstRowLimit
    , dstDataSourceId
    , dstDataExecutionStatus
    , dstColumns
    , dstFilterSpecs
    , dstColumnSelectionType

    -- ** UpdateDeveloperMetadataRequest
    , UpdateDeveloperMetadataRequest
    , updateDeveloperMetadataRequest
    , udmrDataFilters
    , udmrDeveloperMetadata
    , udmrFields

    -- ** SortSpecSortOrder
    , SortSpecSortOrder (..)

    -- ** DeleteDeveloperMetadataRequest
    , DeleteDeveloperMetadataRequest
    , deleteDeveloperMetadataRequest
    , ddmrDataFilter

    -- ** WaterfallChartSpec
    , WaterfallChartSpec
    , waterfallChartSpec
    , wcsStackedType
    , wcsConnectorLineStyle
    , wcsDomain
    , wcsSeries
    , wcsHideConnectorLines
    , wcsTotalDataLabel
    , wcsFirstValueIsTotal

    -- ** OverlayPosition
    , OverlayPosition
    , overlayPosition
    , opHeightPixels
    , opOffSetYPixels
    , opAnchorCell
    , opWidthPixels
    , opOffSetXPixels

    -- ** DeleteEmbeddedObjectRequest
    , DeleteEmbeddedObjectRequest
    , deleteEmbeddedObjectRequest
    , deorObjectId

    -- ** DeveloperMetadataLocation
    , DeveloperMetadataLocation
    , developerMetadataLocation
    , dmlSpreadsheet
    , dmlDimensionRange
    , dmlSheetId
    , dmlLocationType

    -- ** SheetProperties
    , SheetProperties
    , sheetProperties
    , sTabColor
    , sTabColorStyle
    , sGridProperties
    , sSheetType
    , sHidden
    , sSheetId
    , sTitle
    , sRightToLeft
    , sDataSourceSheetProperties
    , sIndex

    -- ** FilterViewCriteria
    , FilterViewCriteria
    , filterViewCriteria
    , fvcAddtional

    -- ** SlicerSpecHorizontalAlignment
    , SlicerSpecHorizontalAlignment (..)

    -- ** BatchUpdateValuesResponse
    , BatchUpdateValuesResponse
    , batchUpdateValuesResponse
    , buvrTotalUpdatedColumns
    , buvrResponses
    , buvrSpreadsheetId
    , buvrTotalUpdatedSheets
    , buvrTotalUpdatedCells
    , buvrTotalUpdatedRows

    -- ** UpdateSheetPropertiesRequest
    , UpdateSheetPropertiesRequest
    , updateSheetPropertiesRequest
    , usprFields
    , usprProperties

    -- ** Spreadsheet
    , Spreadsheet
    , spreadsheet
    , sprSheets
    , sprNamedRanges
    , sprSpreadsheetId
    , sprDataSourceSchedules
    , sprDataSources
    , sprSpreadsheetURL
    , sprDeveloperMetadata
    , sprProperties

    -- ** CandlestickChartSpec
    , CandlestickChartSpec
    , candlestickChartSpec
    , ccsData
    , ccsDomain

    -- ** ThemeColorPair
    , ThemeColorPair
    , themeColorPair
    , tcpColor
    , tcpColorType

    -- ** ColorStyleThemeColor
    , ColorStyleThemeColor (..)

    -- ** InsertDimensionRequest
    , InsertDimensionRequest
    , insertDimensionRequest
    , idrRange
    , idrInheritFromBefore

    -- ** SearchDeveloperMetadataResponse
    , SearchDeveloperMetadataResponse
    , searchDeveloperMetadataResponse
    , sdmrMatchedDeveloperMetadata

    -- ** PivotValueSummarizeFunction
    , PivotValueSummarizeFunction (..)

    -- ** InterpolationPoint
    , InterpolationPoint
    , interpolationPoint
    , ipColor
    , ipValue
    , ipColorStyle
    , ipType

    -- ** DeleteDuplicatesResponse
    , DeleteDuplicatesResponse
    , deleteDuplicatesResponse
    , ddrDuplicatesRemovedCount

    -- ** OrgChartSpecNodeSize
    , OrgChartSpecNodeSize (..)

    -- ** CellData
    , CellData
    , cellData
    , cdTextFormatRuns
    , cdNote
    , cdUserEnteredValue
    , cdUserEnteredFormat
    , cdDataSourceTable
    , cdEffectiveFormat
    , cdPivotTable
    , cdFormattedValue
    , cdDataValidation
    , cdDataSourceFormula
    , cdHyperlink
    , cdEffectiveValue

    -- ** BatchUpdateValuesByDataFilterRequestResponseValueRenderOption
    , BatchUpdateValuesByDataFilterRequestResponseValueRenderOption (..)

    -- ** ChartSourceRange
    , ChartSourceRange
    , chartSourceRange
    , csrSources

    -- ** AddNamedRangeResponse
    , AddNamedRangeResponse
    , addNamedRangeResponse
    , anrrNamedRange

    -- ** WaterfallChartDomain
    , WaterfallChartDomain
    , waterfallChartDomain
    , wcdReversed
    , wcdData

    -- ** ChartAxisViewWindowOptions
    , ChartAxisViewWindowOptions
    , chartAxisViewWindowOptions
    , cavwoViewWindowMax
    , cavwoViewWindowMode
    , cavwoViewWindowMin

    -- ** DataExecutionStatus
    , DataExecutionStatus
    , dataExecutionStatus
    , desState
    , desLastRefreshTime
    , desErrorCode
    , desErrorMessage

    -- ** PivotGroupLimit
    , PivotGroupLimit
    , pivotGroupLimit
    , pglApplyOrder
    , pglCountLimit

    -- ** DataLabelType
    , DataLabelType (..)

    -- ** AddChartResponse
    , AddChartResponse
    , addChartResponse
    , acrChart

    -- ** BigQueryQuerySpec
    , BigQueryQuerySpec
    , bigQueryQuerySpec
    , bqqsRawQuery

    -- ** UpdateChartSpecRequest
    , UpdateChartSpecRequest
    , updateChartSpecRequest
    , ucsrSpec
    , ucsrChartId

    -- ** SetBasicFilterRequest
    , SetBasicFilterRequest
    , setBasicFilterRequest
    , sbfrFilter

    -- ** IterativeCalculationSettings
    , IterativeCalculationSettings
    , iterativeCalculationSettings
    , icsMaxIterations
    , icsConvergenceThreshold

    -- ** RefreshDataSourceRequest
    , RefreshDataSourceRequest
    , refreshDataSourceRequest
    , rdsrForce
    , rdsrReferences
    , rdsrDataSourceId
    , rdsrIsAll

    -- ** UpdateValuesByDataFilterResponse
    , UpdateValuesByDataFilterResponse
    , updateValuesByDataFilterResponse
    , uvbdfrUpdatedCells
    , uvbdfrUpdatedRows
    , uvbdfrUpdatedRange
    , uvbdfrUpdatedData
    , uvbdfrUpdatedColumns
    , uvbdfrDataFilter

    -- ** GridProperties
    , GridProperties
    , gridProperties
    , gpFrozenColumnCount
    , gpColumnCount
    , gpColumnGroupControlAfter
    , gpHideGridlines
    , gpFrozenRowCount
    , gpRowGroupControlAfter
    , gpRowCount

    -- ** LineStyleType
    , LineStyleType (..)

    -- ** HistogramChartSpec
    , HistogramChartSpec
    , histogramChartSpec
    , hcsLegendPosition
    , hcsSeries
    , hcsShowItemDividers
    , hcsOutlierPercentile
    , hcsBucketSize

    -- ** CellFormatHyperlinkDisplayType
    , CellFormatHyperlinkDisplayType (..)

    -- ** BatchUpdateValuesByDataFilterRequestValueInputOption
    , BatchUpdateValuesByDataFilterRequestValueInputOption (..)

    -- ** BasicFilterCriteria
    , BasicFilterCriteria
    , basicFilterCriteria
    , bfcAddtional

    -- ** AddBandingRequest
    , AddBandingRequest
    , addBandingRequest
    , abrBandedRange

    -- ** UpdateDimensionPropertiesRequest
    , UpdateDimensionPropertiesRequest
    , updateDimensionPropertiesRequest
    , udprRange
    , udprDataSourceSheetRange
    , udprFields
    , udprProperties

    -- ** PivotTableCriteria
    , PivotTableCriteria
    , pivotTableCriteria
    , ptcAddtional

    -- ** AutoFillRequest
    , AutoFillRequest
    , autoFillRequest
    , afrSourceAndDestination
    , afrUseAlternateSeries
    , afrRange

    -- ** DeveloperMetadataLookup
    , DeveloperMetadataLookup
    , developerMetadataLookup
    , dLocationMatchingStrategy
    , dMetadataId
    , dVisibility
    , dMetadataKey
    , dLocationType
    , dMetadataLocation
    , dMetadataValue

    -- ** HistogramChartSpecLegendPosition
    , HistogramChartSpecLegendPosition (..)

    -- ** DuplicateSheetRequest
    , DuplicateSheetRequest
    , duplicateSheetRequest
    , dsrNewSheetName
    , dsrInsertSheetIndex
    , dsrSourceSheetId
    , dsrNewSheetId

    -- ** TextRotation
    , TextRotation
    , textRotation
    , trAngle
    , trVertical

    -- ** DuplicateFilterViewResponse
    , DuplicateFilterViewResponse
    , duplicateFilterViewResponse
    , dfvrFilter

    -- ** SheetPropertiesSheetType
    , SheetPropertiesSheetType (..)

    -- ** BatchUpdateValuesRequest
    , BatchUpdateValuesRequest
    , batchUpdateValuesRequest
    , buvrData
    , buvrValueInputOption
    , buvrIncludeValuesInResponse
    , buvrResponseDateTimeRenderOption
    , buvrResponseValueRenderOption

    -- ** DataFilterValueRange
    , DataFilterValueRange
    , dataFilterValueRange
    , dfvrValues
    , dfvrDataFilter
    , dfvrMajorDimension

    -- ** DeleteDuplicatesRequest
    , DeleteDuplicatesRequest
    , deleteDuplicatesRequest
    , dComparisonColumns
    , dRange

    -- ** DataSourceRefreshWeeklySchedule
    , DataSourceRefreshWeeklySchedule
    , dataSourceRefreshWeeklySchedule
    , dsrwsDaysOfWeek
    , dsrwsStartTime

    -- ** AddChartRequest
    , AddChartRequest
    , addChartRequest
    , aChart

    -- ** NamedRange
    , NamedRange
    , namedRange
    , nrNamedRangeId
    , nrName
    , nrRange

    -- ** DeveloperMetadataLookupLocationType
    , DeveloperMetadataLookupLocationType (..)

    -- ** PointStyleShape
    , PointStyleShape (..)

    -- ** MergeCellsRequest
    , MergeCellsRequest
    , mergeCellsRequest
    , mcrMergeType
    , mcrRange

    -- ** ScorecardChartSpecAggregateType
    , ScorecardChartSpecAggregateType (..)

    -- ** ManualRule
    , ManualRule
    , manualRule
    , mrGroups

    -- ** MergeCellsRequestMergeType
    , MergeCellsRequestMergeType (..)

    -- ** TextPosition
    , TextPosition
    , textPosition
    , tpHorizontalAlignment

    -- ** CellFormatHorizontalAlignment
    , CellFormatHorizontalAlignment (..)

    -- ** BOrder
    , BOrder
    , bOrder
    , boStyle
    , boColor
    , boWidth
    , boColorStyle

    -- ** SearchDeveloperMetadataRequest
    , SearchDeveloperMetadataRequest
    , searchDeveloperMetadataRequest
    , sdmrDataFilters

    -- ** DataSourceParameter
    , DataSourceParameter
    , dataSourceParameter
    , dspNamedRangeId
    , dspName
    , dspRange

    -- ** CandlestickSeries
    , CandlestickSeries
    , candlestickSeries
    , csData

    -- ** ExtendedValue
    , ExtendedValue
    , extendedValue
    , evBoolValue
    , evNumberValue
    , evErrorValue
    , evStringValue
    , evFormulaValue

    -- ** AddNamedRangeRequest
    , AddNamedRangeRequest
    , addNamedRangeRequest
    , aNamedRange

    -- ** WaterfallChartSpecStackedType
    , WaterfallChartSpecStackedType (..)

    -- ** PivotFilterCriteria
    , PivotFilterCriteria
    , pivotFilterCriteria
    , pfcVisibleValues
    , pfcCondition
    , pfcVisibleByDefault

    -- ** DimensionRange
    , DimensionRange
    , dimensionRange
    , drDimension
    , drEndIndex
    , drSheetId
    , drStartIndex

    -- ** UpdateSpreadsheetPropertiesRequest
    , UpdateSpreadsheetPropertiesRequest
    , updateSpreadsheetPropertiesRequest
    , uFields
    , uProperties

    -- ** EmbeddedObjectBOrder
    , EmbeddedObjectBOrder
    , embeddedObjectBOrder
    , eoboColor
    , eoboColorStyle

    -- ** DateTimeRuleType
    , DateTimeRuleType (..)

    -- ** DeveloperMetadataLookupVisibility
    , DeveloperMetadataLookupVisibility (..)

    -- ** DataLabelPlacement
    , DataLabelPlacement (..)

    -- ** CandlestickDomain
    , CandlestickDomain
    , candlestickDomain
    , cdReversed
    , cdData

    -- ** AddProtectedRangeResponse
    , AddProtectedRangeResponse
    , addProtectedRangeResponse
    , aProtectedRange

    -- ** Interval
    , Interval
    , interval
    , iStartTime
    , iEndTime

    -- ** AppendDimensionRequest
    , AppendDimensionRequest
    , appendDimensionRequest
    , adrLength
    , adrDimension
    , adrSheetId

    -- ** PivotValue
    , PivotValue
    , pivotValue
    , pvDataSourceColumnReference
    , pvSourceColumnOffSet
    , pvFormula
    , pvName
    , pvCalculatedDisplayType
    , pvSummarizeFunction

    -- ** BasicChartSpecCompareMode
    , BasicChartSpecCompareMode (..)

    -- ** AddDataSourceResponse
    , AddDataSourceResponse
    , addDataSourceResponse
    , aDataExecutionStatus
    , aDataSource

    -- ** UnmergeCellsRequest
    , UnmergeCellsRequest
    , unmergeCellsRequest
    , ucrRange

    -- ** DeleteSheetRequest
    , DeleteSheetRequest
    , deleteSheetRequest
    , dsrSheetId

    -- ** BooleanConditionType
    , BooleanConditionType (..)

    -- ** AddDimensionGroupRequest
    , AddDimensionGroupRequest
    , addDimensionGroupRequest
    , adgrRange

    -- ** UpdateEmbeddedObjectBOrderRequest
    , UpdateEmbeddedObjectBOrderRequest
    , updateEmbeddedObjectBOrderRequest
    , ueoborObjectId
    , ueoborBOrder
    , ueoborFields

    -- ** WaterfallChartColumnStyle
    , WaterfallChartColumnStyle
    , waterfallChartColumnStyle
    , wColor
    , wColorStyle
    , wLabel

    -- ** UpdateSlicerSpecRequest
    , UpdateSlicerSpecRequest
    , updateSlicerSpecRequest
    , ussrSlicerId
    , ussrSpec
    , ussrFields

    -- ** SlicerSpec
    , SlicerSpec
    , slicerSpec
    , sliColumnIndex
    , sliBackgRoundColor
    , sliFilterCriteria
    , sliBackgRoundColorStyle
    , sliDataRange
    , sliTitle
    , sliApplyToPivotTables
    , sliTextFormat
    , sliHorizontalAlignment

    -- ** CandlestickData
    , CandlestickData
    , candlestickData
    , cdLowSeries
    , cdHighSeries
    , cdOpenSeries
    , cdCloseSeries

    -- ** BandedRange
    , BandedRange
    , bandedRange
    , brBandedRangeId
    , brRowProperties
    , brRange
    , brColumnProperties

    -- ** UpdateBOrdersRequest
    , UpdateBOrdersRequest
    , updateBOrdersRequest
    , uborBottom
    , uborInnerHorizontal
    , uborLeft
    , uborInnerVertical
    , uborRange
    , uborRight
    , uborTop

    -- ** ValueRangeMajorDimension
    , ValueRangeMajorDimension (..)

    -- ** BatchUpdateValuesByDataFilterRequest
    , BatchUpdateValuesByDataFilterRequest
    , batchUpdateValuesByDataFilterRequest
    , buvbdfrData
    , buvbdfrValueInputOption
    , buvbdfrIncludeValuesInResponse
    , buvbdfrResponseDateTimeRenderOption
    , buvbdfrResponseValueRenderOption

    -- ** PivotGroupSortOrder
    , PivotGroupSortOrder (..)

    -- ** SpreadsheetsValuesAppendInsertDataOption
    , SpreadsheetsValuesAppendInsertDataOption (..)

    -- ** BasicChartSpecChartType
    , BasicChartSpecChartType (..)

    -- ** ChartCustomNumberFormatOptions
    , ChartCustomNumberFormatOptions
    , chartCustomNumberFormatOptions
    , ccnfoSuffix
    , ccnfoPrefix

    -- ** EmbeddedChart
    , EmbeddedChart
    , embeddedChart
    , ecBOrder
    , ecSpec
    , ecPosition
    , ecChartId

    -- ** RowData
    , RowData
    , rowData
    , rdValues

    -- ** BaselineValueFormatComparisonType
    , BaselineValueFormatComparisonType (..)

    -- ** Editors
    , Editors
    , editors
    , eGroups
    , eUsers
    , eDomainUsersCanEdit

    -- ** Xgafv
    , Xgafv (..)

    -- ** PivotTable
    , PivotTable
    , pivotTable
    , ptValues
    , ptDataSourceId
    , ptDataExecutionStatus
    , ptValueLayout
    , ptRows
    , ptSource
    , ptColumns
    , ptCriteria
    , ptFilterSpecs

    -- ** EmbeddedObjectPosition
    , EmbeddedObjectPosition
    , embeddedObjectPosition
    , eopOverlayPosition
    , eopSheetId
    , eopNewSheet

    -- ** BasicFilter
    , BasicFilter
    , basicFilter
    , bfSortSpecs
    , bfRange
    , bfCriteria
    , bfFilterSpecs

    -- ** TextToColumnsRequest
    , TextToColumnsRequest
    , textToColumnsRequest
    , ttcrDelimiterType
    , ttcrSource
    , ttcrDelimiter

    -- ** SpreadsheetPropertiesAutoRecalc
    , SpreadsheetPropertiesAutoRecalc (..)

    -- ** TrimWhitespaceResponse
    , TrimWhitespaceResponse
    , trimWhitespaceResponse
    , twrCellsChangedCount

    -- ** CopyPasteRequestPasteOrientation
    , CopyPasteRequestPasteOrientation (..)

    -- ** GetSpreadsheetByDataFilterRequest
    , GetSpreadsheetByDataFilterRequest
    , getSpreadsheetByDataFilterRequest
    , gsbdfrDataFilters
    , gsbdfrIncludeGridData

    -- ** ColorStyle
    , ColorStyle
    , colorStyle
    , csThemeColor
    , csRgbColor

    -- ** BatchUpdateSpreadsheetRequest
    , BatchUpdateSpreadsheetRequest
    , batchUpdateSpreadsheetRequest
    , busrResponseIncludeGridData
    , busrResponseRanges
    , busrRequests
    , busrIncludeSpreadsheetInResponse

    -- ** PasteDataRequestType
    , PasteDataRequestType (..)

    -- ** UpdateValuesResponse
    , UpdateValuesResponse
    , updateValuesResponse
    , uvrUpdatedCells
    , uvrSpreadsheetId
    , uvrUpdatedRows
    , uvrUpdatedRange
    , uvrUpdatedData
    , uvrUpdatedColumns

    -- ** ScorecardChartSpec
    , ScorecardChartSpec
    , scorecardChartSpec
    , scsKeyValueData
    , scsKeyValueFormat
    , scsNumberFormatSource
    , scsScaleFactor
    , scsBaselineValueData
    , scsBaselineValueFormat
    , scsCustomFormatOptions
    , scsAggregateType

    -- ** DeleteDimensionGroupResponse
    , DeleteDimensionGroupResponse
    , deleteDimensionGroupResponse
    , ddgrDimensionGroups

    -- ** CopySheetToAnotherSpreadsheetRequest
    , CopySheetToAnotherSpreadsheetRequest
    , copySheetToAnotherSpreadsheetRequest
    , cstasrDestinationSpreadsheetId

    -- ** DeleteDataSourceRequest
    , DeleteDataSourceRequest
    , deleteDataSourceRequest
    , ddsrDataSourceId

    -- ** AddFilterViewRequest
    , AddFilterViewRequest
    , addFilterViewRequest
    , aFilter

    -- ** UpdateDataSourceRequest
    , UpdateDataSourceRequest
    , updateDataSourceRequest
    , updDataSource
    , updFields

    -- ** PivotGroupValueMetadata
    , PivotGroupValueMetadata
    , pivotGroupValueMetadata
    , pgvmValue
    , pgvmCollapsed

    -- ** SpreadsheetsValuesAppendValueInputOption
    , SpreadsheetsValuesAppendValueInputOption (..)

    -- ** DataSource
    , DataSource
    , dataSource
    , dsDataSourceId
    , dsSheetId
    , dsSpec
    , dsCalculatedColumns

    -- ** CellFormatTextDirection
    , CellFormatTextDirection (..)

    -- ** BatchClearValuesByDataFilterResponse
    , BatchClearValuesByDataFilterResponse
    , batchClearValuesByDataFilterResponse
    , bcvbdfrClearedRanges
    , bcvbdfrSpreadsheetId

    -- ** DataSourceSheetDimensionRange
    , DataSourceSheetDimensionRange
    , dataSourceSheetDimensionRange
    , dssdrSheetId
    , dssdrColumnReferences

    -- ** WaterfallChartSeries
    , WaterfallChartSeries
    , waterfallChartSeries
    , wcsData
    , wcsCustomSubtotals
    , wcsNegativeColumnsStyle
    , wcsHideTrailingSubtotal
    , wcsSubtotalColumnsStyle
    , wcsDataLabel
    , wcsPositiveColumnsStyle

    -- ** DataSourceTableColumnSelectionType
    , DataSourceTableColumnSelectionType (..)

    -- ** BigQueryTableSpec
    , BigQueryTableSpec
    , bigQueryTableSpec
    , bqtsTableProjectId
    , bqtsDataSetId
    , bqtsTableId

    -- ** BasicChartSeriesType
    , BasicChartSeriesType (..)

    -- ** UpdateCellsRequest
    , UpdateCellsRequest
    , updateCellsRequest
    , ucrcStart
    , ucrcRows
    , ucrcRange
    , ucrcFields

    -- ** CellFormat
    , CellFormat
    , cellFormat
    , cfBOrders
    , cfVerticalAlignment
    , cfBackgRoundColor
    , cfTextRotation
    , cfBackgRoundColorStyle
    , cfHyperlinkDisplayType
    , cfWrapStrategy
    , cfNumberFormat
    , cfTextDirection
    , cfTextFormat
    , cfHorizontalAlignment
    , cfPadding

    -- ** DeleteProtectedRangeRequest
    , DeleteProtectedRangeRequest
    , deleteProtectedRangeRequest
    , dprrProtectedRangeId

    -- ** UpdateProtectedRangeRequest
    , UpdateProtectedRangeRequest
    , updateProtectedRangeRequest
    , uprrProtectedRange
    , uprrFields

    -- ** AddSheetResponse
    , AddSheetResponse
    , addSheetResponse
    , aProperties

    -- ** ProtectedRange
    , ProtectedRange
    , protectedRange
    , prProtectedRangeId
    , prWarningOnly
    , prNamedRangeId
    , prRange
    , prEditors
    , prUnprotectedRanges
    , prRequestingUserCanEdit
    , prDescription

    -- ** PivotValueCalculatedDisplayType
    , PivotValueCalculatedDisplayType (..)

    -- ** ChartDataAggregateType
    , ChartDataAggregateType (..)

    -- ** ChartGroupRule
    , ChartGroupRule
    , chartGroupRule
    , cgrDateTimeRule
    , cgrHistogramRule

    -- ** BasicChartAxis
    , BasicChartAxis
    , basicChartAxis
    , bcaTitleTextPosition
    , bcaFormat
    , bcaTitle
    , bcaViewWindowOptions
    , bcaPosition

    -- ** SpreadsheetsValuesGetMajorDimension
    , SpreadsheetsValuesGetMajorDimension (..)

    -- ** ScorecardChartSpecNumberFormatSource
    , ScorecardChartSpecNumberFormatSource (..)

    -- ** GridData
    , GridData
    , gridData
    , gdRowMetadata
    , gdStartRow
    , gdRowData
    , gdColumnMetadata
    , gdStartColumn

    -- ** SpreadsheetsValuesAppendResponseDateTimeRenderOption
    , SpreadsheetsValuesAppendResponseDateTimeRenderOption (..)

    -- ** DataSourceChartProperties
    , DataSourceChartProperties
    , dataSourceChartProperties
    , dscpDataSourceId
    , dscpDataExecutionStatus

    -- ** NumberFormat
    , NumberFormat
    , numberFormat
    , nfPattern
    , nfType

    -- ** TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** TrimWhitespaceRequest
    , TrimWhitespaceRequest
    , trimWhitespaceRequest
    , twrRange

    -- ** BatchGetValuesByDataFilterRequestDateTimeRenderOption
    , BatchGetValuesByDataFilterRequestDateTimeRenderOption (..)

    -- ** BatchUpdateSpreadsheetResponse
    , BatchUpdateSpreadsheetResponse
    , batchUpdateSpreadsheetResponse
    , busrSpreadsheetId
    , busrReplies
    , busrUpdatedSpreadsheet

    -- ** DataFilter
    , DataFilter
    , dataFilter
    , dfGridRange
    , dfA1Range
    , dfDeveloperMetadataLookup

    -- ** SetDataValidationRequest
    , SetDataValidationRequest
    , setDataValidationRequest
    , sdvrRule
    , sdvrRange

    -- ** BandingProperties
    , BandingProperties
    , bandingProperties
    , bpSecondBandColor
    , bpFooterColorStyle
    , bpHeaderColor
    , bpHeaderColorStyle
    , bpFooterColor
    , bpSecondBandColorStyle
    , bpFirstBandColorStyle
    , bpFirstBandColor

    -- ** ChartSpecHiddenDimensionStrategy
    , ChartSpecHiddenDimensionStrategy (..)

    -- ** DuplicateFilterViewRequest
    , DuplicateFilterViewRequest
    , duplicateFilterViewRequest
    , dFilterId

    -- ** BOrderStyle
    , BOrderStyle (..)

    -- ** DataSourceSheetProperties
    , DataSourceSheetProperties
    , dataSourceSheetProperties
    , dsspDataSourceId
    , dsspDataExecutionStatus
    , dsspColumns

    -- ** PivotGroup
    , PivotGroup
    , pivotGroup
    , pgRepeatHeadings
    , pgGroupLimit
    , pgDataSourceColumnReference
    , pgValueMetadata
    , pgSourceColumnOffSet
    , pgSortOrder
    , pgShowTotals
    , pgValueBucket
    , pgLabel
    , pgGroupRule

    -- ** AddBandingResponse
    , AddBandingResponse
    , addBandingResponse
    , aBandedRange

    -- ** OrgChartSpec
    , OrgChartSpec
    , orgChartSpec
    , ocsNodeColor
    , ocsNodeSize
    , ocsTooltips
    , ocsSelectedNodeColor
    , ocsNodeColorStyle
    , ocsLabels
    , ocsSelectedNodeColorStyle
    , ocsParentLabels

    -- ** CutPasteRequestPasteType
    , CutPasteRequestPasteType (..)

    -- ** BasicChartSpecLegendPosition
    , BasicChartSpecLegendPosition (..)

    -- ** ErrorValueType
    , ErrorValueType (..)

    -- ** RandomizeRangeRequest
    , RandomizeRangeRequest
    , randomizeRangeRequest
    , rrrRange

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psSize
    , psShape

    -- ** HistogramSeries
    , HistogramSeries
    , histogramSeries
    , hsBarColor
    , hsData
    , hsBarColorStyle

    -- ** TreemapChartSpec
    , TreemapChartSpec
    , treemapChartSpec
    , tcsHintedLevels
    , tcsMaxValue
    , tcsHeaderColor
    , tcsSizeData
    , tcsColorData
    , tcsHeaderColorStyle
    , tcsHideTooltips
    , tcsLevels
    , tcsLabels
    , tcsColorScale
    , tcsTextFormat
    , tcsMinValue
    , tcsParentLabels

    -- ** RefreshDataSourceResponse
    , RefreshDataSourceResponse
    , refreshDataSourceResponse
    , rdsrStatuses

    -- ** ConditionalFormatRule
    , ConditionalFormatRule
    , conditionalFormatRule
    , cfrBooleanRule
    , cfrGradientRule
    , cfrRanges

    -- ** BasicChartSpec
    , BasicChartSpec
    , basicChartSpec
    , basHeaderCount
    , basLineSmoothing
    , basInterpolateNulls
    , basStackedType
    , basLegendPosition
    , basSeries
    , basTotalDataLabel
    , basCompareMode
    , basChartType
    , basThreeDimensional
    , basDomains
    , basAxis

    -- ** ManualRuleGroup
    , ManualRuleGroup
    , manualRuleGroup
    , mrgItems
    , mrgGroupName

    -- ** BatchGetValuesByDataFilterRequestMajorDimension
    , BatchGetValuesByDataFilterRequestMajorDimension (..)

    -- ** DataSourceFormula
    , DataSourceFormula
    , dataSourceFormula
    , dsfDataSourceId
    , dsfDataExecutionStatus

    -- ** AddConditionalFormatRuleRequest
    , AddConditionalFormatRuleRequest
    , addConditionalFormatRuleRequest
    , acfrrRule
    , acfrrIndex

    -- ** DeveloperMetadata
    , DeveloperMetadata
    , developerMetadata
    , dmLocation
    , dmMetadataId
    , dmVisibility
    , dmMetadataKey
    , dmMetadataValue

    -- ** ChartDateTimeRuleType
    , ChartDateTimeRuleType (..)

    -- ** TreemapChartColorScale
    , TreemapChartColorScale
    , treemapChartColorScale
    , tccsMinValueColor
    , tccsMinValueColorStyle
    , tccsMidValueColorStyle
    , tccsNoDataColor
    , tccsMaxValueColor
    , tccsMaxValueColorStyle
    , tccsNoDataColorStyle
    , tccsMidValueColor

    -- ** PivotTableValueLayout
    , PivotTableValueLayout (..)

    -- ** SpreadsheetsValuesGetDateTimeRenderOption
    , SpreadsheetsValuesGetDateTimeRenderOption (..)

    -- ** DataSourceColumn
    , DataSourceColumn
    , dataSourceColumn
    , dscReference
    , dscFormula

    -- ** DuplicateSheetResponse
    , DuplicateSheetResponse
    , duplicateSheetResponse
    , dsrProperties

    -- ** TextFormat
    , TextFormat
    , textFormat
    , tfFontFamily
    , tfLink
    , tfForegRoundColor
    , tfFontSize
    , tfUnderline
    , tfItalic
    , tfBold
    , tfForegRoundColorStyle
    , tfStrikethrough

    -- ** DataLabel
    , DataLabel
    , dataLabel
    , dlCustomLabelData
    , dlType
    , dlTextFormat
    , dlPlacement

    -- ** CreateDeveloperMetadataRequest
    , CreateDeveloperMetadataRequest
    , createDeveloperMetadataRequest
    , cDeveloperMetadata

    -- ** BasicSeriesDataPointStyleOverride
    , BasicSeriesDataPointStyleOverride
    , basicSeriesDataPointStyleOverride
    , bsdpsoColor
    , bsdpsoColorStyle
    , bsdpsoPointStyle
    , bsdpsoIndex

    -- ** BatchClearValuesResponse
    , BatchClearValuesResponse
    , batchClearValuesResponse
    , bcvrClearedRanges
    , bcvrSpreadsheetId

    -- ** MatchedValueRange
    , MatchedValueRange
    , matchedValueRange
    , mvrValueRange
    , mvrDataFilters

    -- ** BasicChartDomain
    , BasicChartDomain
    , basicChartDomain
    , bcdReversed
    , bcdDomain

    -- ** InterpolationPointType
    , InterpolationPointType (..)

    -- ** BigQueryDataSourceSpec
    , BigQueryDataSourceSpec
    , bigQueryDataSourceSpec
    , bqdssQuerySpec
    , bqdssProjectId
    , bqdssTableSpec

    -- ** HistogramRule
    , HistogramRule
    , histogramRule
    , hrStart
    , hrInterval
    , hrEnd

    -- ** MatchedDeveloperMetadata
    , MatchedDeveloperMetadata
    , matchedDeveloperMetadata
    , mdmDataFilters
    , mdmDeveloperMetadata

    -- ** PivotFilterSpec
    , PivotFilterSpec
    , pivotFilterSpec
    , pfsDataSourceColumnReference
    , pfsFilterCriteria
    , pfsColumnOffSetIndex

    -- ** TextToColumnsRequestDelimiterType
    , TextToColumnsRequestDelimiterType (..)

    -- ** InsertRangeRequest
    , InsertRangeRequest
    , insertRangeRequest
    , irrShiftDimension
    , irrRange

    -- ** InsertRangeRequestShiftDimension
    , InsertRangeRequestShiftDimension (..)

    -- ** Padding
    , Padding
    , padding
    , pBottom
    , pLeft
    , pRight
    , pTop

    -- ** ChartSpec
    , ChartSpec
    , chartSpec
    , csSortSpecs
    , csTitleTextPosition
    , csFontName
    , csScorecardChart
    , csSubtitleTextPosition
    , csBackgRoundColor
    , csCandlestickChart
    , csWaterfallChart
    , csTitleTextFormat
    , csSubtitle
    , csAltText
    , csBackgRoundColorStyle
    , csHistogramChart
    , csBubbleChart
    , csMaximized
    , csSubtitleTextFormat
    , csDataSourceChartProperties
    , csTitle
    , csPieChart
    , csFilterSpecs
    , csOrgChart
    , csTreemapChart
    , csBasicChart
    , csHiddenDimensionStrategy

    -- ** DimensionProperties
    , DimensionProperties
    , dimensionProperties
    , dpDataSourceColumnReference
    , dpHiddenByFilter
    , dpPixelSize
    , dpHiddenByUser
    , dpDeveloperMetadata

    -- ** DataExecutionStatusState
    , DataExecutionStatusState (..)

    -- ** UpdateBandingRequest
    , UpdateBandingRequest
    , updateBandingRequest
    , ubrBandedRange
    , ubrFields

    -- ** BatchGetValuesResponse
    , BatchGetValuesResponse
    , batchGetValuesResponse
    , bgvrSpreadsheetId
    , bgvrValueRanges

    -- ** DeleteBandingRequest
    , DeleteBandingRequest
    , deleteBandingRequest
    , dbrBandedRangeId

    -- ** DeleteDeveloperMetadataResponse
    , DeleteDeveloperMetadataResponse
    , deleteDeveloperMetadataResponse
    , ddmrDeletedDeveloperMetadata

    -- ** UpdateDeveloperMetadataResponse
    , UpdateDeveloperMetadataResponse
    , updateDeveloperMetadataResponse
    , uDeveloperMetadata

    -- ** SpreadsheetsValuesGetValueRenderOption
    , SpreadsheetsValuesGetValueRenderOption (..)

    -- ** Request'
    , Request'
    , request'
    , reqAddFilterView
    , reqDeleteProtectedRange
    , reqUpdateProtectedRange
    , reqUpdateCells
    , reqDeleteDataSource
    , reqUpdateDataSource
    , reqCreateDeveloperMetadata
    , reqDuplicateFilterView
    , reqAddConditionalFormatRule
    , reqRandomizeRange
    , reqSortRange
    , reqUpdateNamedRange
    , reqDeleteNamedRange
    , reqInsertRange
    , reqDeleteBanding
    , reqUpdateBanding
    , reqClearBasicFilter
    , reqAppendCells
    , reqPasteData
    , reqAddSlicer
    , reqUpdateEmbeddedObjectPosition
    , reqDeleteRange
    , reqCopyPaste
    , reqUpdateDimensionGroup
    , reqDeleteDimensionGroup
    , reqAutoResizeDimensions
    , reqAddSheet
    , reqFindReplace
    , reqDeleteDimension
    , reqCutPaste
    , reqMoveDimension
    , reqRepeatCell
    , reqAddProtectedRange
    , reqUpdateFilterView
    , reqDeleteFilterView
    , reqAddDataSource
    , reqInsertDimension
    , reqUpdateSheetProperties
    , reqDeleteConditionalFormatRule
    , reqUpdateConditionalFormatRule
    , reqDeleteEmbeddedObject
    , reqDeleteDeveloperMetadata
    , reqUpdateDeveloperMetadata
    , reqMergeCells
    , reqAddNamedRange
    , reqAddChart
    , reqDeleteDuplicates
    , reqAddBanding
    , reqDuplicateSheet
    , reqRefreshDataSource
    , reqAutoFill
    , reqUpdateDimensionProperties
    , reqUpdateChartSpec
    , reqSetBasicFilter
    , reqTextToColumns
    , reqAddDimensionGroup
    , reqUpdateSpreadsheetProperties
    , reqUpdateEmbeddedObjectBOrder
    , reqDeleteSheet
    , reqUpdateSlicerSpec
    , reqUnmergeCells
    , reqUpdateBOrders
    , reqAppendDimension
    , reqSetDataValidation
    , reqTrimWhitespace

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsWidth
    , lsType

    -- ** DeleteConditionalFormatRuleResponse
    , DeleteConditionalFormatRuleResponse
    , deleteConditionalFormatRuleResponse
    , dcfrrRule

    -- ** UpdateConditionalFormatRuleResponse
    , UpdateConditionalFormatRuleResponse
    , updateConditionalFormatRuleResponse
    , uNewRule
    , uNewIndex
    , uOldIndex
    , uOldRule
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Sheets.Spreadsheets.BatchUpdate
import Network.Google.Resource.Sheets.Spreadsheets.Create
import Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Get
import Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Search
import Network.Google.Resource.Sheets.Spreadsheets.Get
import Network.Google.Resource.Sheets.Spreadsheets.GetByDataFilter
import Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo
import Network.Google.Resource.Sheets.Spreadsheets.Values.Append
import Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear
import Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClearByDataFilter
import Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet
import Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGetByDataFilter
import Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate
import Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdateByDataFilter
import Network.Google.Resource.Sheets.Spreadsheets.Values.Clear
import Network.Google.Resource.Sheets.Spreadsheets.Values.Get
import Network.Google.Resource.Sheets.Spreadsheets.Values.Update
import Network.Google.Sheets.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Sheets API service.
type SheetsAPI =
     SpreadsheetsSheetsCopyToResource :<|>
       SpreadsheetsValuesBatchClearResource
       :<|> SpreadsheetsValuesBatchClearByDataFilterResource
       :<|> SpreadsheetsValuesGetResource
       :<|> SpreadsheetsValuesBatchGetByDataFilterResource
       :<|> SpreadsheetsValuesClearResource
       :<|> SpreadsheetsValuesBatchGetResource
       :<|> SpreadsheetsValuesBatchUpdateResource
       :<|> SpreadsheetsValuesAppendResource
       :<|>
       SpreadsheetsValuesBatchUpdateByDataFilterResource
       :<|> SpreadsheetsValuesUpdateResource
       :<|> SpreadsheetsDeveloperMetadataGetResource
       :<|> SpreadsheetsDeveloperMetadataSearchResource
       :<|> SpreadsheetsGetByDataFilterResource
       :<|> SpreadsheetsGetResource
       :<|> SpreadsheetsCreateResource
       :<|> SpreadsheetsBatchUpdateResource

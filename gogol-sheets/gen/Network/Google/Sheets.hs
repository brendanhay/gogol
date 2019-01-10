{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Sheets
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , cdSourceRange

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

    -- ** BasicChartSeriesTargetAxis
    , BasicChartSeriesTargetAxis (..)

    -- ** DataFilterValueRangeMajorDimension
    , DataFilterValueRangeMajorDimension (..)

    -- ** SpreadsheetProperties
    , SpreadsheetProperties
    , spreadsheetProperties
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
    , ssSortOrder
    , ssDimensionIndex

    -- ** DimensionGroup
    , DimensionGroup
    , dimensionGroup
    , dgCollapsed
    , dgRange
    , dgDepth

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

    -- ** AddFilterViewResponse
    , AddFilterViewResponse
    , addFilterViewResponse
    , afvrFilter

    -- ** DimensionRangeDimension
    , DimensionRangeDimension (..)

    -- ** BooleanCondition
    , BooleanCondition
    , booleanCondition
    , bcValues
    , bcType

    -- ** AutoResizeDimensionsRequest
    , AutoResizeDimensionsRequest
    , autoResizeDimensionsRequest
    , ardrDimensions

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

    -- ** DeleteRangeRequest
    , DeleteRangeRequest
    , deleteRangeRequest
    , drrShiftDimension
    , drrRange

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

    -- ** CellFormatWrapStrategy
    , CellFormatWrapStrategy (..)

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

    -- ** Color
    , Color
    , color
    , cRed
    , cAlpha
    , cGreen
    , cBlue

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
    , bType
    , bLineStyle

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

    -- ** GradientRule
    , GradientRule
    , gradientRule
    , grMidpoint
    , grMaxpoint
    , grMinpoint

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
    , rCreateDeveloperMetadata
    , rDuplicateFilterView
    , rUpdateEmbeddedObjectPosition
    , rDeleteDimensionGroup
    , rAddSheet
    , rFindReplace
    , rAddProtectedRange
    , rDeleteConditionalFormatRule
    , rUpdateConditionalFormatRule
    , rDeleteDeveloperMetadata
    , rUpdateDeveloperMetadata
    , rAddNamedRange
    , rAddChart
    , rAddBanding
    , rDuplicateSheet
    , rAddDimensionGroup

    -- ** FilterCriteria
    , FilterCriteria
    , filterCriteria
    , fcHiddenValues
    , fcCondition

    -- ** ErrorValue
    , ErrorValue
    , errorValue
    , evType
    , evMessage

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
    , sGridProperties
    , sSheetType
    , sHidden
    , sSheetId
    , sTitle
    , sRightToLeft
    , sIndex

    -- ** FilterViewCriteria
    , FilterViewCriteria
    , filterViewCriteria
    , fvcAddtional

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
    , sprSpreadsheetURL
    , sprDeveloperMetadata
    , sprProperties

    -- ** CandlestickChartSpec
    , CandlestickChartSpec
    , candlestickChartSpec
    , ccsData
    , ccsDomain

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
    , ipType

    -- ** OrgChartSpecNodeSize
    , OrgChartSpecNodeSize (..)

    -- ** CellData
    , CellData
    , cellData
    , cdTextFormatRuns
    , cdNote
    , cdUserEnteredValue
    , cdUserEnteredFormat
    , cdEffectiveFormat
    , cdPivotTable
    , cdFormattedValue
    , cdDataValidation
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

    -- ** AddChartResponse
    , AddChartResponse
    , addChartResponse
    , acrChart

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

    -- ** MergeCellsRequest
    , MergeCellsRequest
    , mergeCellsRequest
    , mcrMergeType
    , mcrRange

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

    -- ** SearchDeveloperMetadataRequest
    , SearchDeveloperMetadataRequest
    , searchDeveloperMetadataRequest
    , sdmrDataFilters

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

    -- ** DateTimeRuleType
    , DateTimeRuleType (..)

    -- ** DeveloperMetadataLookupVisibility
    , DeveloperMetadataLookupVisibility (..)

    -- ** CandlestickDomain
    , CandlestickDomain
    , candlestickDomain
    , cdReversed
    , cdData

    -- ** AddProtectedRangeResponse
    , AddProtectedRangeResponse
    , addProtectedRangeResponse
    , aProtectedRange

    -- ** AppendDimensionRequest
    , AppendDimensionRequest
    , appendDimensionRequest
    , adrLength
    , adrDimension
    , adrSheetId

    -- ** PivotValue
    , PivotValue
    , pivotValue
    , pvSourceColumnOffSet
    , pvFormula
    , pvName
    , pvCalculatedDisplayType
    , pvSummarizeFunction

    -- ** BasicChartSpecCompareMode
    , BasicChartSpecCompareMode (..)

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

    -- ** WaterfallChartColumnStyle
    , WaterfallChartColumnStyle
    , waterfallChartColumnStyle
    , wColor
    , wLabel

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

    -- ** BasicChartSpecChartType
    , BasicChartSpecChartType (..)

    -- ** EmbeddedChart
    , EmbeddedChart
    , embeddedChart
    , ecSpec
    , ecPosition
    , ecChartId

    -- ** RowData
    , RowData
    , rowData
    , rdValues

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
    , ptValueLayout
    , ptRows
    , ptSource
    , ptColumns
    , ptCriteria

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

    -- ** TextToColumnsRequest
    , TextToColumnsRequest
    , textToColumnsRequest
    , ttcrDelimiterType
    , ttcrSource
    , ttcrDelimiter

    -- ** SpreadsheetPropertiesAutoRecalc
    , SpreadsheetPropertiesAutoRecalc (..)

    -- ** CopyPasteRequestPasteOrientation
    , CopyPasteRequestPasteOrientation (..)

    -- ** GetSpreadsheetByDataFilterRequest
    , GetSpreadsheetByDataFilterRequest
    , getSpreadsheetByDataFilterRequest
    , gsbdfrDataFilters
    , gsbdfrIncludeGridData

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

    -- ** DeleteDimensionGroupResponse
    , DeleteDimensionGroupResponse
    , deleteDimensionGroupResponse
    , ddgrDimensionGroups

    -- ** CopySheetToAnotherSpreadsheetRequest
    , CopySheetToAnotherSpreadsheetRequest
    , copySheetToAnotherSpreadsheetRequest
    , cstasrDestinationSpreadsheetId

    -- ** AddFilterViewRequest
    , AddFilterViewRequest
    , addFilterViewRequest
    , aFilter

    -- ** PivotGroupValueMetadata
    , PivotGroupValueMetadata
    , pivotGroupValueMetadata
    , pgvmValue
    , pgvmCollapsed

    -- ** CellFormatTextDirection
    , CellFormatTextDirection (..)

    -- ** BatchClearValuesByDataFilterResponse
    , BatchClearValuesByDataFilterResponse
    , batchClearValuesByDataFilterResponse
    , bcvbdfrClearedRanges
    , bcvbdfrSpreadsheetId

    -- ** WaterfallChartSeries
    , WaterfallChartSeries
    , waterfallChartSeries
    , wcsData
    , wcsCustomSubtotals
    , wcsNegativeColumnsStyle
    , wcsHideTrailingSubtotal
    , wcsSubtotalColumnsStyle
    , wcsPositiveColumnsStyle

    -- ** BasicChartSeriesType
    , BasicChartSeriesType (..)

    -- ** UpdateCellsRequest
    , UpdateCellsRequest
    , updateCellsRequest
    , updStart
    , updRows
    , updRange
    , updFields

    -- ** CellFormat
    , CellFormat
    , cellFormat
    , cfBOrders
    , cfVerticalAlignment
    , cfBackgRoundColor
    , cfTextRotation
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

    -- ** BasicChartAxis
    , BasicChartAxis
    , basicChartAxis
    , bcaTitleTextPosition
    , bcaFormat
    , bcaTitle
    , bcaPosition

    -- ** GridData
    , GridData
    , gridData
    , gdRowMetadata
    , gdStartRow
    , gdRowData
    , gdColumnMetadata
    , gdStartColumn

    -- ** NumberFormat
    , NumberFormat
    , numberFormat
    , nfPattern
    , nfType

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
    , bpHeaderColor
    , bpFooterColor
    , bpFirstBandColor

    -- ** ChartSpecHiddenDimensionStrategy
    , ChartSpecHiddenDimensionStrategy (..)

    -- ** DuplicateFilterViewRequest
    , DuplicateFilterViewRequest
    , duplicateFilterViewRequest
    , dFilterId

    -- ** BOrderStyle
    , BOrderStyle (..)

    -- ** PivotGroup
    , PivotGroup
    , pivotGroup
    , pgRepeatHeadings
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
    , ocsLabels
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

    -- ** HistogramSeries
    , HistogramSeries
    , histogramSeries
    , hsBarColor
    , hsData

    -- ** TreemapChartSpec
    , TreemapChartSpec
    , treemapChartSpec
    , tcsHintedLevels
    , tcsMaxValue
    , tcsHeaderColor
    , tcsSizeData
    , tcsColorData
    , tcsHideTooltips
    , tcsLevels
    , tcsLabels
    , tcsColorScale
    , tcsTextFormat
    , tcsMinValue
    , tcsParentLabels

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

    -- ** TreemapChartColorScale
    , TreemapChartColorScale
    , treemapChartColorScale
    , tccsMinValueColor
    , tccsNoDataColor
    , tccsMaxValueColor
    , tccsMidValueColor

    -- ** PivotTableValueLayout
    , PivotTableValueLayout (..)

    -- ** DuplicateSheetResponse
    , DuplicateSheetResponse
    , duplicateSheetResponse
    , dsrProperties

    -- ** TextFormat
    , TextFormat
    , textFormat
    , tfFontFamily
    , tfForegRoundColor
    , tfFontSize
    , tfUnderline
    , tfItalic
    , tfBold
    , tfStrikethrough

    -- ** CreateDeveloperMetadataRequest
    , CreateDeveloperMetadataRequest
    , createDeveloperMetadataRequest
    , cDeveloperMetadata

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
    , csTitleTextPosition
    , csFontName
    , csSubtitleTextPosition
    , csBackgRoundColor
    , csCandlestickChart
    , csWaterfallChart
    , csTitleTextFormat
    , csSubtitle
    , csAltText
    , csHistogramChart
    , csBubbleChart
    , csMaximized
    , csSubtitleTextFormat
    , csTitle
    , csPieChart
    , csOrgChart
    , csTreemapChart
    , csBasicChart
    , csHiddenDimensionStrategy

    -- ** DimensionProperties
    , DimensionProperties
    , dimensionProperties
    , dpHiddenByFilter
    , dpPixelSize
    , dpHiddenByUser
    , dpDeveloperMetadata

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

    -- ** Request'
    , Request'
    , request'
    , reqAddFilterView
    , reqDeleteProtectedRange
    , reqUpdateProtectedRange
    , reqUpdateCells
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
    , reqAddBanding
    , reqDuplicateSheet
    , reqAutoFill
    , reqUpdateDimensionProperties
    , reqUpdateChartSpec
    , reqSetBasicFilter
    , reqTextToColumns
    , reqAddDimensionGroup
    , reqUpdateSpreadsheetProperties
    , reqDeleteSheet
    , reqUnmergeCells
    , reqUpdateBOrders
    , reqAppendDimension
    , reqSetDataValidation

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

import           Network.Google.Prelude
import           Network.Google.Resource.Sheets.Spreadsheets.BatchUpdate
import           Network.Google.Resource.Sheets.Spreadsheets.Create
import           Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Get
import           Network.Google.Resource.Sheets.Spreadsheets.DeveloperMetadata.Search
import           Network.Google.Resource.Sheets.Spreadsheets.Get
import           Network.Google.Resource.Sheets.Spreadsheets.GetByDataFilter
import           Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo
import           Network.Google.Resource.Sheets.Spreadsheets.Values.Append
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClearByDataFilter
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGetByDataFilter
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdateByDataFilter
import           Network.Google.Resource.Sheets.Spreadsheets.Values.Clear
import           Network.Google.Resource.Sheets.Spreadsheets.Values.Get
import           Network.Google.Resource.Sheets.Spreadsheets.Values.Update
import           Network.Google.Sheets.Types

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

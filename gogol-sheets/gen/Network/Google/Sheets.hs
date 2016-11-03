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
    , spreadsheetsScope

    -- * API Declaration
    , SheetsAPI

    -- * Resources

    -- ** sheets.spreadsheets.batchUpdate
    , module Network.Google.Resource.Sheets.Spreadsheets.BatchUpdate

    -- ** sheets.spreadsheets.create
    , module Network.Google.Resource.Sheets.Spreadsheets.Create

    -- ** sheets.spreadsheets.get
    , module Network.Google.Resource.Sheets.Spreadsheets.Get

    -- ** sheets.spreadsheets.sheets.copyTo
    , module Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo

    -- ** sheets.spreadsheets.values.append
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Append

    -- ** sheets.spreadsheets.values.batchClear
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear

    -- ** sheets.spreadsheets.values.batchGet
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet

    -- ** sheets.spreadsheets.values.batchUpdate
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate

    -- ** sheets.spreadsheets.values.clear
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Clear

    -- ** sheets.spreadsheets.values.get
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Get

    -- ** sheets.spreadsheets.values.update
    , module Network.Google.Resource.Sheets.Spreadsheets.Values.Update

    -- * Types

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

    -- ** BasicChartSeriesTargetAxis
    , BasicChartSeriesTargetAxis (..)

    -- ** SpreadsheetProperties
    , SpreadsheetProperties
    , spreadsheetProperties
    , spDefaultFormat
    , spLocale
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

    -- ** TextFormatRun
    , TextFormatRun
    , textFormatRun
    , tfrFormat
    , tfrStartIndex

    -- ** AddSheetRequest
    , AddSheetRequest
    , addSheetRequest
    , asrProperties

    -- ** SortSpec
    , SortSpec
    , sortSpec
    , ssSortOrder
    , ssDimensionIndex

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

    -- ** Sheet
    , Sheet
    , sheet
    , sData
    , sMerges
    , sProtectedRanges
    , sCharts
    , sBasicFilter
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

    -- ** PieChartSpec
    , PieChartSpec
    , pieChartSpec
    , pcsPieHole
    , pcsLegendPosition
    , pcsDomain
    , pcsSeries
    , pcsThreeDimensional

    -- ** AppendValuesResponse
    , AppendValuesResponse
    , appendValuesResponse
    , avrSpreadsheetId
    , avrUpdates
    , avrTableRange

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
    , bcsTargetAxis
    , bcsSeries
    , bcsType

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

    -- ** Response
    , Response
    , response
    , rAddFilterView
    , rDuplicateFilterView
    , rUpdateEmbeddedObjectPosition
    , rAddSheet
    , rFindReplace
    , rAddProtectedRange
    , rDeleteConditionalFormatRule
    , rUpdateConditionalFormatRule
    , rAddNamedRange
    , rAddChart
    , rDuplicateSheet

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

    -- ** SortSpecSortOrder
    , SortSpecSortOrder (..)

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
    , sprProperties

    -- ** InsertDimensionRequest
    , InsertDimensionRequest
    , insertDimensionRequest
    , idrRange
    , idrInheritFromBefore

    -- ** PivotValueSummarizeFunction
    , PivotValueSummarizeFunction (..)

    -- ** InterpolationPoint
    , InterpolationPoint
    , interpolationPoint
    , ipColor
    , ipValue
    , ipType

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

    -- ** ChartSourceRange
    , ChartSourceRange
    , chartSourceRange
    , csrSources

    -- ** AddNamedRangeResponse
    , AddNamedRangeResponse
    , addNamedRangeResponse
    , anrrNamedRange

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

    -- ** GridProperties
    , GridProperties
    , gridProperties
    , gpFrozenColumnCount
    , gpColumnCount
    , gpHideGridlines
    , gpFrozenRowCount
    , gpRowCount

    -- ** CellFormatHyperlinkDisplayType
    , CellFormatHyperlinkDisplayType (..)

    -- ** BasicFilterCriteria
    , BasicFilterCriteria
    , basicFilterCriteria
    , bfcAddtional

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

    -- ** DuplicateSheetRequest
    , DuplicateSheetRequest
    , duplicateSheetRequest
    , dsrNewSheetName
    , dsrInsertSheetIndex
    , dsrSourceSheetId
    , dsrNewSheetId

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

    -- ** MergeCellsRequest
    , MergeCellsRequest
    , mergeCellsRequest
    , mcrMergeType
    , mcrRange

    -- ** MergeCellsRequestMergeType
    , MergeCellsRequestMergeType (..)

    -- ** CellFormatHorizontalAlignment
    , CellFormatHorizontalAlignment (..)

    -- ** BOrder
    , BOrder
    , bOrder
    , boStyle
    , boColor
    , boWidth

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
    , pvSummarizeFunction

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

    -- ** BatchUpdateSpreadsheetRequest
    , BatchUpdateSpreadsheetRequest
    , batchUpdateSpreadsheetRequest
    , busrRequests

    -- ** PasteDataRequestType
    , PasteDataRequestType (..)

    -- ** UpdateValuesResponse
    , UpdateValuesResponse
    , updateValuesResponse
    , uvrUpdatedCells
    , uvrSpreadsheetId
    , uvrUpdatedRows
    , uvrUpdatedRange
    , uvrUpdatedColumns

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

    -- ** BasicChartAxis
    , BasicChartAxis
    , basicChartAxis
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

    -- ** BatchUpdateSpreadsheetResponse
    , BatchUpdateSpreadsheetResponse
    , batchUpdateSpreadsheetResponse
    , busrSpreadsheetId
    , busrReplies

    -- ** SetDataValidationRequest
    , SetDataValidationRequest
    , setDataValidationRequest
    , sdvrRule
    , sdvrRange

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
    , pgValueMetadata
    , pgSourceColumnOffSet
    , pgSortOrder
    , pgShowTotals
    , pgValueBucket

    -- ** CutPasteRequestPasteType
    , CutPasteRequestPasteType (..)

    -- ** BasicChartSpecLegendPosition
    , BasicChartSpecLegendPosition (..)

    -- ** ErrorValueType
    , ErrorValueType (..)

    -- ** ConditionalFormatRule
    , ConditionalFormatRule
    , conditionalFormatRule
    , cfrBooleanRule
    , cfrGradientRule
    , cfrRanges

    -- ** BasicChartSpec
    , BasicChartSpec
    , basicChartSpec
    , bHeaderCount
    , bLegendPosition
    , bSeries
    , bChartType
    , bDomains
    , bAxis

    -- ** AddConditionalFormatRuleRequest
    , AddConditionalFormatRuleRequest
    , addConditionalFormatRuleRequest
    , acfrrRule
    , acfrrIndex

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

    -- ** BatchClearValuesResponse
    , BatchClearValuesResponse
    , batchClearValuesResponse
    , bcvrClearedRanges
    , bcvrSpreadsheetId

    -- ** BasicChartDomain
    , BasicChartDomain
    , basicChartDomain
    , bcdDomain

    -- ** InterpolationPointType
    , InterpolationPointType (..)

    -- ** TextToColumnsRequestDelimiterType
    , TextToColumnsRequestDelimiterType (..)

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
    , csTitle
    , csPieChart
    , csBasicChart
    , csHiddenDimensionStrategy

    -- ** DimensionProperties
    , DimensionProperties
    , dimensionProperties
    , dpHiddenByFilter
    , dpPixelSize
    , dpHiddenByUser

    -- ** BatchGetValuesResponse
    , BatchGetValuesResponse
    , batchGetValuesResponse
    , bgvrSpreadsheetId
    , bgvrValueRanges

    -- ** Request'
    , Request'
    , request'
    , reqAddFilterView
    , reqDeleteProtectedRange
    , reqUpdateProtectedRange
    , reqUpdateCells
    , reqDuplicateFilterView
    , reqAddConditionalFormatRule
    , reqSortRange
    , reqUpdateNamedRange
    , reqDeleteNamedRange
    , reqClearBasicFilter
    , reqAppendCells
    , reqPasteData
    , reqUpdateEmbeddedObjectPosition
    , reqCopyPaste
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
    , reqMergeCells
    , reqAddNamedRange
    , reqAddChart
    , reqDuplicateSheet
    , reqAutoFill
    , reqUpdateDimensionProperties
    , reqUpdateChartSpec
    , reqSetBasicFilter
    , reqTextToColumns
    , reqUpdateSpreadsheetProperties
    , reqDeleteSheet
    , reqUnmergeCells
    , reqUpdateBOrders
    , reqAppendDimension
    , reqSetDataValidation

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
import           Network.Google.Resource.Sheets.Spreadsheets.Get
import           Network.Google.Resource.Sheets.Spreadsheets.Sheets.CopyTo
import           Network.Google.Resource.Sheets.Spreadsheets.Values.Append
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchClear
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchGet
import           Network.Google.Resource.Sheets.Spreadsheets.Values.BatchUpdate
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
       :<|> SpreadsheetsValuesGetResource
       :<|> SpreadsheetsValuesClearResource
       :<|> SpreadsheetsValuesBatchGetResource
       :<|> SpreadsheetsValuesBatchUpdateResource
       :<|> SpreadsheetsValuesAppendResource
       :<|> SpreadsheetsValuesUpdateResource
       :<|> SpreadsheetsGetResource
       :<|> SpreadsheetsCreateResource
       :<|> SpreadsheetsBatchUpdateResource

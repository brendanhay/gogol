{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClick.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Report and modify your advertising data in DoubleClick Search (for
-- example, campaigns, ad groups, keywords, and conversions).
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference>
module Network.Google.DoubleClick.Search
    (
    -- * REST Resources

    -- ** DoubleClick Search API
      DoubleClickSearch
    , doubleClickSearch
    , doubleClickSearchURL

    -- ** doubleclicksearch.conversion.get
    , module Network.Google.API.DoubleClickSearch.Conversion.Get

    -- ** doubleclicksearch.conversion.insert
    , module Network.Google.API.DoubleClickSearch.Conversion.Insert

    -- ** doubleclicksearch.conversion.patch
    , module Network.Google.API.DoubleClickSearch.Conversion.Patch

    -- ** doubleclicksearch.conversion.update
    , module Network.Google.API.DoubleClickSearch.Conversion.Update

    -- ** doubleclicksearch.conversion.updateAvailability
    , module Network.Google.API.DoubleClickSearch.Conversion.UpdateAvailability

    -- ** doubleclicksearch.reports.generate
    , module Network.Google.API.DoubleClickSearch.Reports.Generate

    -- ** doubleclicksearch.reports.get
    , module Network.Google.API.DoubleClickSearch.Reports.Get

    -- ** doubleclicksearch.reports.getFile
    , module Network.Google.API.DoubleClickSearch.Reports.GetFile

    -- ** doubleclicksearch.reports.request
    , module Network.Google.API.DoubleClickSearch.Reports.Request

    -- ** doubleclicksearch.savedColumns.list
    , module Network.Google.API.DoubleClickSearch.SavedColumns.List

    -- * Types

    -- ** ReportRequestItemOrderBy
    , ReportRequestItemOrderBy
    , reportRequestItemOrderBy
    , rriobSortOrder
    , rriobColumn

    -- ** CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

    -- ** Alt
    , Alt (..)

    -- ** ReportApiColumnSpec
    , ReportApiColumnSpec
    , reportApiColumnSpec
    , racsCustomDimensionName
    , racsSavedColumnName
    , racsGroupByColumn
    , racsCustomMetricName
    , racsEndDate
    , racsStartDate
    , racsHeaderText
    , racsPlatformSource
    , racsColumnName

    -- ** ReportItemFiles
    , ReportItemFiles
    , reportItemFiles
    , rifUrl
    , rifByteCount

    -- ** Conversion
    , Conversion
    , conversion
    , cAdGroupId
    , cConversionModifiedTimestamp
    , cState
    , cEngineAccountId
    , cAgencyId
    , cCurrencyCode
    , cStoreId
    , cDsConversionId
    , cConversionId
    , cAdvertiserId
    , cSegmentationId
    , cChannel
    , cProductCountry
    , cCampaignId
    , cCriterionId
    , cConversionTimestamp
    , cAttributionModel
    , cSegmentationName
    , cProductLanguage
    , cCustomMetric
    , cCountMillis
    , cQuantityMillis
    , cAdId
    , cDeviceType
    , cType
    , cCustomDimension
    , cFloodlightOrderId
    , cRevenueMicros
    , cClickId
    , cInventoryAccountId
    , cSegmentationType
    , cProductId
    , cProductGroupId

    -- ** ReportRequestReportScope
    , ReportRequestReportScope
    , reportRequestReportScope
    , rrrsKeywordId
    , rrrsAdGroupId
    , rrrsEngineAccountId
    , rrrsAgencyId
    , rrrsAdvertiserId
    , rrrsCampaignId
    , rrrsAdId

    -- ** UpdateAvailabilityResponse
    , UpdateAvailabilityResponse
    , updateAvailabilityResponse
    , uarAvailabilities

    -- ** SavedColumn
    , SavedColumn
    , savedColumn
    , scSavedColumnName
    , scKind
    , scType

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

    -- ** ReportRequestTimeRange
    , ReportRequestTimeRange
    , reportRequestTimeRange
    , rrtrEndDate
    , rrtrChangedAttributesSinceTimestamp
    , rrtrStartDate
    , rrtrChangedMetricsSinceTimestamp

    -- ** Report
    , Report
    , report
    , rKind
    , rRows
    , rStatisticsCurrencyCode
    , rIsReportReady
    , rFiles
    , rId
    , rStatisticsTimeZone
    , rRowCount
    , rRequest

    -- ** SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems

    -- ** ReportRow
    , ReportRow
    , reportRow

    -- ** ReportRequest
    , ReportRequest
    , reportRequest
    , rrMaxRowsPerFile
    , rrReportScope
    , rrStatisticsCurrency
    , rrTimeRange
    , rrOrderBy
    , rrFilters
    , rrIncludeRemovedEntities
    , rrIncludeDeletedEntities
    , rrDownloadFormat
    , rrStartRow
    , rrColumns
    , rrReportType
    , rrVerifySingleTimeZone
    , rrRowCount

    -- ** ReportRequestItemFilters
    , ReportRequestItemFilters
    , reportRequestItemFilters
    , rrifOperator
    , rrifValues
    , rrifColumn

    -- ** ConversionList
    , ConversionList
    , conversionList
    , clKind
    , clConversion

    -- ** UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uAvailabilities

    -- ** Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType
    ) where

import           Network.Google.API.DoubleClickSearch.Conversion.Get
import           Network.Google.API.DoubleClickSearch.Conversion.Insert
import           Network.Google.API.DoubleClickSearch.Conversion.Patch
import           Network.Google.API.DoubleClickSearch.Conversion.Update
import           Network.Google.API.DoubleClickSearch.Conversion.UpdateAvailability
import           Network.Google.API.DoubleClickSearch.Reports.Generate
import           Network.Google.API.DoubleClickSearch.Reports.Get
import           Network.Google.API.DoubleClickSearch.Reports.GetFile
import           Network.Google.API.DoubleClickSearch.Reports.Request
import           Network.Google.API.DoubleClickSearch.SavedColumns.List
import           Network.Google.DoubleClick.Search.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DoubleClickSearch =
     ReportsGetAPI :<|> ConversionUpdateAvailabilityAPI
       :<|> ReportsGetFileAPI
       :<|> ReportsGenerateAPI
       :<|> ConversionGetAPI
       :<|> ReportsRequestAPI
       :<|> ConversionInsertAPI
       :<|> ConversionPatchAPI
       :<|> ConversionUpdateAPI
       :<|> SavedColumnsListAPI

doubleClickSearch :: Proxy DoubleClickSearch
doubleClickSearch = Proxy

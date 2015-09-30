{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClickSearch
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
module Network.Google.DoubleClickSearch
    (
    -- * API
      DoubleClickSearchAPI
    , doubleClickSearchAPI
    , doubleClickSearchURL

    -- * Service Methods

    -- * REST Resources

    -- ** DoubleclicksearchConversionGet
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Get

    -- ** DoubleclicksearchConversionInsert
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Insert

    -- ** DoubleclicksearchConversionPatch
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Patch

    -- ** DoubleclicksearchConversionUpdate
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Update

    -- ** DoubleclicksearchConversionUpdateAvailability
    , module Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability

    -- ** DoubleclicksearchReportsGenerate
    , module Network.Google.Resource.DoubleClickSearch.Reports.Generate

    -- ** DoubleclicksearchReportsGet
    , module Network.Google.Resource.DoubleClickSearch.Reports.Get

    -- ** DoubleclicksearchReportsGetFile
    , module Network.Google.Resource.DoubleClickSearch.Reports.GetFile

    -- ** DoubleclicksearchReportsRequest
    , module Network.Google.Resource.DoubleClickSearch.Reports.Request

    -- ** DoubleclicksearchSavedColumnsList
    , module Network.Google.Resource.DoubleClickSearch.SavedColumns.List

    -- * Types

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

    -- ** ReportFiles
    , ReportFiles
    , reportFiles
    , rfUrl
    , rfByteCount

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

    -- ** UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uarAvailabilities

    -- ** Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType

    -- ** ReportRequestFilters
    , ReportRequestFilters
    , reportRequestFilters
    , rrfOperator
    , rrfValues
    , rrfColumn

    -- ** CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

    -- ** ReportRequestOrderBy
    , ReportRequestOrderBy
    , reportRequestOrderBy
    , rrobSortOrder
    , rrobColumn

    -- ** ConversionList
    , ConversionList
    , conversionList
    , clKind
    , clConversion

    -- ** ReportAPIColumnSpec
    , ReportAPIColumnSpec
    , reportAPIColumnSpec
    , racsCustomDimensionName
    , racsSavedColumnName
    , racsGroupByColumn
    , racsCustomMetricName
    , racsEndDate
    , racsStartDate
    , racsHeaderText
    , racsPlatformSource
    , racsColumnName

    -- ** ReportRequestTimeRange
    , ReportRequestTimeRange
    , reportRequestTimeRange
    , rrtrEndDate
    , rrtrChangedAttributesSinceTimestamp
    , rrtrStartDate
    , rrtrChangedMetricsSinceTimestamp

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

    -- ** SavedColumn
    , SavedColumn
    , savedColumn
    , scSavedColumnName
    , scKind
    , scType

    -- ** UpdateAvailabilityResponse
    , UpdateAvailabilityResponse
    , updateAvailabilityResponse
    , uAvailabilities

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

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

    -- ** SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DoubleClickSearch.Conversion.Get
import           Network.Google.Resource.DoubleClickSearch.Conversion.Insert
import           Network.Google.Resource.DoubleClickSearch.Conversion.Patch
import           Network.Google.Resource.DoubleClickSearch.Conversion.Update
import           Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
import           Network.Google.Resource.DoubleClickSearch.Reports.Generate
import           Network.Google.Resource.DoubleClickSearch.Reports.Get
import           Network.Google.Resource.DoubleClickSearch.Reports.GetFile
import           Network.Google.Resource.DoubleClickSearch.Reports.Request
import           Network.Google.Resource.DoubleClickSearch.SavedColumns.List

{- $resources
TODO
-}

type DoubleClickSearchAPI =
     ReportsGetResource :<|> ReportsGetFileResource :<|>
       ReportsGenerateResource
       :<|> ReportsRequestResource
       :<|> SavedColumnsListResource
       :<|> ConversionInsertResource
       :<|> ConversionPatchResource
       :<|> ConversionGetResource
       :<|> ConversionUpdateAvailabilityResource
       :<|> ConversionUpdateResource

doubleClickSearchAPI :: Proxy DoubleClickSearchAPI
doubleClickSearchAPI = Proxy

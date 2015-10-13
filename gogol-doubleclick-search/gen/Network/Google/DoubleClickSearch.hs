{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Report and modify your advertising data in DoubleClick Search (for
-- example, campaigns, ad groups, keywords, and conversions).
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference>
module Network.Google.DoubleClickSearch
    (
    -- * Service Configuration
      doubleClickSearchService

    -- * API Declaration
    , DoubleClickSearchAPI

    -- * Resources

    -- ** DoubleClicksearchConversionGet
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Get

    -- ** DoubleClicksearchConversionInsert
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Insert

    -- ** DoubleClicksearchConversionPatch
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Patch

    -- ** DoubleClicksearchConversionUpdate
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Update

    -- ** DoubleClicksearchConversionUpdateAvailability
    , module Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability

    -- ** DoubleClicksearchReportsGenerate
    , module Network.Google.Resource.DoubleClickSearch.Reports.Generate

    -- ** DoubleClicksearchReportsGet
    , module Network.Google.Resource.DoubleClickSearch.Reports.Get

    -- ** DoubleClicksearchReportsGetFile
    , module Network.Google.Resource.DoubleClickSearch.Reports.GetFile

    -- ** DoubleClicksearchReportsRequest
    , module Network.Google.Resource.DoubleClickSearch.Reports.Request

    -- ** DoubleClicksearchSavedColumnsList
    , module Network.Google.Resource.DoubleClickSearch.SavedColumns.List

    -- * Types

    -- ** ReportRow
    , ReportRow
    , reportRow
    , rrAddtional

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

    -- ** ReportRequestOrderByItem
    , ReportRequestOrderByItem
    , reportRequestOrderByItem
    , rrobiSortOrder
    , rrobiColumn

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

    -- ** ReportFilesItem
    , ReportFilesItem
    , reportFilesItem
    , rfiURL
    , rfiByteCount

    -- ** ReportRequestFiltersItem
    , ReportRequestFiltersItem
    , reportRequestFiltersItem
    , rrfiOperator
    , rrfiValues
    , rrfiColumn

    -- ** Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType

    -- ** UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uarAvailabilities

    -- ** CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

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

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

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

    -- ** SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems
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

-- | Represents the entirety of the methods and resources available for the DoubleClick Search API service.
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

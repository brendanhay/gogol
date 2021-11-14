{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClickSearch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Search Ads 360 API allows developers to automate uploading
-- conversions and downloading reports from Search Ads 360.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference>
module Network.Google.DoubleClickSearch
    (
    -- * Service Configuration
      doubleClickSearchService

    -- * OAuth Scopes
    , doubleClickSearchScope

    -- * API Declaration
    , DoubleClickSearchAPI

    -- * Resources

    -- ** doubleclicksearch.conversion.get
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Get

    -- ** doubleclicksearch.conversion.insert
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Insert

    -- ** doubleclicksearch.conversion.update
    , module Network.Google.Resource.DoubleClickSearch.Conversion.Update

    -- ** doubleclicksearch.conversion.updateAvailability
    , module Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability

    -- ** doubleclicksearch.reports.generate
    , module Network.Google.Resource.DoubleClickSearch.Reports.Generate

    -- ** doubleclicksearch.reports.get
    , module Network.Google.Resource.DoubleClickSearch.Reports.Get

    -- ** doubleclicksearch.reports.getFile
    , module Network.Google.Resource.DoubleClickSearch.Reports.GetFile

    -- ** doubleclicksearch.reports.request
    , module Network.Google.Resource.DoubleClickSearch.Reports.Request

    -- ** doubleclicksearch.savedColumns.list
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** ReportAPIColumnSpec
    , ReportAPIColumnSpec
    , reportAPIColumnSpec
    , racsCustomDimensionName
    , racsSavedColumnName
    , racsGroupByColumn
    , racsCustomMetricName
    , racsEndDate
    , racsProductReportPerspective
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

import Network.Google.Prelude
import Network.Google.DoubleClickSearch.Types
import Network.Google.Resource.DoubleClickSearch.Conversion.Get
import Network.Google.Resource.DoubleClickSearch.Conversion.Insert
import Network.Google.Resource.DoubleClickSearch.Conversion.Update
import Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
import Network.Google.Resource.DoubleClickSearch.Reports.Generate
import Network.Google.Resource.DoubleClickSearch.Reports.Get
import Network.Google.Resource.DoubleClickSearch.Reports.GetFile
import Network.Google.Resource.DoubleClickSearch.Reports.Request
import Network.Google.Resource.DoubleClickSearch.SavedColumns.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Search Ads 360 API service.
type DoubleClickSearchAPI =
     ReportsGetResource :<|> ReportsGetFileResource :<|>
       ReportsGenerateResource
       :<|> ReportsRequestResource
       :<|> SavedColumnsListResource
       :<|> ConversionInsertResource
       :<|> ConversionGetResource
       :<|> ConversionUpdateAvailabilityResource
       :<|> ConversionUpdateResource

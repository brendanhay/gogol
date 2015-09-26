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
    -- * Resources
      DoubleClickSearch
    , ReportsAPI
    , ReportsGet
    , ReportsGetFile
    , ReportsGenerate
    , ReportsRequest
    , SavedColumnsAPI
    , SavedColumnsList
    , ConversionAPI
    , ConversionInsert
    , ConversionPatch
    , ConversionGet
    , ConversionUpdateAvailability
    , ConversionUpdate

    -- * Types

    -- ** Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType

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

    -- ** ConversionList
    , ConversionList
    , conversionList
    , clKind
    , clConversion

    -- ** CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

    -- ** CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

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

    -- ** ReportRequestItemOrderBy
    , ReportRequestItemOrderBy
    , reportRequestItemOrderBy
    , rriobSortOrder
    , rriobColumn

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

    -- ** ReportRequestTimeRange
    , ReportRequestTimeRange
    , reportRequestTimeRange
    , rrtrEndDate
    , rrtrChangedAttributesSinceTimestamp
    , rrtrStartDate
    , rrtrChangedMetricsSinceTimestamp

    -- ** ReportRow
    , ReportRow
    , reportRow

    -- ** SavedColumn
    , SavedColumn
    , savedColumn
    , scSavedColumnName
    , scKind
    , scType

    -- ** SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems

    -- ** UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uAvailabilities

    -- ** UpdateAvailabilityResponse
    , UpdateAvailabilityResponse
    , updateAvailabilityResponse
    , uarAvailabilities
    ) where

import           Network.Google.DoubleClick.Search.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DoubleClickSearch =
     ReportsAPI :<|> SavedColumnsAPI :<|> ConversionAPI

type ReportsAPI =
     ReportsGet :<|> ReportsGetFile :<|> ReportsGenerate
       :<|> ReportsRequest

-- | Polls for the status of a report request.
type ReportsGet =
     "doubleclicksearch" :> "v2" :> "reports" :>
       Capture "reportId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Downloads a report file encoded in UTF-8.
type ReportsGetFile =
     "doubleclicksearch" :> "v2" :> "reports" :>
       Capture "reportId" Text
       :> "files"
       :> Capture "reportFragment" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Generates and returns a report immediately.
type ReportsGenerate =
     "doubleclicksearch" :> "v2" :> "reports" :>
       "generate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Inserts a report request into the reporting system.
type ReportsRequest =
     "doubleclicksearch" :> "v2" :> "reports" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SavedColumnsAPI = SavedColumnsList

-- | Retrieve the list of saved columns for a specified advertiser.
type SavedColumnsList =
     "doubleclicksearch" :> "v2" :> "agency" :>
       Capture "agencyId" Int64
       :> "advertiser"
       :> Capture "advertiserId" Int64
       :> "savedcolumns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ConversionAPI =
     ConversionInsert :<|> ConversionPatch :<|>
       ConversionGet
       :<|> ConversionUpdateAvailability
       :<|> ConversionUpdate

-- | Inserts a batch of new conversions into DoubleClick Search.
type ConversionInsert =
     "doubleclicksearch" :> "v2" :> "conversion" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a batch of conversions in DoubleClick Search. This method
-- supports patch semantics.
type ConversionPatch =
     "doubleclicksearch" :> "v2" :> "conversion" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "engineAccountId" Int64
       :> QueryParam "agencyId" Int64
       :> QueryParam "userIp" Text
       :> QueryParam "advertiserId" Int64
       :> QueryParam "endDate" Natural
       :> QueryParam "startDate" Natural
       :> QueryParam "key" Text
       :> QueryParam "startRow" Word32
       :> QueryParam "oauth_token" Text
       :> QueryParam "rowCount" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of conversions from a DoubleClick Search engine
-- account.
type ConversionGet =
     "doubleclicksearch" :> "v2" :> "agency" :>
       Capture "agencyId" Int64
       :> "advertiser"
       :> Capture "advertiserId" Int64
       :> "engine"
       :> Capture "engineAccountId" Int64
       :> "conversion"
       :> QueryParam "quotaUser" Text
       :> QueryParam "adGroupId" Int64
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "endDate" Natural
       :> QueryParam "campaignId" Int64
       :> QueryParam "criterionId" Int64
       :> QueryParam "startDate" Natural
       :> QueryParam "key" Text
       :> QueryParam "startRow" Word32
       :> QueryParam "adId" Int64
       :> QueryParam "oauth_token" Text
       :> QueryParam "rowCount" Natural
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
type ConversionUpdateAvailability =
     "doubleclicksearch" :> "v2" :> "conversion" :>
       "updateAvailability"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a batch of conversions in DoubleClick Search.
type ConversionUpdate =
     "doubleclicksearch" :> "v2" :> "conversion" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

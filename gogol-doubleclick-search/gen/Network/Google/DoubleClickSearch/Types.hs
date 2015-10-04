{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickSearch.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickSearch.Types
    (
    -- * Service URL
      doubleClickSearchURL

    -- * ReportScope
    , ReportScope
    , reportScope
    , rsKeywordId
    , rsAdGroupId
    , rsEngineAccountId
    , rsAgencyId
    , rsAdvertiserId
    , rsCampaignId
    , rsAdId

    -- * ReportRow
    , ReportRow
    , reportRow

    -- * ReportRequest
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

    -- * TimeRange
    , TimeRange
    , timeRange
    , trEndDate
    , trChangedAttributesSinceTimestamp
    , trStartDate
    , trChangedMetricsSinceTimestamp

    -- * FilesItem
    , FilesItem
    , filesItem
    , fiURL
    , fiByteCount

    -- * Report
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

    -- * FiltersItem
    , FiltersItem
    , filtersItem
    , fiOperator
    , fiValues
    , fiColumn

    -- * UpdateAvailabilityRequest
    , UpdateAvailabilityRequest
    , updateAvailabilityRequest
    , uarAvailabilities

    -- * Availability
    , Availability
    , availability
    , aAgencyId
    , aAdvertiserId
    , aSegmentationId
    , aSegmentationName
    , aAvailabilityTimestamp
    , aSegmentationType

    -- * CustomMetric
    , CustomMetric
    , customMetric
    , cmValue
    , cmName

    -- * ConversionList
    , ConversionList
    , conversionList
    , clKind
    , clConversion

    -- * ReportAPIColumnSpec
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

    -- * Conversion
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

    -- * OrderByItem
    , OrderByItem
    , orderByItem
    , obiSortOrder
    , obiColumn

    -- * SavedColumn
    , SavedColumn
    , savedColumn
    , scSavedColumnName
    , scKind
    , scType

    -- * UpdateAvailabilityResponse
    , UpdateAvailabilityResponse
    , updateAvailabilityResponse
    , uAvailabilities

    -- * CustomDimension
    , CustomDimension
    , customDimension
    , cdValue
    , cdName

    -- * SavedColumnList
    , SavedColumnList
    , savedColumnList
    , sclKind
    , sclItems
    ) where

import           Network.Google.DoubleClickSearch.Types.Product
import           Network.Google.DoubleClickSearch.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the DoubleClick Search API.
doubleClickSearchURL :: BaseUrl
doubleClickSearchURL
  = BaseUrl Https
      "https://www.googleapis.com/doubleclicksearch/v2/"
      443

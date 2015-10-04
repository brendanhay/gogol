{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebmasterTools.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebmasterTools.Types
    (
    -- * Service URL
      webmasterToolsURL

    -- * WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted

    -- * URLCrawlErrorCountsPerType
    , URLCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- * APIdimensionFilterGroup
    , APIdimensionFilterGroup
    , apidimensionFilterGroup
    , afgFilters
    , afgGroupType

    -- * Platform
    , Platform (..)

    -- * URLSampleDetails
    , URLSampleDetails
    , urlSampleDetails
    , usdLinkedFromURLs
    , usdContainingSitemaps

    -- * APIdataRow
    , APIdataRow
    , apidataRow
    , arImpressions
    , arKeys
    , arCtr
    , arClicks
    , arPosition

    -- * APIdimensionFilter
    , APIdimensionFilter
    , apidimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- * Category
    , Category (..)

    -- * URLCrawlErrorCount
    , URLCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- * WebmastersURLCrawlErrorscountsQueryCategory
    , WebmastersURLCrawlErrorscountsQueryCategory (..)

    -- * SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- * WebmastersURLCrawlErrorsSamplesGetCategory
    , WebmastersURLCrawlErrorsSamplesGetCategory (..)

    -- * WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform
    , WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform (..)

    -- * URLCrawlErrorsSamplesListResponse
    , URLCrawlErrorsSamplesListResponse
    , urlCrawlErrorsSamplesListResponse
    , uceslrURLCrawlErrorSample

    -- * URLCrawlErrorsCountsQueryResponse
    , URLCrawlErrorsCountsQueryResponse
    , urlCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- * URLCrawlErrorsSample
    , URLCrawlErrorsSample
    , urlCrawlErrorsSample
    , ucesResponseCode
    , ucesURLDetails
    , ucesLastCrawled
    , ucesPageURL
    , ucesFirstDetected

    -- * SitemapsListResponse
    , SitemapsListResponse
    , sitemapsListResponse
    , slrSitemap

    -- * WmxSitemap
    , WmxSitemap
    , wmxSitemap
    , wsContents
    , wsPath
    , wsIsSitemapsIndex
    , wsLastSubmitted
    , wsWarnings
    , wsLastDownloaded
    , wsIsPending
    , wsType
    , wsErrors

    -- * WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory
    , WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory (..)

    -- * WebmastersURLCrawlErrorsSamplesGetPlatform
    , WebmastersURLCrawlErrorsSamplesGetPlatform (..)

    -- * SearchAnalyticsQueryRequest
    , SearchAnalyticsQueryRequest
    , searchAnalyticsQueryRequest
    , saqrAggregationType
    , saqrRowLimit
    , saqrEndDate
    , saqrSearchType
    , saqrDimensionFilterGroups
    , saqrStartDate
    , saqrDimensions

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- * WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteURL

    -- * WebmastersURLCrawlErrorscountsQueryPlatform
    , WebmastersURLCrawlErrorscountsQueryPlatform (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types.Product
import           Network.Google.WebmasterTools.Types.Sum

-- | URL referring to version 'v3' of the Webmaster Tools API.
webmasterToolsURL :: BaseUrl
webmasterToolsURL
  = BaseUrl Https
      "https://www.googleapis.com/webmasters/v3/"
      443

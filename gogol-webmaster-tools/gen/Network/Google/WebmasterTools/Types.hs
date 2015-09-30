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
    , uRLCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- * APIdimensionFilterGroup
    , APIdimensionFilterGroup
    , aPIdimensionFilterGroup
    , afgFilters
    , afgGroupType

    -- * URLSampleDetails
    , URLSampleDetails
    , uRLSampleDetails
    , usdLinkedFromUrls
    , usdContainingSitemaps

    -- * APIdataRow
    , APIdataRow
    , aPIdataRow
    , arImpressions
    , arKeys
    , arCtr
    , arClicks
    , arPosition

    -- * APIdimensionFilter
    , APIdimensionFilter
    , aPIdimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- * URLCrawlErrorCount
    , URLCrawlErrorCount
    , uRLCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- * WebmastersURLcrawlerrorscountsQueryCategory
    , WebmastersURLcrawlerrorscountsQueryCategory (..)

    -- * SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- * WebmastersURLcrawlerrorssamplesListPlatform
    , WebmastersURLcrawlerrorssamplesListPlatform (..)

    -- * WebmastersURLcrawlerrorssamplesGetCategory
    , WebmastersURLcrawlerrorssamplesGetCategory (..)

    -- * WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform
    , WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform (..)

    -- * URLCrawlErrorsSamplesListResponse
    , URLCrawlErrorsSamplesListResponse
    , uRLCrawlErrorsSamplesListResponse
    , uceslrUrlCrawlErrorSample

    -- * URLCrawlErrorsCountsQueryResponse
    , URLCrawlErrorsCountsQueryResponse
    , uRLCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- * URLCrawlErrorsSample
    , URLCrawlErrorsSample
    , uRLCrawlErrorsSample
    , ucesResponseCode
    , ucesUrlDetails
    , ucesLastCrawled
    , ucesPageUrl
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

    -- * WebmastersURLcrawlerrorssamplesMarkAsFixedCategory
    , WebmastersURLcrawlerrorssamplesMarkAsFixedCategory (..)

    -- * WebmastersURLcrawlerrorssamplesGetPlatform
    , WebmastersURLcrawlerrorssamplesGetPlatform (..)

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

    -- * WebmastersURLcrawlerrorssamplesListCategory
    , WebmastersURLcrawlerrorssamplesListCategory (..)

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- * WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl

    -- * Alt
    , Alt (..)

    -- * WebmastersURLcrawlerrorscountsQueryPlatform
    , WebmastersURLcrawlerrorscountsQueryPlatform (..)
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

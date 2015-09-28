{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Webmaster.Tools.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Webmaster.Tools.Types
    (
    -- * Service URL
      webmasterToolsURL

    -- * URLcrawlerrorssamplesGet'Category
    , URLcrawlerrorssamplesGet'Category (..)

    -- * URLcrawlerrorssamplesList'Platform
    , URLcrawlerrorssamplesList'Platform (..)

    -- * UrlCrawlErrorsSamplesListResponse
    , UrlCrawlErrorsSamplesListResponse
    , urlCrawlErrorsSamplesListResponse
    , uceslrUrlCrawlErrorSample

    -- * ApiDataRow
    , ApiDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- * URLcrawlerrorscountsQuery'Platform
    , URLcrawlerrorscountsQuery'Platform (..)

    -- * Alt
    , Alt (..)

    -- * UrlCrawlErrorsSample
    , UrlCrawlErrorsSample
    , urlCrawlErrorsSample
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

    -- * URLcrawlerrorssamplesList'Category
    , URLcrawlerrorssamplesList'Category (..)

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

    -- * URLcrawlerrorssamplesGet'Platform
    , URLcrawlerrorssamplesGet'Platform (..)

    -- * WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- * WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted

    -- * URLcrawlerrorssamplesMarkAsFixed'Platform
    , URLcrawlerrorssamplesMarkAsFixed'Platform (..)

    -- * UrlSampleDetails
    , UrlSampleDetails
    , urlSampleDetails
    , usdLinkedFromUrls
    , usdContainingSitemaps

    -- * UrlCrawlErrorCountsPerType
    , UrlCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- * ApiDimensionFilterGroup
    , ApiDimensionFilterGroup
    , apiDimensionFilterGroup
    , adfgFilters
    , adfgGroupType

    -- * UrlCrawlErrorsCountsQueryResponse
    , UrlCrawlErrorsCountsQueryResponse
    , urlCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- * URLcrawlerrorscountsQuery'Category
    , URLcrawlerrorscountsQuery'Category (..)

    -- * ApiDimensionFilter
    , ApiDimensionFilter
    , apiDimensionFilter
    , adfOperator
    , adfDimension
    , adfExpression

    -- * URLcrawlerrorssamplesMarkAsFixed'Category
    , URLcrawlerrorssamplesMarkAsFixed'Category (..)

    -- * UrlCrawlErrorCount
    , UrlCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- * SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType
    ) where

import           Network.Google.Prelude
import           Network.Google.Webmaster.Tools.Types.Product
import           Network.Google.Webmaster.Tools.Types.Sum

-- | URL referring to version 'v3' of the Webmaster Tools API.
webmasterToolsURL :: BaseUrl
webmasterToolsURL
  = BaseUrl Https
      "https://www.googleapis.com/webmasters/v3/"
      443

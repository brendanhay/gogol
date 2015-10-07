{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Request
      webmasterToolsRequest

    -- * WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted

    -- * APIdimensionFilterGroup
    , APIdimensionFilterGroup
    , apidimensionFilterGroup
    , afgFilters
    , afgGroupType

    -- * URLSampleDetails
    , URLSampleDetails
    , urlSampleDetails
    , usdLinkedFromURLs
    , usdContainingSitemaps

    -- * URLCrawlErrorsSamplesMarkAsFixedCategory
    , URLCrawlErrorsSamplesMarkAsFixedCategory (..)

    -- * URLCrawlErrorCountsPerType
    , URLCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- * URLCrawlErrorsSamplesGetPlatform
    , URLCrawlErrorsSamplesGetPlatform (..)

    -- * APIDataRow
    , APIDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- * APIdimensionFilter
    , APIdimensionFilter
    , apidimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- * URLCrawlErrorsSamplesMarkAsFixedPlatform
    , URLCrawlErrorsSamplesMarkAsFixedPlatform (..)

    -- * URLCrawlErrorsSamplesGetCategory
    , URLCrawlErrorsSamplesGetCategory (..)

    -- * URLCrawlErrorCount
    , URLCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- * URLCrawlErrorscountsQueryPlatform
    , URLCrawlErrorscountsQueryPlatform (..)

    -- * SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- * URLCrawlErrorsSamplesListCategory
    , URLCrawlErrorsSamplesListCategory (..)

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

    -- * SitemapsListResponse
    , SitemapsListResponse
    , sitemapsListResponse
    , slrSitemap

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

    -- * URLCrawlErrorsSamplesListPlatform
    , URLCrawlErrorsSamplesListPlatform (..)

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- * WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteURL

    -- * URLCrawlErrorscountsQueryCategory
    , URLCrawlErrorscountsQueryCategory (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types.Product
import           Network.Google.WebmasterTools.Types.Sum

-- | Default request referring to version 'v3' of the Webmaster Tools API. This contains the host and root path used as a starting point for constructing service requests.
webmasterToolsRequest :: RequestBuilder
webmasterToolsRequest
  = defaultRequest "https://www.googleapis.com/"
      "webmasters/v3/"

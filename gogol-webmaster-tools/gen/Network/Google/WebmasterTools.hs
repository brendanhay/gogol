{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.WebmasterTools
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you view Google Webmaster Tools data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference>
module Network.Google.WebmasterTools
    (
    -- * API
      WebmasterToolsAPI
    , webmasterToolsAPI
    , webmasterToolsURL

    -- * Service Methods

    -- * REST Resources

    -- ** WebmastersSearchanalyticsQuery
    , module Webmasters.Searchanalytics.Query

    -- ** WebmastersSitemapsDelete
    , module Webmasters.Sitemaps.Delete

    -- ** WebmastersSitemapsGet
    , module Webmasters.Sitemaps.Get

    -- ** WebmastersSitemapsList
    , module Webmasters.Sitemaps.List

    -- ** WebmastersSitemapsSubmit
    , module Webmasters.Sitemaps.Submit

    -- ** WebmastersSitesAdd
    , module Webmasters.Sites.Add

    -- ** WebmastersSitesDelete
    , module Webmasters.Sites.Delete

    -- ** WebmastersSitesGet
    , module Webmasters.Sites.Get

    -- ** WebmastersSitesList
    , module Webmasters.Sites.List

    -- ** WebmastersURLcrawlerrorscountsQuery
    , module Webmasters.URLcrawlerrorscounts.Query

    -- ** WebmastersURLcrawlerrorssamplesGet
    , module Webmasters.URLcrawlerrorssamples.Get

    -- ** WebmastersURLcrawlerrorssamplesList
    , module Webmasters.URLcrawlerrorssamples.List

    -- ** WebmastersURLcrawlerrorssamplesMarkAsFixed
    , module Webmasters.URLcrawlerrorssamples.MarkAsFixed

    -- * Types

    -- ** WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted

    -- ** URLCrawlErrorCountsPerType
    , URLCrawlErrorCountsPerType
    , uRLCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- ** APIdimensionFilterGroup
    , APIdimensionFilterGroup
    , aPIdimensionFilterGroup
    , afgFilters
    , afgGroupType

    -- ** URLSampleDetails
    , URLSampleDetails
    , uRLSampleDetails
    , usdLinkedFromUrls
    , usdContainingSitemaps

    -- ** APIdataRow
    , APIdataRow
    , aPIdataRow
    , arImpressions
    , arKeys
    , arCtr
    , arClicks
    , arPosition

    -- ** APIdimensionFilter
    , APIdimensionFilter
    , aPIdimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- ** URLCrawlErrorCount
    , URLCrawlErrorCount
    , uRLCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** URLCrawlErrorsSamplesListResponse
    , URLCrawlErrorsSamplesListResponse
    , uRLCrawlErrorsSamplesListResponse
    , uceslrUrlCrawlErrorSample

    -- ** URLCrawlErrorsCountsQueryResponse
    , URLCrawlErrorsCountsQueryResponse
    , uRLCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- ** URLCrawlErrorsSample
    , URLCrawlErrorsSample
    , uRLCrawlErrorsSample
    , ucesResponseCode
    , ucesUrlDetails
    , ucesLastCrawled
    , ucesPageUrl
    , ucesFirstDetected

    -- ** SitemapsListResponse
    , SitemapsListResponse
    , sitemapsListResponse
    , slrSitemap

    -- ** WmxSitemap
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

    -- ** SearchAnalyticsQueryRequest
    , SearchAnalyticsQueryRequest
    , searchAnalyticsQueryRequest
    , saqrAggregationType
    , saqrRowLimit
    , saqrEndDate
    , saqrSearchType
    , saqrDimensionFilterGroups
    , saqrStartDate
    , saqrDimensions

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Webmasters.Searchanalytics.Query
import           Network.Google.Resource.Webmasters.Sitemaps.Delete
import           Network.Google.Resource.Webmasters.Sitemaps.Get
import           Network.Google.Resource.Webmasters.Sitemaps.List
import           Network.Google.Resource.Webmasters.Sitemaps.Submit
import           Network.Google.Resource.Webmasters.Sites.Add
import           Network.Google.Resource.Webmasters.Sites.Delete
import           Network.Google.Resource.Webmasters.Sites.Get
import           Network.Google.Resource.Webmasters.Sites.List
import           Network.Google.Resource.Webmasters.URLcrawlerrorscounts.Query
import           Network.Google.Resource.Webmasters.URLcrawlerrorssamples.Get
import           Network.Google.Resource.Webmasters.URLcrawlerrorssamples.List
import           Network.Google.Resource.Webmasters.URLcrawlerrorssamples.MarkAsFixed
import           Network.Google.WebmasterTools.Types

{- $resources
TODO
-}

type WebmasterToolsAPI =
     URLcrawlerrorssamples :<|> Sitemaps :<|>
       Searchanalytics
       :<|> Sites
       :<|> URLcrawlerrorscounts

webmasterToolsAPI :: Proxy WebmasterToolsAPI
webmasterToolsAPI = Proxy

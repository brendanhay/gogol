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
    , module Network.Google.Resource.Webmasters.Searchanalytics.Query

    -- ** WebmastersSitemapsDelete
    , module Network.Google.Resource.Webmasters.Sitemaps.Delete

    -- ** WebmastersSitemapsGet
    , module Network.Google.Resource.Webmasters.Sitemaps.Get

    -- ** WebmastersSitemapsList
    , module Network.Google.Resource.Webmasters.Sitemaps.List

    -- ** WebmastersSitemapsSubmit
    , module Network.Google.Resource.Webmasters.Sitemaps.Submit

    -- ** WebmastersSitesAdd
    , module Network.Google.Resource.Webmasters.Sites.Add

    -- ** WebmastersSitesDelete
    , module Network.Google.Resource.Webmasters.Sites.Delete

    -- ** WebmastersSitesGet
    , module Network.Google.Resource.Webmasters.Sites.Get

    -- ** WebmastersSitesList
    , module Network.Google.Resource.Webmasters.Sites.List

    -- ** WebmastersURLcrawlerrorscountsQuery
    , module Network.Google.Resource.Webmasters.URLcrawlerrorscounts.Query

    -- ** WebmastersURLcrawlerrorssamplesGet
    , module Network.Google.Resource.Webmasters.URLcrawlerrorssamples.Get

    -- ** WebmastersURLcrawlerrorssamplesList
    , module Network.Google.Resource.Webmasters.URLcrawlerrorssamples.List

    -- ** WebmastersURLcrawlerrorssamplesMarkAsFixed
    , module Network.Google.Resource.Webmasters.URLcrawlerrorssamples.MarkAsFixed

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

    -- ** WebmastersURLcrawlerrorscountsQueryCategory
    , WebmastersURLcrawlerrorscountsQueryCategory (..)

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** WebmastersURLcrawlerrorssamplesListPlatform
    , WebmastersURLcrawlerrorssamplesListPlatform (..)

    -- ** WebmastersURLcrawlerrorssamplesGetCategory
    , WebmastersURLcrawlerrorssamplesGetCategory (..)

    -- ** WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform
    , WebmastersURLcrawlerrorssamplesMarkAsFixedPlatform (..)

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

    -- ** WebmastersURLcrawlerrorssamplesMarkAsFixedCategory
    , WebmastersURLcrawlerrorssamplesMarkAsFixedCategory (..)

    -- ** WebmastersURLcrawlerrorssamplesGetPlatform
    , WebmastersURLcrawlerrorssamplesGetPlatform (..)

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

    -- ** WebmastersURLcrawlerrorssamplesListCategory
    , WebmastersURLcrawlerrorssamplesListCategory (..)

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl

    -- ** Alt
    , Alt (..)

    -- ** WebmastersURLcrawlerrorscountsQueryPlatform
    , WebmastersURLcrawlerrorscountsQueryPlatform (..)
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
     UrlcrawlerrorssamplesListResource :<|>
       UrlcrawlerrorssamplesGetResource
       :<|> UrlcrawlerrorssamplesMarkAsFixedResource
       :<|> SitemapsListResource
       :<|> SitemapsGetResource
       :<|> SitemapsSubmitResource
       :<|> SitemapsDeleteResource
       :<|> SearchanalyticsQueryResource
       :<|> SitesListResource
       :<|> SitesGetResource
       :<|> SitesAddResource
       :<|> SitesDeleteResource
       :<|> UrlcrawlerrorscountsQueryResource

webmasterToolsAPI :: Proxy WebmasterToolsAPI
webmasterToolsAPI = Proxy

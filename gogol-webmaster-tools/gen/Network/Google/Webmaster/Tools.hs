{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Webmaster.Tools
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you view Google Webmaster Tools data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference>
module Network.Google.Webmaster.Tools
    (
    -- * REST Resources

    -- ** Webmaster Tools API
      WebmasterTools
    , webmasterTools
    , webmasterToolsURL

    -- ** webmasters.searchanalytics.query
    , module Network.Google.API.Webmasters.Searchanalytics.Query

    -- ** webmasters.sitemaps.delete
    , module Network.Google.API.Webmasters.Sitemaps.Delete

    -- ** webmasters.sitemaps.get
    , module Network.Google.API.Webmasters.Sitemaps.Get

    -- ** webmasters.sitemaps.list
    , module Network.Google.API.Webmasters.Sitemaps.List

    -- ** webmasters.sitemaps.submit
    , module Network.Google.API.Webmasters.Sitemaps.Submit

    -- ** webmasters.sites.add
    , module Network.Google.API.Webmasters.Sites.Add

    -- ** webmasters.sites.delete
    , module Network.Google.API.Webmasters.Sites.Delete

    -- ** webmasters.sites.get
    , module Network.Google.API.Webmasters.Sites.Get

    -- ** webmasters.sites.list
    , module Network.Google.API.Webmasters.Sites.List

    -- ** webmasters.urlcrawlerrorscounts.query
    , module Network.Google.API.Webmasters.URLcrawlerrorscounts.Query

    -- ** webmasters.urlcrawlerrorssamples.get
    , module Network.Google.API.Webmasters.URLcrawlerrorssamples.Get

    -- ** webmasters.urlcrawlerrorssamples.list
    , module Network.Google.API.Webmasters.URLcrawlerrorssamples.List

    -- ** webmasters.urlcrawlerrorssamples.markAsFixed
    , module Network.Google.API.Webmasters.URLcrawlerrorssamples.MarkAsFixed

    -- * Types

    -- ** URLcrawlerrorssamplesGet'Category
    , URLcrawlerrorssamplesGet'Category (..)

    -- ** URLcrawlerrorssamplesList'Platform
    , URLcrawlerrorssamplesList'Platform (..)

    -- ** UrlCrawlErrorsSamplesListResponse
    , UrlCrawlErrorsSamplesListResponse
    , urlCrawlErrorsSamplesListResponse
    , uceslrUrlCrawlErrorSample

    -- ** ApiDataRow
    , ApiDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- ** URLcrawlerrorscountsQuery'Platform
    , URLcrawlerrorscountsQuery'Platform (..)

    -- ** Alt
    , Alt (..)

    -- ** UrlCrawlErrorsSample
    , UrlCrawlErrorsSample
    , urlCrawlErrorsSample
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

    -- ** URLcrawlerrorssamplesList'Category
    , URLcrawlerrorssamplesList'Category (..)

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

    -- ** URLcrawlerrorssamplesGet'Platform
    , URLcrawlerrorssamplesGet'Platform (..)

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted

    -- ** URLcrawlerrorssamplesMarkAsFixed'Platform
    , URLcrawlerrorssamplesMarkAsFixed'Platform (..)

    -- ** UrlSampleDetails
    , UrlSampleDetails
    , urlSampleDetails
    , usdLinkedFromUrls
    , usdContainingSitemaps

    -- ** UrlCrawlErrorCountsPerType
    , UrlCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- ** ApiDimensionFilterGroup
    , ApiDimensionFilterGroup
    , apiDimensionFilterGroup
    , adfgFilters
    , adfgGroupType

    -- ** UrlCrawlErrorsCountsQueryResponse
    , UrlCrawlErrorsCountsQueryResponse
    , urlCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- ** URLcrawlerrorscountsQuery'Category
    , URLcrawlerrorscountsQuery'Category (..)

    -- ** ApiDimensionFilter
    , ApiDimensionFilter
    , apiDimensionFilter
    , adfOperator
    , adfDimension
    , adfExpression

    -- ** URLcrawlerrorssamplesMarkAsFixed'Category
    , URLcrawlerrorssamplesMarkAsFixed'Category (..)

    -- ** UrlCrawlErrorCount
    , UrlCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType
    ) where

import           Network.Google.API.Webmasters.Searchanalytics.Query
import           Network.Google.API.Webmasters.Sitemaps.Delete
import           Network.Google.API.Webmasters.Sitemaps.Get
import           Network.Google.API.Webmasters.Sitemaps.List
import           Network.Google.API.Webmasters.Sitemaps.Submit
import           Network.Google.API.Webmasters.Sites.Add
import           Network.Google.API.Webmasters.Sites.Delete
import           Network.Google.API.Webmasters.Sites.Get
import           Network.Google.API.Webmasters.Sites.List
import           Network.Google.API.Webmasters.URLcrawlerrorscounts.Query
import           Network.Google.API.Webmasters.URLcrawlerrorssamples.Get
import           Network.Google.API.Webmasters.URLcrawlerrorssamples.List
import           Network.Google.API.Webmasters.URLcrawlerrorssamples.MarkAsFixed
import           Network.Google.Prelude
import           Network.Google.Webmaster.Tools.Types

{- $resources
TODO
-}

type WebmasterTools =
     URLcrawlerrorssamplesMarkAsFixedAPI :<|>
       URLcrawlerrorscountsQueryAPI
       :<|> URLcrawlerrorssamplesGetAPI
       :<|> URLcrawlerrorssamplesListAPI
       :<|> SitesDeleteAPI
       :<|> SitemapsDeleteAPI
       :<|> SitesGetAPI
       :<|> SitemapsGetAPI
       :<|> SitemapsSubmitAPI
       :<|> SitesListAPI
       :<|> SitemapsListAPI
       :<|> SearchanalyticsQueryAPI
       :<|> SitesAddAPI

webmasterTools :: Proxy WebmasterTools
webmasterTools = Proxy

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
    -- * Resources
      WebmasterTools
    , UrlcrawlerrorssamplesAPI
    , UrlcrawlerrorssamplesList
    , UrlcrawlerrorssamplesGet
    , UrlcrawlerrorssamplesMarkAsFixed
    , SitemapsAPI
    , SitemapsList
    , SitemapsGet
    , SitemapsSubmit
    , SitemapsDelete
    , SearchanalyticsAPI
    , SearchanalyticsQuery
    , SitesAPI
    , SitesList
    , SitesGet
    , SitesAdd
    , SitesDelete
    , UrlcrawlerrorscountsAPI
    , UrlcrawlerrorscountsQuery

    -- * Types

    -- ** ApiDataRow
    , ApiDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- ** ApiDimensionFilter
    , ApiDimensionFilter
    , apiDimensionFilter
    , adfOperator
    , adfDimension
    , adfExpression

    -- ** ApiDimensionFilterGroup
    , ApiDimensionFilterGroup
    , apiDimensionFilterGroup
    , adfgFilters
    , adfgGroupType

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

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** SitemapsListResponse
    , SitemapsListResponse
    , sitemapsListResponse
    , slrSitemap

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** UrlCrawlErrorCount
    , UrlCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- ** UrlCrawlErrorCountsPerType
    , UrlCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- ** UrlCrawlErrorsCountsQueryResponse
    , UrlCrawlErrorsCountsQueryResponse
    , urlCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- ** UrlCrawlErrorsSample
    , UrlCrawlErrorsSample
    , urlCrawlErrorsSample
    , ucesResponseCode
    , ucesUrlDetails
    , ucesLastCrawled
    , ucesPageUrl
    , ucesFirstDetected

    -- ** UrlCrawlErrorsSamplesListResponse
    , UrlCrawlErrorsSamplesListResponse
    , urlCrawlErrorsSamplesListResponse
    , uceslrUrlCrawlErrorSample

    -- ** UrlSampleDetails
    , UrlSampleDetails
    , urlSampleDetails
    , usdLinkedFromUrls
    , usdContainingSitemaps

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteUrl

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

    -- ** WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted
    ) where

import           Network.Google.Prelude
import           Network.Google.Webmaster.Tools.Types

{- $resources
TODO
-}

type WebmasterTools =
     UrlcrawlerrorssamplesAPI :<|> SitemapsAPI :<|>
       SearchanalyticsAPI
       :<|> SitesAPI
       :<|> UrlcrawlerrorscountsAPI

type UrlcrawlerrorssamplesAPI =
     UrlcrawlerrorssamplesList :<|>
       UrlcrawlerrorssamplesGet
       :<|> UrlcrawlerrorssamplesMarkAsFixed

-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
type UrlcrawlerrorssamplesList =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "urlCrawlErrorsSamples" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "platform" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "category" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] UrlCrawlErrorsSamplesListResponse

-- | Retrieves details about crawl errors for a site\'s sample URL.
type UrlcrawlerrorssamplesGet =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "urlCrawlErrorsSamples" :>
               Capture "url" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "platform" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "category" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] UrlCrawlErrorsSample

-- | Marks the provided site\'s sample URL as fixed, and removes it from the
-- samples list.
type UrlcrawlerrorssamplesMarkAsFixed =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "urlCrawlErrorsSamples" :>
               Capture "url" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "platform" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "category" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

type SitemapsAPI =
     SitemapsList :<|> SitemapsGet :<|> SitemapsSubmit
       :<|> SitemapsDelete

-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
type SitemapsList =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "sitemapIndex" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Get '[JSON] SitemapsListResponse

-- | Retrieves information about a specific sitemap.
type SitemapsGet =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               Capture "feedpath" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] WmxSitemap

-- | Submits a sitemap for a site.
type SitemapsSubmit =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               Capture "feedpath" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Put '[JSON] ()

-- | Deletes a sitemap from this site.
type SitemapsDelete =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "sitemaps" :>
               Capture "feedpath" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

type SearchanalyticsAPI = SearchanalyticsQuery

-- | Query your data with filters and parameters that you define. Returns
-- zero or more rows grouped by the row keys that you define. You must
-- define a date range of one or more days. When date is one of the group
-- by values, any days without data are omitted from the result list. If
-- you need to know which days have data, issue a broad date range query
-- grouped by date for any metric, and see which day rows are returned.
type SearchanalyticsQuery =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "searchAnalytics" :>
               "query" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :>
                               Post '[JSON] SearchAnalyticsQueryResponse

type SitesAPI =
     SitesList :<|> SitesGet :<|> SitesAdd :<|>
       SitesDelete

-- | Lists the user\'s Webmaster Tools sites.
type SitesList =
     "webmasters" :>
       "v3" :>
         "sites" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :>
                         Get '[JSON] SitesListResponse

-- | Retrieves information about specific site.
type SitesGet =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Get '[JSON] WmxSite

-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
type SitesAdd =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Put '[JSON] ()

-- | Removes a site from the set of the user\'s Webmaster Tools sites.
type SitesDelete =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :> Delete '[JSON] ()

type UrlcrawlerrorscountsAPI =
     UrlcrawlerrorscountsQuery

-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
type UrlcrawlerrorscountsQuery =
     "webmasters" :>
       "v3" :>
         "sites" :>
           Capture "siteUrl" Text :>
             "urlCrawlErrorsCounts" :>
               "query" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "platform" Text :>
                       QueryParam "userIp" Text :>
                         QueryParam "category" Text :>
                           QueryParam "key" Text :>
                             QueryParam "latestCountsOnly" Bool :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON]
                                       UrlCrawlErrorsCountsQueryResponse

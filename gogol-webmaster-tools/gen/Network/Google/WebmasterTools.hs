{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- Lets you view Google Webmaster Tools data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference>
module Network.Google.WebmasterTools
    (
    -- * Service Configuration
      webmasterToolsService

    -- * API Declaration
    , WebmasterToolsAPI

    -- * Resources

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

    -- ** WebmastersURLCrawlErrorscountsQuery
    , module Network.Google.Resource.Webmasters.URLCrawlErrorscounts.Query

    -- ** WebmastersURLCrawlErrorsSamplesGet
    , module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.Get

    -- ** WebmastersURLCrawlErrorsSamplesList
    , module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.List

    -- ** WebmastersURLCrawlErrorsSamplesMarkAsFixed
    , module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.MarkAsFixed

    -- * Types

    -- ** WmxSitemapContent
    , WmxSitemapContent
    , wmxSitemapContent
    , wscIndexed
    , wscType
    , wscSubmitted

    -- ** APIdimensionFilterGroup
    , APIdimensionFilterGroup
    , apidimensionFilterGroup
    , afgFilters
    , afgGroupType

    -- ** URLSampleDetails
    , URLSampleDetails
    , urlSampleDetails
    , usdLinkedFromURLs
    , usdContainingSitemaps

    -- ** URLCrawlErrorsSamplesMarkAsFixedCategory
    , URLCrawlErrorsSamplesMarkAsFixedCategory (..)

    -- ** URLCrawlErrorCountsPerType
    , URLCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

    -- ** URLCrawlErrorsSamplesGetPlatform
    , URLCrawlErrorsSamplesGetPlatform (..)

    -- ** APIDataRow
    , APIDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- ** APIdimensionFilter
    , APIdimensionFilter
    , apidimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- ** URLCrawlErrorsSamplesMarkAsFixedPlatform
    , URLCrawlErrorsSamplesMarkAsFixedPlatform (..)

    -- ** URLCrawlErrorsSamplesGetCategory
    , URLCrawlErrorsSamplesGetCategory (..)

    -- ** URLCrawlErrorCount
    , URLCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- ** URLCrawlErrorscountsQueryPlatform
    , URLCrawlErrorscountsQueryPlatform (..)

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** URLCrawlErrorsSamplesListCategory
    , URLCrawlErrorsSamplesListCategory (..)

    -- ** URLCrawlErrorsSamplesListResponse
    , URLCrawlErrorsSamplesListResponse
    , urlCrawlErrorsSamplesListResponse
    , uceslrURLCrawlErrorSample

    -- ** URLCrawlErrorsCountsQueryResponse
    , URLCrawlErrorsCountsQueryResponse
    , urlCrawlErrorsCountsQueryResponse
    , ucecqrCountPerTypes

    -- ** URLCrawlErrorsSample
    , URLCrawlErrorsSample
    , urlCrawlErrorsSample
    , ucesResponseCode
    , ucesURLDetails
    , ucesLastCrawled
    , ucesPageURL
    , ucesFirstDetected

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

    -- ** SitemapsListResponse
    , SitemapsListResponse
    , sitemapsListResponse
    , slrSitemap

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

    -- ** URLCrawlErrorsSamplesListPlatform
    , URLCrawlErrorsSamplesListPlatform (..)

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteURL

    -- ** URLCrawlErrorscountsQueryCategory
    , URLCrawlErrorscountsQueryCategory (..)
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
import           Network.Google.Resource.Webmasters.URLCrawlErrorscounts.Query
import           Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.Get
import           Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.List
import           Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.MarkAsFixed
import           Network.Google.WebmasterTools.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Webmaster Tools API service.
type WebmasterToolsAPI =
     URLCrawlErrorsSamplesListResource :<|>
       URLCrawlErrorsSamplesGetResource
       :<|> URLCrawlErrorsSamplesMarkAsFixedResource
       :<|> SitemapsListResource
       :<|> SitemapsGetResource
       :<|> SitemapsSubmitResource
       :<|> SitemapsDeleteResource
       :<|> SearchanalyticsQueryResource
       :<|> SitesListResource
       :<|> SitesGetResource
       :<|> SitesAddResource
       :<|> SitesDeleteResource
       :<|> URLCrawlErrorscountsQueryResource

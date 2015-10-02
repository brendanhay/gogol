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
-- | Lets you view Google Webmaster Tools data for your verified sites.
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

    -- ** URLCrawlErrorCountsPerType
    , URLCrawlErrorCountsPerType
    , urlCrawlErrorCountsPerType
    , ucecptPlatform
    , ucecptEntries
    , ucecptCategory

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

    -- ** APIdataRow
    , APIdataRow
    , apidataRow
    , arImpressions
    , arKeys
    , arCtr
    , arClicks
    , arPosition

    -- ** APIdimensionFilter
    , APIdimensionFilter
    , apidimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- ** URLCrawlErrorCount
    , URLCrawlErrorCount
    , urlCrawlErrorCount
    , ucecCount
    , ucecTimestamp

    -- ** WebmastersURLCrawlErrorscountsQueryCategory
    , WebmastersURLCrawlErrorscountsQueryCategory (..)

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** WebmastersURLCrawlErrorsSamplesListPlatform
    , WebmastersURLCrawlErrorsSamplesListPlatform (..)

    -- ** WebmastersURLCrawlErrorsSamplesGetCategory
    , WebmastersURLCrawlErrorsSamplesGetCategory (..)

    -- ** WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform
    , WebmastersURLCrawlErrorsSamplesMarkAsFixedPlatform (..)

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

    -- ** WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory
    , WebmastersURLCrawlErrorsSamplesMarkAsFixedCategory (..)

    -- ** WebmastersURLCrawlErrorsSamplesGetPlatform
    , WebmastersURLCrawlErrorsSamplesGetPlatform (..)

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

    -- ** WebmastersURLCrawlErrorsSamplesListCategory
    , WebmastersURLCrawlErrorsSamplesListCategory (..)

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteURL

    -- ** WebmastersURLCrawlErrorscountsQueryPlatform
    , WebmastersURLCrawlErrorscountsQueryPlatform (..)
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

webmasterToolsAPI :: Proxy WebmasterToolsAPI
webmasterToolsAPI = Proxy

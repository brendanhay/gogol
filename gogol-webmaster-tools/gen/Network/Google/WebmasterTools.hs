{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.WebmasterTools
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View Google Search Console data for your verified sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference>
module Network.Google.WebmasterTools
    (
    -- * Service Configuration
      webmasterToolsService

    -- * OAuth Scopes
    , webmastersScope
    , webmastersReadOnlyScope

    -- * API Declaration
    , WebmasterToolsAPI

    -- * Resources

    -- ** webmasters.searchanalytics.query
    , module Network.Google.Resource.Webmasters.Searchanalytics.Query

    -- ** webmasters.sitemaps.delete
    , module Network.Google.Resource.Webmasters.Sitemaps.Delete

    -- ** webmasters.sitemaps.get
    , module Network.Google.Resource.Webmasters.Sitemaps.Get

    -- ** webmasters.sitemaps.list
    , module Network.Google.Resource.Webmasters.Sitemaps.List

    -- ** webmasters.sitemaps.submit
    , module Network.Google.Resource.Webmasters.Sitemaps.Submit

    -- ** webmasters.sites.add
    , module Network.Google.Resource.Webmasters.Sites.Add

    -- ** webmasters.sites.delete
    , module Network.Google.Resource.Webmasters.Sites.Delete

    -- ** webmasters.sites.get
    , module Network.Google.Resource.Webmasters.Sites.Get

    -- ** webmasters.sites.list
    , module Network.Google.Resource.Webmasters.Sites.List

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

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

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
    , saqrDataState
    , saqrRowLimit
    , saqrEndDate
    , saqrSearchType
    , saqrDimensionFilterGroups
    , saqrStartDate
    , saqrStartRow
    , saqrDimensions

    -- ** SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- ** WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteURL
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Webmasters.Searchanalytics.Query
import Network.Google.Resource.Webmasters.Sitemaps.Delete
import Network.Google.Resource.Webmasters.Sitemaps.Get
import Network.Google.Resource.Webmasters.Sitemaps.List
import Network.Google.Resource.Webmasters.Sitemaps.Submit
import Network.Google.Resource.Webmasters.Sites.Add
import Network.Google.Resource.Webmasters.Sites.Delete
import Network.Google.Resource.Webmasters.Sites.Get
import Network.Google.Resource.Webmasters.Sites.List
import Network.Google.WebmasterTools.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Search Console API service.
type WebmasterToolsAPI =
     SitemapsListResource :<|> SitemapsGetResource :<|>
       SitemapsSubmitResource
       :<|> SitemapsDeleteResource
       :<|> SearchanalyticsQueryResource
       :<|> SitesListResource
       :<|> SitesGetResource
       :<|> SitesAddResource
       :<|> SitesDeleteResource

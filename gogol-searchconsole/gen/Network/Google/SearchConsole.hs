{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SearchConsole
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Search Console API provides access to both Search Console data
-- (verified users only) and to public information on an URL basis (anyone)
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference>
module Network.Google.SearchConsole
    (
    -- * Service Configuration
      searchConsoleService

    -- * OAuth Scopes
    , webmastersScope
    , webmastersReadOnlyScope

    -- * API Declaration
    , SearchConsoleAPI

    -- * Resources

    -- ** searchconsole.urlTestingTools.mobileFriendlyTest.run
    , module Network.Google.Resource.SearchConsole.URLTestingTools.MobileFriendlyTest.Run

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

    -- ** WmxSitePermissionLevel
    , WmxSitePermissionLevel (..)

    -- ** SearchAnalyticsQueryRequestDataState
    , SearchAnalyticsQueryRequestDataState (..)

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

    -- ** RunMobileFriendlyTestResponseMobileFriendliness
    , RunMobileFriendlyTestResponseMobileFriendliness (..)

    -- ** SearchAnalyticsQueryRequestAggregationType
    , SearchAnalyticsQueryRequestAggregationType (..)

    -- ** Image
    , Image
    , image
    , iData
    , iMimeType

    -- ** BlockedResource
    , BlockedResource
    , blockedResource
    , brURL

    -- ** APIDataRow
    , APIDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- ** SearchAnalyticsQueryRequestSearchType
    , SearchAnalyticsQueryRequestSearchType (..)

    -- ** WmxSitemapType
    , WmxSitemapType (..)

    -- ** APIdimensionFilterGroupGroupType
    , APIdimensionFilterGroupGroupType (..)

    -- ** APIdimensionFilter
    , APIdimensionFilter
    , apidimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- ** APIdimensionFilterDimension
    , APIdimensionFilterDimension (..)

    -- ** APIdimensionFilterOperator
    , APIdimensionFilterOperator (..)

    -- ** ResourceIssue
    , ResourceIssue
    , resourceIssue
    , riBlockedResource

    -- ** TestStatusStatus
    , TestStatusStatus (..)

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- ** RunMobileFriendlyTestRequest
    , RunMobileFriendlyTestRequest
    , runMobileFriendlyTestRequest
    , rmftrURL
    , rmftrRequestScreenshot

    -- ** WmxSitemapContentType
    , WmxSitemapContentType (..)

    -- ** TestStatus
    , TestStatus
    , testStatus
    , tsStatus
    , tsDetails

    -- ** Xgafv
    , Xgafv (..)

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

    -- ** SearchAnalyticsQueryRequestDimensionsItem
    , SearchAnalyticsQueryRequestDimensionsItem (..)

    -- ** MobileFriendlyIssueRule
    , MobileFriendlyIssueRule (..)

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

    -- ** RunMobileFriendlyTestResponse
    , RunMobileFriendlyTestResponse
    , runMobileFriendlyTestResponse
    , rmftrScreenshot
    , rmftrResourceIssues
    , rmftrMobileFriendliness
    , rmftrTestStatus
    , rmftrMobileFriendlyIssues

    -- ** SearchAnalyticsQueryResponseResponseAggregationType
    , SearchAnalyticsQueryResponseResponseAggregationType (..)

    -- ** MobileFriendlyIssue
    , MobileFriendlyIssue
    , mobileFriendlyIssue
    , mfiRule

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
import Network.Google.Resource.SearchConsole.URLTestingTools.MobileFriendlyTest.Run
import Network.Google.Resource.Webmasters.Searchanalytics.Query
import Network.Google.Resource.Webmasters.Sitemaps.Delete
import Network.Google.Resource.Webmasters.Sitemaps.Get
import Network.Google.Resource.Webmasters.Sitemaps.List
import Network.Google.Resource.Webmasters.Sitemaps.Submit
import Network.Google.Resource.Webmasters.Sites.Add
import Network.Google.Resource.Webmasters.Sites.Delete
import Network.Google.Resource.Webmasters.Sites.Get
import Network.Google.Resource.Webmasters.Sites.List
import Network.Google.SearchConsole.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Search Console API service.
type SearchConsoleAPI =
     SitemapsListResource :<|> SitemapsGetResource :<|>
       SitemapsSubmitResource
       :<|> SitemapsDeleteResource
       :<|> SearchanalyticsQueryResource
       :<|> SitesListResource
       :<|> SitesGetResource
       :<|> SitesAddResource
       :<|> SitesDeleteResource
       :<|> URLTestingToolsMobileFriendlyTestRunResource

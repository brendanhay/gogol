{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SearchConsole.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SearchConsole.Types
    (
    -- * Service Configuration
      searchConsoleService

    -- * OAuth Scopes
    , webmastersScope
    , webmastersReadOnlyScope

    -- * WmxSitePermissionLevel
    , WmxSitePermissionLevel (..)

    -- * SearchAnalyticsQueryRequestDataState
    , SearchAnalyticsQueryRequestDataState (..)

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

    -- * RunMobileFriendlyTestResponseMobileFriendliness
    , RunMobileFriendlyTestResponseMobileFriendliness (..)

    -- * SearchAnalyticsQueryRequestAggregationType
    , SearchAnalyticsQueryRequestAggregationType (..)

    -- * Image
    , Image
    , image
    , iData
    , iMimeType

    -- * BlockedResource
    , BlockedResource
    , blockedResource
    , brURL

    -- * APIDataRow
    , APIDataRow
    , apiDataRow
    , adrImpressions
    , adrKeys
    , adrCtr
    , adrClicks
    , adrPosition

    -- * SearchAnalyticsQueryRequestSearchType
    , SearchAnalyticsQueryRequestSearchType (..)

    -- * WmxSitemapType
    , WmxSitemapType (..)

    -- * APIdimensionFilterGroupGroupType
    , APIdimensionFilterGroupGroupType (..)

    -- * APIdimensionFilter
    , APIdimensionFilter
    , apidimensionFilter
    , afOperator
    , afDimension
    , afExpression

    -- * APIdimensionFilterDimension
    , APIdimensionFilterDimension (..)

    -- * APIdimensionFilterOperator
    , APIdimensionFilterOperator (..)

    -- * ResourceIssue
    , ResourceIssue
    , resourceIssue
    , riBlockedResource

    -- * TestStatusStatus
    , TestStatusStatus (..)

    -- * SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse
    , searchAnalyticsQueryResponse
    , saqrRows
    , saqrResponseAggregationType

    -- * RunMobileFriendlyTestRequest
    , RunMobileFriendlyTestRequest
    , runMobileFriendlyTestRequest
    , rmftrURL
    , rmftrRequestScreenshot

    -- * WmxSitemapContentType
    , WmxSitemapContentType (..)

    -- * TestStatus
    , TestStatus
    , testStatus
    , tsStatus
    , tsDetails

    -- * Xgafv
    , Xgafv (..)

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

    -- * SearchAnalyticsQueryRequestDimensionsItem
    , SearchAnalyticsQueryRequestDimensionsItem (..)

    -- * MobileFriendlyIssueRule
    , MobileFriendlyIssueRule (..)

    -- * SearchAnalyticsQueryRequest
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

    -- * RunMobileFriendlyTestResponse
    , RunMobileFriendlyTestResponse
    , runMobileFriendlyTestResponse
    , rmftrScreenshot
    , rmftrResourceIssues
    , rmftrMobileFriendliness
    , rmftrTestStatus
    , rmftrMobileFriendlyIssues

    -- * SearchAnalyticsQueryResponseResponseAggregationType
    , SearchAnalyticsQueryResponseResponseAggregationType (..)

    -- * MobileFriendlyIssue
    , MobileFriendlyIssue
    , mobileFriendlyIssue
    , mfiRule

    -- * SitesListResponse
    , SitesListResponse
    , sitesListResponse
    , slrSiteEntry

    -- * WmxSite
    , WmxSite
    , wmxSite
    , wsPermissionLevel
    , wsSiteURL
    ) where

import Network.Google.Prelude
import Network.Google.SearchConsole.Types.Product
import Network.Google.SearchConsole.Types.Sum

-- | Default request referring to version 'v1' of the Google Search Console API. This contains the host and root path used as a starting point for constructing service requests.
searchConsoleService :: ServiceConfig
searchConsoleService
  = defaultService (ServiceId "searchconsole:v1")
      "searchconsole.googleapis.com"

-- | View and manage Search Console data for your verified sites
webmastersScope :: Proxy '["https://www.googleapis.com/auth/webmasters"]
webmastersScope = Proxy

-- | View Search Console data for your verified sites
webmastersReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/webmasters.readonly"]
webmastersReadOnlyScope = Proxy

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.SearchConsole
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Search Console API provides access to both Search Console data (verified users only) and to public information on an URL basis (anyone)
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference>
module Network.Google.SearchConsole
  ( -- * Configuration
    searchConsoleService,

    -- * OAuth Scopes
    webmastersScope,
    webmastersReadOnlyScope,

    -- * Resources

    -- ** searchconsole.urlInspection.index.inspect
    SearchConsoleUrlInspectionIndexInspectResource,
    newSearchConsoleUrlInspectionIndexInspect,
    SearchConsoleUrlInspectionIndexInspect,

    -- ** searchconsole.urlTestingTools.mobileFriendlyTest.run
    SearchConsoleUrlTestingToolsMobileFriendlyTestRunResource,
    newSearchConsoleUrlTestingToolsMobileFriendlyTestRun,
    SearchConsoleUrlTestingToolsMobileFriendlyTestRun,

    -- ** webmasters.searchanalytics.query
    WebmastersSearchanalyticsQueryResource,
    newWebmastersSearchanalyticsQuery,
    WebmastersSearchanalyticsQuery,

    -- ** webmasters.sitemaps.delete
    WebmastersSitemapsDeleteResource,
    newWebmastersSitemapsDelete,
    WebmastersSitemapsDelete,

    -- ** webmasters.sitemaps.get
    WebmastersSitemapsGetResource,
    newWebmastersSitemapsGet,
    WebmastersSitemapsGet,

    -- ** webmasters.sitemaps.list
    WebmastersSitemapsListResource,
    newWebmastersSitemapsList,
    WebmastersSitemapsList,

    -- ** webmasters.sitemaps.submit
    WebmastersSitemapsSubmitResource,
    newWebmastersSitemapsSubmit,
    WebmastersSitemapsSubmit,

    -- ** webmasters.sites.add
    WebmastersSitesAddResource,
    newWebmastersSitesAdd,
    WebmastersSitesAdd,

    -- ** webmasters.sites.delete
    WebmastersSitesDeleteResource,
    newWebmastersSitesDelete,
    WebmastersSitesDelete,

    -- ** webmasters.sites.get
    WebmastersSitesGetResource,
    newWebmastersSitesGet,
    WebmastersSitesGet,

    -- ** webmasters.sites.list
    WebmastersSitesListResource,
    newWebmastersSitesList,
    WebmastersSitesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AmpInspectionResult
    AmpInspectionResult (..),
    newAmpInspectionResult,

    -- ** AmpInspectionResult_AmpIndexStatusVerdict
    AmpInspectionResult_AmpIndexStatusVerdict (..),

    -- ** AmpInspectionResult_IndexingState
    AmpInspectionResult_IndexingState (..),

    -- ** AmpInspectionResult_PageFetchState
    AmpInspectionResult_PageFetchState (..),

    -- ** AmpInspectionResult_RobotsTxtState
    AmpInspectionResult_RobotsTxtState (..),

    -- ** AmpInspectionResult_Verdict
    AmpInspectionResult_Verdict (..),

    -- ** AmpIssue
    AmpIssue (..),
    newAmpIssue,

    -- ** AmpIssue_Severity
    AmpIssue_Severity (..),

    -- ** ApiDataRow
    ApiDataRow (..),
    newApiDataRow,

    -- ** ApiDimensionFilter
    ApiDimensionFilter (..),
    newApiDimensionFilter,

    -- ** ApiDimensionFilter_Dimension
    ApiDimensionFilter_Dimension (..),

    -- ** ApiDimensionFilter_Operator
    ApiDimensionFilter_Operator (..),

    -- ** ApiDimensionFilterGroup
    ApiDimensionFilterGroup (..),
    newApiDimensionFilterGroup,

    -- ** ApiDimensionFilterGroup_GroupType
    ApiDimensionFilterGroup_GroupType (..),

    -- ** BlockedResource
    BlockedResource (..),
    newBlockedResource,

    -- ** DetectedItems
    DetectedItems (..),
    newDetectedItems,

    -- ** Image
    Image (..),
    newImage,

    -- ** IndexStatusInspectionResult
    IndexStatusInspectionResult (..),
    newIndexStatusInspectionResult,

    -- ** IndexStatusInspectionResult_CrawledAs
    IndexStatusInspectionResult_CrawledAs (..),

    -- ** IndexStatusInspectionResult_IndexingState
    IndexStatusInspectionResult_IndexingState (..),

    -- ** IndexStatusInspectionResult_PageFetchState
    IndexStatusInspectionResult_PageFetchState (..),

    -- ** IndexStatusInspectionResult_RobotsTxtState
    IndexStatusInspectionResult_RobotsTxtState (..),

    -- ** IndexStatusInspectionResult_Verdict
    IndexStatusInspectionResult_Verdict (..),

    -- ** InspectUrlIndexRequest
    InspectUrlIndexRequest (..),
    newInspectUrlIndexRequest,

    -- ** InspectUrlIndexResponse
    InspectUrlIndexResponse (..),
    newInspectUrlIndexResponse,

    -- ** Item
    Item (..),
    newItem,

    -- ** MobileFriendlyIssue
    MobileFriendlyIssue (..),
    newMobileFriendlyIssue,

    -- ** MobileFriendlyIssue_Rule
    MobileFriendlyIssue_Rule (..),

    -- ** MobileUsabilityInspectionResult
    MobileUsabilityInspectionResult (..),
    newMobileUsabilityInspectionResult,

    -- ** MobileUsabilityInspectionResult_Verdict
    MobileUsabilityInspectionResult_Verdict (..),

    -- ** MobileUsabilityIssue
    MobileUsabilityIssue (..),
    newMobileUsabilityIssue,

    -- ** MobileUsabilityIssue_IssueType
    MobileUsabilityIssue_IssueType (..),

    -- ** MobileUsabilityIssue_Severity
    MobileUsabilityIssue_Severity (..),

    -- ** ResourceIssue
    ResourceIssue (..),
    newResourceIssue,

    -- ** RichResultsInspectionResult
    RichResultsInspectionResult (..),
    newRichResultsInspectionResult,

    -- ** RichResultsInspectionResult_Verdict
    RichResultsInspectionResult_Verdict (..),

    -- ** RichResultsIssue
    RichResultsIssue (..),
    newRichResultsIssue,

    -- ** RichResultsIssue_Severity
    RichResultsIssue_Severity (..),

    -- ** RunMobileFriendlyTestRequest
    RunMobileFriendlyTestRequest (..),
    newRunMobileFriendlyTestRequest,

    -- ** RunMobileFriendlyTestResponse
    RunMobileFriendlyTestResponse (..),
    newRunMobileFriendlyTestResponse,

    -- ** RunMobileFriendlyTestResponse_MobileFriendliness
    RunMobileFriendlyTestResponse_MobileFriendliness (..),

    -- ** SearchAnalyticsQueryRequest
    SearchAnalyticsQueryRequest (..),
    newSearchAnalyticsQueryRequest,

    -- ** SearchAnalyticsQueryRequest_AggregationType
    SearchAnalyticsQueryRequest_AggregationType (..),

    -- ** SearchAnalyticsQueryRequest_DataState
    SearchAnalyticsQueryRequest_DataState (..),

    -- ** SearchAnalyticsQueryRequest_DimensionsItem
    SearchAnalyticsQueryRequest_DimensionsItem (..),

    -- ** SearchAnalyticsQueryRequest_SearchType
    SearchAnalyticsQueryRequest_SearchType (..),

    -- ** SearchAnalyticsQueryRequest_Type
    SearchAnalyticsQueryRequest_Type (..),

    -- ** SearchAnalyticsQueryResponse
    SearchAnalyticsQueryResponse (..),
    newSearchAnalyticsQueryResponse,

    -- ** SearchAnalyticsQueryResponse_ResponseAggregationType
    SearchAnalyticsQueryResponse_ResponseAggregationType (..),

    -- ** SitemapsListResponse
    SitemapsListResponse (..),
    newSitemapsListResponse,

    -- ** SitesListResponse
    SitesListResponse (..),
    newSitesListResponse,

    -- ** TestStatus
    TestStatus (..),
    newTestStatus,

    -- ** TestStatus_Status
    TestStatus_Status (..),

    -- ** UrlInspectionResult
    UrlInspectionResult (..),
    newUrlInspectionResult,

    -- ** WmxSite
    WmxSite (..),
    newWmxSite,

    -- ** WmxSite_PermissionLevel
    WmxSite_PermissionLevel (..),

    -- ** WmxSitemap
    WmxSitemap (..),
    newWmxSitemap,

    -- ** WmxSitemap_Type
    WmxSitemap_Type (..),

    -- ** WmxSitemapContent
    WmxSitemapContent (..),
    newWmxSitemapContent,

    -- ** WmxSitemapContent_Type
    WmxSitemapContent_Type (..),
  )
where

import Network.Google.SearchConsole.Types
import Network.Google.SearchConsole.UrlInspection.Index.Inspect
import Network.Google.SearchConsole.UrlTestingTools.MobileFriendlyTest.Run
import Network.Google.SearchConsole.Webmasters.Searchanalytics.Query
import Network.Google.SearchConsole.Webmasters.Sitemaps.Delete
import Network.Google.SearchConsole.Webmasters.Sitemaps.Get
import Network.Google.SearchConsole.Webmasters.Sitemaps.List
import Network.Google.SearchConsole.Webmasters.Sitemaps.Submit
import Network.Google.SearchConsole.Webmasters.Sites.Add
import Network.Google.SearchConsole.Webmasters.Sites.Delete
import Network.Google.SearchConsole.Webmasters.Sites.Get
import Network.Google.SearchConsole.Webmasters.Sites.List

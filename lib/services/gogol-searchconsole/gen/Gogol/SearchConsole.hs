{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SearchConsole
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Search Console API provides access to both Search Console data (verified users only) and to public information on an URL basis (anyone)
--
-- /See:/ <https://developers.google.com/webmaster-tools/about Google Search Console API Reference>
module Gogol.SearchConsole
    (
    -- * Configuration
      searchConsoleService

    -- * OAuth Scopes
    , Webmasters'FullControl
    , Webmasters'Readonly

    -- * Resources

    -- ** searchconsole.urlInspection.index.inspect
    , SearchConsoleUrlInspectionIndexInspectResource
    , SearchConsoleUrlInspectionIndexInspect (..)
    , newSearchConsoleUrlInspectionIndexInspect

    -- ** searchconsole.urlTestingTools.mobileFriendlyTest.run
    , SearchConsoleUrlTestingToolsMobileFriendlyTestRunResource
    , SearchConsoleUrlTestingToolsMobileFriendlyTestRun (..)
    , newSearchConsoleUrlTestingToolsMobileFriendlyTestRun

    -- ** webmasters.searchanalytics.query
    , WebmastersSearchanalyticsQueryResource
    , WebmastersSearchanalyticsQuery (..)
    , newWebmastersSearchanalyticsQuery

    -- ** webmasters.sitemaps.delete
    , WebmastersSitemapsDeleteResource
    , WebmastersSitemapsDelete (..)
    , newWebmastersSitemapsDelete

    -- ** webmasters.sitemaps.get
    , WebmastersSitemapsGetResource
    , WebmastersSitemapsGet (..)
    , newWebmastersSitemapsGet

    -- ** webmasters.sitemaps.list
    , WebmastersSitemapsListResource
    , WebmastersSitemapsList (..)
    , newWebmastersSitemapsList

    -- ** webmasters.sitemaps.submit
    , WebmastersSitemapsSubmitResource
    , WebmastersSitemapsSubmit (..)
    , newWebmastersSitemapsSubmit

    -- ** webmasters.sites.add
    , WebmastersSitesAddResource
    , WebmastersSitesAdd (..)
    , newWebmastersSitesAdd

    -- ** webmasters.sites.delete
    , WebmastersSitesDeleteResource
    , WebmastersSitesDelete (..)
    , newWebmastersSitesDelete

    -- ** webmasters.sites.get
    , WebmastersSitesGetResource
    , WebmastersSitesGet (..)
    , newWebmastersSitesGet

    -- ** webmasters.sites.list
    , WebmastersSitesListResource
    , WebmastersSitesList (..)
    , newWebmastersSitesList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AmpInspectionResult
    , AmpInspectionResult (..)
    , newAmpInspectionResult

    -- ** AmpInspectionResult_AmpIndexStatusVerdict
    , AmpInspectionResult_AmpIndexStatusVerdict (..)

    -- ** AmpInspectionResult_IndexingState
    , AmpInspectionResult_IndexingState (..)

    -- ** AmpInspectionResult_PageFetchState
    , AmpInspectionResult_PageFetchState (..)

    -- ** AmpInspectionResult_RobotsTxtState
    , AmpInspectionResult_RobotsTxtState (..)

    -- ** AmpInspectionResult_Verdict
    , AmpInspectionResult_Verdict (..)

    -- ** AmpIssue
    , AmpIssue (..)
    , newAmpIssue

    -- ** AmpIssue_Severity
    , AmpIssue_Severity (..)

    -- ** ApiDataRow
    , ApiDataRow (..)
    , newApiDataRow

    -- ** ApiDimensionFilter
    , ApiDimensionFilter (..)
    , newApiDimensionFilter

    -- ** ApiDimensionFilter_Dimension
    , ApiDimensionFilter_Dimension (..)

    -- ** ApiDimensionFilter_Operator
    , ApiDimensionFilter_Operator (..)

    -- ** ApiDimensionFilterGroup
    , ApiDimensionFilterGroup (..)
    , newApiDimensionFilterGroup

    -- ** ApiDimensionFilterGroup_GroupType
    , ApiDimensionFilterGroup_GroupType (..)

    -- ** BlockedResource
    , BlockedResource (..)
    , newBlockedResource

    -- ** DetectedItems
    , DetectedItems (..)
    , newDetectedItems

    -- ** Image
    , Image (..)
    , newImage

    -- ** IndexStatusInspectionResult
    , IndexStatusInspectionResult (..)
    , newIndexStatusInspectionResult

    -- ** IndexStatusInspectionResult_CrawledAs
    , IndexStatusInspectionResult_CrawledAs (..)

    -- ** IndexStatusInspectionResult_IndexingState
    , IndexStatusInspectionResult_IndexingState (..)

    -- ** IndexStatusInspectionResult_PageFetchState
    , IndexStatusInspectionResult_PageFetchState (..)

    -- ** IndexStatusInspectionResult_RobotsTxtState
    , IndexStatusInspectionResult_RobotsTxtState (..)

    -- ** IndexStatusInspectionResult_Verdict
    , IndexStatusInspectionResult_Verdict (..)

    -- ** InspectUrlIndexRequest
    , InspectUrlIndexRequest (..)
    , newInspectUrlIndexRequest

    -- ** InspectUrlIndexResponse
    , InspectUrlIndexResponse (..)
    , newInspectUrlIndexResponse

    -- ** Item
    , Item (..)
    , newItem

    -- ** MobileFriendlyIssue
    , MobileFriendlyIssue (..)
    , newMobileFriendlyIssue

    -- ** MobileFriendlyIssue_Rule
    , MobileFriendlyIssue_Rule (..)

    -- ** MobileUsabilityInspectionResult
    , MobileUsabilityInspectionResult (..)
    , newMobileUsabilityInspectionResult

    -- ** MobileUsabilityInspectionResult_Verdict
    , MobileUsabilityInspectionResult_Verdict (..)

    -- ** MobileUsabilityIssue
    , MobileUsabilityIssue (..)
    , newMobileUsabilityIssue

    -- ** MobileUsabilityIssue_IssueType
    , MobileUsabilityIssue_IssueType (..)

    -- ** MobileUsabilityIssue_Severity
    , MobileUsabilityIssue_Severity (..)

    -- ** ResourceIssue
    , ResourceIssue (..)
    , newResourceIssue

    -- ** RichResultsInspectionResult
    , RichResultsInspectionResult (..)
    , newRichResultsInspectionResult

    -- ** RichResultsInspectionResult_Verdict
    , RichResultsInspectionResult_Verdict (..)

    -- ** RichResultsIssue
    , RichResultsIssue (..)
    , newRichResultsIssue

    -- ** RichResultsIssue_Severity
    , RichResultsIssue_Severity (..)

    -- ** RunMobileFriendlyTestRequest
    , RunMobileFriendlyTestRequest (..)
    , newRunMobileFriendlyTestRequest

    -- ** RunMobileFriendlyTestResponse
    , RunMobileFriendlyTestResponse (..)
    , newRunMobileFriendlyTestResponse

    -- ** RunMobileFriendlyTestResponse_MobileFriendliness
    , RunMobileFriendlyTestResponse_MobileFriendliness (..)

    -- ** SearchAnalyticsQueryRequest
    , SearchAnalyticsQueryRequest (..)
    , newSearchAnalyticsQueryRequest

    -- ** SearchAnalyticsQueryRequest_AggregationType
    , SearchAnalyticsQueryRequest_AggregationType (..)

    -- ** SearchAnalyticsQueryRequest_DataState
    , SearchAnalyticsQueryRequest_DataState (..)

    -- ** SearchAnalyticsQueryRequest_DimensionsItem
    , SearchAnalyticsQueryRequest_DimensionsItem (..)

    -- ** SearchAnalyticsQueryRequest_SearchType
    , SearchAnalyticsQueryRequest_SearchType (..)

    -- ** SearchAnalyticsQueryRequest_Type
    , SearchAnalyticsQueryRequest_Type (..)

    -- ** SearchAnalyticsQueryResponse
    , SearchAnalyticsQueryResponse (..)
    , newSearchAnalyticsQueryResponse

    -- ** SearchAnalyticsQueryResponse_ResponseAggregationType
    , SearchAnalyticsQueryResponse_ResponseAggregationType (..)

    -- ** SitemapsListResponse
    , SitemapsListResponse (..)
    , newSitemapsListResponse

    -- ** SitesListResponse
    , SitesListResponse (..)
    , newSitesListResponse

    -- ** TestStatus
    , TestStatus (..)
    , newTestStatus

    -- ** TestStatus_Status
    , TestStatus_Status (..)

    -- ** UrlInspectionResult
    , UrlInspectionResult (..)
    , newUrlInspectionResult

    -- ** WmxSite
    , WmxSite (..)
    , newWmxSite

    -- ** WmxSite_PermissionLevel
    , WmxSite_PermissionLevel (..)

    -- ** WmxSitemap
    , WmxSitemap (..)
    , newWmxSitemap

    -- ** WmxSitemap_Type
    , WmxSitemap_Type (..)

    -- ** WmxSitemapContent
    , WmxSitemapContent (..)
    , newWmxSitemapContent

    -- ** WmxSitemapContent_Type
    , WmxSitemapContent_Type (..)
    ) where

import Gogol.SearchConsole.Types
import Gogol.SearchConsole.UrlInspection.Index.Inspect
import Gogol.SearchConsole.UrlTestingTools.MobileFriendlyTest.Run
import Gogol.SearchConsole.Webmasters.Searchanalytics.Query
import Gogol.SearchConsole.Webmasters.Sitemaps.Delete
import Gogol.SearchConsole.Webmasters.Sitemaps.Get
import Gogol.SearchConsole.Webmasters.Sitemaps.List
import Gogol.SearchConsole.Webmasters.Sitemaps.Submit
import Gogol.SearchConsole.Webmasters.Sites.Add
import Gogol.SearchConsole.Webmasters.Sites.Delete
import Gogol.SearchConsole.Webmasters.Sites.Get
import Gogol.SearchConsole.Webmasters.Sites.List

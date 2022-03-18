{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SearchConsole.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.SearchConsole.Types
    (
    -- * Configuration
      searchConsoleService

    -- * OAuth Scopes
    , webmastersScope
    , webmastersReadOnlyScope

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

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Internal.Product
import Gogol.SearchConsole.Internal.Sum

-- | Default request referring to version @v1@ of the Google Search Console API. This contains the host and root path used as a starting point for constructing service requests.
searchConsoleService :: Core.ServiceConfig
searchConsoleService
  = Core.defaultService
      (Core.ServiceId "searchconsole:v1")
      "searchconsole.googleapis.com"

-- | View and manage Search Console data for your verified sites
webmastersScope :: Core.Proxy '["https://www.googleapis.com/auth/webmasters"]
webmastersScope = Core.Proxy

-- | View Search Console data for your verified sites
webmastersReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/webmasters.readonly"]
webmastersReadOnlyScope = Core.Proxy

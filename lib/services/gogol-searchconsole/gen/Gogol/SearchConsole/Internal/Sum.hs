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
-- Module      : Gogol.SearchConsole.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SearchConsole.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AmpInspectionResult_AmpIndexStatusVerdict
    AmpInspectionResult_AmpIndexStatusVerdict
      ( AmpInspectionResult_AmpIndexStatusVerdict_VERDICTUNSPECIFIED,
        AmpInspectionResult_AmpIndexStatusVerdict_Pass,
        AmpInspectionResult_AmpIndexStatusVerdict_Partial,
        AmpInspectionResult_AmpIndexStatusVerdict_Fail,
        AmpInspectionResult_AmpIndexStatusVerdict_Neutral,
        ..
      ),

    -- * AmpInspectionResult_IndexingState
    AmpInspectionResult_IndexingState
      ( AmpInspectionResult_IndexingState_AMPINDEXINGSTATEUNSPECIFIED,
        AmpInspectionResult_IndexingState_AMPINDEXINGALLOWED,
        AmpInspectionResult_IndexingState_BLOCKEDDUETONOINDEX,
        AmpInspectionResult_IndexingState_BLOCKEDDUETOEXPIREDUNAVAILABLEAFTER,
        ..
      ),

    -- * AmpInspectionResult_PageFetchState
    AmpInspectionResult_PageFetchState
      ( AmpInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED,
        AmpInspectionResult_PageFetchState_Successful,
        AmpInspectionResult_PageFetchState_SOFT_404,
        AmpInspectionResult_PageFetchState_BLOCKEDROBOTSTXT,
        AmpInspectionResult_PageFetchState_NOTFOUND,
        AmpInspectionResult_PageFetchState_ACCESSDENIED,
        AmpInspectionResult_PageFetchState_SERVERERROR,
        AmpInspectionResult_PageFetchState_REDIRECTERROR,
        AmpInspectionResult_PageFetchState_ACCESSFORBIDDEN,
        AmpInspectionResult_PageFetchState_BLOCKED4XX,
        AmpInspectionResult_PageFetchState_INTERNALCRAWLERROR,
        AmpInspectionResult_PageFetchState_INVALIDURL,
        ..
      ),

    -- * AmpInspectionResult_RobotsTxtState
    AmpInspectionResult_RobotsTxtState
      ( AmpInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED,
        AmpInspectionResult_RobotsTxtState_Allowed,
        AmpInspectionResult_RobotsTxtState_Disallowed,
        ..
      ),

    -- * AmpInspectionResult_Verdict
    AmpInspectionResult_Verdict
      ( AmpInspectionResult_Verdict_VERDICTUNSPECIFIED,
        AmpInspectionResult_Verdict_Pass,
        AmpInspectionResult_Verdict_Partial,
        AmpInspectionResult_Verdict_Fail,
        AmpInspectionResult_Verdict_Neutral,
        ..
      ),

    -- * AmpIssue_Severity
    AmpIssue_Severity
      ( AmpIssue_Severity_SEVERITYUNSPECIFIED,
        AmpIssue_Severity_Warning,
        AmpIssue_Severity_Error',
        ..
      ),

    -- * ApiDimensionFilter_Dimension
    ApiDimensionFilter_Dimension
      ( ApiDimensionFilter_Dimension_Query,
        ApiDimensionFilter_Dimension_Page,
        ApiDimensionFilter_Dimension_Country,
        ApiDimensionFilter_Dimension_Device,
        ApiDimensionFilter_Dimension_SEARCHAPPEARANCE,
        ..
      ),

    -- * ApiDimensionFilter_Operator
    ApiDimensionFilter_Operator
      ( ApiDimensionFilter_Operator_Equals,
        ApiDimensionFilter_Operator_NOTEQUALS,
        ApiDimensionFilter_Operator_Contains,
        ApiDimensionFilter_Operator_NOTCONTAINS,
        ApiDimensionFilter_Operator_INCLUDINGREGEX,
        ApiDimensionFilter_Operator_EXCLUDINGREGEX,
        ..
      ),

    -- * ApiDimensionFilterGroup_GroupType
    ApiDimensionFilterGroup_GroupType
      ( ApiDimensionFilterGroup_GroupType_And,
        ..
      ),

    -- * IndexStatusInspectionResult_CrawledAs
    IndexStatusInspectionResult_CrawledAs
      ( IndexStatusInspectionResult_CrawledAs_CRAWLINGUSERAGENTUNSPECIFIED,
        IndexStatusInspectionResult_CrawledAs_Desktop,
        IndexStatusInspectionResult_CrawledAs_Mobile,
        ..
      ),

    -- * IndexStatusInspectionResult_IndexingState
    IndexStatusInspectionResult_IndexingState
      ( IndexStatusInspectionResult_IndexingState_INDEXINGSTATEUNSPECIFIED,
        IndexStatusInspectionResult_IndexingState_INDEXINGALLOWED,
        IndexStatusInspectionResult_IndexingState_BLOCKEDBYMETATAG,
        IndexStatusInspectionResult_IndexingState_BLOCKEDBYHTTPHEADER,
        IndexStatusInspectionResult_IndexingState_BLOCKEDBYROBOTSTXT,
        ..
      ),

    -- * IndexStatusInspectionResult_PageFetchState
    IndexStatusInspectionResult_PageFetchState
      ( IndexStatusInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED,
        IndexStatusInspectionResult_PageFetchState_Successful,
        IndexStatusInspectionResult_PageFetchState_SOFT_404,
        IndexStatusInspectionResult_PageFetchState_BLOCKEDROBOTSTXT,
        IndexStatusInspectionResult_PageFetchState_NOTFOUND,
        IndexStatusInspectionResult_PageFetchState_ACCESSDENIED,
        IndexStatusInspectionResult_PageFetchState_SERVERERROR,
        IndexStatusInspectionResult_PageFetchState_REDIRECTERROR,
        IndexStatusInspectionResult_PageFetchState_ACCESSFORBIDDEN,
        IndexStatusInspectionResult_PageFetchState_BLOCKED4XX,
        IndexStatusInspectionResult_PageFetchState_INTERNALCRAWLERROR,
        IndexStatusInspectionResult_PageFetchState_INVALIDURL,
        ..
      ),

    -- * IndexStatusInspectionResult_RobotsTxtState
    IndexStatusInspectionResult_RobotsTxtState
      ( IndexStatusInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED,
        IndexStatusInspectionResult_RobotsTxtState_Allowed,
        IndexStatusInspectionResult_RobotsTxtState_Disallowed,
        ..
      ),

    -- * IndexStatusInspectionResult_Verdict
    IndexStatusInspectionResult_Verdict
      ( IndexStatusInspectionResult_Verdict_VERDICTUNSPECIFIED,
        IndexStatusInspectionResult_Verdict_Pass,
        IndexStatusInspectionResult_Verdict_Partial,
        IndexStatusInspectionResult_Verdict_Fail,
        IndexStatusInspectionResult_Verdict_Neutral,
        ..
      ),

    -- * MobileFriendlyIssue_Rule
    MobileFriendlyIssue_Rule
      ( MobileFriendlyIssue_Rule_MOBILEFRIENDLYRULEUNSPECIFIED,
        MobileFriendlyIssue_Rule_USESINCOMPATIBLEPLUGINS,
        MobileFriendlyIssue_Rule_CONFIGUREVIEWPORT,
        MobileFriendlyIssue_Rule_FIXEDWIDTHVIEWPORT,
        MobileFriendlyIssue_Rule_SIZECONTENTTOVIEWPORT,
        MobileFriendlyIssue_Rule_USELEGIBLEFONTSIZES,
        MobileFriendlyIssue_Rule_TAPTARGETSTOOCLOSE,
        ..
      ),

    -- * MobileUsabilityInspectionResult_Verdict
    MobileUsabilityInspectionResult_Verdict
      ( MobileUsabilityInspectionResult_Verdict_VERDICTUNSPECIFIED,
        MobileUsabilityInspectionResult_Verdict_Pass,
        MobileUsabilityInspectionResult_Verdict_Partial,
        MobileUsabilityInspectionResult_Verdict_Fail,
        MobileUsabilityInspectionResult_Verdict_Neutral,
        ..
      ),

    -- * MobileUsabilityIssue_IssueType
    MobileUsabilityIssue_IssueType
      ( MobileUsabilityIssue_IssueType_MOBILEUSABILITYISSUETYPEUNSPECIFIED,
        MobileUsabilityIssue_IssueType_USESINCOMPATIBLEPLUGINS,
        MobileUsabilityIssue_IssueType_CONFIGUREVIEWPORT,
        MobileUsabilityIssue_IssueType_FIXEDWIDTHVIEWPORT,
        MobileUsabilityIssue_IssueType_SIZECONTENTTOVIEWPORT,
        MobileUsabilityIssue_IssueType_USELEGIBLEFONTSIZES,
        MobileUsabilityIssue_IssueType_TAPTARGETSTOOCLOSE,
        ..
      ),

    -- * MobileUsabilityIssue_Severity
    MobileUsabilityIssue_Severity
      ( MobileUsabilityIssue_Severity_SEVERITYUNSPECIFIED,
        MobileUsabilityIssue_Severity_Warning,
        MobileUsabilityIssue_Severity_Error',
        ..
      ),

    -- * RichResultsInspectionResult_Verdict
    RichResultsInspectionResult_Verdict
      ( RichResultsInspectionResult_Verdict_VERDICTUNSPECIFIED,
        RichResultsInspectionResult_Verdict_Pass,
        RichResultsInspectionResult_Verdict_Partial,
        RichResultsInspectionResult_Verdict_Fail,
        RichResultsInspectionResult_Verdict_Neutral,
        ..
      ),

    -- * RichResultsIssue_Severity
    RichResultsIssue_Severity
      ( RichResultsIssue_Severity_SEVERITYUNSPECIFIED,
        RichResultsIssue_Severity_Warning,
        RichResultsIssue_Severity_Error',
        ..
      ),

    -- * RunMobileFriendlyTestResponse_MobileFriendliness
    RunMobileFriendlyTestResponse_MobileFriendliness
      ( RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLYTESTRESULTUNSPECIFIED,
        RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLY,
        RunMobileFriendlyTestResponse_MobileFriendliness_NOTMOBILEFRIENDLY,
        ..
      ),

    -- * SearchAnalyticsQueryRequest_AggregationType
    SearchAnalyticsQueryRequest_AggregationType
      ( SearchAnalyticsQueryRequest_AggregationType_Auto,
        SearchAnalyticsQueryRequest_AggregationType_BYPROPERTY,
        SearchAnalyticsQueryRequest_AggregationType_BYPAGE,
        ..
      ),

    -- * SearchAnalyticsQueryRequest_DataState
    SearchAnalyticsQueryRequest_DataState
      ( SearchAnalyticsQueryRequest_DataState_DATASTATEUNSPECIFIED,
        SearchAnalyticsQueryRequest_DataState_Final,
        SearchAnalyticsQueryRequest_DataState_All,
        ..
      ),

    -- * SearchAnalyticsQueryRequest_DimensionsItem
    SearchAnalyticsQueryRequest_DimensionsItem
      ( SearchAnalyticsQueryRequest_DimensionsItem_Date,
        SearchAnalyticsQueryRequest_DimensionsItem_Query,
        SearchAnalyticsQueryRequest_DimensionsItem_Page,
        SearchAnalyticsQueryRequest_DimensionsItem_Country,
        SearchAnalyticsQueryRequest_DimensionsItem_Device,
        SearchAnalyticsQueryRequest_DimensionsItem_SEARCHAPPEARANCE,
        ..
      ),

    -- * SearchAnalyticsQueryRequest_SearchType
    SearchAnalyticsQueryRequest_SearchType
      ( SearchAnalyticsQueryRequest_SearchType_Web,
        SearchAnalyticsQueryRequest_SearchType_Image,
        SearchAnalyticsQueryRequest_SearchType_Video,
        SearchAnalyticsQueryRequest_SearchType_News,
        SearchAnalyticsQueryRequest_SearchType_Discover,
        SearchAnalyticsQueryRequest_SearchType_GOOGLENEWS,
        ..
      ),

    -- * SearchAnalyticsQueryRequest_Type
    SearchAnalyticsQueryRequest_Type
      ( SearchAnalyticsQueryRequest_Type_Web,
        SearchAnalyticsQueryRequest_Type_Image,
        SearchAnalyticsQueryRequest_Type_Video,
        SearchAnalyticsQueryRequest_Type_News,
        SearchAnalyticsQueryRequest_Type_Discover,
        SearchAnalyticsQueryRequest_Type_GOOGLENEWS,
        ..
      ),

    -- * SearchAnalyticsQueryResponse_ResponseAggregationType
    SearchAnalyticsQueryResponse_ResponseAggregationType
      ( SearchAnalyticsQueryResponse_ResponseAggregationType_Auto,
        SearchAnalyticsQueryResponse_ResponseAggregationType_BYPROPERTY,
        SearchAnalyticsQueryResponse_ResponseAggregationType_BYPAGE,
        ..
      ),

    -- * TestStatus_Status
    TestStatus_Status
      ( TestStatus_Status_TESTSTATUSUNSPECIFIED,
        TestStatus_Status_Complete,
        TestStatus_Status_INTERNALERROR,
        TestStatus_Status_PAGEUNREACHABLE,
        ..
      ),

    -- * WmxSite_PermissionLevel
    WmxSite_PermissionLevel
      ( WmxSite_PermissionLevel_SITEPERMISSIONLEVELUNSPECIFIED,
        WmxSite_PermissionLevel_SITEOWNER,
        WmxSite_PermissionLevel_SITEFULLUSER,
        WmxSite_PermissionLevel_SITERESTRICTEDUSER,
        WmxSite_PermissionLevel_SITEUNVERIFIEDUSER,
        ..
      ),

    -- * WmxSitemap_Type
    WmxSitemap_Type
      ( WmxSitemap_Type_NOTSITEMAP,
        WmxSitemap_Type_URLLIST,
        WmxSitemap_Type_Sitemap,
        WmxSitemap_Type_RSSFEED,
        WmxSitemap_Type_ATOMFEED,
        WmxSitemap_Type_PATTERNSITEMAP,
        WmxSitemap_Type_Oceanfront,
        ..
      ),

    -- * WmxSitemapContent_Type
    WmxSitemapContent_Type
      ( WmxSitemapContent_Type_Web,
        WmxSitemapContent_Type_Image,
        WmxSitemapContent_Type_Video,
        WmxSitemapContent_Type_News,
        WmxSitemapContent_Type_Mobile,
        WmxSitemapContent_Type_ANDROIDAPP,
        WmxSitemapContent_Type_Pattern,
        WmxSitemapContent_Type_IOSAPP,
        WmxSitemapContent_Type_DATAFEEDELEMENT,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Index status of the AMP URL.
newtype AmpInspectionResult_AmpIndexStatusVerdict = AmpInspectionResult_AmpIndexStatusVerdict {fromAmpInspectionResult_AmpIndexStatusVerdict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown verdict.
pattern AmpInspectionResult_AmpIndexStatusVerdict_VERDICTUNSPECIFIED :: AmpInspectionResult_AmpIndexStatusVerdict
pattern AmpInspectionResult_AmpIndexStatusVerdict_VERDICTUNSPECIFIED = AmpInspectionResult_AmpIndexStatusVerdict "VERDICT_UNSPECIFIED"

-- | Equivalent to \"Valid\" for the page or item in Search Console.
pattern AmpInspectionResult_AmpIndexStatusVerdict_Pass :: AmpInspectionResult_AmpIndexStatusVerdict
pattern AmpInspectionResult_AmpIndexStatusVerdict_Pass = AmpInspectionResult_AmpIndexStatusVerdict "PASS"

-- | Equivalent to \"Valid with warnings\" for the page or item in Search Console.
pattern AmpInspectionResult_AmpIndexStatusVerdict_Partial :: AmpInspectionResult_AmpIndexStatusVerdict
pattern AmpInspectionResult_AmpIndexStatusVerdict_Partial = AmpInspectionResult_AmpIndexStatusVerdict "PARTIAL"

-- | Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.
pattern AmpInspectionResult_AmpIndexStatusVerdict_Fail :: AmpInspectionResult_AmpIndexStatusVerdict
pattern AmpInspectionResult_AmpIndexStatusVerdict_Fail = AmpInspectionResult_AmpIndexStatusVerdict "FAIL"

-- | Equivalent to \"Excluded\" for the page or item in Search Console.
pattern AmpInspectionResult_AmpIndexStatusVerdict_Neutral :: AmpInspectionResult_AmpIndexStatusVerdict
pattern AmpInspectionResult_AmpIndexStatusVerdict_Neutral = AmpInspectionResult_AmpIndexStatusVerdict "NEUTRAL"

{-# COMPLETE
  AmpInspectionResult_AmpIndexStatusVerdict_VERDICTUNSPECIFIED,
  AmpInspectionResult_AmpIndexStatusVerdict_Pass,
  AmpInspectionResult_AmpIndexStatusVerdict_Partial,
  AmpInspectionResult_AmpIndexStatusVerdict_Fail,
  AmpInspectionResult_AmpIndexStatusVerdict_Neutral,
  AmpInspectionResult_AmpIndexStatusVerdict
  #-}

-- | Whether or not the page blocks indexing through a noindex rule.
newtype AmpInspectionResult_IndexingState = AmpInspectionResult_IndexingState {fromAmpInspectionResult_IndexingState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown indexing status.
pattern AmpInspectionResult_IndexingState_AMPINDEXINGSTATEUNSPECIFIED :: AmpInspectionResult_IndexingState
pattern AmpInspectionResult_IndexingState_AMPINDEXINGSTATEUNSPECIFIED = AmpInspectionResult_IndexingState "AMP_INDEXING_STATE_UNSPECIFIED"

-- | Indexing allowed.
pattern AmpInspectionResult_IndexingState_AMPINDEXINGALLOWED :: AmpInspectionResult_IndexingState
pattern AmpInspectionResult_IndexingState_AMPINDEXINGALLOWED = AmpInspectionResult_IndexingState "AMP_INDEXING_ALLOWED"

-- | Indexing not allowed, \'noindex\' detected.
pattern AmpInspectionResult_IndexingState_BLOCKEDDUETONOINDEX :: AmpInspectionResult_IndexingState
pattern AmpInspectionResult_IndexingState_BLOCKEDDUETONOINDEX = AmpInspectionResult_IndexingState "BLOCKED_DUE_TO_NOINDEX"

-- | Indexing not allowed, \'unavailable_after\' date expired.
pattern AmpInspectionResult_IndexingState_BLOCKEDDUETOEXPIREDUNAVAILABLEAFTER :: AmpInspectionResult_IndexingState
pattern AmpInspectionResult_IndexingState_BLOCKEDDUETOEXPIREDUNAVAILABLEAFTER = AmpInspectionResult_IndexingState "BLOCKED_DUE_TO_EXPIRED_UNAVAILABLE_AFTER"

{-# COMPLETE
  AmpInspectionResult_IndexingState_AMPINDEXINGSTATEUNSPECIFIED,
  AmpInspectionResult_IndexingState_AMPINDEXINGALLOWED,
  AmpInspectionResult_IndexingState_BLOCKEDDUETONOINDEX,
  AmpInspectionResult_IndexingState_BLOCKEDDUETOEXPIREDUNAVAILABLEAFTER,
  AmpInspectionResult_IndexingState
  #-}

-- | Whether or not Google could fetch the AMP.
newtype AmpInspectionResult_PageFetchState = AmpInspectionResult_PageFetchState {fromAmpInspectionResult_PageFetchState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown fetch state.
pattern AmpInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED = AmpInspectionResult_PageFetchState "PAGE_FETCH_STATE_UNSPECIFIED"

-- | Successful fetch.
pattern AmpInspectionResult_PageFetchState_Successful :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_Successful = AmpInspectionResult_PageFetchState "SUCCESSFUL"

-- | Soft 404.
pattern AmpInspectionResult_PageFetchState_SOFT_404 :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_SOFT_404 = AmpInspectionResult_PageFetchState "SOFT_404"

-- | Blocked by robots.txt.
pattern AmpInspectionResult_PageFetchState_BLOCKEDROBOTSTXT :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_BLOCKEDROBOTSTXT = AmpInspectionResult_PageFetchState "BLOCKED_ROBOTS_TXT"

-- | Not found (404).
pattern AmpInspectionResult_PageFetchState_NOTFOUND :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_NOTFOUND = AmpInspectionResult_PageFetchState "NOT_FOUND"

-- | Blocked due to unauthorized request (401).
pattern AmpInspectionResult_PageFetchState_ACCESSDENIED :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_ACCESSDENIED = AmpInspectionResult_PageFetchState "ACCESS_DENIED"

-- | Server error (5xx).
pattern AmpInspectionResult_PageFetchState_SERVERERROR :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_SERVERERROR = AmpInspectionResult_PageFetchState "SERVER_ERROR"

-- | Redirection error.
pattern AmpInspectionResult_PageFetchState_REDIRECTERROR :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_REDIRECTERROR = AmpInspectionResult_PageFetchState "REDIRECT_ERROR"

-- | Blocked due to access forbidden (403).
pattern AmpInspectionResult_PageFetchState_ACCESSFORBIDDEN :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_ACCESSFORBIDDEN = AmpInspectionResult_PageFetchState "ACCESS_FORBIDDEN"

-- | Blocked due to other 4xx issue (not 403, 404).
pattern AmpInspectionResult_PageFetchState_BLOCKED4XX :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_BLOCKED4XX = AmpInspectionResult_PageFetchState "BLOCKED_4XX"

-- | Internal error.
pattern AmpInspectionResult_PageFetchState_INTERNALCRAWLERROR :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_INTERNALCRAWLERROR = AmpInspectionResult_PageFetchState "INTERNAL_CRAWL_ERROR"

-- | Invalid URL.
pattern AmpInspectionResult_PageFetchState_INVALIDURL :: AmpInspectionResult_PageFetchState
pattern AmpInspectionResult_PageFetchState_INVALIDURL = AmpInspectionResult_PageFetchState "INVALID_URL"

{-# COMPLETE
  AmpInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED,
  AmpInspectionResult_PageFetchState_Successful,
  AmpInspectionResult_PageFetchState_SOFT_404,
  AmpInspectionResult_PageFetchState_BLOCKEDROBOTSTXT,
  AmpInspectionResult_PageFetchState_NOTFOUND,
  AmpInspectionResult_PageFetchState_ACCESSDENIED,
  AmpInspectionResult_PageFetchState_SERVERERROR,
  AmpInspectionResult_PageFetchState_REDIRECTERROR,
  AmpInspectionResult_PageFetchState_ACCESSFORBIDDEN,
  AmpInspectionResult_PageFetchState_BLOCKED4XX,
  AmpInspectionResult_PageFetchState_INTERNALCRAWLERROR,
  AmpInspectionResult_PageFetchState_INVALIDURL,
  AmpInspectionResult_PageFetchState
  #-}

-- | Whether or not the page is blocked to Google by a robots.txt rule.
newtype AmpInspectionResult_RobotsTxtState = AmpInspectionResult_RobotsTxtState {fromAmpInspectionResult_RobotsTxtState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown robots.txt state, typically because the page wasn\'t fetched or found, or because robots.txt itself couldn\'t be reached.
pattern AmpInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED :: AmpInspectionResult_RobotsTxtState
pattern AmpInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED = AmpInspectionResult_RobotsTxtState "ROBOTS_TXT_STATE_UNSPECIFIED"

-- | Crawl allowed by robots.txt.
pattern AmpInspectionResult_RobotsTxtState_Allowed :: AmpInspectionResult_RobotsTxtState
pattern AmpInspectionResult_RobotsTxtState_Allowed = AmpInspectionResult_RobotsTxtState "ALLOWED"

-- | Crawl blocked by robots.txt.
pattern AmpInspectionResult_RobotsTxtState_Disallowed :: AmpInspectionResult_RobotsTxtState
pattern AmpInspectionResult_RobotsTxtState_Disallowed = AmpInspectionResult_RobotsTxtState "DISALLOWED"

{-# COMPLETE
  AmpInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED,
  AmpInspectionResult_RobotsTxtState_Allowed,
  AmpInspectionResult_RobotsTxtState_Disallowed,
  AmpInspectionResult_RobotsTxtState
  #-}

-- | The status of the most severe error on the page. If a page has both warnings and errors, the page status is error. Error status means the page cannot be shown in Search results.
newtype AmpInspectionResult_Verdict = AmpInspectionResult_Verdict {fromAmpInspectionResult_Verdict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown verdict.
pattern AmpInspectionResult_Verdict_VERDICTUNSPECIFIED :: AmpInspectionResult_Verdict
pattern AmpInspectionResult_Verdict_VERDICTUNSPECIFIED = AmpInspectionResult_Verdict "VERDICT_UNSPECIFIED"

-- | Equivalent to \"Valid\" for the page or item in Search Console.
pattern AmpInspectionResult_Verdict_Pass :: AmpInspectionResult_Verdict
pattern AmpInspectionResult_Verdict_Pass = AmpInspectionResult_Verdict "PASS"

-- | Equivalent to \"Valid with warnings\" for the page or item in Search Console.
pattern AmpInspectionResult_Verdict_Partial :: AmpInspectionResult_Verdict
pattern AmpInspectionResult_Verdict_Partial = AmpInspectionResult_Verdict "PARTIAL"

-- | Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.
pattern AmpInspectionResult_Verdict_Fail :: AmpInspectionResult_Verdict
pattern AmpInspectionResult_Verdict_Fail = AmpInspectionResult_Verdict "FAIL"

-- | Equivalent to \"Excluded\" for the page or item in Search Console.
pattern AmpInspectionResult_Verdict_Neutral :: AmpInspectionResult_Verdict
pattern AmpInspectionResult_Verdict_Neutral = AmpInspectionResult_Verdict "NEUTRAL"

{-# COMPLETE
  AmpInspectionResult_Verdict_VERDICTUNSPECIFIED,
  AmpInspectionResult_Verdict_Pass,
  AmpInspectionResult_Verdict_Partial,
  AmpInspectionResult_Verdict_Fail,
  AmpInspectionResult_Verdict_Neutral,
  AmpInspectionResult_Verdict
  #-}

-- | Severity of this issue: WARNING or ERROR.
newtype AmpIssue_Severity = AmpIssue_Severity {fromAmpIssue_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown severity.
pattern AmpIssue_Severity_SEVERITYUNSPECIFIED :: AmpIssue_Severity
pattern AmpIssue_Severity_SEVERITYUNSPECIFIED = AmpIssue_Severity "SEVERITY_UNSPECIFIED"

-- | Warning.
pattern AmpIssue_Severity_Warning :: AmpIssue_Severity
pattern AmpIssue_Severity_Warning = AmpIssue_Severity "WARNING"

-- | Error.
pattern AmpIssue_Severity_Error' :: AmpIssue_Severity
pattern AmpIssue_Severity_Error' = AmpIssue_Severity "ERROR"

{-# COMPLETE
  AmpIssue_Severity_SEVERITYUNSPECIFIED,
  AmpIssue_Severity_Warning,
  AmpIssue_Severity_Error',
  AmpIssue_Severity
  #-}

newtype ApiDimensionFilter_Dimension = ApiDimensionFilter_Dimension {fromApiDimensionFilter_Dimension :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ApiDimensionFilter_Dimension_Query :: ApiDimensionFilter_Dimension
pattern ApiDimensionFilter_Dimension_Query = ApiDimensionFilter_Dimension "QUERY"

-- |
pattern ApiDimensionFilter_Dimension_Page :: ApiDimensionFilter_Dimension
pattern ApiDimensionFilter_Dimension_Page = ApiDimensionFilter_Dimension "PAGE"

-- |
pattern ApiDimensionFilter_Dimension_Country :: ApiDimensionFilter_Dimension
pattern ApiDimensionFilter_Dimension_Country = ApiDimensionFilter_Dimension "COUNTRY"

-- |
pattern ApiDimensionFilter_Dimension_Device :: ApiDimensionFilter_Dimension
pattern ApiDimensionFilter_Dimension_Device = ApiDimensionFilter_Dimension "DEVICE"

-- |
pattern ApiDimensionFilter_Dimension_SEARCHAPPEARANCE :: ApiDimensionFilter_Dimension
pattern ApiDimensionFilter_Dimension_SEARCHAPPEARANCE = ApiDimensionFilter_Dimension "SEARCH_APPEARANCE"

{-# COMPLETE
  ApiDimensionFilter_Dimension_Query,
  ApiDimensionFilter_Dimension_Page,
  ApiDimensionFilter_Dimension_Country,
  ApiDimensionFilter_Dimension_Device,
  ApiDimensionFilter_Dimension_SEARCHAPPEARANCE,
  ApiDimensionFilter_Dimension
  #-}

newtype ApiDimensionFilter_Operator = ApiDimensionFilter_Operator {fromApiDimensionFilter_Operator :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ApiDimensionFilter_Operator_Equals :: ApiDimensionFilter_Operator
pattern ApiDimensionFilter_Operator_Equals = ApiDimensionFilter_Operator "EQUALS"

-- |
pattern ApiDimensionFilter_Operator_NOTEQUALS :: ApiDimensionFilter_Operator
pattern ApiDimensionFilter_Operator_NOTEQUALS = ApiDimensionFilter_Operator "NOT_EQUALS"

-- |
pattern ApiDimensionFilter_Operator_Contains :: ApiDimensionFilter_Operator
pattern ApiDimensionFilter_Operator_Contains = ApiDimensionFilter_Operator "CONTAINS"

-- |
pattern ApiDimensionFilter_Operator_NOTCONTAINS :: ApiDimensionFilter_Operator
pattern ApiDimensionFilter_Operator_NOTCONTAINS = ApiDimensionFilter_Operator "NOT_CONTAINS"

-- |
pattern ApiDimensionFilter_Operator_INCLUDINGREGEX :: ApiDimensionFilter_Operator
pattern ApiDimensionFilter_Operator_INCLUDINGREGEX = ApiDimensionFilter_Operator "INCLUDING_REGEX"

-- |
pattern ApiDimensionFilter_Operator_EXCLUDINGREGEX :: ApiDimensionFilter_Operator
pattern ApiDimensionFilter_Operator_EXCLUDINGREGEX = ApiDimensionFilter_Operator "EXCLUDING_REGEX"

{-# COMPLETE
  ApiDimensionFilter_Operator_Equals,
  ApiDimensionFilter_Operator_NOTEQUALS,
  ApiDimensionFilter_Operator_Contains,
  ApiDimensionFilter_Operator_NOTCONTAINS,
  ApiDimensionFilter_Operator_INCLUDINGREGEX,
  ApiDimensionFilter_Operator_EXCLUDINGREGEX,
  ApiDimensionFilter_Operator
  #-}

newtype ApiDimensionFilterGroup_GroupType = ApiDimensionFilterGroup_GroupType {fromApiDimensionFilterGroup_GroupType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ApiDimensionFilterGroup_GroupType_And :: ApiDimensionFilterGroup_GroupType
pattern ApiDimensionFilterGroup_GroupType_And = ApiDimensionFilterGroup_GroupType "AND"

{-# COMPLETE
  ApiDimensionFilterGroup_GroupType_And,
  ApiDimensionFilterGroup_GroupType
  #-}

-- | Primary crawler that was used by Google to crawl your site.
newtype IndexStatusInspectionResult_CrawledAs = IndexStatusInspectionResult_CrawledAs {fromIndexStatusInspectionResult_CrawledAs :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown user agent.
pattern IndexStatusInspectionResult_CrawledAs_CRAWLINGUSERAGENTUNSPECIFIED :: IndexStatusInspectionResult_CrawledAs
pattern IndexStatusInspectionResult_CrawledAs_CRAWLINGUSERAGENTUNSPECIFIED = IndexStatusInspectionResult_CrawledAs "CRAWLING_USER_AGENT_UNSPECIFIED"

-- | Desktop user agent.
pattern IndexStatusInspectionResult_CrawledAs_Desktop :: IndexStatusInspectionResult_CrawledAs
pattern IndexStatusInspectionResult_CrawledAs_Desktop = IndexStatusInspectionResult_CrawledAs "DESKTOP"

-- | Mobile user agent.
pattern IndexStatusInspectionResult_CrawledAs_Mobile :: IndexStatusInspectionResult_CrawledAs
pattern IndexStatusInspectionResult_CrawledAs_Mobile = IndexStatusInspectionResult_CrawledAs "MOBILE"

{-# COMPLETE
  IndexStatusInspectionResult_CrawledAs_CRAWLINGUSERAGENTUNSPECIFIED,
  IndexStatusInspectionResult_CrawledAs_Desktop,
  IndexStatusInspectionResult_CrawledAs_Mobile,
  IndexStatusInspectionResult_CrawledAs
  #-}

-- | Whether or not the page blocks indexing through a noindex rule.
newtype IndexStatusInspectionResult_IndexingState = IndexStatusInspectionResult_IndexingState {fromIndexStatusInspectionResult_IndexingState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown indexing status.
pattern IndexStatusInspectionResult_IndexingState_INDEXINGSTATEUNSPECIFIED :: IndexStatusInspectionResult_IndexingState
pattern IndexStatusInspectionResult_IndexingState_INDEXINGSTATEUNSPECIFIED = IndexStatusInspectionResult_IndexingState "INDEXING_STATE_UNSPECIFIED"

-- | Indexing allowed.
pattern IndexStatusInspectionResult_IndexingState_INDEXINGALLOWED :: IndexStatusInspectionResult_IndexingState
pattern IndexStatusInspectionResult_IndexingState_INDEXINGALLOWED = IndexStatusInspectionResult_IndexingState "INDEXING_ALLOWED"

-- | Indexing not allowed, \'noindex\' detected in \'robots\' meta tag.
pattern IndexStatusInspectionResult_IndexingState_BLOCKEDBYMETATAG :: IndexStatusInspectionResult_IndexingState
pattern IndexStatusInspectionResult_IndexingState_BLOCKEDBYMETATAG = IndexStatusInspectionResult_IndexingState "BLOCKED_BY_META_TAG"

-- | Indexing not allowed, \'noindex\' detected in \'X-Robots-Tag\' http header.
pattern IndexStatusInspectionResult_IndexingState_BLOCKEDBYHTTPHEADER :: IndexStatusInspectionResult_IndexingState
pattern IndexStatusInspectionResult_IndexingState_BLOCKEDBYHTTPHEADER = IndexStatusInspectionResult_IndexingState "BLOCKED_BY_HTTP_HEADER"

-- | Reserved, no longer in use.
pattern IndexStatusInspectionResult_IndexingState_BLOCKEDBYROBOTSTXT :: IndexStatusInspectionResult_IndexingState
pattern IndexStatusInspectionResult_IndexingState_BLOCKEDBYROBOTSTXT = IndexStatusInspectionResult_IndexingState "BLOCKED_BY_ROBOTS_TXT"

{-# COMPLETE
  IndexStatusInspectionResult_IndexingState_INDEXINGSTATEUNSPECIFIED,
  IndexStatusInspectionResult_IndexingState_INDEXINGALLOWED,
  IndexStatusInspectionResult_IndexingState_BLOCKEDBYMETATAG,
  IndexStatusInspectionResult_IndexingState_BLOCKEDBYHTTPHEADER,
  IndexStatusInspectionResult_IndexingState_BLOCKEDBYROBOTSTXT,
  IndexStatusInspectionResult_IndexingState
  #-}

-- | Whether or not Google could retrieve the page from your server. Equivalent to <https://support.google.com/webmasters/answer/9012289#index_coverage \"page fetch\"> in the URL inspection report.
newtype IndexStatusInspectionResult_PageFetchState = IndexStatusInspectionResult_PageFetchState {fromIndexStatusInspectionResult_PageFetchState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown fetch state.
pattern IndexStatusInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED = IndexStatusInspectionResult_PageFetchState "PAGE_FETCH_STATE_UNSPECIFIED"

-- | Successful fetch.
pattern IndexStatusInspectionResult_PageFetchState_Successful :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_Successful = IndexStatusInspectionResult_PageFetchState "SUCCESSFUL"

-- | Soft 404.
pattern IndexStatusInspectionResult_PageFetchState_SOFT_404 :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_SOFT_404 = IndexStatusInspectionResult_PageFetchState "SOFT_404"

-- | Blocked by robots.txt.
pattern IndexStatusInspectionResult_PageFetchState_BLOCKEDROBOTSTXT :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_BLOCKEDROBOTSTXT = IndexStatusInspectionResult_PageFetchState "BLOCKED_ROBOTS_TXT"

-- | Not found (404).
pattern IndexStatusInspectionResult_PageFetchState_NOTFOUND :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_NOTFOUND = IndexStatusInspectionResult_PageFetchState "NOT_FOUND"

-- | Blocked due to unauthorized request (401).
pattern IndexStatusInspectionResult_PageFetchState_ACCESSDENIED :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_ACCESSDENIED = IndexStatusInspectionResult_PageFetchState "ACCESS_DENIED"

-- | Server error (5xx).
pattern IndexStatusInspectionResult_PageFetchState_SERVERERROR :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_SERVERERROR = IndexStatusInspectionResult_PageFetchState "SERVER_ERROR"

-- | Redirection error.
pattern IndexStatusInspectionResult_PageFetchState_REDIRECTERROR :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_REDIRECTERROR = IndexStatusInspectionResult_PageFetchState "REDIRECT_ERROR"

-- | Blocked due to access forbidden (403).
pattern IndexStatusInspectionResult_PageFetchState_ACCESSFORBIDDEN :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_ACCESSFORBIDDEN = IndexStatusInspectionResult_PageFetchState "ACCESS_FORBIDDEN"

-- | Blocked due to other 4xx issue (not 403, 404).
pattern IndexStatusInspectionResult_PageFetchState_BLOCKED4XX :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_BLOCKED4XX = IndexStatusInspectionResult_PageFetchState "BLOCKED_4XX"

-- | Internal error.
pattern IndexStatusInspectionResult_PageFetchState_INTERNALCRAWLERROR :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_INTERNALCRAWLERROR = IndexStatusInspectionResult_PageFetchState "INTERNAL_CRAWL_ERROR"

-- | Invalid URL.
pattern IndexStatusInspectionResult_PageFetchState_INVALIDURL :: IndexStatusInspectionResult_PageFetchState
pattern IndexStatusInspectionResult_PageFetchState_INVALIDURL = IndexStatusInspectionResult_PageFetchState "INVALID_URL"

{-# COMPLETE
  IndexStatusInspectionResult_PageFetchState_PAGEFETCHSTATEUNSPECIFIED,
  IndexStatusInspectionResult_PageFetchState_Successful,
  IndexStatusInspectionResult_PageFetchState_SOFT_404,
  IndexStatusInspectionResult_PageFetchState_BLOCKEDROBOTSTXT,
  IndexStatusInspectionResult_PageFetchState_NOTFOUND,
  IndexStatusInspectionResult_PageFetchState_ACCESSDENIED,
  IndexStatusInspectionResult_PageFetchState_SERVERERROR,
  IndexStatusInspectionResult_PageFetchState_REDIRECTERROR,
  IndexStatusInspectionResult_PageFetchState_ACCESSFORBIDDEN,
  IndexStatusInspectionResult_PageFetchState_BLOCKED4XX,
  IndexStatusInspectionResult_PageFetchState_INTERNALCRAWLERROR,
  IndexStatusInspectionResult_PageFetchState_INVALIDURL,
  IndexStatusInspectionResult_PageFetchState
  #-}

-- | Whether or not the page is blocked to Google by a robots.txt rule.
newtype IndexStatusInspectionResult_RobotsTxtState = IndexStatusInspectionResult_RobotsTxtState {fromIndexStatusInspectionResult_RobotsTxtState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown robots.txt state, typically because the page wasn\'t fetched or found, or because robots.txt itself couldn\'t be reached.
pattern IndexStatusInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED :: IndexStatusInspectionResult_RobotsTxtState
pattern IndexStatusInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED = IndexStatusInspectionResult_RobotsTxtState "ROBOTS_TXT_STATE_UNSPECIFIED"

-- | Crawl allowed by robots.txt.
pattern IndexStatusInspectionResult_RobotsTxtState_Allowed :: IndexStatusInspectionResult_RobotsTxtState
pattern IndexStatusInspectionResult_RobotsTxtState_Allowed = IndexStatusInspectionResult_RobotsTxtState "ALLOWED"

-- | Crawl blocked by robots.txt.
pattern IndexStatusInspectionResult_RobotsTxtState_Disallowed :: IndexStatusInspectionResult_RobotsTxtState
pattern IndexStatusInspectionResult_RobotsTxtState_Disallowed = IndexStatusInspectionResult_RobotsTxtState "DISALLOWED"

{-# COMPLETE
  IndexStatusInspectionResult_RobotsTxtState_ROBOTSTXTSTATEUNSPECIFIED,
  IndexStatusInspectionResult_RobotsTxtState_Allowed,
  IndexStatusInspectionResult_RobotsTxtState_Disallowed,
  IndexStatusInspectionResult_RobotsTxtState
  #-}

-- | High level verdict about whether the URL /is/ indexed (indexed status), or /can be/ indexed (live inspection).
newtype IndexStatusInspectionResult_Verdict = IndexStatusInspectionResult_Verdict {fromIndexStatusInspectionResult_Verdict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown verdict.
pattern IndexStatusInspectionResult_Verdict_VERDICTUNSPECIFIED :: IndexStatusInspectionResult_Verdict
pattern IndexStatusInspectionResult_Verdict_VERDICTUNSPECIFIED = IndexStatusInspectionResult_Verdict "VERDICT_UNSPECIFIED"

-- | Equivalent to \"Valid\" for the page or item in Search Console.
pattern IndexStatusInspectionResult_Verdict_Pass :: IndexStatusInspectionResult_Verdict
pattern IndexStatusInspectionResult_Verdict_Pass = IndexStatusInspectionResult_Verdict "PASS"

-- | Equivalent to \"Valid with warnings\" for the page or item in Search Console.
pattern IndexStatusInspectionResult_Verdict_Partial :: IndexStatusInspectionResult_Verdict
pattern IndexStatusInspectionResult_Verdict_Partial = IndexStatusInspectionResult_Verdict "PARTIAL"

-- | Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.
pattern IndexStatusInspectionResult_Verdict_Fail :: IndexStatusInspectionResult_Verdict
pattern IndexStatusInspectionResult_Verdict_Fail = IndexStatusInspectionResult_Verdict "FAIL"

-- | Equivalent to \"Excluded\" for the page or item in Search Console.
pattern IndexStatusInspectionResult_Verdict_Neutral :: IndexStatusInspectionResult_Verdict
pattern IndexStatusInspectionResult_Verdict_Neutral = IndexStatusInspectionResult_Verdict "NEUTRAL"

{-# COMPLETE
  IndexStatusInspectionResult_Verdict_VERDICTUNSPECIFIED,
  IndexStatusInspectionResult_Verdict_Pass,
  IndexStatusInspectionResult_Verdict_Partial,
  IndexStatusInspectionResult_Verdict_Fail,
  IndexStatusInspectionResult_Verdict_Neutral,
  IndexStatusInspectionResult_Verdict
  #-}

-- | Rule violated.
newtype MobileFriendlyIssue_Rule = MobileFriendlyIssue_Rule {fromMobileFriendlyIssue_Rule :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown rule. Sorry, we don\'t have any description for the rule that was broken.
pattern MobileFriendlyIssue_Rule_MOBILEFRIENDLYRULEUNSPECIFIED :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_MOBILEFRIENDLYRULEUNSPECIFIED = MobileFriendlyIssue_Rule "MOBILE_FRIENDLY_RULE_UNSPECIFIED"

-- | Plugins incompatible with mobile devices are being used. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#flash_usage).
pattern MobileFriendlyIssue_Rule_USESINCOMPATIBLEPLUGINS :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_USESINCOMPATIBLEPLUGINS = MobileFriendlyIssue_Rule "USES_INCOMPATIBLE_PLUGINS"

-- | Viewport is not specified using the meta viewport tag. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#viewport/not/configured).
pattern MobileFriendlyIssue_Rule_CONFIGUREVIEWPORT :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_CONFIGUREVIEWPORT = MobileFriendlyIssue_Rule "CONFIGURE_VIEWPORT"

-- | Viewport defined to a fixed width. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#fixed-width_viewport).
pattern MobileFriendlyIssue_Rule_FIXEDWIDTHVIEWPORT :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_FIXEDWIDTHVIEWPORT = MobileFriendlyIssue_Rule "FIXED_WIDTH_VIEWPORT"

-- | Content not sized to viewport. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#content/not/sized/to/viewport).
pattern MobileFriendlyIssue_Rule_SIZECONTENTTOVIEWPORT :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_SIZECONTENTTOVIEWPORT = MobileFriendlyIssue_Rule "SIZE_CONTENT_TO_VIEWPORT"

-- | Font size is too small for easy reading on a small screen. [Learn More] (https:\/\/support.google.com\/webmasters\/answer\/6352293#small/font/size).
pattern MobileFriendlyIssue_Rule_USELEGIBLEFONTSIZES :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_USELEGIBLEFONTSIZES = MobileFriendlyIssue_Rule "USE_LEGIBLE_FONT_SIZES"

-- | Touch elements are too close to each other. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#touch/elements/too_close).
pattern MobileFriendlyIssue_Rule_TAPTARGETSTOOCLOSE :: MobileFriendlyIssue_Rule
pattern MobileFriendlyIssue_Rule_TAPTARGETSTOOCLOSE = MobileFriendlyIssue_Rule "TAP_TARGETS_TOO_CLOSE"

{-# COMPLETE
  MobileFriendlyIssue_Rule_MOBILEFRIENDLYRULEUNSPECIFIED,
  MobileFriendlyIssue_Rule_USESINCOMPATIBLEPLUGINS,
  MobileFriendlyIssue_Rule_CONFIGUREVIEWPORT,
  MobileFriendlyIssue_Rule_FIXEDWIDTHVIEWPORT,
  MobileFriendlyIssue_Rule_SIZECONTENTTOVIEWPORT,
  MobileFriendlyIssue_Rule_USELEGIBLEFONTSIZES,
  MobileFriendlyIssue_Rule_TAPTARGETSTOOCLOSE,
  MobileFriendlyIssue_Rule
  #-}

-- | High-level mobile-usability inspection result for this URL.
newtype MobileUsabilityInspectionResult_Verdict = MobileUsabilityInspectionResult_Verdict {fromMobileUsabilityInspectionResult_Verdict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown verdict.
pattern MobileUsabilityInspectionResult_Verdict_VERDICTUNSPECIFIED :: MobileUsabilityInspectionResult_Verdict
pattern MobileUsabilityInspectionResult_Verdict_VERDICTUNSPECIFIED = MobileUsabilityInspectionResult_Verdict "VERDICT_UNSPECIFIED"

-- | Equivalent to \"Valid\" for the page or item in Search Console.
pattern MobileUsabilityInspectionResult_Verdict_Pass :: MobileUsabilityInspectionResult_Verdict
pattern MobileUsabilityInspectionResult_Verdict_Pass = MobileUsabilityInspectionResult_Verdict "PASS"

-- | Equivalent to \"Valid with warnings\" for the page or item in Search Console.
pattern MobileUsabilityInspectionResult_Verdict_Partial :: MobileUsabilityInspectionResult_Verdict
pattern MobileUsabilityInspectionResult_Verdict_Partial = MobileUsabilityInspectionResult_Verdict "PARTIAL"

-- | Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.
pattern MobileUsabilityInspectionResult_Verdict_Fail :: MobileUsabilityInspectionResult_Verdict
pattern MobileUsabilityInspectionResult_Verdict_Fail = MobileUsabilityInspectionResult_Verdict "FAIL"

-- | Equivalent to \"Excluded\" for the page or item in Search Console.
pattern MobileUsabilityInspectionResult_Verdict_Neutral :: MobileUsabilityInspectionResult_Verdict
pattern MobileUsabilityInspectionResult_Verdict_Neutral = MobileUsabilityInspectionResult_Verdict "NEUTRAL"

{-# COMPLETE
  MobileUsabilityInspectionResult_Verdict_VERDICTUNSPECIFIED,
  MobileUsabilityInspectionResult_Verdict_Pass,
  MobileUsabilityInspectionResult_Verdict_Partial,
  MobileUsabilityInspectionResult_Verdict_Fail,
  MobileUsabilityInspectionResult_Verdict_Neutral,
  MobileUsabilityInspectionResult_Verdict
  #-}

-- | Mobile-usability issue type.
newtype MobileUsabilityIssue_IssueType = MobileUsabilityIssue_IssueType {fromMobileUsabilityIssue_IssueType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown issue. Sorry, we don\'t have any description for the rule that was broken.
pattern MobileUsabilityIssue_IssueType_MOBILEUSABILITYISSUETYPEUNSPECIFIED :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_MOBILEUSABILITYISSUETYPEUNSPECIFIED = MobileUsabilityIssue_IssueType "MOBILE_USABILITY_ISSUE_TYPE_UNSPECIFIED"

-- | Plugins incompatible with mobile devices are being used. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#flash_usage#error-list).
pattern MobileUsabilityIssue_IssueType_USESINCOMPATIBLEPLUGINS :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_USESINCOMPATIBLEPLUGINS = MobileUsabilityIssue_IssueType "USES_INCOMPATIBLE_PLUGINS"

-- | Viewport is not specified using the meta viewport tag. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#viewport/not/configured#error-list).
pattern MobileUsabilityIssue_IssueType_CONFIGUREVIEWPORT :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_CONFIGUREVIEWPORT = MobileUsabilityIssue_IssueType "CONFIGURE_VIEWPORT"

-- | Viewport defined to a fixed width. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#fixed-width_viewport#error-list).
pattern MobileUsabilityIssue_IssueType_FIXEDWIDTHVIEWPORT :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_FIXEDWIDTHVIEWPORT = MobileUsabilityIssue_IssueType "FIXED_WIDTH_VIEWPORT"

-- | Content not sized to viewport. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#content/not/sized/to/viewport#error-list).
pattern MobileUsabilityIssue_IssueType_SIZECONTENTTOVIEWPORT :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_SIZECONTENTTOVIEWPORT = MobileUsabilityIssue_IssueType "SIZE_CONTENT_TO_VIEWPORT"

-- | Font size is too small for easy reading on a small screen. [Learn More] (https:\/\/support.google.com\/webmasters\/answer\/6352293#small/font/size#error-list).
pattern MobileUsabilityIssue_IssueType_USELEGIBLEFONTSIZES :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_USELEGIBLEFONTSIZES = MobileUsabilityIssue_IssueType "USE_LEGIBLE_FONT_SIZES"

-- | Touch elements are too close to each other. [Learn more] (https:\/\/support.google.com\/webmasters\/answer\/6352293#touch/elements/too_close#error-list).
pattern MobileUsabilityIssue_IssueType_TAPTARGETSTOOCLOSE :: MobileUsabilityIssue_IssueType
pattern MobileUsabilityIssue_IssueType_TAPTARGETSTOOCLOSE = MobileUsabilityIssue_IssueType "TAP_TARGETS_TOO_CLOSE"

{-# COMPLETE
  MobileUsabilityIssue_IssueType_MOBILEUSABILITYISSUETYPEUNSPECIFIED,
  MobileUsabilityIssue_IssueType_USESINCOMPATIBLEPLUGINS,
  MobileUsabilityIssue_IssueType_CONFIGUREVIEWPORT,
  MobileUsabilityIssue_IssueType_FIXEDWIDTHVIEWPORT,
  MobileUsabilityIssue_IssueType_SIZECONTENTTOVIEWPORT,
  MobileUsabilityIssue_IssueType_USELEGIBLEFONTSIZES,
  MobileUsabilityIssue_IssueType_TAPTARGETSTOOCLOSE,
  MobileUsabilityIssue_IssueType
  #-}

-- | Not returned; reserved for future use.
newtype MobileUsabilityIssue_Severity = MobileUsabilityIssue_Severity {fromMobileUsabilityIssue_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown severity.
pattern MobileUsabilityIssue_Severity_SEVERITYUNSPECIFIED :: MobileUsabilityIssue_Severity
pattern MobileUsabilityIssue_Severity_SEVERITYUNSPECIFIED = MobileUsabilityIssue_Severity "SEVERITY_UNSPECIFIED"

-- | Warning.
pattern MobileUsabilityIssue_Severity_Warning :: MobileUsabilityIssue_Severity
pattern MobileUsabilityIssue_Severity_Warning = MobileUsabilityIssue_Severity "WARNING"

-- | Error.
pattern MobileUsabilityIssue_Severity_Error' :: MobileUsabilityIssue_Severity
pattern MobileUsabilityIssue_Severity_Error' = MobileUsabilityIssue_Severity "ERROR"

{-# COMPLETE
  MobileUsabilityIssue_Severity_SEVERITYUNSPECIFIED,
  MobileUsabilityIssue_Severity_Warning,
  MobileUsabilityIssue_Severity_Error',
  MobileUsabilityIssue_Severity
  #-}

-- | High-level rich results inspection result for this URL.
newtype RichResultsInspectionResult_Verdict = RichResultsInspectionResult_Verdict {fromRichResultsInspectionResult_Verdict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown verdict.
pattern RichResultsInspectionResult_Verdict_VERDICTUNSPECIFIED :: RichResultsInspectionResult_Verdict
pattern RichResultsInspectionResult_Verdict_VERDICTUNSPECIFIED = RichResultsInspectionResult_Verdict "VERDICT_UNSPECIFIED"

-- | Equivalent to \"Valid\" for the page or item in Search Console.
pattern RichResultsInspectionResult_Verdict_Pass :: RichResultsInspectionResult_Verdict
pattern RichResultsInspectionResult_Verdict_Pass = RichResultsInspectionResult_Verdict "PASS"

-- | Equivalent to \"Valid with warnings\" for the page or item in Search Console.
pattern RichResultsInspectionResult_Verdict_Partial :: RichResultsInspectionResult_Verdict
pattern RichResultsInspectionResult_Verdict_Partial = RichResultsInspectionResult_Verdict "PARTIAL"

-- | Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.
pattern RichResultsInspectionResult_Verdict_Fail :: RichResultsInspectionResult_Verdict
pattern RichResultsInspectionResult_Verdict_Fail = RichResultsInspectionResult_Verdict "FAIL"

-- | Equivalent to \"Excluded\" for the page or item in Search Console.
pattern RichResultsInspectionResult_Verdict_Neutral :: RichResultsInspectionResult_Verdict
pattern RichResultsInspectionResult_Verdict_Neutral = RichResultsInspectionResult_Verdict "NEUTRAL"

{-# COMPLETE
  RichResultsInspectionResult_Verdict_VERDICTUNSPECIFIED,
  RichResultsInspectionResult_Verdict_Pass,
  RichResultsInspectionResult_Verdict_Partial,
  RichResultsInspectionResult_Verdict_Fail,
  RichResultsInspectionResult_Verdict_Neutral,
  RichResultsInspectionResult_Verdict
  #-}

-- | Severity of this issue: WARNING, or ERROR. Items with an issue of status ERROR cannot appear with rich result features in Google Search results.
newtype RichResultsIssue_Severity = RichResultsIssue_Severity {fromRichResultsIssue_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown severity.
pattern RichResultsIssue_Severity_SEVERITYUNSPECIFIED :: RichResultsIssue_Severity
pattern RichResultsIssue_Severity_SEVERITYUNSPECIFIED = RichResultsIssue_Severity "SEVERITY_UNSPECIFIED"

-- | Warning.
pattern RichResultsIssue_Severity_Warning :: RichResultsIssue_Severity
pattern RichResultsIssue_Severity_Warning = RichResultsIssue_Severity "WARNING"

-- | Error.
pattern RichResultsIssue_Severity_Error' :: RichResultsIssue_Severity
pattern RichResultsIssue_Severity_Error' = RichResultsIssue_Severity "ERROR"

{-# COMPLETE
  RichResultsIssue_Severity_SEVERITYUNSPECIFIED,
  RichResultsIssue_Severity_Warning,
  RichResultsIssue_Severity_Error',
  RichResultsIssue_Severity
  #-}

-- | Test verdict, whether the page is mobile friendly or not.
newtype RunMobileFriendlyTestResponse_MobileFriendliness = RunMobileFriendlyTestResponse_MobileFriendliness {fromRunMobileFriendlyTestResponse_MobileFriendliness :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Internal error when running this test. Please try running the test again.
pattern RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLYTESTRESULTUNSPECIFIED :: RunMobileFriendlyTestResponse_MobileFriendliness
pattern RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLYTESTRESULTUNSPECIFIED = RunMobileFriendlyTestResponse_MobileFriendliness "MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED"

-- | The page is mobile friendly.
pattern RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLY :: RunMobileFriendlyTestResponse_MobileFriendliness
pattern RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLY = RunMobileFriendlyTestResponse_MobileFriendliness "MOBILE_FRIENDLY"

-- | The page is not mobile friendly.
pattern RunMobileFriendlyTestResponse_MobileFriendliness_NOTMOBILEFRIENDLY :: RunMobileFriendlyTestResponse_MobileFriendliness
pattern RunMobileFriendlyTestResponse_MobileFriendliness_NOTMOBILEFRIENDLY = RunMobileFriendlyTestResponse_MobileFriendliness "NOT_MOBILE_FRIENDLY"

{-# COMPLETE
  RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLYTESTRESULTUNSPECIFIED,
  RunMobileFriendlyTestResponse_MobileFriendliness_MOBILEFRIENDLY,
  RunMobileFriendlyTestResponse_MobileFriendliness_NOTMOBILEFRIENDLY,
  RunMobileFriendlyTestResponse_MobileFriendliness
  #-}

-- | [Optional; Default is \"auto\"] How data is aggregated. If aggregated by property, all data for the same property is aggregated; if aggregated by page, all data is aggregated by canonical URI. If you filter or group by page, choose AUTO; otherwise you can aggregate either by property or by page, depending on how you want your data calculated; see the help documentation to learn how data is calculated differently by site versus by page. __Note:__ If you group or filter by page, you cannot aggregate by property. If you specify any value other than AUTO, the aggregation type in the result will match the requested type, or if you request an invalid type, you will get an error. The API will never change your aggregation type if the requested type is invalid.
newtype SearchAnalyticsQueryRequest_AggregationType = SearchAnalyticsQueryRequest_AggregationType {fromSearchAnalyticsQueryRequest_AggregationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SearchAnalyticsQueryRequest_AggregationType_Auto :: SearchAnalyticsQueryRequest_AggregationType
pattern SearchAnalyticsQueryRequest_AggregationType_Auto = SearchAnalyticsQueryRequest_AggregationType "AUTO"

-- |
pattern SearchAnalyticsQueryRequest_AggregationType_BYPROPERTY :: SearchAnalyticsQueryRequest_AggregationType
pattern SearchAnalyticsQueryRequest_AggregationType_BYPROPERTY = SearchAnalyticsQueryRequest_AggregationType "BY_PROPERTY"

-- |
pattern SearchAnalyticsQueryRequest_AggregationType_BYPAGE :: SearchAnalyticsQueryRequest_AggregationType
pattern SearchAnalyticsQueryRequest_AggregationType_BYPAGE = SearchAnalyticsQueryRequest_AggregationType "BY_PAGE"

{-# COMPLETE
  SearchAnalyticsQueryRequest_AggregationType_Auto,
  SearchAnalyticsQueryRequest_AggregationType_BYPROPERTY,
  SearchAnalyticsQueryRequest_AggregationType_BYPAGE,
  SearchAnalyticsQueryRequest_AggregationType
  #-}

-- | The data state to be fetched, can be full or all, the latter including full and partial data.
newtype SearchAnalyticsQueryRequest_DataState = SearchAnalyticsQueryRequest_DataState {fromSearchAnalyticsQueryRequest_DataState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, should not be used.
pattern SearchAnalyticsQueryRequest_DataState_DATASTATEUNSPECIFIED :: SearchAnalyticsQueryRequest_DataState
pattern SearchAnalyticsQueryRequest_DataState_DATASTATEUNSPECIFIED = SearchAnalyticsQueryRequest_DataState "DATA_STATE_UNSPECIFIED"

-- | Include full final data only, without partial.
pattern SearchAnalyticsQueryRequest_DataState_Final :: SearchAnalyticsQueryRequest_DataState
pattern SearchAnalyticsQueryRequest_DataState_Final = SearchAnalyticsQueryRequest_DataState "FINAL"

-- | Include all data, full and partial.
pattern SearchAnalyticsQueryRequest_DataState_All :: SearchAnalyticsQueryRequest_DataState
pattern SearchAnalyticsQueryRequest_DataState_All = SearchAnalyticsQueryRequest_DataState "ALL"

{-# COMPLETE
  SearchAnalyticsQueryRequest_DataState_DATASTATEUNSPECIFIED,
  SearchAnalyticsQueryRequest_DataState_Final,
  SearchAnalyticsQueryRequest_DataState_All,
  SearchAnalyticsQueryRequest_DataState
  #-}

newtype SearchAnalyticsQueryRequest_DimensionsItem = SearchAnalyticsQueryRequest_DimensionsItem {fromSearchAnalyticsQueryRequest_DimensionsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SearchAnalyticsQueryRequest_DimensionsItem_Date :: SearchAnalyticsQueryRequest_DimensionsItem
pattern SearchAnalyticsQueryRequest_DimensionsItem_Date = SearchAnalyticsQueryRequest_DimensionsItem "DATE"

-- |
pattern SearchAnalyticsQueryRequest_DimensionsItem_Query :: SearchAnalyticsQueryRequest_DimensionsItem
pattern SearchAnalyticsQueryRequest_DimensionsItem_Query = SearchAnalyticsQueryRequest_DimensionsItem "QUERY"

-- |
pattern SearchAnalyticsQueryRequest_DimensionsItem_Page :: SearchAnalyticsQueryRequest_DimensionsItem
pattern SearchAnalyticsQueryRequest_DimensionsItem_Page = SearchAnalyticsQueryRequest_DimensionsItem "PAGE"

-- |
pattern SearchAnalyticsQueryRequest_DimensionsItem_Country :: SearchAnalyticsQueryRequest_DimensionsItem
pattern SearchAnalyticsQueryRequest_DimensionsItem_Country = SearchAnalyticsQueryRequest_DimensionsItem "COUNTRY"

-- |
pattern SearchAnalyticsQueryRequest_DimensionsItem_Device :: SearchAnalyticsQueryRequest_DimensionsItem
pattern SearchAnalyticsQueryRequest_DimensionsItem_Device = SearchAnalyticsQueryRequest_DimensionsItem "DEVICE"

-- |
pattern SearchAnalyticsQueryRequest_DimensionsItem_SEARCHAPPEARANCE :: SearchAnalyticsQueryRequest_DimensionsItem
pattern SearchAnalyticsQueryRequest_DimensionsItem_SEARCHAPPEARANCE = SearchAnalyticsQueryRequest_DimensionsItem "SEARCH_APPEARANCE"

{-# COMPLETE
  SearchAnalyticsQueryRequest_DimensionsItem_Date,
  SearchAnalyticsQueryRequest_DimensionsItem_Query,
  SearchAnalyticsQueryRequest_DimensionsItem_Page,
  SearchAnalyticsQueryRequest_DimensionsItem_Country,
  SearchAnalyticsQueryRequest_DimensionsItem_Device,
  SearchAnalyticsQueryRequest_DimensionsItem_SEARCHAPPEARANCE,
  SearchAnalyticsQueryRequest_DimensionsItem
  #-}

-- | [Optional; Default is \"web\"] The search type to filter for.
newtype SearchAnalyticsQueryRequest_SearchType = SearchAnalyticsQueryRequest_SearchType {fromSearchAnalyticsQueryRequest_SearchType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SearchAnalyticsQueryRequest_SearchType_Web :: SearchAnalyticsQueryRequest_SearchType
pattern SearchAnalyticsQueryRequest_SearchType_Web = SearchAnalyticsQueryRequest_SearchType "WEB"

-- |
pattern SearchAnalyticsQueryRequest_SearchType_Image :: SearchAnalyticsQueryRequest_SearchType
pattern SearchAnalyticsQueryRequest_SearchType_Image = SearchAnalyticsQueryRequest_SearchType "IMAGE"

-- |
pattern SearchAnalyticsQueryRequest_SearchType_Video :: SearchAnalyticsQueryRequest_SearchType
pattern SearchAnalyticsQueryRequest_SearchType_Video = SearchAnalyticsQueryRequest_SearchType "VIDEO"

-- | News tab in search.
pattern SearchAnalyticsQueryRequest_SearchType_News :: SearchAnalyticsQueryRequest_SearchType
pattern SearchAnalyticsQueryRequest_SearchType_News = SearchAnalyticsQueryRequest_SearchType "NEWS"

-- | Discover.
pattern SearchAnalyticsQueryRequest_SearchType_Discover :: SearchAnalyticsQueryRequest_SearchType
pattern SearchAnalyticsQueryRequest_SearchType_Discover = SearchAnalyticsQueryRequest_SearchType "DISCOVER"

-- | Google News (news.google.com or mobile app).
pattern SearchAnalyticsQueryRequest_SearchType_GOOGLENEWS :: SearchAnalyticsQueryRequest_SearchType
pattern SearchAnalyticsQueryRequest_SearchType_GOOGLENEWS = SearchAnalyticsQueryRequest_SearchType "GOOGLE_NEWS"

{-# COMPLETE
  SearchAnalyticsQueryRequest_SearchType_Web,
  SearchAnalyticsQueryRequest_SearchType_Image,
  SearchAnalyticsQueryRequest_SearchType_Video,
  SearchAnalyticsQueryRequest_SearchType_News,
  SearchAnalyticsQueryRequest_SearchType_Discover,
  SearchAnalyticsQueryRequest_SearchType_GOOGLENEWS,
  SearchAnalyticsQueryRequest_SearchType
  #-}

-- | Optional. [Optional; Default is \"web\"] Type of report: search type, or either Discover or Gnews.
newtype SearchAnalyticsQueryRequest_Type = SearchAnalyticsQueryRequest_Type {fromSearchAnalyticsQueryRequest_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SearchAnalyticsQueryRequest_Type_Web :: SearchAnalyticsQueryRequest_Type
pattern SearchAnalyticsQueryRequest_Type_Web = SearchAnalyticsQueryRequest_Type "WEB"

-- |
pattern SearchAnalyticsQueryRequest_Type_Image :: SearchAnalyticsQueryRequest_Type
pattern SearchAnalyticsQueryRequest_Type_Image = SearchAnalyticsQueryRequest_Type "IMAGE"

-- |
pattern SearchAnalyticsQueryRequest_Type_Video :: SearchAnalyticsQueryRequest_Type
pattern SearchAnalyticsQueryRequest_Type_Video = SearchAnalyticsQueryRequest_Type "VIDEO"

-- | News tab in search.
pattern SearchAnalyticsQueryRequest_Type_News :: SearchAnalyticsQueryRequest_Type
pattern SearchAnalyticsQueryRequest_Type_News = SearchAnalyticsQueryRequest_Type "NEWS"

-- | Discover.
pattern SearchAnalyticsQueryRequest_Type_Discover :: SearchAnalyticsQueryRequest_Type
pattern SearchAnalyticsQueryRequest_Type_Discover = SearchAnalyticsQueryRequest_Type "DISCOVER"

-- | Google News (news.google.com or mobile app).
pattern SearchAnalyticsQueryRequest_Type_GOOGLENEWS :: SearchAnalyticsQueryRequest_Type
pattern SearchAnalyticsQueryRequest_Type_GOOGLENEWS = SearchAnalyticsQueryRequest_Type "GOOGLE_NEWS"

{-# COMPLETE
  SearchAnalyticsQueryRequest_Type_Web,
  SearchAnalyticsQueryRequest_Type_Image,
  SearchAnalyticsQueryRequest_Type_Video,
  SearchAnalyticsQueryRequest_Type_News,
  SearchAnalyticsQueryRequest_Type_Discover,
  SearchAnalyticsQueryRequest_Type_GOOGLENEWS,
  SearchAnalyticsQueryRequest_Type
  #-}

-- | How the results were aggregated.
newtype SearchAnalyticsQueryResponse_ResponseAggregationType = SearchAnalyticsQueryResponse_ResponseAggregationType {fromSearchAnalyticsQueryResponse_ResponseAggregationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern SearchAnalyticsQueryResponse_ResponseAggregationType_Auto :: SearchAnalyticsQueryResponse_ResponseAggregationType
pattern SearchAnalyticsQueryResponse_ResponseAggregationType_Auto = SearchAnalyticsQueryResponse_ResponseAggregationType "AUTO"

-- |
pattern SearchAnalyticsQueryResponse_ResponseAggregationType_BYPROPERTY :: SearchAnalyticsQueryResponse_ResponseAggregationType
pattern SearchAnalyticsQueryResponse_ResponseAggregationType_BYPROPERTY = SearchAnalyticsQueryResponse_ResponseAggregationType "BY_PROPERTY"

-- |
pattern SearchAnalyticsQueryResponse_ResponseAggregationType_BYPAGE :: SearchAnalyticsQueryResponse_ResponseAggregationType
pattern SearchAnalyticsQueryResponse_ResponseAggregationType_BYPAGE = SearchAnalyticsQueryResponse_ResponseAggregationType "BY_PAGE"

{-# COMPLETE
  SearchAnalyticsQueryResponse_ResponseAggregationType_Auto,
  SearchAnalyticsQueryResponse_ResponseAggregationType_BYPROPERTY,
  SearchAnalyticsQueryResponse_ResponseAggregationType_BYPAGE,
  SearchAnalyticsQueryResponse_ResponseAggregationType
  #-}

-- | Status of the test.
newtype TestStatus_Status = TestStatus_Status {fromTestStatus_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Internal error when running this test. Please try running the test again.
pattern TestStatus_Status_TESTSTATUSUNSPECIFIED :: TestStatus_Status
pattern TestStatus_Status_TESTSTATUSUNSPECIFIED = TestStatus_Status "TEST_STATUS_UNSPECIFIED"

-- | Inspection has completed without errors.
pattern TestStatus_Status_Complete :: TestStatus_Status
pattern TestStatus_Status_Complete = TestStatus_Status "COMPLETE"

-- | Inspection terminated in an error state. This indicates a problem in Google\'s infrastructure, not a user error. Please try again later.
pattern TestStatus_Status_INTERNALERROR :: TestStatus_Status
pattern TestStatus_Status_INTERNALERROR = TestStatus_Status "INTERNAL_ERROR"

-- | Google can not access the URL because of a user error such as a robots.txt blockage, a 403 or 500 code etc. Please make sure that the URL provided is accessible by Googlebot and is not password protected.
pattern TestStatus_Status_PAGEUNREACHABLE :: TestStatus_Status
pattern TestStatus_Status_PAGEUNREACHABLE = TestStatus_Status "PAGE_UNREACHABLE"

{-# COMPLETE
  TestStatus_Status_TESTSTATUSUNSPECIFIED,
  TestStatus_Status_Complete,
  TestStatus_Status_INTERNALERROR,
  TestStatus_Status_PAGEUNREACHABLE,
  TestStatus_Status
  #-}

-- | The user\'s permission level for the site.
newtype WmxSite_PermissionLevel = WmxSite_PermissionLevel {fromWmxSite_PermissionLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern WmxSite_PermissionLevel_SITEPERMISSIONLEVELUNSPECIFIED :: WmxSite_PermissionLevel
pattern WmxSite_PermissionLevel_SITEPERMISSIONLEVELUNSPECIFIED = WmxSite_PermissionLevel "SITE_PERMISSION_LEVEL_UNSPECIFIED"

-- | Owner has complete access to the site.
pattern WmxSite_PermissionLevel_SITEOWNER :: WmxSite_PermissionLevel
pattern WmxSite_PermissionLevel_SITEOWNER = WmxSite_PermissionLevel "SITE_OWNER"

-- | Full users can access all data, and perform most of the operations.
pattern WmxSite_PermissionLevel_SITEFULLUSER :: WmxSite_PermissionLevel
pattern WmxSite_PermissionLevel_SITEFULLUSER = WmxSite_PermissionLevel "SITE_FULL_USER"

-- | Restricted users can access most of the data, and perform some operations.
pattern WmxSite_PermissionLevel_SITERESTRICTEDUSER :: WmxSite_PermissionLevel
pattern WmxSite_PermissionLevel_SITERESTRICTEDUSER = WmxSite_PermissionLevel "SITE_RESTRICTED_USER"

-- | Unverified user has no access to site\'s data.
pattern WmxSite_PermissionLevel_SITEUNVERIFIEDUSER :: WmxSite_PermissionLevel
pattern WmxSite_PermissionLevel_SITEUNVERIFIEDUSER = WmxSite_PermissionLevel "SITE_UNVERIFIED_USER"

{-# COMPLETE
  WmxSite_PermissionLevel_SITEPERMISSIONLEVELUNSPECIFIED,
  WmxSite_PermissionLevel_SITEOWNER,
  WmxSite_PermissionLevel_SITEFULLUSER,
  WmxSite_PermissionLevel_SITERESTRICTEDUSER,
  WmxSite_PermissionLevel_SITEUNVERIFIEDUSER,
  WmxSite_PermissionLevel
  #-}

-- | The type of the sitemap. For example: @rssFeed@.
newtype WmxSitemap_Type = WmxSitemap_Type {fromWmxSitemap_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern WmxSitemap_Type_NOTSITEMAP :: WmxSitemap_Type
pattern WmxSitemap_Type_NOTSITEMAP = WmxSitemap_Type "NOT_SITEMAP"

-- |
pattern WmxSitemap_Type_URLLIST :: WmxSitemap_Type
pattern WmxSitemap_Type_URLLIST = WmxSitemap_Type "URL_LIST"

-- |
pattern WmxSitemap_Type_Sitemap :: WmxSitemap_Type
pattern WmxSitemap_Type_Sitemap = WmxSitemap_Type "SITEMAP"

-- |
pattern WmxSitemap_Type_RSSFEED :: WmxSitemap_Type
pattern WmxSitemap_Type_RSSFEED = WmxSitemap_Type "RSS_FEED"

-- |
pattern WmxSitemap_Type_ATOMFEED :: WmxSitemap_Type
pattern WmxSitemap_Type_ATOMFEED = WmxSitemap_Type "ATOM_FEED"

-- | Unsupported sitemap types.
pattern WmxSitemap_Type_PATTERNSITEMAP :: WmxSitemap_Type
pattern WmxSitemap_Type_PATTERNSITEMAP = WmxSitemap_Type "PATTERN_SITEMAP"

-- |
pattern WmxSitemap_Type_Oceanfront :: WmxSitemap_Type
pattern WmxSitemap_Type_Oceanfront = WmxSitemap_Type "OCEANFRONT"

{-# COMPLETE
  WmxSitemap_Type_NOTSITEMAP,
  WmxSitemap_Type_URLLIST,
  WmxSitemap_Type_Sitemap,
  WmxSitemap_Type_RSSFEED,
  WmxSitemap_Type_ATOMFEED,
  WmxSitemap_Type_PATTERNSITEMAP,
  WmxSitemap_Type_Oceanfront,
  WmxSitemap_Type
  #-}

-- | The specific type of content in this sitemap. For example: @web@.
newtype WmxSitemapContent_Type = WmxSitemapContent_Type {fromWmxSitemapContent_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern WmxSitemapContent_Type_Web :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_Web = WmxSitemapContent_Type "WEB"

-- |
pattern WmxSitemapContent_Type_Image :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_Image = WmxSitemapContent_Type "IMAGE"

-- |
pattern WmxSitemapContent_Type_Video :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_Video = WmxSitemapContent_Type "VIDEO"

-- |
pattern WmxSitemapContent_Type_News :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_News = WmxSitemapContent_Type "NEWS"

-- |
pattern WmxSitemapContent_Type_Mobile :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_Mobile = WmxSitemapContent_Type "MOBILE"

-- |
pattern WmxSitemapContent_Type_ANDROIDAPP :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_ANDROIDAPP = WmxSitemapContent_Type "ANDROID_APP"

-- | Unsupported content type.
pattern WmxSitemapContent_Type_Pattern :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_Pattern = WmxSitemapContent_Type "PATTERN"

-- |
pattern WmxSitemapContent_Type_IOSAPP :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_IOSAPP = WmxSitemapContent_Type "IOS_APP"

-- | Unsupported content type.
pattern WmxSitemapContent_Type_DATAFEEDELEMENT :: WmxSitemapContent_Type
pattern WmxSitemapContent_Type_DATAFEEDELEMENT = WmxSitemapContent_Type "DATA_FEED_ELEMENT"

{-# COMPLETE
  WmxSitemapContent_Type_Web,
  WmxSitemapContent_Type_Image,
  WmxSitemapContent_Type_Video,
  WmxSitemapContent_Type_News,
  WmxSitemapContent_Type_Mobile,
  WmxSitemapContent_Type_ANDROIDAPP,
  WmxSitemapContent_Type_Pattern,
  WmxSitemapContent_Type_IOSAPP,
  WmxSitemapContent_Type_DATAFEEDELEMENT,
  WmxSitemapContent_Type
  #-}

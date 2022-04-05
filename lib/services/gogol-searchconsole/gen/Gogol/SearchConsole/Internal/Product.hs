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
-- Module      : Gogol.SearchConsole.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SearchConsole.Internal.Product
  ( -- * AmpInspectionResult
    AmpInspectionResult (..),
    newAmpInspectionResult,

    -- * AmpIssue
    AmpIssue (..),
    newAmpIssue,

    -- * ApiDataRow
    ApiDataRow (..),
    newApiDataRow,

    -- * ApiDimensionFilter
    ApiDimensionFilter (..),
    newApiDimensionFilter,

    -- * ApiDimensionFilterGroup
    ApiDimensionFilterGroup (..),
    newApiDimensionFilterGroup,

    -- * BlockedResource
    BlockedResource (..),
    newBlockedResource,

    -- * DetectedItems
    DetectedItems (..),
    newDetectedItems,

    -- * Image
    Image (..),
    newImage,

    -- * IndexStatusInspectionResult
    IndexStatusInspectionResult (..),
    newIndexStatusInspectionResult,

    -- * InspectUrlIndexRequest
    InspectUrlIndexRequest (..),
    newInspectUrlIndexRequest,

    -- * InspectUrlIndexResponse
    InspectUrlIndexResponse (..),
    newInspectUrlIndexResponse,

    -- * Item
    Item (..),
    newItem,

    -- * MobileFriendlyIssue
    MobileFriendlyIssue (..),
    newMobileFriendlyIssue,

    -- * MobileUsabilityInspectionResult
    MobileUsabilityInspectionResult (..),
    newMobileUsabilityInspectionResult,

    -- * MobileUsabilityIssue
    MobileUsabilityIssue (..),
    newMobileUsabilityIssue,

    -- * ResourceIssue
    ResourceIssue (..),
    newResourceIssue,

    -- * RichResultsInspectionResult
    RichResultsInspectionResult (..),
    newRichResultsInspectionResult,

    -- * RichResultsIssue
    RichResultsIssue (..),
    newRichResultsIssue,

    -- * RunMobileFriendlyTestRequest
    RunMobileFriendlyTestRequest (..),
    newRunMobileFriendlyTestRequest,

    -- * RunMobileFriendlyTestResponse
    RunMobileFriendlyTestResponse (..),
    newRunMobileFriendlyTestResponse,

    -- * SearchAnalyticsQueryRequest
    SearchAnalyticsQueryRequest (..),
    newSearchAnalyticsQueryRequest,

    -- * SearchAnalyticsQueryResponse
    SearchAnalyticsQueryResponse (..),
    newSearchAnalyticsQueryResponse,

    -- * SitemapsListResponse
    SitemapsListResponse (..),
    newSitemapsListResponse,

    -- * SitesListResponse
    SitesListResponse (..),
    newSitesListResponse,

    -- * TestStatus
    TestStatus (..),
    newTestStatus,

    -- * UrlInspectionResult
    UrlInspectionResult (..),
    newUrlInspectionResult,

    -- * WmxSite
    WmxSite (..),
    newWmxSite,

    -- * WmxSitemap
    WmxSitemap (..),
    newWmxSitemap,

    -- * WmxSitemapContent
    WmxSitemapContent (..),
    newWmxSitemapContent,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SearchConsole.Internal.Sum

-- | AMP inspection result of the live page or the current information from Google\'s index, depending on whether you requested a live inspection or not.
--
-- /See:/ 'newAmpInspectionResult' smart constructor.
data AmpInspectionResult = AmpInspectionResult
  { -- | Index status of the AMP URL.
    ampIndexStatusVerdict :: (Core.Maybe AmpInspectionResult_AmpIndexStatusVerdict),
    -- | URL of the AMP that was inspected. If the submitted URL is a desktop page that refers to an AMP version, the AMP version will be inspected.
    ampUrl :: (Core.Maybe Core.Text),
    -- | Whether or not the page blocks indexing through a noindex rule.
    indexingState :: (Core.Maybe AmpInspectionResult_IndexingState),
    -- | A list of zero or more AMP issues found for the inspected URL.
    issues :: (Core.Maybe [AmpIssue]),
    -- | Last time this AMP version was crawled by Google. Absent if the URL was never crawled successfully.
    lastCrawlTime :: (Core.Maybe Core.DateTime),
    -- | Whether or not Google could fetch the AMP.
    pageFetchState :: (Core.Maybe AmpInspectionResult_PageFetchState),
    -- | Whether or not the page is blocked to Google by a robots.txt rule.
    robotsTxtState :: (Core.Maybe AmpInspectionResult_RobotsTxtState),
    -- | The status of the most severe error on the page. If a page has both warnings and errors, the page status is error. Error status means the page cannot be shown in Search results.
    verdict :: (Core.Maybe AmpInspectionResult_Verdict)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AmpInspectionResult' with the minimum fields required to make a request.
newAmpInspectionResult ::
  AmpInspectionResult
newAmpInspectionResult =
  AmpInspectionResult
    { ampIndexStatusVerdict = Core.Nothing,
      ampUrl = Core.Nothing,
      indexingState = Core.Nothing,
      issues = Core.Nothing,
      lastCrawlTime = Core.Nothing,
      pageFetchState = Core.Nothing,
      robotsTxtState = Core.Nothing,
      verdict = Core.Nothing
    }

instance Core.FromJSON AmpInspectionResult where
  parseJSON =
    Core.withObject
      "AmpInspectionResult"
      ( \o ->
          AmpInspectionResult
            Core.<$> (o Core..:? "ampIndexStatusVerdict")
            Core.<*> (o Core..:? "ampUrl")
            Core.<*> (o Core..:? "indexingState")
            Core.<*> (o Core..:? "issues")
            Core.<*> (o Core..:? "lastCrawlTime")
            Core.<*> (o Core..:? "pageFetchState")
            Core.<*> (o Core..:? "robotsTxtState")
            Core.<*> (o Core..:? "verdict")
      )

instance Core.ToJSON AmpInspectionResult where
  toJSON AmpInspectionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("ampIndexStatusVerdict" Core..=)
              Core.<$> ampIndexStatusVerdict,
            ("ampUrl" Core..=) Core.<$> ampUrl,
            ("indexingState" Core..=) Core.<$> indexingState,
            ("issues" Core..=) Core.<$> issues,
            ("lastCrawlTime" Core..=) Core.<$> lastCrawlTime,
            ("pageFetchState" Core..=) Core.<$> pageFetchState,
            ("robotsTxtState" Core..=) Core.<$> robotsTxtState,
            ("verdict" Core..=) Core.<$> verdict
          ]
      )

-- | AMP issue.
--
-- /See:/ 'newAmpIssue' smart constructor.
data AmpIssue = AmpIssue
  { -- | Brief description of this issue.
    issueMessage :: (Core.Maybe Core.Text),
    -- | Severity of this issue: WARNING or ERROR.
    severity :: (Core.Maybe AmpIssue_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AmpIssue' with the minimum fields required to make a request.
newAmpIssue ::
  AmpIssue
newAmpIssue = AmpIssue {issueMessage = Core.Nothing, severity = Core.Nothing}

instance Core.FromJSON AmpIssue where
  parseJSON =
    Core.withObject
      "AmpIssue"
      ( \o ->
          AmpIssue
            Core.<$> (o Core..:? "issueMessage")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON AmpIssue where
  toJSON AmpIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("issueMessage" Core..=) Core.<$> issueMessage,
            ("severity" Core..=) Core.<$> severity
          ]
      )

--
-- /See:/ 'newApiDataRow' smart constructor.
data ApiDataRow = ApiDataRow
  { -- |
    clicks :: (Core.Maybe Core.Double),
    -- |
    ctr :: (Core.Maybe Core.Double),
    -- |
    impressions :: (Core.Maybe Core.Double),
    -- |
    keys :: (Core.Maybe [Core.Text]),
    -- |
    position :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiDataRow' with the minimum fields required to make a request.
newApiDataRow ::
  ApiDataRow
newApiDataRow =
  ApiDataRow
    { clicks = Core.Nothing,
      ctr = Core.Nothing,
      impressions = Core.Nothing,
      keys = Core.Nothing,
      position = Core.Nothing
    }

instance Core.FromJSON ApiDataRow where
  parseJSON =
    Core.withObject
      "ApiDataRow"
      ( \o ->
          ApiDataRow
            Core.<$> (o Core..:? "clicks")
            Core.<*> (o Core..:? "ctr")
            Core.<*> (o Core..:? "impressions")
            Core.<*> (o Core..:? "keys")
            Core.<*> (o Core..:? "position")
      )

instance Core.ToJSON ApiDataRow where
  toJSON ApiDataRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("clicks" Core..=) Core.<$> clicks,
            ("ctr" Core..=) Core.<$> ctr,
            ("impressions" Core..=) Core.<$> impressions,
            ("keys" Core..=) Core.<$> keys,
            ("position" Core..=) Core.<$> position
          ]
      )

-- | A filter test to be applied to each row in the data set, where a match can return the row. Filters are string comparisons, and values and dimension names are not case-sensitive. Individual filters are either AND\'ed or OR\'ed within their parent filter group, according to the group\'s group type. You do not need to group by a specified dimension to filter against it.
--
-- /See:/ 'newApiDimensionFilter' smart constructor.
data ApiDimensionFilter = ApiDimensionFilter
  { -- |
    dimension :: (Core.Maybe ApiDimensionFilter_Dimension),
    -- |
    expression :: (Core.Maybe Core.Text),
    -- |
    operator :: (Core.Maybe ApiDimensionFilter_Operator)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiDimensionFilter' with the minimum fields required to make a request.
newApiDimensionFilter ::
  ApiDimensionFilter
newApiDimensionFilter =
  ApiDimensionFilter
    { dimension = Core.Nothing,
      expression = Core.Nothing,
      operator = Core.Nothing
    }

instance Core.FromJSON ApiDimensionFilter where
  parseJSON =
    Core.withObject
      "ApiDimensionFilter"
      ( \o ->
          ApiDimensionFilter
            Core.<$> (o Core..:? "dimension")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "operator")
      )

instance Core.ToJSON ApiDimensionFilter where
  toJSON ApiDimensionFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("dimension" Core..=) Core.<$> dimension,
            ("expression" Core..=) Core.<$> expression,
            ("operator" Core..=) Core.<$> operator
          ]
      )

-- | A set of dimension value filters to test against each row. Only rows that pass all filter groups will be returned. All results within a filter group are either AND\'ed or OR\'ed together, depending on the group type selected. All filter groups are AND\'ed together.
--
-- /See:/ 'newApiDimensionFilterGroup' smart constructor.
data ApiDimensionFilterGroup = ApiDimensionFilterGroup
  { -- |
    filters :: (Core.Maybe [ApiDimensionFilter]),
    -- |
    groupType :: (Core.Maybe ApiDimensionFilterGroup_GroupType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiDimensionFilterGroup' with the minimum fields required to make a request.
newApiDimensionFilterGroup ::
  ApiDimensionFilterGroup
newApiDimensionFilterGroup =
  ApiDimensionFilterGroup {filters = Core.Nothing, groupType = Core.Nothing}

instance Core.FromJSON ApiDimensionFilterGroup where
  parseJSON =
    Core.withObject
      "ApiDimensionFilterGroup"
      ( \o ->
          ApiDimensionFilterGroup
            Core.<$> (o Core..:? "filters")
            Core.<*> (o Core..:? "groupType")
      )

instance Core.ToJSON ApiDimensionFilterGroup where
  toJSON ApiDimensionFilterGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("filters" Core..=) Core.<$> filters,
            ("groupType" Core..=) Core.<$> groupType
          ]
      )

-- | Blocked resource.
--
-- /See:/ 'newBlockedResource' smart constructor.
newtype BlockedResource = BlockedResource
  { -- | URL of the blocked resource.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BlockedResource' with the minimum fields required to make a request.
newBlockedResource ::
  BlockedResource
newBlockedResource = BlockedResource {url = Core.Nothing}

instance Core.FromJSON BlockedResource where
  parseJSON =
    Core.withObject
      "BlockedResource"
      (\o -> BlockedResource Core.<$> (o Core..:? "url"))

instance Core.ToJSON BlockedResource where
  toJSON BlockedResource {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

-- | Rich Results items grouped by type.
--
-- /See:/ 'newDetectedItems' smart constructor.
data DetectedItems = DetectedItems
  { -- | List of Rich Results items.
    items :: (Core.Maybe [Item]),
    -- | Rich Results type
    richResultType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectedItems' with the minimum fields required to make a request.
newDetectedItems ::
  DetectedItems
newDetectedItems =
  DetectedItems {items = Core.Nothing, richResultType = Core.Nothing}

instance Core.FromJSON DetectedItems where
  parseJSON =
    Core.withObject
      "DetectedItems"
      ( \o ->
          DetectedItems
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "richResultType")
      )

instance Core.ToJSON DetectedItems where
  toJSON DetectedItems {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("richResultType" Core..=) Core.<$> richResultType
          ]
      )

-- | Describe image data.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | Image data in format determined by the mime type. Currently, the format will always be \"image\/png\", but this might change in the future.
    data' :: (Core.Maybe Core.Base64),
    -- | The mime-type of the image data.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage = Image {data' = Core.Nothing, mimeType = Core.Nothing}

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "data") Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Results of index status inspection for either the live page or the version in Google\'s index, depending on whether you requested a live inspection or not. For more information, see the <https://support.google.com/webmasters/answer/7440203 Index coverage report documentation>.
--
-- /See:/ 'newIndexStatusInspectionResult' smart constructor.
data IndexStatusInspectionResult = IndexStatusInspectionResult
  { -- | Could Google find and index the page. More details about page indexing appear in \'indexing_state\'.
    coverageState :: (Core.Maybe Core.Text),
    -- | Primary crawler that was used by Google to crawl your site.
    crawledAs :: (Core.Maybe IndexStatusInspectionResult_CrawledAs),
    -- | The URL of the page that Google selected as canonical. If the page was not indexed, this field is absent.
    googleCanonical :: (Core.Maybe Core.Text),
    -- | Whether or not the page blocks indexing through a noindex rule.
    indexingState :: (Core.Maybe IndexStatusInspectionResult_IndexingState),
    -- | Last time this URL was crawled by Google using the <https://support.google.com/webmasters/answer/7440203#primary_crawler primary crawler>. Absent if the URL was never crawled successfully.
    lastCrawlTime :: (Core.Maybe Core.DateTime),
    -- | Whether or not Google could retrieve the page from your server. Equivalent to <https://support.google.com/webmasters/answer/9012289#index_coverage \"page fetch\"> in the URL inspection report.
    pageFetchState :: (Core.Maybe IndexStatusInspectionResult_PageFetchState),
    -- | URLs that link to the inspected URL, directly and indirectly.
    referringUrls :: (Core.Maybe [Core.Text]),
    -- | Whether or not the page is blocked to Google by a robots.txt rule.
    robotsTxtState :: (Core.Maybe IndexStatusInspectionResult_RobotsTxtState),
    -- | Any sitemaps that this URL was listed in, as known by Google. Not guaranteed to be an exhaustive list, especially if Google did not discover this URL through a sitemap. Absent if no sitemaps were found.
    sitemap :: (Core.Maybe [Core.Text]),
    -- | The URL that your page or site <https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls?#define-canonical declares as canonical>. If you did not declare a canonical URL, this field is absent.
    userCanonical :: (Core.Maybe Core.Text),
    -- | High level verdict about whether the URL /is/ indexed (indexed status), or /can be/ indexed (live inspection).
    verdict :: (Core.Maybe IndexStatusInspectionResult_Verdict)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexStatusInspectionResult' with the minimum fields required to make a request.
newIndexStatusInspectionResult ::
  IndexStatusInspectionResult
newIndexStatusInspectionResult =
  IndexStatusInspectionResult
    { coverageState = Core.Nothing,
      crawledAs = Core.Nothing,
      googleCanonical = Core.Nothing,
      indexingState = Core.Nothing,
      lastCrawlTime = Core.Nothing,
      pageFetchState = Core.Nothing,
      referringUrls = Core.Nothing,
      robotsTxtState = Core.Nothing,
      sitemap = Core.Nothing,
      userCanonical = Core.Nothing,
      verdict = Core.Nothing
    }

instance Core.FromJSON IndexStatusInspectionResult where
  parseJSON =
    Core.withObject
      "IndexStatusInspectionResult"
      ( \o ->
          IndexStatusInspectionResult
            Core.<$> (o Core..:? "coverageState")
            Core.<*> (o Core..:? "crawledAs")
            Core.<*> (o Core..:? "googleCanonical")
            Core.<*> (o Core..:? "indexingState")
            Core.<*> (o Core..:? "lastCrawlTime")
            Core.<*> (o Core..:? "pageFetchState")
            Core.<*> (o Core..:? "referringUrls")
            Core.<*> (o Core..:? "robotsTxtState")
            Core.<*> (o Core..:? "sitemap")
            Core.<*> (o Core..:? "userCanonical")
            Core.<*> (o Core..:? "verdict")
      )

instance Core.ToJSON IndexStatusInspectionResult where
  toJSON IndexStatusInspectionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("coverageState" Core..=) Core.<$> coverageState,
            ("crawledAs" Core..=) Core.<$> crawledAs,
            ("googleCanonical" Core..=) Core.<$> googleCanonical,
            ("indexingState" Core..=) Core.<$> indexingState,
            ("lastCrawlTime" Core..=) Core.<$> lastCrawlTime,
            ("pageFetchState" Core..=) Core.<$> pageFetchState,
            ("referringUrls" Core..=) Core.<$> referringUrls,
            ("robotsTxtState" Core..=) Core.<$> robotsTxtState,
            ("sitemap" Core..=) Core.<$> sitemap,
            ("userCanonical" Core..=) Core.<$> userCanonical,
            ("verdict" Core..=) Core.<$> verdict
          ]
      )

-- | Index inspection request.
--
-- /See:/ 'newInspectUrlIndexRequest' smart constructor.
data InspectUrlIndexRequest = InspectUrlIndexRequest
  { -- | Required. URL to inspect. Must be under the property specified in \"site_url\".
    inspectionUrl :: (Core.Maybe Core.Text),
    -- | Optional. An <https://en.wikipedia.org/wiki/IETF_language_tag IETF BCP-47> language code representing the requested language for translated issue messages, e.g. \"en-US\", \"or \"de-CH\". Default value is \"en-US\".
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The URL of the property as defined in Search Console. __Examples:__ @http:\/\/www.example.com\/@ for a URL-prefix property, or @sc-domain:example.com@ for a Domain property.
    siteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InspectUrlIndexRequest' with the minimum fields required to make a request.
newInspectUrlIndexRequest ::
  InspectUrlIndexRequest
newInspectUrlIndexRequest =
  InspectUrlIndexRequest
    { inspectionUrl = Core.Nothing,
      languageCode = Core.Nothing,
      siteUrl = Core.Nothing
    }

instance Core.FromJSON InspectUrlIndexRequest where
  parseJSON =
    Core.withObject
      "InspectUrlIndexRequest"
      ( \o ->
          InspectUrlIndexRequest
            Core.<$> (o Core..:? "inspectionUrl")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "siteUrl")
      )

instance Core.ToJSON InspectUrlIndexRequest where
  toJSON InspectUrlIndexRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectionUrl" Core..=) Core.<$> inspectionUrl,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("siteUrl" Core..=) Core.<$> siteUrl
          ]
      )

-- | Index-Status inspection response.
--
-- /See:/ 'newInspectUrlIndexResponse' smart constructor.
newtype InspectUrlIndexResponse = InspectUrlIndexResponse
  { -- | URL inspection results.
    inspectionResult :: (Core.Maybe UrlInspectionResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InspectUrlIndexResponse' with the minimum fields required to make a request.
newInspectUrlIndexResponse ::
  InspectUrlIndexResponse
newInspectUrlIndexResponse =
  InspectUrlIndexResponse {inspectionResult = Core.Nothing}

instance Core.FromJSON InspectUrlIndexResponse where
  parseJSON =
    Core.withObject
      "InspectUrlIndexResponse"
      ( \o ->
          InspectUrlIndexResponse
            Core.<$> (o Core..:? "inspectionResult")
      )

instance Core.ToJSON InspectUrlIndexResponse where
  toJSON InspectUrlIndexResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("inspectionResult" Core..=)
              Core.<$> inspectionResult
          ]
      )

-- | A specific rich result found on the page.
--
-- /See:/ 'newItem' smart constructor.
data Item = Item
  { -- | A list of zero or more rich result issues found for this instance.
    issues :: (Core.Maybe [RichResultsIssue]),
    -- | The user-provided name of this item.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Item' with the minimum fields required to make a request.
newItem ::
  Item
newItem = Item {issues = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Item where
  parseJSON =
    Core.withObject
      "Item"
      ( \o ->
          Item
            Core.<$> (o Core..:? "issues") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Item where
  toJSON Item {..} =
    Core.object
      ( Core.catMaybes
          [ ("issues" Core..=) Core.<$> issues,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Mobile-friendly issue.
--
-- /See:/ 'newMobileFriendlyIssue' smart constructor.
newtype MobileFriendlyIssue = MobileFriendlyIssue
  { -- | Rule violated.
    rule :: (Core.Maybe MobileFriendlyIssue_Rule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileFriendlyIssue' with the minimum fields required to make a request.
newMobileFriendlyIssue ::
  MobileFriendlyIssue
newMobileFriendlyIssue = MobileFriendlyIssue {rule = Core.Nothing}

instance Core.FromJSON MobileFriendlyIssue where
  parseJSON =
    Core.withObject
      "MobileFriendlyIssue"
      ( \o ->
          MobileFriendlyIssue Core.<$> (o Core..:? "rule")
      )

instance Core.ToJSON MobileFriendlyIssue where
  toJSON MobileFriendlyIssue {..} =
    Core.object
      (Core.catMaybes [("rule" Core..=) Core.<$> rule])

-- | Mobile-usability inspection results.
--
-- /See:/ 'newMobileUsabilityInspectionResult' smart constructor.
data MobileUsabilityInspectionResult = MobileUsabilityInspectionResult
  { -- | A list of zero or more mobile-usability issues detected for this URL.
    issues :: (Core.Maybe [MobileUsabilityIssue]),
    -- | High-level mobile-usability inspection result for this URL.
    verdict :: (Core.Maybe MobileUsabilityInspectionResult_Verdict)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileUsabilityInspectionResult' with the minimum fields required to make a request.
newMobileUsabilityInspectionResult ::
  MobileUsabilityInspectionResult
newMobileUsabilityInspectionResult =
  MobileUsabilityInspectionResult
    { issues = Core.Nothing,
      verdict = Core.Nothing
    }

instance
  Core.FromJSON
    MobileUsabilityInspectionResult
  where
  parseJSON =
    Core.withObject
      "MobileUsabilityInspectionResult"
      ( \o ->
          MobileUsabilityInspectionResult
            Core.<$> (o Core..:? "issues")
            Core.<*> (o Core..:? "verdict")
      )

instance Core.ToJSON MobileUsabilityInspectionResult where
  toJSON MobileUsabilityInspectionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("issues" Core..=) Core.<$> issues,
            ("verdict" Core..=) Core.<$> verdict
          ]
      )

-- | Mobile-usability issue.
--
-- /See:/ 'newMobileUsabilityIssue' smart constructor.
data MobileUsabilityIssue = MobileUsabilityIssue
  { -- | Mobile-usability issue type.
    issueType :: (Core.Maybe MobileUsabilityIssue_IssueType),
    -- | Additional information regarding the issue.
    message :: (Core.Maybe Core.Text),
    -- | Not returned; reserved for future use.
    severity :: (Core.Maybe MobileUsabilityIssue_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MobileUsabilityIssue' with the minimum fields required to make a request.
newMobileUsabilityIssue ::
  MobileUsabilityIssue
newMobileUsabilityIssue =
  MobileUsabilityIssue
    { issueType = Core.Nothing,
      message = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON MobileUsabilityIssue where
  parseJSON =
    Core.withObject
      "MobileUsabilityIssue"
      ( \o ->
          MobileUsabilityIssue
            Core.<$> (o Core..:? "issueType")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON MobileUsabilityIssue where
  toJSON MobileUsabilityIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("issueType" Core..=) Core.<$> issueType,
            ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | Information about a resource with issue.
--
-- /See:/ 'newResourceIssue' smart constructor.
newtype ResourceIssue = ResourceIssue
  { -- | Describes a blocked resource issue.
    blockedResource :: (Core.Maybe BlockedResource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceIssue' with the minimum fields required to make a request.
newResourceIssue ::
  ResourceIssue
newResourceIssue = ResourceIssue {blockedResource = Core.Nothing}

instance Core.FromJSON ResourceIssue where
  parseJSON =
    Core.withObject
      "ResourceIssue"
      ( \o ->
          ResourceIssue
            Core.<$> (o Core..:? "blockedResource")
      )

instance Core.ToJSON ResourceIssue where
  toJSON ResourceIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockedResource" Core..=)
              Core.<$> blockedResource
          ]
      )

-- | Rich-Results inspection result, including any rich results found at this URL.
--
-- /See:/ 'newRichResultsInspectionResult' smart constructor.
data RichResultsInspectionResult = RichResultsInspectionResult
  { -- | A list of zero or more rich results detected on this page. Rich results that cannot even be parsed due to syntactic issues will not be listed here.
    detectedItems :: (Core.Maybe [DetectedItems]),
    -- | High-level rich results inspection result for this URL.
    verdict :: (Core.Maybe RichResultsInspectionResult_Verdict)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichResultsInspectionResult' with the minimum fields required to make a request.
newRichResultsInspectionResult ::
  RichResultsInspectionResult
newRichResultsInspectionResult =
  RichResultsInspectionResult
    { detectedItems = Core.Nothing,
      verdict = Core.Nothing
    }

instance Core.FromJSON RichResultsInspectionResult where
  parseJSON =
    Core.withObject
      "RichResultsInspectionResult"
      ( \o ->
          RichResultsInspectionResult
            Core.<$> (o Core..:? "detectedItems")
            Core.<*> (o Core..:? "verdict")
      )

instance Core.ToJSON RichResultsInspectionResult where
  toJSON RichResultsInspectionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedItems" Core..=) Core.<$> detectedItems,
            ("verdict" Core..=) Core.<$> verdict
          ]
      )

-- | Severity and status of a single issue affecting a single rich result instance on a page.
--
-- /See:/ 'newRichResultsIssue' smart constructor.
data RichResultsIssue = RichResultsIssue
  { -- | Rich Results issue type.
    issueMessage :: (Core.Maybe Core.Text),
    -- | Severity of this issue: WARNING, or ERROR. Items with an issue of status ERROR cannot appear with rich result features in Google Search results.
    severity :: (Core.Maybe RichResultsIssue_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichResultsIssue' with the minimum fields required to make a request.
newRichResultsIssue ::
  RichResultsIssue
newRichResultsIssue =
  RichResultsIssue {issueMessage = Core.Nothing, severity = Core.Nothing}

instance Core.FromJSON RichResultsIssue where
  parseJSON =
    Core.withObject
      "RichResultsIssue"
      ( \o ->
          RichResultsIssue
            Core.<$> (o Core..:? "issueMessage")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON RichResultsIssue where
  toJSON RichResultsIssue {..} =
    Core.object
      ( Core.catMaybes
          [ ("issueMessage" Core..=) Core.<$> issueMessage,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | Mobile-friendly test request.
--
-- /See:/ 'newRunMobileFriendlyTestRequest' smart constructor.
data RunMobileFriendlyTestRequest = RunMobileFriendlyTestRequest
  { -- | Whether or not screenshot is requested. Default is false.
    requestScreenshot :: (Core.Maybe Core.Bool),
    -- | URL for inspection.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunMobileFriendlyTestRequest' with the minimum fields required to make a request.
newRunMobileFriendlyTestRequest ::
  RunMobileFriendlyTestRequest
newRunMobileFriendlyTestRequest =
  RunMobileFriendlyTestRequest
    { requestScreenshot = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON RunMobileFriendlyTestRequest where
  parseJSON =
    Core.withObject
      "RunMobileFriendlyTestRequest"
      ( \o ->
          RunMobileFriendlyTestRequest
            Core.<$> (o Core..:? "requestScreenshot")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON RunMobileFriendlyTestRequest where
  toJSON RunMobileFriendlyTestRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestScreenshot" Core..=)
              Core.<$> requestScreenshot,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Mobile-friendly test response, including mobile-friendly issues and resource issues.
--
-- /See:/ 'newRunMobileFriendlyTestResponse' smart constructor.
data RunMobileFriendlyTestResponse = RunMobileFriendlyTestResponse
  { -- | Test verdict, whether the page is mobile friendly or not.
    mobileFriendliness :: (Core.Maybe RunMobileFriendlyTestResponse_MobileFriendliness),
    -- | List of mobile-usability issues.
    mobileFriendlyIssues :: (Core.Maybe [MobileFriendlyIssue]),
    -- | Information about embedded resources issues.
    resourceIssues :: (Core.Maybe [ResourceIssue]),
    -- | Screenshot of the requested URL.
    screenshot :: (Core.Maybe Image),
    -- | Final state of the test, can be either complete or an error.
    testStatus :: (Core.Maybe TestStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunMobileFriendlyTestResponse' with the minimum fields required to make a request.
newRunMobileFriendlyTestResponse ::
  RunMobileFriendlyTestResponse
newRunMobileFriendlyTestResponse =
  RunMobileFriendlyTestResponse
    { mobileFriendliness = Core.Nothing,
      mobileFriendlyIssues = Core.Nothing,
      resourceIssues = Core.Nothing,
      screenshot = Core.Nothing,
      testStatus = Core.Nothing
    }

instance Core.FromJSON RunMobileFriendlyTestResponse where
  parseJSON =
    Core.withObject
      "RunMobileFriendlyTestResponse"
      ( \o ->
          RunMobileFriendlyTestResponse
            Core.<$> (o Core..:? "mobileFriendliness")
            Core.<*> (o Core..:? "mobileFriendlyIssues")
            Core.<*> (o Core..:? "resourceIssues")
            Core.<*> (o Core..:? "screenshot")
            Core.<*> (o Core..:? "testStatus")
      )

instance Core.ToJSON RunMobileFriendlyTestResponse where
  toJSON RunMobileFriendlyTestResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("mobileFriendliness" Core..=)
              Core.<$> mobileFriendliness,
            ("mobileFriendlyIssues" Core..=)
              Core.<$> mobileFriendlyIssues,
            ("resourceIssues" Core..=) Core.<$> resourceIssues,
            ("screenshot" Core..=) Core.<$> screenshot,
            ("testStatus" Core..=) Core.<$> testStatus
          ]
      )

--
-- /See:/ 'newSearchAnalyticsQueryRequest' smart constructor.
data SearchAnalyticsQueryRequest = SearchAnalyticsQueryRequest
  { -- | [Optional; Default is \"auto\"] How data is aggregated. If aggregated by property, all data for the same property is aggregated; if aggregated by page, all data is aggregated by canonical URI. If you filter or group by page, choose AUTO; otherwise you can aggregate either by property or by page, depending on how you want your data calculated; see the help documentation to learn how data is calculated differently by site versus by page. __Note:__ If you group or filter by page, you cannot aggregate by property. If you specify any value other than AUTO, the aggregation type in the result will match the requested type, or if you request an invalid type, you will get an error. The API will never change your aggregation type if the requested type is invalid.
    aggregationType :: (Core.Maybe SearchAnalyticsQueryRequest_AggregationType),
    -- | The data state to be fetched, can be full or all, the latter including full and partial data.
    dataState :: (Core.Maybe SearchAnalyticsQueryRequest_DataState),
    -- | [Optional] Zero or more filters to apply to the dimension grouping values; for example, \'query contains \"buy\"\' to see only data where the query string contains the substring \"buy\" (not case-sensitive). You can filter by a dimension without grouping by it.
    dimensionFilterGroups :: (Core.Maybe [ApiDimensionFilterGroup]),
    -- | [Optional] Zero or more dimensions to group results by. Dimensions are the group-by values in the Search Analytics page. Dimensions are combined to create a unique row key for each row. Results are grouped in the order that you supply these dimensions.
    dimensions :: (Core.Maybe [SearchAnalyticsQueryRequest_DimensionsItem]),
    -- | [Required] End date of the requested date range, in YYYY-MM-DD format, in PST (UTC - 8:00). Must be greater than or equal to the start date. This value is included in the range.
    endDate :: (Core.Maybe Core.Text),
    -- | [Optional; Default is 1000] The maximum number of rows to return. Must be a number from 1 to 25,000 (inclusive).
    rowLimit :: (Core.Maybe Core.Int32),
    -- | [Optional; Default is \"web\"] The search type to filter for.
    searchType :: (Core.Maybe SearchAnalyticsQueryRequest_SearchType),
    -- | [Required] Start date of the requested date range, in YYYY-MM-DD format, in PST time (UTC - 8:00). Must be less than or equal to the end date. This value is included in the range.
    startDate :: (Core.Maybe Core.Text),
    -- | [Optional; Default is 0] Zero-based index of the first row in the response. Must be a non-negative number.
    startRow :: (Core.Maybe Core.Int32),
    -- | Optional. [Optional; Default is \"web\"] Type of report: search type, or either Discover or Gnews.
    type' :: (Core.Maybe SearchAnalyticsQueryRequest_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchAnalyticsQueryRequest' with the minimum fields required to make a request.
newSearchAnalyticsQueryRequest ::
  SearchAnalyticsQueryRequest
newSearchAnalyticsQueryRequest =
  SearchAnalyticsQueryRequest
    { aggregationType = Core.Nothing,
      dataState = Core.Nothing,
      dimensionFilterGroups = Core.Nothing,
      dimensions = Core.Nothing,
      endDate = Core.Nothing,
      rowLimit = Core.Nothing,
      searchType = Core.Nothing,
      startDate = Core.Nothing,
      startRow = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SearchAnalyticsQueryRequest where
  parseJSON =
    Core.withObject
      "SearchAnalyticsQueryRequest"
      ( \o ->
          SearchAnalyticsQueryRequest
            Core.<$> (o Core..:? "aggregationType")
            Core.<*> (o Core..:? "dataState")
            Core.<*> (o Core..:? "dimensionFilterGroups")
            Core.<*> (o Core..:? "dimensions")
            Core.<*> (o Core..:? "endDate")
            Core.<*> (o Core..:? "rowLimit")
            Core.<*> (o Core..:? "searchType")
            Core.<*> (o Core..:? "startDate")
            Core.<*> (o Core..:? "startRow")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SearchAnalyticsQueryRequest where
  toJSON SearchAnalyticsQueryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationType" Core..=)
              Core.<$> aggregationType,
            ("dataState" Core..=) Core.<$> dataState,
            ("dimensionFilterGroups" Core..=)
              Core.<$> dimensionFilterGroups,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("endDate" Core..=) Core.<$> endDate,
            ("rowLimit" Core..=) Core.<$> rowLimit,
            ("searchType" Core..=) Core.<$> searchType,
            ("startDate" Core..=) Core.<$> startDate,
            ("startRow" Core..=) Core.<$> startRow,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A list of rows, one per result, grouped by key. Metrics in each row are aggregated for all data grouped by that key either by page or property, as specified by the aggregation type parameter.
--
-- /See:/ 'newSearchAnalyticsQueryResponse' smart constructor.
data SearchAnalyticsQueryResponse = SearchAnalyticsQueryResponse
  { -- | How the results were aggregated.
    responseAggregationType :: (Core.Maybe SearchAnalyticsQueryResponse_ResponseAggregationType),
    -- | A list of rows grouped by the key values in the order given in the query.
    rows :: (Core.Maybe [ApiDataRow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchAnalyticsQueryResponse' with the minimum fields required to make a request.
newSearchAnalyticsQueryResponse ::
  SearchAnalyticsQueryResponse
newSearchAnalyticsQueryResponse =
  SearchAnalyticsQueryResponse
    { responseAggregationType = Core.Nothing,
      rows = Core.Nothing
    }

instance Core.FromJSON SearchAnalyticsQueryResponse where
  parseJSON =
    Core.withObject
      "SearchAnalyticsQueryResponse"
      ( \o ->
          SearchAnalyticsQueryResponse
            Core.<$> (o Core..:? "responseAggregationType")
            Core.<*> (o Core..:? "rows")
      )

instance Core.ToJSON SearchAnalyticsQueryResponse where
  toJSON SearchAnalyticsQueryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("responseAggregationType" Core..=)
              Core.<$> responseAggregationType,
            ("rows" Core..=) Core.<$> rows
          ]
      )

-- | List of sitemaps.
--
-- /See:/ 'newSitemapsListResponse' smart constructor.
newtype SitemapsListResponse = SitemapsListResponse
  { -- | Contains detailed information about a specific URL submitted as a <https://support.google.com/webmasters/answer/156184 sitemap>.
    sitemap :: (Core.Maybe [WmxSitemap])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SitemapsListResponse' with the minimum fields required to make a request.
newSitemapsListResponse ::
  SitemapsListResponse
newSitemapsListResponse = SitemapsListResponse {sitemap = Core.Nothing}

instance Core.FromJSON SitemapsListResponse where
  parseJSON =
    Core.withObject
      "SitemapsListResponse"
      ( \o ->
          SitemapsListResponse Core.<$> (o Core..:? "sitemap")
      )

instance Core.ToJSON SitemapsListResponse where
  toJSON SitemapsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("sitemap" Core..=) Core.<$> sitemap]
      )

-- | List of sites with access level information.
--
-- /See:/ 'newSitesListResponse' smart constructor.
newtype SitesListResponse = SitesListResponse
  { -- | Contains permission level information about a Search Console site. For more information, see <https://support.google.com/webmasters/answer/2451999 Permissions in Search Console>.
    siteEntry :: (Core.Maybe [WmxSite])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SitesListResponse' with the minimum fields required to make a request.
newSitesListResponse ::
  SitesListResponse
newSitesListResponse = SitesListResponse {siteEntry = Core.Nothing}

instance Core.FromJSON SitesListResponse where
  parseJSON =
    Core.withObject
      "SitesListResponse"
      ( \o ->
          SitesListResponse Core.<$> (o Core..:? "siteEntry")
      )

instance Core.ToJSON SitesListResponse where
  toJSON SitesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("siteEntry" Core..=) Core.<$> siteEntry]
      )

-- | Final state of the test, including error details if necessary.
--
-- /See:/ 'newTestStatus' smart constructor.
data TestStatus = TestStatus
  { -- | Error details if applicable.
    details :: (Core.Maybe Core.Text),
    -- | Status of the test.
    status :: (Core.Maybe TestStatus_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestStatus' with the minimum fields required to make a request.
newTestStatus ::
  TestStatus
newTestStatus = TestStatus {details = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON TestStatus where
  parseJSON =
    Core.withObject
      "TestStatus"
      ( \o ->
          TestStatus
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON TestStatus where
  toJSON TestStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | URL inspection result, including all inspection results.
--
-- /See:/ 'newUrlInspectionResult' smart constructor.
data UrlInspectionResult = UrlInspectionResult
  { -- | Result of the AMP analysis. Absent if the page is not an AMP page.
    ampResult :: (Core.Maybe AmpInspectionResult),
    -- | Result of the index status analysis.
    indexStatusResult :: (Core.Maybe IndexStatusInspectionResult),
    -- | Link to Search Console URL inspection.
    inspectionResultLink :: (Core.Maybe Core.Text),
    -- | Result of the Mobile usability analysis.
    mobileUsabilityResult :: (Core.Maybe MobileUsabilityInspectionResult),
    -- | Result of the Rich Results analysis. Absent if there are no rich results found.
    richResultsResult :: (Core.Maybe RichResultsInspectionResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlInspectionResult' with the minimum fields required to make a request.
newUrlInspectionResult ::
  UrlInspectionResult
newUrlInspectionResult =
  UrlInspectionResult
    { ampResult = Core.Nothing,
      indexStatusResult = Core.Nothing,
      inspectionResultLink = Core.Nothing,
      mobileUsabilityResult = Core.Nothing,
      richResultsResult = Core.Nothing
    }

instance Core.FromJSON UrlInspectionResult where
  parseJSON =
    Core.withObject
      "UrlInspectionResult"
      ( \o ->
          UrlInspectionResult
            Core.<$> (o Core..:? "ampResult")
            Core.<*> (o Core..:? "indexStatusResult")
            Core.<*> (o Core..:? "inspectionResultLink")
            Core.<*> (o Core..:? "mobileUsabilityResult")
            Core.<*> (o Core..:? "richResultsResult")
      )

instance Core.ToJSON UrlInspectionResult where
  toJSON UrlInspectionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("ampResult" Core..=) Core.<$> ampResult,
            ("indexStatusResult" Core..=)
              Core.<$> indexStatusResult,
            ("inspectionResultLink" Core..=)
              Core.<$> inspectionResultLink,
            ("mobileUsabilityResult" Core..=)
              Core.<$> mobileUsabilityResult,
            ("richResultsResult" Core..=)
              Core.<$> richResultsResult
          ]
      )

-- | Contains permission level information about a Search Console site. For more information, see <https://support.google.com/webmasters/answer/2451999 Permissions in Search Console>.
--
-- /See:/ 'newWmxSite' smart constructor.
data WmxSite = WmxSite
  { -- | The user\'s permission level for the site.
    permissionLevel :: (Core.Maybe WmxSite_PermissionLevel),
    -- | The URL of the site.
    siteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WmxSite' with the minimum fields required to make a request.
newWmxSite ::
  WmxSite
newWmxSite = WmxSite {permissionLevel = Core.Nothing, siteUrl = Core.Nothing}

instance Core.FromJSON WmxSite where
  parseJSON =
    Core.withObject
      "WmxSite"
      ( \o ->
          WmxSite
            Core.<$> (o Core..:? "permissionLevel")
            Core.<*> (o Core..:? "siteUrl")
      )

instance Core.ToJSON WmxSite where
  toJSON WmxSite {..} =
    Core.object
      ( Core.catMaybes
          [ ("permissionLevel" Core..=)
              Core.<$> permissionLevel,
            ("siteUrl" Core..=) Core.<$> siteUrl
          ]
      )

-- | Contains detailed information about a specific URL submitted as a <https://support.google.com/webmasters/answer/156184 sitemap>.
--
-- /See:/ 'newWmxSitemap' smart constructor.
data WmxSitemap = WmxSitemap
  { -- | The various content types in the sitemap.
    contents :: (Core.Maybe [WmxSitemapContent]),
    -- | Number of errors in the sitemap. These are issues with the sitemap itself that need to be fixed before it can be processed correctly.
    errors :: (Core.Maybe Core.Int64),
    -- | If true, the sitemap has not been processed.
    isPending :: (Core.Maybe Core.Bool),
    -- | If true, the sitemap is a collection of sitemaps.
    isSitemapsIndex :: (Core.Maybe Core.Bool),
    -- | Date & time in which this sitemap was last downloaded. Date format is in RFC 3339 format (yyyy-mm-dd).
    lastDownloaded :: (Core.Maybe Core.DateTime),
    -- | Date & time in which this sitemap was submitted. Date format is in RFC 3339 format (yyyy-mm-dd).
    lastSubmitted :: (Core.Maybe Core.DateTime),
    -- | The url of the sitemap.
    path :: (Core.Maybe Core.Text),
    -- | The type of the sitemap. For example: @rssFeed@.
    type' :: (Core.Maybe WmxSitemap_Type),
    -- | Number of warnings for the sitemap. These are generally non-critical issues with URLs in the sitemaps.
    warnings :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WmxSitemap' with the minimum fields required to make a request.
newWmxSitemap ::
  WmxSitemap
newWmxSitemap =
  WmxSitemap
    { contents = Core.Nothing,
      errors = Core.Nothing,
      isPending = Core.Nothing,
      isSitemapsIndex = Core.Nothing,
      lastDownloaded = Core.Nothing,
      lastSubmitted = Core.Nothing,
      path = Core.Nothing,
      type' = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON WmxSitemap where
  parseJSON =
    Core.withObject
      "WmxSitemap"
      ( \o ->
          WmxSitemap
            Core.<$> (o Core..:? "contents")
            Core.<*> ( o Core..:? "errors"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "isPending")
            Core.<*> (o Core..:? "isSitemapsIndex")
            Core.<*> (o Core..:? "lastDownloaded")
            Core.<*> (o Core..:? "lastSubmitted")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "type")
            Core.<*> ( o Core..:? "warnings"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON WmxSitemap where
  toJSON WmxSitemap {..} =
    Core.object
      ( Core.catMaybes
          [ ("contents" Core..=) Core.<$> contents,
            ("errors" Core..=) Core.. Core.AsText
              Core.<$> errors,
            ("isPending" Core..=) Core.<$> isPending,
            ("isSitemapsIndex" Core..=) Core.<$> isSitemapsIndex,
            ("lastDownloaded" Core..=) Core.<$> lastDownloaded,
            ("lastSubmitted" Core..=) Core.<$> lastSubmitted,
            ("path" Core..=) Core.<$> path,
            ("type" Core..=) Core.<$> type',
            ("warnings" Core..=) Core.. Core.AsText
              Core.<$> warnings
          ]
      )

-- | Information about the various content types in the sitemap.
--
-- /See:/ 'newWmxSitemapContent' smart constructor.
data WmxSitemapContent = WmxSitemapContent
  { -- | /Deprecated; do not use./
    indexed :: (Core.Maybe Core.Int64),
    -- | The number of URLs in the sitemap (of the content type).
    submitted :: (Core.Maybe Core.Int64),
    -- | The specific type of content in this sitemap. For example: @web@.
    type' :: (Core.Maybe WmxSitemapContent_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WmxSitemapContent' with the minimum fields required to make a request.
newWmxSitemapContent ::
  WmxSitemapContent
newWmxSitemapContent =
  WmxSitemapContent
    { indexed = Core.Nothing,
      submitted = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON WmxSitemapContent where
  parseJSON =
    Core.withObject
      "WmxSitemapContent"
      ( \o ->
          WmxSitemapContent
            Core.<$> ( o Core..:? "indexed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "submitted"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON WmxSitemapContent where
  toJSON WmxSitemapContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexed" Core..=) Core.. Core.AsText
              Core.<$> indexed,
            ("submitted" Core..=) Core.. Core.AsText
              Core.<$> submitted,
            ("type" Core..=) Core.<$> type'
          ]
      )

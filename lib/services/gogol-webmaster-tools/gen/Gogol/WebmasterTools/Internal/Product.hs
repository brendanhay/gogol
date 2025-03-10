{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.WebmasterTools.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.WebmasterTools.Internal.Product
  ( -- * ApiDataRow
    ApiDataRow (..),
    newApiDataRow,

    -- * ApiDimensionFilter
    ApiDimensionFilter (..),
    newApiDimensionFilter,

    -- * ApiDimensionFilterGroup
    ApiDimensionFilterGroup (..),
    newApiDimensionFilterGroup,

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

import Gogol.Prelude qualified as Core
import Gogol.WebmasterTools.Internal.Sum

--
-- /See:/ 'newApiDataRow' smart constructor.
data ApiDataRow = ApiDataRow
  { clicks :: (Core.Maybe Core.Double),
    ctr :: (Core.Maybe Core.Double),
    impressions :: (Core.Maybe Core.Double),
    keys :: (Core.Maybe [Core.Text]),
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

--
-- /See:/ 'newApiDimensionFilter' smart constructor.
data ApiDimensionFilter = ApiDimensionFilter
  { dimension :: (Core.Maybe Core.Text),
    expression :: (Core.Maybe Core.Text),
    operator :: (Core.Maybe Core.Text)
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

--
-- /See:/ 'newApiDimensionFilterGroup' smart constructor.
data ApiDimensionFilterGroup = ApiDimensionFilterGroup
  { filters :: (Core.Maybe [ApiDimensionFilter]),
    groupType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApiDimensionFilterGroup' with the minimum fields required to make a request.
newApiDimensionFilterGroup ::
  ApiDimensionFilterGroup
newApiDimensionFilterGroup =
  ApiDimensionFilterGroup
    { filters = Core.Nothing,
      groupType = Core.Nothing
    }

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

--
-- /See:/ 'newSearchAnalyticsQueryRequest' smart constructor.
data SearchAnalyticsQueryRequest = SearchAnalyticsQueryRequest
  { -- | [Optional; Default is \"auto\"] How data is aggregated. If aggregated by property, all data for the same property is aggregated; if aggregated by page, all data is aggregated by canonical URI. If you filter or group by page, choose AUTO; otherwise you can aggregate either by property or by page, depending on how you want your data calculated; see the help documentation to learn how data is calculated differently by site versus by page.
    --
    -- Note: If you group or filter by page, you cannot aggregate by property.
    --
    -- If you specify any value other than AUTO, the aggregation type in the result will match the requested type, or if you request an invalid type, you will get an error. The API will never change your aggregation type if the requested type is invalid.
    aggregationType :: (Core.Maybe Core.Text),
    -- | [Optional] If \"all\" (case-insensitive), data will include fresh data. If \"final\" (case-insensitive) or if this parameter is omitted, the returned data will include only finalized data.
    dataState :: (Core.Maybe Core.Text),
    -- | [Optional] Zero or more filters to apply to the dimension grouping values; for example, \'query contains \"buy\"\' to see only data where the query string contains the substring \"buy\" (not case-sensitive). You can filter by a dimension without grouping by it.
    dimensionFilterGroups :: (Core.Maybe [ApiDimensionFilterGroup]),
    -- | [Optional] Zero or more dimensions to group results by. Dimensions are the group-by values in the Search Analytics page. Dimensions are combined to create a unique row key for each row. Results are grouped in the order that you supply these dimensions.
    dimensions :: (Core.Maybe [Core.Text]),
    -- | [Required] End date of the requested date range, in YYYY-MM-DD format, in PST (UTC - 8:00). Must be greater than or equal to the start date. This value is included in the range.
    endDate :: (Core.Maybe Core.Text),
    -- | [Optional; Default is 1000] The maximum number of rows to return. Must be a number from 1 to 5,000 (inclusive).
    rowLimit :: (Core.Maybe Core.Int32),
    -- | [Optional; Default is \"web\"] The search type to filter for.
    searchType :: (Core.Maybe Core.Text),
    -- | [Required] Start date of the requested date range, in YYYY-MM-DD format, in PST time (UTC - 8:00). Must be less than or equal to the end date. This value is included in the range.
    startDate :: (Core.Maybe Core.Text),
    -- | [Optional; Default is 0] Zero-based index of the first row in the response. Must be a non-negative number.
    startRow :: (Core.Maybe Core.Int32)
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
      startRow = Core.Nothing
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
      )

instance Core.ToJSON SearchAnalyticsQueryRequest where
  toJSON SearchAnalyticsQueryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregationType" Core..=) Core.<$> aggregationType,
            ("dataState" Core..=) Core.<$> dataState,
            ("dimensionFilterGroups" Core..=) Core.<$> dimensionFilterGroups,
            ("dimensions" Core..=) Core.<$> dimensions,
            ("endDate" Core..=) Core.<$> endDate,
            ("rowLimit" Core..=) Core.<$> rowLimit,
            ("searchType" Core..=) Core.<$> searchType,
            ("startDate" Core..=) Core.<$> startDate,
            ("startRow" Core..=) Core.<$> startRow
          ]
      )

-- | A list of rows, one per result, grouped by key. Metrics in each row are aggregated for all data grouped by that key either by page or property, as specified by the aggregation type parameter.
--
-- /See:/ 'newSearchAnalyticsQueryResponse' smart constructor.
data SearchAnalyticsQueryResponse = SearchAnalyticsQueryResponse
  { -- | How the results were aggregated.
    responseAggregationType :: (Core.Maybe Core.Text),
    -- | A list of rows grouped by the key values in the order given in the query.
    rows :: (Core.Maybe [ApiDataRow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchAnalyticsQueryResponse' with the minimum fields required to make a request.
newSearchAnalyticsQueryResponse ::
  SearchAnalyticsQueryResponse
newSearchAnalyticsQueryResponse =
  SearchAnalyticsQueryResponse
    { responseAggregationType =
        Core.Nothing,
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
  { -- | Contains detailed information about a specific URL submitted as a sitemap.
    sitemap :: (Core.Maybe [WmxSitemap])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SitemapsListResponse' with the minimum fields required to make a request.
newSitemapsListResponse ::
  SitemapsListResponse
newSitemapsListResponse =
  SitemapsListResponse {sitemap = Core.Nothing}

instance Core.FromJSON SitemapsListResponse where
  parseJSON =
    Core.withObject
      "SitemapsListResponse"
      (\o -> SitemapsListResponse Core.<$> (o Core..:? "sitemap"))

instance Core.ToJSON SitemapsListResponse where
  toJSON SitemapsListResponse {..} =
    Core.object
      (Core.catMaybes [("sitemap" Core..=) Core.<$> sitemap])

-- | List of sites with access level information.
--
-- /See:/ 'newSitesListResponse' smart constructor.
newtype SitesListResponse = SitesListResponse
  { -- | Contains permission level information about a Search Console site. For more information, see Permissions in Search Console.
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
      (\o -> SitesListResponse Core.<$> (o Core..:? "siteEntry"))

instance Core.ToJSON SitesListResponse where
  toJSON SitesListResponse {..} =
    Core.object
      (Core.catMaybes [("siteEntry" Core..=) Core.<$> siteEntry])

-- | Contains permission level information about a Search Console site. For more information, see Permissions in Search Console.
--
-- /See:/ 'newWmxSite' smart constructor.
data WmxSite = WmxSite
  { -- | The user\'s permission level for the site.
    permissionLevel :: (Core.Maybe Core.Text),
    -- | The URL of the site.
    siteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WmxSite' with the minimum fields required to make a request.
newWmxSite ::
  WmxSite
newWmxSite =
  WmxSite {permissionLevel = Core.Nothing, siteUrl = Core.Nothing}

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
          [ ("permissionLevel" Core..=) Core.<$> permissionLevel,
            ("siteUrl" Core..=) Core.<$> siteUrl
          ]
      )

-- | Contains detailed information about a specific URL submitted as a sitemap.
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
    -- | The type of the sitemap. For example: rssFeed.
    type' :: (Core.Maybe Core.Text),
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
            Core.<*> (o Core..:? "errors" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "isPending")
            Core.<*> (o Core..:? "isSitemapsIndex")
            Core.<*> (o Core..:? "lastDownloaded")
            Core.<*> (o Core..:? "lastSubmitted")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "warnings" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON WmxSitemap where
  toJSON WmxSitemap {..} =
    Core.object
      ( Core.catMaybes
          [ ("contents" Core..=) Core.<$> contents,
            ("errors" Core..=) Core.. Core.AsText Core.<$> errors,
            ("isPending" Core..=) Core.<$> isPending,
            ("isSitemapsIndex" Core..=) Core.<$> isSitemapsIndex,
            ("lastDownloaded" Core..=) Core.<$> lastDownloaded,
            ("lastSubmitted" Core..=) Core.<$> lastSubmitted,
            ("path" Core..=) Core.<$> path,
            ("type" Core..=) Core.<$> type',
            ("warnings" Core..=) Core.. Core.AsText Core.<$> warnings
          ]
      )

-- | Information about the various content types in the sitemap.
--
-- /See:/ 'newWmxSitemapContent' smart constructor.
data WmxSitemapContent = WmxSitemapContent
  { -- | The number of URLs from the sitemap that were indexed (of the content type).
    indexed :: (Core.Maybe Core.Int64),
    -- | The number of URLs in the sitemap (of the content type).
    submitted :: (Core.Maybe Core.Int64),
    -- | The specific type of content in this sitemap. For example: web.
    type' :: (Core.Maybe Core.Text)
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
            Core.<$> (o Core..:? "indexed" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "submitted" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON WmxSitemapContent where
  toJSON WmxSitemapContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexed" Core..=) Core.. Core.AsText Core.<$> indexed,
            ("submitted" Core..=) Core.. Core.AsText Core.<$> submitted,
            ("type" Core..=) Core.<$> type'
          ]
      )

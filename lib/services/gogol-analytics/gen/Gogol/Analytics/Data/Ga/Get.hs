{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Analytics.Data.Ga.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Analytics data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.ga.get@.
module Gogol.Analytics.Data.Ga.Get
  ( -- * Resource
    AnalyticsDataGaGetResource,

    -- ** Constructing a Request
    AnalyticsDataGaGet (..),
    newAnalyticsDataGaGet,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.data.ga.get@ method which the
-- 'AnalyticsDataGaGet' request conforms to.
type AnalyticsDataGaGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "data"
    Core.:> "ga"
    Core.:> Core.QueryParam "ids" Core.Text
    Core.:> Core.QueryParam "start-date" Core.Text
    Core.:> Core.QueryParam "end-date" Core.Text
    Core.:> Core.QueryParam "metrics" Core.Text
    Core.:> Core.QueryParam "dimensions" Core.Text
    Core.:> Core.QueryParam "filters" Core.Text
    Core.:> Core.QueryParam "include-empty-rows" Core.Bool
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "output" DataGaGetOutput
    Core.:> Core.QueryParam "samplingLevel" DataGaGetSamplingLevel
    Core.:> Core.QueryParam "segment" Core.Text
    Core.:> Core.QueryParam "sort" Core.Text
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GaData

-- | Returns Analytics data for a view (profile).
--
-- /See:/ 'newAnalyticsDataGaGet' smart constructor.
data AnalyticsDataGaGet = AnalyticsDataGaGet
  { -- | A comma-separated list of Analytics dimensions. E.g., \'ga:browser,ga:city\'.
    dimensions :: (Core.Maybe Core.Text),
    -- | End date for fetching Analytics data. Request can should specify an end date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is yesterday.
    endDate :: Core.Text,
    -- | A comma-separated list of dimension or metric filters to be applied to Analytics data.
    filters :: (Core.Maybe Core.Text),
    -- | Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.
    ids :: Core.Text,
    -- | The response will include empty rows if this parameter is set to true, the default is true
    includeEmptyRows :: (Core.Maybe Core.Bool),
    -- | The maximum number of entries to include in this feed.
    maxResults :: (Core.Maybe Core.Int32),
    -- | A comma-separated list of Analytics metrics. E.g., \'ga:sessions,ga:pageviews\'. At least one metric must be specified.
    metrics :: Core.Text,
    -- | The selected format for the response. Default format is JSON.
    output :: (Core.Maybe DataGaGetOutput),
    -- | The desired sampling level.
    samplingLevel :: (Core.Maybe DataGaGetSamplingLevel),
    -- | An Analytics segment to be applied to data.
    segment :: (Core.Maybe Core.Text),
    -- | A comma-separated list of dimensions or metrics that determine the sort order for Analytics data.
    sort :: (Core.Maybe Core.Text),
    -- | Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.
    startDate :: Core.Text,
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataGaGet' with the minimum fields required to make a request.
newAnalyticsDataGaGet ::
  -- |  End date for fetching Analytics data. Request can should specify an end date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is yesterday. See 'endDate'.
  Core.Text ->
  -- |  Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID. See 'ids'.
  Core.Text ->
  -- |  A comma-separated list of Analytics metrics. E.g., \'ga:sessions,ga:pageviews\'. At least one metric must be specified. See 'metrics'.
  Core.Text ->
  -- |  Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo. See 'startDate'.
  Core.Text ->
  AnalyticsDataGaGet
newAnalyticsDataGaGet endDate ids metrics startDate =
  AnalyticsDataGaGet
    { dimensions = Core.Nothing,
      endDate = endDate,
      filters = Core.Nothing,
      ids = ids,
      includeEmptyRows = Core.Nothing,
      maxResults = Core.Nothing,
      metrics = metrics,
      output = Core.Nothing,
      samplingLevel = Core.Nothing,
      segment = Core.Nothing,
      sort = Core.Nothing,
      startDate = startDate,
      startIndex = Core.Nothing
    }

instance Core.GoogleRequest AnalyticsDataGaGet where
  type Rs AnalyticsDataGaGet = GaData
  type
    Scopes AnalyticsDataGaGet =
      '[Analytics'FullControl, Analytics'Readonly]
  requestClient AnalyticsDataGaGet {..} =
    go
      (Core.Just ids)
      (Core.Just startDate)
      (Core.Just endDate)
      (Core.Just metrics)
      dimensions
      filters
      includeEmptyRows
      maxResults
      output
      samplingLevel
      segment
      sort
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsDataGaGetResource)
          Core.mempty

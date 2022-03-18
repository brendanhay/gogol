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
-- Module      : Network.Google.Analytics.Data.Mcf.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.mcf.get@.
module Network.Google.Analytics.Data.Mcf.Get
  ( -- * Resource
    AnalyticsDataMcfGetResource,

    -- ** Constructing a Request
    newAnalyticsDataMcfGet,
    AnalyticsDataMcfGet,
  )
where

import Network.Google.Analytics.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @analytics.data.mcf.get@ method which the
-- 'AnalyticsDataMcfGet' request conforms to.
type AnalyticsDataMcfGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "data"
    Core.:> "mcf"
    Core.:> Core.QueryParam "ids" Core.Text
    Core.:> Core.QueryParam "start-date" Core.Text
    Core.:> Core.QueryParam "end-date" Core.Text
    Core.:> Core.QueryParam "metrics" Core.Text
    Core.:> Core.QueryParam "dimensions" Core.Text
    Core.:> Core.QueryParam "filters" Core.Text
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam
              "samplingLevel"
              DataMcfGetSamplingLevel
    Core.:> Core.QueryParam "sort" Core.Text
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] McfData

-- | Returns Analytics Multi-Channel Funnels data for a view (profile).
--
-- /See:/ 'newAnalyticsDataMcfGet' smart constructor.
data AnalyticsDataMcfGet = AnalyticsDataMcfGet
  { -- | A comma-separated list of Multi-Channel Funnels dimensions. E.g., \'mcf:source,mcf:medium\'.
    dimensions :: (Core.Maybe Core.Text),
    -- | End date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.
    endDate :: Core.Text,
    -- | A comma-separated list of dimension or metric filters to be applied to the Analytics data.
    filters :: (Core.Maybe Core.Text),
    -- | Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.
    ids :: Core.Text,
    -- | The maximum number of entries to include in this feed.
    maxResults :: (Core.Maybe Core.Int32),
    -- | A comma-separated list of Multi-Channel Funnels metrics. E.g., \'mcf:totalConversions,mcf:totalConversionValue\'. At least one metric must be specified.
    metrics :: Core.Text,
    -- | The desired sampling level.
    samplingLevel :: (Core.Maybe DataMcfGetSamplingLevel),
    -- | A comma-separated list of dimensions or metrics that determine the sort order for the Analytics data.
    sort :: (Core.Maybe Core.Text),
    -- | Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo.
    startDate :: Core.Text,
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataMcfGet' with the minimum fields required to make a request.
newAnalyticsDataMcfGet ::
  -- |  End date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo. See 'endDate'.
  Core.Text ->
  -- |  Unique table ID for retrieving Analytics data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID. See 'ids'.
  Core.Text ->
  -- |  A comma-separated list of Multi-Channel Funnels metrics. E.g., \'mcf:totalConversions,mcf:totalConversionValue\'. At least one metric must be specified. See 'metrics'.
  Core.Text ->
  -- |  Start date for fetching Analytics data. Requests can specify a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is 7daysAgo. See 'startDate'.
  Core.Text ->
  AnalyticsDataMcfGet
newAnalyticsDataMcfGet endDate ids metrics startDate =
  AnalyticsDataMcfGet
    { dimensions = Core.Nothing,
      endDate = endDate,
      filters = Core.Nothing,
      ids = ids,
      maxResults = Core.Nothing,
      metrics = metrics,
      samplingLevel = Core.Nothing,
      sort = Core.Nothing,
      startDate = startDate,
      startIndex = Core.Nothing
    }

instance Core.GoogleRequest AnalyticsDataMcfGet where
  type Rs AnalyticsDataMcfGet = McfData
  type
    Scopes AnalyticsDataMcfGet =
      '[ "https://www.googleapis.com/auth/analytics",
         "https://www.googleapis.com/auth/analytics.readonly"
       ]
  requestClient AnalyticsDataMcfGet {..} =
    go
      (Core.Just ids)
      (Core.Just startDate)
      (Core.Just endDate)
      (Core.Just metrics)
      dimensions
      filters
      maxResults
      samplingLevel
      sort
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsDataMcfGetResource
          )
          Core.mempty

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
-- Module      : Gogol.Analytics.Data.Realtime.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns real time data for a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.data.realtime.get@.
module Gogol.Analytics.Data.Realtime.Get
  ( -- * Resource
    AnalyticsDataRealtimeGetResource,

    -- ** Constructing a Request
    newAnalyticsDataRealtimeGet,
    AnalyticsDataRealtimeGet,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.data.realtime.get@ method which the
-- 'AnalyticsDataRealtimeGet' request conforms to.
type AnalyticsDataRealtimeGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "data"
    Core.:> "realtime"
    Core.:> Core.QueryParam "ids" Core.Text
    Core.:> Core.QueryParam "metrics" Core.Text
    Core.:> Core.QueryParam "dimensions" Core.Text
    Core.:> Core.QueryParam "filters" Core.Text
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "sort" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RealtimeData

-- | Returns real time data for a view (profile).
--
-- /See:/ 'newAnalyticsDataRealtimeGet' smart constructor.
data AnalyticsDataRealtimeGet = AnalyticsDataRealtimeGet
  { -- | A comma-separated list of real time dimensions. E.g., \'rt:medium,rt:city\'.
    dimensions :: (Core.Maybe Core.Text),
    -- | A comma-separated list of dimension or metric filters to be applied to real time data.
    filters :: (Core.Maybe Core.Text),
    -- | Unique table ID for retrieving real time data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID.
    ids :: Core.Text,
    -- | The maximum number of entries to include in this feed.
    maxResults :: (Core.Maybe Core.Int32),
    -- | A comma-separated list of real time metrics. E.g., \'rt:activeUsers\'. At least one metric must be specified.
    metrics :: Core.Text,
    -- | A comma-separated list of dimensions or metrics that determine the sort order for real time data.
    sort :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataRealtimeGet' with the minimum fields required to make a request.
newAnalyticsDataRealtimeGet ::
  -- |  Unique table ID for retrieving real time data. Table ID is of the form ga:XXXX, where XXXX is the Analytics view (profile) ID. See 'ids'.
  Core.Text ->
  -- |  A comma-separated list of real time metrics. E.g., \'rt:activeUsers\'. At least one metric must be specified. See 'metrics'.
  Core.Text ->
  AnalyticsDataRealtimeGet
newAnalyticsDataRealtimeGet ids metrics =
  AnalyticsDataRealtimeGet
    { dimensions = Core.Nothing,
      filters = Core.Nothing,
      ids = ids,
      maxResults = Core.Nothing,
      metrics = metrics,
      sort = Core.Nothing
    }

instance Core.GoogleRequest AnalyticsDataRealtimeGet where
  type Rs AnalyticsDataRealtimeGet = RealtimeData
  type
    Scopes AnalyticsDataRealtimeGet =
      '[ "https://www.googleapis.com/auth/analytics",
         "https://www.googleapis.com/auth/analytics.readonly"
       ]
  requestClient AnalyticsDataRealtimeGet {..} =
    go
      (Core.Just ids)
      (Core.Just metrics)
      dimensions
      filters
      maxResults
      sort
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsDataRealtimeGetResource
          )
          Core.mempty

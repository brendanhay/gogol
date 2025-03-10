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
-- Module      : Gogol.Analytics.Management.CustomMetrics.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists custom metrics to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.list@.
module Gogol.Analytics.Management.CustomMetrics.List
  ( -- * Resource
    AnalyticsManagementCustomMetricsListResource,

    -- ** Constructing a Request
    AnalyticsManagementCustomMetricsList (..),
    newAnalyticsManagementCustomMetricsList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.customMetrics.list@ method which the
-- 'AnalyticsManagementCustomMetricsList' request conforms to.
type AnalyticsManagementCustomMetricsListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customMetrics"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomMetrics

-- | Lists custom metrics to which the user has access.
--
-- /See:/ 'newAnalyticsManagementCustomMetricsList' smart constructor.
data AnalyticsManagementCustomMetricsList = AnalyticsManagementCustomMetricsList
  { -- | Account ID for the custom metrics to retrieve.
    accountId :: Core.Text,
    -- | The maximum number of custom metrics to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property ID for the custom metrics to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomMetricsList' with the minimum fields required to make a request.
newAnalyticsManagementCustomMetricsList ::
  -- |  Account ID for the custom metrics to retrieve. See 'accountId'.
  Core.Text ->
  -- |  Web property ID for the custom metrics to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomMetricsList
newAnalyticsManagementCustomMetricsList accountId webPropertyId =
  AnalyticsManagementCustomMetricsList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      webPropertyId = webPropertyId
    }

instance Core.GoogleRequest AnalyticsManagementCustomMetricsList where
  type Rs AnalyticsManagementCustomMetricsList = CustomMetrics
  type
    Scopes AnalyticsManagementCustomMetricsList =
      '[Analytics'FullControl, Analytics'Readonly]
  requestClient AnalyticsManagementCustomMetricsList {..} =
    go
      accountId
      webPropertyId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementCustomMetricsListResource
          )
          Core.mempty

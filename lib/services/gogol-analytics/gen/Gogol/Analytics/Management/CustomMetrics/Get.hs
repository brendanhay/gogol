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
-- Module      : Gogol.Analytics.Management.CustomMetrics.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a custom metric to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.get@.
module Gogol.Analytics.Management.CustomMetrics.Get
  ( -- * Resource
    AnalyticsManagementCustomMetricsGetResource,

    -- ** Constructing a Request
    AnalyticsManagementCustomMetricsGet (..),
    newAnalyticsManagementCustomMetricsGet,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.customMetrics.get@ method which the
-- 'AnalyticsManagementCustomMetricsGet' request conforms to.
type AnalyticsManagementCustomMetricsGetResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customMetrics"
    Core.:> Core.Capture "customMetricId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomMetric

-- | Get a custom metric to which the user has access.
--
-- /See:/ 'newAnalyticsManagementCustomMetricsGet' smart constructor.
data AnalyticsManagementCustomMetricsGet = AnalyticsManagementCustomMetricsGet
  { -- | Account ID for the custom metric to retrieve.
    accountId :: Core.Text,
    -- | The ID of the custom metric to retrieve.
    customMetricId :: Core.Text,
    -- | Web property ID for the custom metric to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomMetricsGet' with the minimum fields required to make a request.
newAnalyticsManagementCustomMetricsGet ::
  -- |  Account ID for the custom metric to retrieve. See 'accountId'.
  Core.Text ->
  -- |  The ID of the custom metric to retrieve. See 'customMetricId'.
  Core.Text ->
  -- |  Web property ID for the custom metric to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomMetricsGet
newAnalyticsManagementCustomMetricsGet
  accountId
  customMetricId
  webPropertyId =
    AnalyticsManagementCustomMetricsGet
      { accountId = accountId,
        customMetricId = customMetricId,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementCustomMetricsGet where
  type Rs AnalyticsManagementCustomMetricsGet = CustomMetric
  type
    Scopes AnalyticsManagementCustomMetricsGet =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementCustomMetricsGet {..} =
    go
      accountId
      webPropertyId
      customMetricId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementCustomMetricsGetResource
          )
          Core.mempty

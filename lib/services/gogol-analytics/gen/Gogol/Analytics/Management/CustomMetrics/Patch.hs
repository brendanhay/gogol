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
-- Module      : Gogol.Analytics.Management.CustomMetrics.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom metric. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.patch@.
module Gogol.Analytics.Management.CustomMetrics.Patch
  ( -- * Resource
    AnalyticsManagementCustomMetricsPatchResource,

    -- ** Constructing a Request
    AnalyticsManagementCustomMetricsPatch (..),
    newAnalyticsManagementCustomMetricsPatch,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.customMetrics.patch@ method which the
-- 'AnalyticsManagementCustomMetricsPatch' request conforms to.
type AnalyticsManagementCustomMetricsPatchResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customMetrics"
    Core.:> Core.Capture "customMetricId" Core.Text
    Core.:> Core.QueryParam "ignoreCustomDataSourceLinks" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomMetric
    Core.:> Core.Patch '[Core.JSON] CustomMetric

-- | Updates an existing custom metric. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementCustomMetricsPatch' smart constructor.
data AnalyticsManagementCustomMetricsPatch = AnalyticsManagementCustomMetricsPatch
  { -- | Account ID for the custom metric to update.
    accountId :: Core.Text,
    -- | Custom metric ID for the custom metric to update.
    customMetricId :: Core.Text,
    -- | Force the update and ignore any warnings related to the custom metric being linked to a custom data source \/ data set.
    ignoreCustomDataSourceLinks :: Core.Bool,
    -- | Multipart request metadata.
    payload :: CustomMetric,
    -- | Web property ID for the custom metric to update.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomMetricsPatch' with the minimum fields required to make a request.
newAnalyticsManagementCustomMetricsPatch ::
  -- |  Account ID for the custom metric to update. See 'accountId'.
  Core.Text ->
  -- |  Custom metric ID for the custom metric to update. See 'customMetricId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomMetric ->
  -- |  Web property ID for the custom metric to update. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomMetricsPatch
newAnalyticsManagementCustomMetricsPatch
  accountId
  customMetricId
  payload
  webPropertyId =
    AnalyticsManagementCustomMetricsPatch
      { accountId = accountId,
        customMetricId = customMetricId,
        ignoreCustomDataSourceLinks = Core.False,
        payload = payload,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementCustomMetricsPatch where
  type Rs AnalyticsManagementCustomMetricsPatch = CustomMetric
  type
    Scopes AnalyticsManagementCustomMetricsPatch =
      '[Analytics'Edit]
  requestClient AnalyticsManagementCustomMetricsPatch {..} =
    go
      accountId
      webPropertyId
      customMetricId
      (Core.Just ignoreCustomDataSourceLinks)
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementCustomMetricsPatchResource
          )
          Core.mempty

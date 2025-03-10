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
-- Module      : Gogol.Analytics.Management.CustomDimensions.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.update@.
module Gogol.Analytics.Management.CustomDimensions.Update
  ( -- * Resource
    AnalyticsManagementCustomDimensionsUpdateResource,

    -- ** Constructing a Request
    AnalyticsManagementCustomDimensionsUpdate (..),
    newAnalyticsManagementCustomDimensionsUpdate,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.customDimensions.update@ method which the
-- 'AnalyticsManagementCustomDimensionsUpdate' request conforms to.
type AnalyticsManagementCustomDimensionsUpdateResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customDimensions"
    Core.:> Core.Capture "customDimensionId" Core.Text
    Core.:> Core.QueryParam "ignoreCustomDataSourceLinks" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomDimension
    Core.:> Core.Put '[Core.JSON] CustomDimension

-- | Updates an existing custom dimension.
--
-- /See:/ 'newAnalyticsManagementCustomDimensionsUpdate' smart constructor.
data AnalyticsManagementCustomDimensionsUpdate = AnalyticsManagementCustomDimensionsUpdate
  { -- | Account ID for the custom dimension to update.
    accountId :: Core.Text,
    -- | Custom dimension ID for the custom dimension to update.
    customDimensionId :: Core.Text,
    -- | Force the update and ignore any warnings related to the custom dimension being linked to a custom data source \/ data set.
    ignoreCustomDataSourceLinks :: Core.Bool,
    -- | Multipart request metadata.
    payload :: CustomDimension,
    -- | Web property ID for the custom dimension to update.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomDimensionsUpdate' with the minimum fields required to make a request.
newAnalyticsManagementCustomDimensionsUpdate ::
  -- |  Account ID for the custom dimension to update. See 'accountId'.
  Core.Text ->
  -- |  Custom dimension ID for the custom dimension to update. See 'customDimensionId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomDimension ->
  -- |  Web property ID for the custom dimension to update. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomDimensionsUpdate
newAnalyticsManagementCustomDimensionsUpdate
  accountId
  customDimensionId
  payload
  webPropertyId =
    AnalyticsManagementCustomDimensionsUpdate
      { accountId = accountId,
        customDimensionId = customDimensionId,
        ignoreCustomDataSourceLinks = Core.False,
        payload = payload,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementCustomDimensionsUpdate
  where
  type Rs AnalyticsManagementCustomDimensionsUpdate = CustomDimension
  type
    Scopes AnalyticsManagementCustomDimensionsUpdate =
      '[Analytics'Edit]
  requestClient AnalyticsManagementCustomDimensionsUpdate {..} =
    go
      accountId
      webPropertyId
      customDimensionId
      (Core.Just ignoreCustomDataSourceLinks)
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementCustomDimensionsUpdateResource
          )
          Core.mempty

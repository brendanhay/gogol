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
-- Module      : Gogol.Analytics.Management.CustomDimensions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists custom dimensions to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.list@.
module Gogol.Analytics.Management.CustomDimensions.List
  ( -- * Resource
    AnalyticsManagementCustomDimensionsListResource,

    -- ** Constructing a Request
    AnalyticsManagementCustomDimensionsList (..),
    newAnalyticsManagementCustomDimensionsList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.customDimensions.list@ method which the
-- 'AnalyticsManagementCustomDimensionsList' request conforms to.
type AnalyticsManagementCustomDimensionsListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "customDimensions"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomDimensions

-- | Lists custom dimensions to which the user has access.
--
-- /See:/ 'newAnalyticsManagementCustomDimensionsList' smart constructor.
data AnalyticsManagementCustomDimensionsList = AnalyticsManagementCustomDimensionsList
  { -- | Account ID for the custom dimensions to retrieve.
    accountId :: Core.Text,
    -- | The maximum number of custom dimensions to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Web property ID for the custom dimensions to retrieve.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomDimensionsList' with the minimum fields required to make a request.
newAnalyticsManagementCustomDimensionsList ::
  -- |  Account ID for the custom dimensions to retrieve. See 'accountId'.
  Core.Text ->
  -- |  Web property ID for the custom dimensions to retrieve. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementCustomDimensionsList
newAnalyticsManagementCustomDimensionsList accountId webPropertyId =
  AnalyticsManagementCustomDimensionsList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing,
      webPropertyId = webPropertyId
    }

instance Core.GoogleRequest AnalyticsManagementCustomDimensionsList where
  type Rs AnalyticsManagementCustomDimensionsList = CustomDimensions
  type
    Scopes AnalyticsManagementCustomDimensionsList =
      '[Analytics'FullControl, Analytics'Readonly]
  requestClient AnalyticsManagementCustomDimensionsList {..} =
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
              Core.Proxy AnalyticsManagementCustomDimensionsListResource
          )
          Core.mempty

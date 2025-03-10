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
-- Module      : Gogol.Analytics.Management.Filters.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all filters for an account
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.list@.
module Gogol.Analytics.Management.Filters.List
  ( -- * Resource
    AnalyticsManagementFiltersListResource,

    -- ** Constructing a Request
    AnalyticsManagementFiltersList (..),
    newAnalyticsManagementFiltersList,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.filters.list@ method which the
-- 'AnalyticsManagementFiltersList' request conforms to.
type AnalyticsManagementFiltersListResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "filters"
    Core.:> Core.QueryParam "max-results" Core.Int32
    Core.:> Core.QueryParam "start-index" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Filters

-- | Lists all filters for an account
--
-- /See:/ 'newAnalyticsManagementFiltersList' smart constructor.
data AnalyticsManagementFiltersList = AnalyticsManagementFiltersList
  { -- | Account ID to retrieve filters for.
    accountId :: Core.Text,
    -- | The maximum number of filters to include in this response.
    maxResults :: (Core.Maybe Core.Int32),
    -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    startIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersList' with the minimum fields required to make a request.
newAnalyticsManagementFiltersList ::
  -- |  Account ID to retrieve filters for. See 'accountId'.
  Core.Text ->
  AnalyticsManagementFiltersList
newAnalyticsManagementFiltersList accountId =
  AnalyticsManagementFiltersList
    { accountId = accountId,
      maxResults = Core.Nothing,
      startIndex = Core.Nothing
    }

instance Core.GoogleRequest AnalyticsManagementFiltersList where
  type Rs AnalyticsManagementFiltersList = Filters
  type
    Scopes AnalyticsManagementFiltersList =
      '[Analytics'Edit, Analytics'Readonly]
  requestClient AnalyticsManagementFiltersList {..} =
    go
      accountId
      maxResults
      startIndex
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementFiltersListResource)
          Core.mempty

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
-- Module      : Gogol.Analytics.Management.Filters.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.update@.
module Gogol.Analytics.Management.Filters.Update
  ( -- * Resource
    AnalyticsManagementFiltersUpdateResource,

    -- ** Constructing a Request
    AnalyticsManagementFiltersUpdate (..),
    newAnalyticsManagementFiltersUpdate,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.filters.update@ method which the
-- 'AnalyticsManagementFiltersUpdate' request conforms to.
type AnalyticsManagementFiltersUpdateResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "filters"
    Core.:> Core.Capture "filterId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Filter
    Core.:> Core.Put '[Core.JSON] Filter

-- | Updates an existing filter.
--
-- /See:/ 'newAnalyticsManagementFiltersUpdate' smart constructor.
data AnalyticsManagementFiltersUpdate = AnalyticsManagementFiltersUpdate
  { -- | Account ID to which the filter belongs.
    accountId :: Core.Text,
    -- | ID of the filter to be updated.
    filterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Filter
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersUpdate' with the minimum fields required to make a request.
newAnalyticsManagementFiltersUpdate ::
  -- |  Account ID to which the filter belongs. See 'accountId'.
  Core.Text ->
  -- |  ID of the filter to be updated. See 'filterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Filter ->
  AnalyticsManagementFiltersUpdate
newAnalyticsManagementFiltersUpdate accountId filterId payload =
  AnalyticsManagementFiltersUpdate
    { accountId = accountId,
      filterId = filterId,
      payload = payload
    }

instance Core.GoogleRequest AnalyticsManagementFiltersUpdate where
  type Rs AnalyticsManagementFiltersUpdate = Filter
  type Scopes AnalyticsManagementFiltersUpdate = '[Analytics'Edit]
  requestClient AnalyticsManagementFiltersUpdate {..} =
    go
      accountId
      filterId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementFiltersUpdateResource)
          Core.mempty

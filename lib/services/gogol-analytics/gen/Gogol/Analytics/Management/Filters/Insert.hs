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
-- Module      : Gogol.Analytics.Management.Filters.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.insert@.
module Gogol.Analytics.Management.Filters.Insert
  ( -- * Resource
    AnalyticsManagementFiltersInsertResource,

    -- ** Constructing a Request
    AnalyticsManagementFiltersInsert (..),
    newAnalyticsManagementFiltersInsert,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.filters.insert@ method which the
-- 'AnalyticsManagementFiltersInsert' request conforms to.
type AnalyticsManagementFiltersInsertResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "filters"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Filter
    Core.:> Core.Post '[Core.JSON] Filter

-- | Create a new filter.
--
-- /See:/ 'newAnalyticsManagementFiltersInsert' smart constructor.
data AnalyticsManagementFiltersInsert = AnalyticsManagementFiltersInsert
  { -- | Account ID to create filter for.
    accountId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Filter
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersInsert' with the minimum fields required to make a request.
newAnalyticsManagementFiltersInsert ::
  -- |  Account ID to create filter for. See 'accountId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Filter ->
  AnalyticsManagementFiltersInsert
newAnalyticsManagementFiltersInsert accountId payload =
  AnalyticsManagementFiltersInsert
    { accountId = accountId,
      payload = payload
    }

instance Core.GoogleRequest AnalyticsManagementFiltersInsert where
  type Rs AnalyticsManagementFiltersInsert = Filter
  type Scopes AnalyticsManagementFiltersInsert = '[Analytics'Edit]
  requestClient AnalyticsManagementFiltersInsert {..} =
    go accountId (Core.Just Core.AltJSON) payload analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementFiltersInsertResource)
          Core.mempty

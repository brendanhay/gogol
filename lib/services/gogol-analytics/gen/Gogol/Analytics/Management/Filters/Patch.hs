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
-- Module      : Gogol.Analytics.Management.Filters.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing filter. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.patch@.
module Gogol.Analytics.Management.Filters.Patch
  ( -- * Resource
    AnalyticsManagementFiltersPatchResource,

    -- ** Constructing a Request
    AnalyticsManagementFiltersPatch (..),
    newAnalyticsManagementFiltersPatch,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.filters.patch@ method which the
-- 'AnalyticsManagementFiltersPatch' request conforms to.
type AnalyticsManagementFiltersPatchResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "filters"
    Core.:> Core.Capture "filterId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Filter
    Core.:> Core.Patch '[Core.JSON] Filter

-- | Updates an existing filter. This method supports patch semantics.
--
-- /See:/ 'newAnalyticsManagementFiltersPatch' smart constructor.
data AnalyticsManagementFiltersPatch = AnalyticsManagementFiltersPatch
  { -- | Account ID to which the filter belongs.
    accountId :: Core.Text,
    -- | ID of the filter to be updated.
    filterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Filter
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementFiltersPatch' with the minimum fields required to make a request.
newAnalyticsManagementFiltersPatch ::
  -- |  Account ID to which the filter belongs. See 'accountId'.
  Core.Text ->
  -- |  ID of the filter to be updated. See 'filterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Filter ->
  AnalyticsManagementFiltersPatch
newAnalyticsManagementFiltersPatch accountId filterId payload =
  AnalyticsManagementFiltersPatch
    { accountId = accountId,
      filterId = filterId,
      payload = payload
    }

instance Core.GoogleRequest AnalyticsManagementFiltersPatch where
  type Rs AnalyticsManagementFiltersPatch = Filter
  type Scopes AnalyticsManagementFiltersPatch = '[Analytics'Edit]
  requestClient AnalyticsManagementFiltersPatch {..} =
    go
      accountId
      filterId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AnalyticsManagementFiltersPatchResource)
          Core.mempty

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
-- Module      : Gogol.Analytics.Management.AccountUserLinks.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.delete@.
module Gogol.Analytics.Management.AccountUserLinks.Delete
  ( -- * Resource
    AnalyticsManagementAccountUserLinksDeleteResource,

    -- ** Constructing a Request
    AnalyticsManagementAccountUserLinksDelete (..),
    newAnalyticsManagementAccountUserLinksDelete,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.accountUserLinks.delete@ method which the
-- 'AnalyticsManagementAccountUserLinksDelete' request conforms to.
type AnalyticsManagementAccountUserLinksDeleteResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.Capture "linkId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes a user from the given account.
--
-- /See:/ 'newAnalyticsManagementAccountUserLinksDelete' smart constructor.
data AnalyticsManagementAccountUserLinksDelete = AnalyticsManagementAccountUserLinksDelete
  { -- | Account ID to delete the user link for.
    accountId :: Core.Text,
    -- | Link ID to delete the user link for.
    linkId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementAccountUserLinksDelete' with the minimum fields required to make a request.
newAnalyticsManagementAccountUserLinksDelete ::
  -- |  Account ID to delete the user link for. See 'accountId'.
  Core.Text ->
  -- |  Link ID to delete the user link for. See 'linkId'.
  Core.Text ->
  AnalyticsManagementAccountUserLinksDelete
newAnalyticsManagementAccountUserLinksDelete accountId linkId =
  AnalyticsManagementAccountUserLinksDelete
    { accountId = accountId,
      linkId = linkId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementAccountUserLinksDelete
  where
  type Rs AnalyticsManagementAccountUserLinksDelete = ()
  type
    Scopes AnalyticsManagementAccountUserLinksDelete =
      '[Analytics'Manage'Users]
  requestClient AnalyticsManagementAccountUserLinksDelete {..} =
    go accountId linkId (Core.Just Core.AltJSON) analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementAccountUserLinksDeleteResource
          )
          Core.mempty

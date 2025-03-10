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
-- Module      : Gogol.Analytics.Management.AccountUserLinks.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates permissions for an existing user on the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.update@.
module Gogol.Analytics.Management.AccountUserLinks.Update
  ( -- * Resource
    AnalyticsManagementAccountUserLinksUpdateResource,

    -- ** Constructing a Request
    AnalyticsManagementAccountUserLinksUpdate (..),
    newAnalyticsManagementAccountUserLinksUpdate,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.accountUserLinks.update@ method which the
-- 'AnalyticsManagementAccountUserLinksUpdate' request conforms to.
type AnalyticsManagementAccountUserLinksUpdateResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.Capture "linkId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EntityUserLink
    Core.:> Core.Put '[Core.JSON] EntityUserLink

-- | Updates permissions for an existing user on the given account.
--
-- /See:/ 'newAnalyticsManagementAccountUserLinksUpdate' smart constructor.
data AnalyticsManagementAccountUserLinksUpdate = AnalyticsManagementAccountUserLinksUpdate
  { -- | Account ID to update the account-user link for.
    accountId :: Core.Text,
    -- | Link ID to update the account-user link for.
    linkId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EntityUserLink
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementAccountUserLinksUpdate' with the minimum fields required to make a request.
newAnalyticsManagementAccountUserLinksUpdate ::
  -- |  Account ID to update the account-user link for. See 'accountId'.
  Core.Text ->
  -- |  Link ID to update the account-user link for. See 'linkId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EntityUserLink ->
  AnalyticsManagementAccountUserLinksUpdate
newAnalyticsManagementAccountUserLinksUpdate
  accountId
  linkId
  payload =
    AnalyticsManagementAccountUserLinksUpdate
      { accountId = accountId,
        linkId = linkId,
        payload = payload
      }

instance
  Core.GoogleRequest
    AnalyticsManagementAccountUserLinksUpdate
  where
  type Rs AnalyticsManagementAccountUserLinksUpdate = EntityUserLink
  type
    Scopes AnalyticsManagementAccountUserLinksUpdate =
      '[Analytics'Manage'Users]
  requestClient AnalyticsManagementAccountUserLinksUpdate {..} =
    go
      accountId
      linkId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementAccountUserLinksUpdateResource
          )
          Core.mempty

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
-- Module      : Gogol.Analytics.Management.ProfileUserLinks.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates permissions for an existing user on the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.update@.
module Gogol.Analytics.Management.ProfileUserLinks.Update
  ( -- * Resource
    AnalyticsManagementProfileUserLinksUpdateResource,

    -- ** Constructing a Request
    AnalyticsManagementProfileUserLinksUpdate (..),
    newAnalyticsManagementProfileUserLinksUpdate,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.profileUserLinks.update@ method which the
-- 'AnalyticsManagementProfileUserLinksUpdate' request conforms to.
type AnalyticsManagementProfileUserLinksUpdateResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> "entityUserLinks"
    Core.:> Core.Capture "linkId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EntityUserLink
    Core.:> Core.Put '[Core.JSON] EntityUserLink

-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ 'newAnalyticsManagementProfileUserLinksUpdate' smart constructor.
data AnalyticsManagementProfileUserLinksUpdate = AnalyticsManagementProfileUserLinksUpdate
  { -- | Account ID to update the user link for.
    accountId :: Core.Text,
    -- | Link ID to update the user link for.
    linkId :: Core.Text,
    -- | Multipart request metadata.
    payload :: EntityUserLink,
    -- | View (Profile ID) to update the user link for.
    profileId :: Core.Text,
    -- | Web Property ID to update the user link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileUserLinksUpdate' with the minimum fields required to make a request.
newAnalyticsManagementProfileUserLinksUpdate ::
  -- |  Account ID to update the user link for. See 'accountId'.
  Core.Text ->
  -- |  Link ID to update the user link for. See 'linkId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EntityUserLink ->
  -- |  View (Profile ID) to update the user link for. See 'profileId'.
  Core.Text ->
  -- |  Web Property ID to update the user link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfileUserLinksUpdate
newAnalyticsManagementProfileUserLinksUpdate
  accountId
  linkId
  payload
  profileId
  webPropertyId =
    AnalyticsManagementProfileUserLinksUpdate
      { accountId = accountId,
        linkId = linkId,
        payload = payload,
        profileId = profileId,
        webPropertyId = webPropertyId
      }

instance
  Core.GoogleRequest
    AnalyticsManagementProfileUserLinksUpdate
  where
  type Rs AnalyticsManagementProfileUserLinksUpdate = EntityUserLink
  type
    Scopes AnalyticsManagementProfileUserLinksUpdate =
      '[Analytics'Manage'Users]
  requestClient AnalyticsManagementProfileUserLinksUpdate {..} =
    go
      accountId
      webPropertyId
      profileId
      linkId
      (Core.Just Core.AltJSON)
      payload
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementProfileUserLinksUpdateResource
          )
          Core.mempty

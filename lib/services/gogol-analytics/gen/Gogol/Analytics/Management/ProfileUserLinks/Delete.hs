{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Analytics.Management.ProfileUserLinks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.delete@.
module Gogol.Analytics.Management.ProfileUserLinks.Delete
  ( -- * Resource
    AnalyticsManagementProfileUserLinksDeleteResource,

    -- ** Constructing a Request
    newAnalyticsManagementProfileUserLinksDelete,
    AnalyticsManagementProfileUserLinksDelete,
  )
where

import Gogol.Analytics.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @analytics.management.profileUserLinks.delete@ method which the
-- 'AnalyticsManagementProfileUserLinksDelete' request conforms to.
type AnalyticsManagementProfileUserLinksDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes a user from the given view (profile).
--
-- /See:/ 'newAnalyticsManagementProfileUserLinksDelete' smart constructor.
data AnalyticsManagementProfileUserLinksDelete = AnalyticsManagementProfileUserLinksDelete
  { -- | Account ID to delete the user link for.
    accountId :: Core.Text,
    -- | Link ID to delete the user link for.
    linkId :: Core.Text,
    -- | View (Profile) ID to delete the user link for.
    profileId :: Core.Text,
    -- | Web Property ID to delete the user link for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileUserLinksDelete' with the minimum fields required to make a request.
newAnalyticsManagementProfileUserLinksDelete ::
  -- |  Account ID to delete the user link for. See 'accountId'.
  Core.Text ->
  -- |  Link ID to delete the user link for. See 'linkId'.
  Core.Text ->
  -- |  View (Profile) ID to delete the user link for. See 'profileId'.
  Core.Text ->
  -- |  Web Property ID to delete the user link for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfileUserLinksDelete
newAnalyticsManagementProfileUserLinksDelete accountId linkId profileId webPropertyId =
  AnalyticsManagementProfileUserLinksDelete
    { accountId = accountId,
      linkId = linkId,
      profileId = profileId,
      webPropertyId = webPropertyId
    }

instance
  Core.GoogleRequest
    AnalyticsManagementProfileUserLinksDelete
  where
  type
    Rs AnalyticsManagementProfileUserLinksDelete =
      ()
  type
    Scopes AnalyticsManagementProfileUserLinksDelete =
      '["https://www.googleapis.com/auth/analytics.manage.users"]
  requestClient
    AnalyticsManagementProfileUserLinksDelete {..} =
      go
        accountId
        webPropertyId
        profileId
        linkId
        (Core.Just Core.AltJSON)
        analyticsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AnalyticsManagementProfileUserLinksDeleteResource
            )
            Core.mempty

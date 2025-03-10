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
-- Module      : Gogol.Analytics.Management.Profiles.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.delete@.
module Gogol.Analytics.Management.Profiles.Delete
  ( -- * Resource
    AnalyticsManagementProfilesDeleteResource,

    -- ** Constructing a Request
    AnalyticsManagementProfilesDelete (..),
    newAnalyticsManagementProfilesDelete,
  )
where

import Gogol.Analytics.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @analytics.management.profiles.delete@ method which the
-- 'AnalyticsManagementProfilesDelete' request conforms to.
type AnalyticsManagementProfilesDeleteResource =
  "analytics"
    Core.:> "v3"
    Core.:> "management"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "webproperties"
    Core.:> Core.Capture "webPropertyId" Core.Text
    Core.:> "profiles"
    Core.:> Core.Capture "profileId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a view (profile).
--
-- /See:/ 'newAnalyticsManagementProfilesDelete' smart constructor.
data AnalyticsManagementProfilesDelete = AnalyticsManagementProfilesDelete
  { -- | Account ID to delete the view (profile) for.
    accountId :: Core.Text,
    -- | ID of the view (profile) to be deleted.
    profileId :: Core.Text,
    -- | Web property ID to delete the view (profile) for.
    webPropertyId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfilesDelete' with the minimum fields required to make a request.
newAnalyticsManagementProfilesDelete ::
  -- |  Account ID to delete the view (profile) for. See 'accountId'.
  Core.Text ->
  -- |  ID of the view (profile) to be deleted. See 'profileId'.
  Core.Text ->
  -- |  Web property ID to delete the view (profile) for. See 'webPropertyId'.
  Core.Text ->
  AnalyticsManagementProfilesDelete
newAnalyticsManagementProfilesDelete
  accountId
  profileId
  webPropertyId =
    AnalyticsManagementProfilesDelete
      { accountId = accountId,
        profileId = profileId,
        webPropertyId = webPropertyId
      }

instance Core.GoogleRequest AnalyticsManagementProfilesDelete where
  type Rs AnalyticsManagementProfilesDelete = ()
  type Scopes AnalyticsManagementProfilesDelete = '[Analytics'Edit]
  requestClient AnalyticsManagementProfilesDelete {..} =
    go
      accountId
      webPropertyId
      profileId
      (Core.Just Core.AltJSON)
      analyticsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AnalyticsManagementProfilesDeleteResource
          )
          Core.mempty

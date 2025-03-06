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
-- Module      : Gogol.GroupsSettings.Groups.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @groupsSettings.groups.update@.
module Gogol.GroupsSettings.Groups.Update
  ( -- * Resource
    GroupsSettingsGroupsUpdateResource,

    -- ** Constructing a Request
    GroupsSettingsGroupsUpdate (..),
    newGroupsSettingsGroupsUpdate,
  )
where

import Gogol.GroupsSettings.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @groupsSettings.groups.update@ method which the
-- 'GroupsSettingsGroupsUpdate' request conforms to.
type GroupsSettingsGroupsUpdateResource =
  "groups"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupUniqueId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Groups
    Core.:> Core.Put '[Core.JSON] Groups

-- | Updates an existing resource.
--
-- /See:/ 'newGroupsSettingsGroupsUpdate' smart constructor.
data GroupsSettingsGroupsUpdate = GroupsSettingsGroupsUpdate
  { -- | The group\'s email address.
    groupUniqueId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Groups
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupsSettingsGroupsUpdate' with the minimum fields required to make a request.
newGroupsSettingsGroupsUpdate ::
  -- |  The group\'s email address. See 'groupUniqueId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Groups ->
  GroupsSettingsGroupsUpdate
newGroupsSettingsGroupsUpdate groupUniqueId payload =
  GroupsSettingsGroupsUpdate
    { groupUniqueId = groupUniqueId,
      payload = payload
    }

instance Core.GoogleRequest GroupsSettingsGroupsUpdate where
  type Rs GroupsSettingsGroupsUpdate = Groups
  type Scopes GroupsSettingsGroupsUpdate = '[Apps'Groups'Settings]
  requestClient GroupsSettingsGroupsUpdate {..} =
    go
      groupUniqueId
      (Core.Just Core.AltJSON)
      payload
      groupsSettingsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy GroupsSettingsGroupsUpdateResource)
          Core.mempty

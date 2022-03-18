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
-- Module      : Network.Google.GroupsSettings.Groups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one resource by id.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @groupsSettings.groups.get@.
module Network.Google.GroupsSettings.Groups.Get
  ( -- * Resource
    GroupsSettingsGroupsGetResource,

    -- ** Constructing a Request
    newGroupsSettingsGroupsGet,
    GroupsSettingsGroupsGet,
  )
where

import Network.Google.GroupsSettings.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @groupsSettings.groups.get@ method which the
-- 'GroupsSettingsGroupsGet' request conforms to.
type GroupsSettingsGroupsGetResource =
  "groups"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupUniqueId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Groups

-- | Gets one resource by id.
--
-- /See:/ 'newGroupsSettingsGroupsGet' smart constructor.
newtype GroupsSettingsGroupsGet = GroupsSettingsGroupsGet
  { -- | The group\'s email address.
    groupUniqueId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupsSettingsGroupsGet' with the minimum fields required to make a request.
newGroupsSettingsGroupsGet ::
  -- |  The group\'s email address. See 'groupUniqueId'.
  Core.Text ->
  GroupsSettingsGroupsGet
newGroupsSettingsGroupsGet groupUniqueId =
  GroupsSettingsGroupsGet {groupUniqueId = groupUniqueId}

instance Core.GoogleRequest GroupsSettingsGroupsGet where
  type Rs GroupsSettingsGroupsGet = Groups
  type
    Scopes GroupsSettingsGroupsGet =
      '["https://www.googleapis.com/auth/apps.groups.settings"]
  requestClient GroupsSettingsGroupsGet {..} =
    go
      groupUniqueId
      (Core.Just Core.AltJSON)
      groupsSettingsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GroupsSettingsGroupsGetResource
          )
          Core.mempty

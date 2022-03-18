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
-- Module      : Gogol.GroupsSettings.Groups.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @groupsSettings.groups.patch@.
module Gogol.GroupsSettings.Groups.Patch
  ( -- * Resource
    GroupsSettingsGroupsPatchResource,

    -- ** Constructing a Request
    newGroupsSettingsGroupsPatch,
    GroupsSettingsGroupsPatch,
  )
where

import Gogol.GroupsSettings.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @groupsSettings.groups.patch@ method which the
-- 'GroupsSettingsGroupsPatch' request conforms to.
type GroupsSettingsGroupsPatchResource =
  "groups"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupUniqueId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Groups
    Core.:> Core.Patch '[Core.JSON] Groups

-- | Updates an existing resource. This method supports patch semantics.
--
-- /See:/ 'newGroupsSettingsGroupsPatch' smart constructor.
data GroupsSettingsGroupsPatch = GroupsSettingsGroupsPatch
  { -- | The group\'s email address.
    groupUniqueId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Groups
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupsSettingsGroupsPatch' with the minimum fields required to make a request.
newGroupsSettingsGroupsPatch ::
  -- |  The group\'s email address. See 'groupUniqueId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Groups ->
  GroupsSettingsGroupsPatch
newGroupsSettingsGroupsPatch groupUniqueId payload =
  GroupsSettingsGroupsPatch {groupUniqueId = groupUniqueId, payload = payload}

instance Core.GoogleRequest GroupsSettingsGroupsPatch where
  type Rs GroupsSettingsGroupsPatch = Groups
  type
    Scopes GroupsSettingsGroupsPatch =
      '["https://www.googleapis.com/auth/apps.groups.settings"]
  requestClient GroupsSettingsGroupsPatch {..} =
    go
      groupUniqueId
      (Core.Just Core.AltJSON)
      payload
      groupsSettingsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy GroupsSettingsGroupsPatchResource
          )
          Core.mempty

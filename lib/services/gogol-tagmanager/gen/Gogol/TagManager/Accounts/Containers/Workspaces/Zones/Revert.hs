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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Revert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.revert@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Revert
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesZonesRevertResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesZonesRevert (..),
    newTagManagerAccountsContainersWorkspacesZonesRevert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.revert@ method which the
-- 'TagManagerAccountsContainersWorkspacesZonesRevert' request conforms to.
type TagManagerAccountsContainersWorkspacesZonesRevertResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "revert" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] RevertZoneResponse

-- | Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesZonesRevert' smart constructor.
data TagManagerAccountsContainersWorkspacesZonesRevert = TagManagerAccountsContainersWorkspacesZonesRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the zone in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesZonesRevert' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesZonesRevert ::
  -- |  GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesZonesRevert
newTagManagerAccountsContainersWorkspacesZonesRevert path =
  TagManagerAccountsContainersWorkspacesZonesRevert
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fingerprint = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesZonesRevert
  where
  type
    Rs TagManagerAccountsContainersWorkspacesZonesRevert =
      RevertZoneResponse
  type
    Scopes TagManagerAccountsContainersWorkspacesZonesRevert =
      '[Tagmanager'Edit'Containers]
  requestClient TagManagerAccountsContainersWorkspacesZonesRevert {..} =
    go
      path
      xgafv
      accessToken
      callback
      fingerprint
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                TagManagerAccountsContainersWorkspacesZonesRevertResource
          )
          Core.mempty

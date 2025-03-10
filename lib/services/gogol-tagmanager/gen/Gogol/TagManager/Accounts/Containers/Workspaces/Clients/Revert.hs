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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Revert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Client in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.clients.revert@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Revert
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesClientsRevertResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesClientsRevert (..),
    newTagManagerAccountsContainersWorkspacesClientsRevert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.clients.revert@ method which the
-- 'TagManagerAccountsContainersWorkspacesClientsRevert' request conforms to.
type TagManagerAccountsContainersWorkspacesClientsRevertResource =
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
    Core.:> Core.Post '[Core.JSON] RevertClientResponse

-- | Reverts changes to a GTM Client in a GTM Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesClientsRevert' smart constructor.
data TagManagerAccountsContainersWorkspacesClientsRevert = TagManagerAccountsContainersWorkspacesClientsRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the client in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Client\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/clients\/{client/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesClientsRevert' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesClientsRevert ::
  -- |  GTM Client\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/clients\/{client/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesClientsRevert
newTagManagerAccountsContainersWorkspacesClientsRevert path =
  TagManagerAccountsContainersWorkspacesClientsRevert
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
    TagManagerAccountsContainersWorkspacesClientsRevert
  where
  type
    Rs TagManagerAccountsContainersWorkspacesClientsRevert =
      RevertClientResponse
  type
    Scopes TagManagerAccountsContainersWorkspacesClientsRevert =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesClientsRevert {..} =
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
                  TagManagerAccountsContainersWorkspacesClientsRevertResource
            )
            Core.mempty

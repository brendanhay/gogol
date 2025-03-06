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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Client.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.clients.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Clients.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesClientsUpdateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesClientsUpdate (..),
    newTagManagerAccountsContainersWorkspacesClientsUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.clients.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesClientsUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesClientsUpdateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Client
    Core.:> Core.Put '[Core.JSON] Client

-- | Updates a GTM Client.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesClientsUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesClientsUpdate = TagManagerAccountsContainersWorkspacesClientsUpdate
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
    -- | Multipart request metadata.
    payload :: Client,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesClientsUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesClientsUpdate ::
  -- |  GTM Client\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/clients\/{client/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Client ->
  TagManagerAccountsContainersWorkspacesClientsUpdate
newTagManagerAccountsContainersWorkspacesClientsUpdate path payload =
  TagManagerAccountsContainersWorkspacesClientsUpdate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fingerprint = Core.Nothing,
      path = path,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesClientsUpdate
  where
  type
    Rs TagManagerAccountsContainersWorkspacesClientsUpdate =
      Client
  type
    Scopes TagManagerAccountsContainersWorkspacesClientsUpdate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesClientsUpdate {..} =
      go
        path
        xgafv
        accessToken
        callback
        fingerprint
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesClientsUpdateResource
            )
            Core.mempty

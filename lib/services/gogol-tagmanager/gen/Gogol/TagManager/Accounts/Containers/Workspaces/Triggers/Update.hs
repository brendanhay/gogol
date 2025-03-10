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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.triggers.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Triggers.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesTriggersUpdateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesTriggersUpdate (..),
    newTagManagerAccountsContainersWorkspacesTriggersUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.triggers.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesTriggersUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesTriggersUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Trigger
    Core.:> Core.Put '[Core.JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTriggersUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesTriggersUpdate = TagManagerAccountsContainersWorkspacesTriggersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the trigger in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Trigger\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/triggers\/{trigger/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Trigger,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTriggersUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTriggersUpdate ::
  -- |  GTM Trigger\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/triggers\/{trigger/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Trigger ->
  TagManagerAccountsContainersWorkspacesTriggersUpdate
newTagManagerAccountsContainersWorkspacesTriggersUpdate
  path
  payload =
    TagManagerAccountsContainersWorkspacesTriggersUpdate
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
    TagManagerAccountsContainersWorkspacesTriggersUpdate
  where
  type
    Rs TagManagerAccountsContainersWorkspacesTriggersUpdate =
      Trigger
  type
    Scopes TagManagerAccountsContainersWorkspacesTriggersUpdate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesTriggersUpdate {..} =
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
                  TagManagerAccountsContainersWorkspacesTriggersUpdateResource
            )
            Core.mempty

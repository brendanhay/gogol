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
-- Module      : Network.Google.TagManager.Accounts.Containers.Workspaces.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.update@.
module Network.Google.TagManager.Accounts.Containers.Workspaces.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesUpdateResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesUpdate,
    TagManagerAccountsContainersWorkspacesUpdate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Workspace
    Core.:> Core.Put '[Core.JSON] Workspace

-- | Updates a Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesUpdate = TagManagerAccountsContainersWorkspacesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the workspace in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Workspace,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesUpdate ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Workspace ->
  TagManagerAccountsContainersWorkspacesUpdate
newTagManagerAccountsContainersWorkspacesUpdate path payload =
  TagManagerAccountsContainersWorkspacesUpdate
    { xgafv = Core.Nothing,
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
    TagManagerAccountsContainersWorkspacesUpdate
  where
  type
    Rs TagManagerAccountsContainersWorkspacesUpdate =
      Workspace
  type
    Scopes
      TagManagerAccountsContainersWorkspacesUpdate =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesUpdate {..} =
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
                  TagManagerAccountsContainersWorkspacesUpdateResource
            )
            Core.mempty

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
-- Module      : Network.Google.TagManager.Accounts.Containers.Workspaces.GetStatus
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds conflicting and modified entities in the workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.getStatus@.
module Network.Google.TagManager.Accounts.Containers.Workspaces.GetStatus
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesGetStatusResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesGetStatus,
    TagManagerAccountsContainersWorkspacesGetStatus,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.getStatus@ method which the
-- 'TagManagerAccountsContainersWorkspacesGetStatus' request conforms to.
type TagManagerAccountsContainersWorkspacesGetStatusResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> "status"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetWorkspaceStatusResponse

-- | Finds conflicting and modified entities in the workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesGetStatus' smart constructor.
data TagManagerAccountsContainersWorkspacesGetStatus = TagManagerAccountsContainersWorkspacesGetStatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesGetStatus' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesGetStatus ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesGetStatus
newTagManagerAccountsContainersWorkspacesGetStatus path =
  TagManagerAccountsContainersWorkspacesGetStatus
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesGetStatus
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesGetStatus =
      GetWorkspaceStatusResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesGetStatus =
      '[ "https://www.googleapis.com/auth/tagmanager.edit.containers",
         "https://www.googleapis.com/auth/tagmanager.readonly"
       ]
  requestClient
    TagManagerAccountsContainersWorkspacesGetStatus {..} =
      go
        path
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesGetStatusResource
            )
            Core.mempty

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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Create_version
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Container Version from the entities present in the workspace, deletes the workspace, and sets the base container version to the newly created version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.create_version@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Create_version
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesCreate_versionResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesCreate_version,
    TagManagerAccountsContainersWorkspacesCreate_version,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.create_version@ method which the
-- 'TagManagerAccountsContainersWorkspacesCreate_version' request conforms to.
type TagManagerAccountsContainersWorkspacesCreate_versionResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "create_version" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              CreateContainerVersionRequestVersionOptions
    Core.:> Core.Post '[Core.JSON] CreateContainerVersionResponse

-- | Creates a Container Version from the entities present in the workspace, deletes the workspace, and sets the base container version to the newly created version.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesCreate_version' smart constructor.
data TagManagerAccountsContainersWorkspacesCreate_version = TagManagerAccountsContainersWorkspacesCreate_version
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateContainerVersionRequestVersionOptions,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesCreate_version' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesCreate_version ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateContainerVersionRequestVersionOptions ->
  TagManagerAccountsContainersWorkspacesCreate_version
newTagManagerAccountsContainersWorkspacesCreate_version path payload =
  TagManagerAccountsContainersWorkspacesCreate_version
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesCreate_version
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesCreate_version =
      CreateContainerVersionResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesCreate_version =
      '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
  requestClient
    TagManagerAccountsContainersWorkspacesCreate_version {..} =
      go
        path
        xgafv
        accessToken
        callback
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
                  TagManagerAccountsContainersWorkspacesCreate_versionResource
            )
            Core.mempty

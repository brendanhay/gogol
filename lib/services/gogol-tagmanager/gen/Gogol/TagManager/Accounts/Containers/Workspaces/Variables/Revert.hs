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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Revert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Variable in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.variables.revert@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Variables.Revert
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesVariablesRevertResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesVariablesRevert (..),
    newTagManagerAccountsContainersWorkspacesVariablesRevert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.variables.revert@ method which the
-- 'TagManagerAccountsContainersWorkspacesVariablesRevert' request conforms to.
type TagManagerAccountsContainersWorkspacesVariablesRevertResource =
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
    Core.:> Core.Post '[Core.JSON] RevertVariableResponse

-- | Reverts changes to a GTM Variable in a GTM Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesVariablesRevert' smart constructor.
data TagManagerAccountsContainersWorkspacesVariablesRevert = TagManagerAccountsContainersWorkspacesVariablesRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the variable in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Variable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/variables\/{variable/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesVariablesRevert' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesVariablesRevert ::
  -- |  GTM Variable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/variables\/{variable/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesVariablesRevert
newTagManagerAccountsContainersWorkspacesVariablesRevert path =
  TagManagerAccountsContainersWorkspacesVariablesRevert
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
    TagManagerAccountsContainersWorkspacesVariablesRevert
  where
  type
    Rs TagManagerAccountsContainersWorkspacesVariablesRevert =
      RevertVariableResponse
  type
    Scopes TagManagerAccountsContainersWorkspacesVariablesRevert =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesVariablesRevert {..} =
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
                  TagManagerAccountsContainersWorkspacesVariablesRevertResource
            )
            Core.mempty

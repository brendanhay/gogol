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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Revert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Built-In Variables in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.revert@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Revert
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevertResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert,
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.revert@ method which the
-- 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert' request conforms to.
type TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevertResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> "built_in_variables:revert"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "type"
              AccountsContainersWorkspacesBuilt_in_variablesRevertType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] RevertBuiltInVariableResponse

-- | Reverts changes to a GTM Built-In Variables in a GTM Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert' smart constructor.
data TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert = TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM BuiltInVariable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/built/in_variables
    path :: Core.Text,
    -- | The type of built-in variable to revert.
    type' ::
      ( Core.Maybe
          AccountsContainersWorkspacesBuilt_in_variablesRevertType
      ),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert ::
  -- |  GTM BuiltInVariable\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/built/in_variables See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert path =
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert =
      RevertBuiltInVariableResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevert {..} =
      go
        path
        xgafv
        accessToken
        callback
        type'
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesBuilt_in_variablesRevertResource
            )
            Core.mempty

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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more GTM Built-In Variables.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.create@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.Create
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreateResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate,
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.create@ method which the
-- 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate' request conforms to.
type TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "built_in_variables"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "type"
              AccountsContainersWorkspacesBuilt_in_variablesCreateType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] CreateBuiltInVariableResponse

-- | Creates one or more GTM Built-In Variables.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate' smart constructor.
data TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate = TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    parent :: Core.Text,
    -- | The types of built-in variables to enable.
    type' ::
      ( Core.Maybe
          [AccountsContainersWorkspacesBuilt_in_variablesCreateType]
      ),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'parent'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate parent =
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate =
      CreateBuiltInVariableResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        (type' Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesBuilt_in_variablesCreateResource
            )
            Core.mempty

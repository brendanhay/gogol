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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the enabled Built-In Variables of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.built_in_variables.list@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Built_in_variables.List
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesListResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesList (..),
    newTagManagerAccountsContainersWorkspacesBuilt_in_variablesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.built_in_variables.list@ method which the
-- 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesList' request conforms to.
type TagManagerAccountsContainersWorkspacesBuilt_in_variablesListResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "built_in_variables"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListEnabledBuiltInVariablesResponse

-- | Lists all the enabled Built-In Variables of a GTM Container.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesBuilt_in_variablesList' smart constructor.
data TagManagerAccountsContainersWorkspacesBuilt_in_variablesList = TagManagerAccountsContainersWorkspacesBuilt_in_variablesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesBuilt_in_variablesList' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesList ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'parent'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesBuilt_in_variablesList
newTagManagerAccountsContainersWorkspacesBuilt_in_variablesList
  parent =
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        pageToken = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesList
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesList =
      ListEnabledBuiltInVariablesResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesBuilt_in_variablesList =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient
    TagManagerAccountsContainersWorkspacesBuilt_in_variablesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesBuilt_in_variablesListResource
            )
            Core.mempty

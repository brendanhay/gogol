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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Entities
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all entities in a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.entities@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Entities
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesFoldersEntitiesResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesFoldersEntities (..),
    newTagManagerAccountsContainersWorkspacesFoldersEntities,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.entities@ method which the
-- 'TagManagerAccountsContainersWorkspacesFoldersEntities' request conforms to.
type TagManagerAccountsContainersWorkspacesFoldersEntitiesResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "entities" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] FolderEntities

-- | List all entities in a GTM Folder.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesFoldersEntities' smart constructor.
data TagManagerAccountsContainersWorkspacesFoldersEntities = TagManagerAccountsContainersWorkspacesFoldersEntities
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesFoldersEntities' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesFoldersEntities ::
  -- |  GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesFoldersEntities
newTagManagerAccountsContainersWorkspacesFoldersEntities path =
  TagManagerAccountsContainersWorkspacesFoldersEntities
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageToken = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesFoldersEntities
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesFoldersEntities =
      FolderEntities
  type
    Scopes
      TagManagerAccountsContainersWorkspacesFoldersEntities =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient
    TagManagerAccountsContainersWorkspacesFoldersEntities {..} =
      go
        path
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
                  TagManagerAccountsContainersWorkspacesFoldersEntitiesResource
            )
            Core.mempty

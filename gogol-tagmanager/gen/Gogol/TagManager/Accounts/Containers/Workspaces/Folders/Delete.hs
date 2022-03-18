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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.delete@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Delete
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesFoldersDeleteResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesFoldersDelete,
    TagManagerAccountsContainersWorkspacesFoldersDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.delete@ method which the
-- 'TagManagerAccountsContainersWorkspacesFoldersDelete' request conforms to.
type TagManagerAccountsContainersWorkspacesFoldersDeleteResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a GTM Folder.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesFoldersDelete' smart constructor.
data TagManagerAccountsContainersWorkspacesFoldersDelete = TagManagerAccountsContainersWorkspacesFoldersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesFoldersDelete' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesFoldersDelete ::
  -- |  GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesFoldersDelete
newTagManagerAccountsContainersWorkspacesFoldersDelete path =
  TagManagerAccountsContainersWorkspacesFoldersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesFoldersDelete
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesFoldersDelete =
      ()
  type
    Scopes
      TagManagerAccountsContainersWorkspacesFoldersDelete =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesFoldersDelete {..} =
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
                  TagManagerAccountsContainersWorkspacesFoldersDeleteResource
            )
            Core.mempty

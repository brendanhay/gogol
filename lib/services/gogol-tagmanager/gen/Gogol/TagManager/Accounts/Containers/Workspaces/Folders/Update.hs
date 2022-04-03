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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.folders.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Folders.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesFoldersUpdateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesFoldersUpdate (..),
    newTagManagerAccountsContainersWorkspacesFoldersUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.folders.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesFoldersUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesFoldersUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Folder
    Core.:> Core.Put '[Core.JSON] Folder

-- | Updates a GTM Folder.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesFoldersUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesFoldersUpdate = TagManagerAccountsContainersWorkspacesFoldersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the folder in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Folder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesFoldersUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesFoldersUpdate ::
  -- |  GTM Folder\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/folders\/{folder/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Folder ->
  TagManagerAccountsContainersWorkspacesFoldersUpdate
newTagManagerAccountsContainersWorkspacesFoldersUpdate path payload =
  TagManagerAccountsContainersWorkspacesFoldersUpdate
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
    TagManagerAccountsContainersWorkspacesFoldersUpdate
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesFoldersUpdate =
      Folder
  type
    Scopes
      TagManagerAccountsContainersWorkspacesFoldersUpdate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesFoldersUpdate {..} =
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
                  TagManagerAccountsContainersWorkspacesFoldersUpdateResource
            )
            Core.mempty

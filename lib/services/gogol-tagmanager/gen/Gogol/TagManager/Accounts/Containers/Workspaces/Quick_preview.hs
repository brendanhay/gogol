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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Quick_preview
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Quick previews a workspace by creating a fake container version from all entities in the provided workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.quick_preview@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Quick_preview
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesQuick_previewResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesQuick_preview (..),
    newTagManagerAccountsContainersWorkspacesQuick_preview,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.quick_preview@ method which the
-- 'TagManagerAccountsContainersWorkspacesQuick_preview' request conforms to.
type TagManagerAccountsContainersWorkspacesQuick_previewResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "quick_preview" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] QuickPreviewResponse

-- | Quick previews a workspace by creating a fake container version from all entities in the provided workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesQuick_preview' smart constructor.
data TagManagerAccountsContainersWorkspacesQuick_preview = TagManagerAccountsContainersWorkspacesQuick_preview
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

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesQuick_preview' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesQuick_preview ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesQuick_preview
newTagManagerAccountsContainersWorkspacesQuick_preview path =
  TagManagerAccountsContainersWorkspacesQuick_preview
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesQuick_preview
  where
  type
    Rs TagManagerAccountsContainersWorkspacesQuick_preview =
      QuickPreviewResponse
  type
    Scopes TagManagerAccountsContainersWorkspacesQuick_preview =
      '[Tagmanager'Edit'Containerversions]
  requestClient
    TagManagerAccountsContainersWorkspacesQuick_preview {..} =
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
                  TagManagerAccountsContainersWorkspacesQuick_previewResource
            )
            Core.mempty

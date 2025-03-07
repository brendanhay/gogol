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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Transformation.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.transformations.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Transformations.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesTransformationsUpdateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesTransformationsUpdate (..),
    newTagManagerAccountsContainersWorkspacesTransformationsUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.transformations.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesTransformationsUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesTransformationsUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Transformation
    Core.:> Core.Put '[Core.JSON] Transformation

-- | Updates a GTM Transformation.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTransformationsUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesTransformationsUpdate = TagManagerAccountsContainersWorkspacesTransformationsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the transformation in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Transformation\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/transformations\/{transformation/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Transformation,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTransformationsUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTransformationsUpdate ::
  -- |  GTM Transformation\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/transformations\/{transformation/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Transformation ->
  TagManagerAccountsContainersWorkspacesTransformationsUpdate
newTagManagerAccountsContainersWorkspacesTransformationsUpdate
  path
  payload =
    TagManagerAccountsContainersWorkspacesTransformationsUpdate
      { xgafv =
          Core.Nothing,
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
    TagManagerAccountsContainersWorkspacesTransformationsUpdate
  where
  type
    Rs TagManagerAccountsContainersWorkspacesTransformationsUpdate =
      Transformation
  type
    Scopes
      TagManagerAccountsContainersWorkspacesTransformationsUpdate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesTransformationsUpdate {..} =
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
                  TagManagerAccountsContainersWorkspacesTransformationsUpdateResource
            )
            Core.mempty

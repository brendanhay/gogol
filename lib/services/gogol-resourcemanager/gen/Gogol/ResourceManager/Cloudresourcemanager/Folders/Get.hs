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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format @folders\/{folder_id}@ (for example, @folders\/1234@). The caller must have @resourcemanager.folders.get@ permission on the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.get@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.Get
  ( -- * Resource
    CloudresourcemanagerFoldersGetResource,

    -- ** Constructing a Request
    CloudresourcemanagerFoldersGet (..),
    newCloudresourcemanagerFoldersGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.get@ method which the
-- 'CloudresourcemanagerFoldersGet' request conforms to.
type CloudresourcemanagerFoldersGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Folder

-- | Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format @folders\/{folder_id}@ (for example, @folders\/1234@). The caller must have @resourcemanager.folders.get@ permission on the identified folder.
--
-- /See:/ 'newCloudresourcemanagerFoldersGet' smart constructor.
data CloudresourcemanagerFoldersGet = CloudresourcemanagerFoldersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the folder to retrieve. Must be of the form @folders\/{folder_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersGet' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersGet ::
  -- |  Required. The resource name of the folder to retrieve. Must be of the form @folders\/{folder_id}@. See 'name'.
  Core.Text ->
  CloudresourcemanagerFoldersGet
newCloudresourcemanagerFoldersGet name =
  CloudresourcemanagerFoldersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerFoldersGet where
  type Rs CloudresourcemanagerFoldersGet = Folder
  type
    Scopes CloudresourcemanagerFoldersGet =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient CloudresourcemanagerFoldersGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudresourcemanagerFoldersGetResource)
          Core.mempty

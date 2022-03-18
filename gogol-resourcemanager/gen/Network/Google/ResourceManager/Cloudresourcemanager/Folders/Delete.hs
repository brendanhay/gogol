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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.Folders.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests deletion of a folder. The folder is moved into the DELETE/REQUESTED state immediately, and is deleted approximately 30 days later. This method may only be called on an empty folder, where a folder is empty if it doesn\'t contain any folders or projects in the ACTIVE state. If called on a folder in DELETE/REQUESTED state the operation will result in a no-op success. The caller must have @resourcemanager.folders.delete@ permission on the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.delete@.
module Network.Google.ResourceManager.Cloudresourcemanager.Folders.Delete
  ( -- * Resource
    CloudresourcemanagerFoldersDeleteResource,

    -- ** Constructing a Request
    newCloudresourcemanagerFoldersDelete,
    CloudresourcemanagerFoldersDelete,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.delete@ method which the
-- 'CloudresourcemanagerFoldersDelete' request conforms to.
type CloudresourcemanagerFoldersDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Requests deletion of a folder. The folder is moved into the DELETE/REQUESTED state immediately, and is deleted approximately 30 days later. This method may only be called on an empty folder, where a folder is empty if it doesn\'t contain any folders or projects in the ACTIVE state. If called on a folder in DELETE/REQUESTED state the operation will result in a no-op success. The caller must have @resourcemanager.folders.delete@ permission on the identified folder.
--
-- /See:/ 'newCloudresourcemanagerFoldersDelete' smart constructor.
data CloudresourcemanagerFoldersDelete = CloudresourcemanagerFoldersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the folder to be deleted. Must be of the form @folders\/{folder_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersDelete' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersDelete ::
  -- |  Required. The resource name of the folder to be deleted. Must be of the form @folders\/{folder_id}@. See 'name'.
  Core.Text ->
  CloudresourcemanagerFoldersDelete
newCloudresourcemanagerFoldersDelete name =
  CloudresourcemanagerFoldersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerFoldersDelete
  where
  type Rs CloudresourcemanagerFoldersDelete = Operation
  type
    Scopes CloudresourcemanagerFoldersDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerFoldersDelete {..} =
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
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerFoldersDeleteResource
          )
          Core.mempty

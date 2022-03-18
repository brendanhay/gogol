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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a folder in the resource hierarchy. Returns an @Operation@ which can be used to track the progress of the folder creation workflow. Upon success, the @Operation.response@ field will be populated with the created Folder. In order to succeed, the addition of this new folder must not violate the folder naming, height, or fanout constraints. + The folder\'s @display_name@ must be distinct from all other folders that share its parent. + The addition of the folder must not cause the active folder hierarchy to exceed a height of 10. Note, the full active + deleted folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the folder must not cause the total number of folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the @CreateFolder@ request, with status code @FAILED_PRECONDITION@ and an error description. Other folder constraint
-- violations will be communicated in the @Operation@, with the specific @PreconditionFailure@ returned in the details list in the @Operation.error@ field. The caller must have @resourcemanager.folders.create@ permission on the identified parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.create@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.Create
  ( -- * Resource
    CloudresourcemanagerFoldersCreateResource,

    -- ** Constructing a Request
    newCloudresourcemanagerFoldersCreate,
    CloudresourcemanagerFoldersCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.create@ method which the
-- 'CloudresourcemanagerFoldersCreate' request conforms to.
type CloudresourcemanagerFoldersCreateResource =
  "v3"
    Core.:> "folders"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Folder
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a folder in the resource hierarchy. Returns an @Operation@ which can be used to track the progress of the folder creation workflow. Upon success, the @Operation.response@ field will be populated with the created Folder. In order to succeed, the addition of this new folder must not violate the folder naming, height, or fanout constraints. + The folder\'s @display_name@ must be distinct from all other folders that share its parent. + The addition of the folder must not cause the active folder hierarchy to exceed a height of 10. Note, the full active + deleted folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the folder must not cause the total number of folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the @CreateFolder@ request, with status code @FAILED_PRECONDITION@ and an error description. Other folder constraint
-- violations will be communicated in the @Operation@, with the specific @PreconditionFailure@ returned in the details list in the @Operation.error@ field. The caller must have @resourcemanager.folders.create@ permission on the identified parent.
--
-- /See:/ 'newCloudresourcemanagerFoldersCreate' smart constructor.
data CloudresourcemanagerFoldersCreate = CloudresourcemanagerFoldersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Folder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersCreate' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Folder ->
  CloudresourcemanagerFoldersCreate
newCloudresourcemanagerFoldersCreate payload =
  CloudresourcemanagerFoldersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerFoldersCreate
  where
  type Rs CloudresourcemanagerFoldersCreate = Operation
  type
    Scopes CloudresourcemanagerFoldersCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerFoldersCreate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerFoldersCreateResource
          )
          Core.mempty

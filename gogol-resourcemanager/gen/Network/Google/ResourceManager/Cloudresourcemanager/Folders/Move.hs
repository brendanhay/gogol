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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.Folders.Move
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a folder under a new resource parent. Returns an @Operation@ which can be used to track the progress of the folder move workflow. Upon success, the @Operation.response@ field will be populated with the moved folder. Upon failure, a @FolderOperationError@ categorizing the failure cause will be returned - if the failure occurs synchronously then the @FolderOperationError@ will be returned in the @Status.details@ field. If it occurs asynchronously, then the FolderOperation will be returned in the @Operation.error@ field. In addition, the @Operation.metadata@ field will be populated with a @FolderOperation@ message as an aid to stateless clients. Folder moves will be rejected if they violate either the naming, height, or fanout constraints described in the CreateFolder documentation. The caller must have @resourcemanager.folders.move@ permission on the folder\'s current and proposed new parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.move@.
module Network.Google.ResourceManager.Cloudresourcemanager.Folders.Move
  ( -- * Resource
    CloudresourcemanagerFoldersMoveResource,

    -- ** Constructing a Request
    newCloudresourcemanagerFoldersMove,
    CloudresourcemanagerFoldersMove,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.move@ method which the
-- 'CloudresourcemanagerFoldersMove' request conforms to.
type CloudresourcemanagerFoldersMoveResource =
  "v3"
    Core.:> Core.CaptureMode "name" "move" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MoveFolderRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Moves a folder under a new resource parent. Returns an @Operation@ which can be used to track the progress of the folder move workflow. Upon success, the @Operation.response@ field will be populated with the moved folder. Upon failure, a @FolderOperationError@ categorizing the failure cause will be returned - if the failure occurs synchronously then the @FolderOperationError@ will be returned in the @Status.details@ field. If it occurs asynchronously, then the FolderOperation will be returned in the @Operation.error@ field. In addition, the @Operation.metadata@ field will be populated with a @FolderOperation@ message as an aid to stateless clients. Folder moves will be rejected if they violate either the naming, height, or fanout constraints described in the CreateFolder documentation. The caller must have @resourcemanager.folders.move@ permission on the folder\'s current and proposed new parent.
--
-- /See:/ 'newCloudresourcemanagerFoldersMove' smart constructor.
data CloudresourcemanagerFoldersMove = CloudresourcemanagerFoldersMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Folder to move. Must be of the form folders\/{folder_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: MoveFolderRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersMove' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersMove ::
  -- |  Required. The resource name of the Folder to move. Must be of the form folders\/{folder_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MoveFolderRequest ->
  CloudresourcemanagerFoldersMove
newCloudresourcemanagerFoldersMove name payload =
  CloudresourcemanagerFoldersMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerFoldersMove
  where
  type Rs CloudresourcemanagerFoldersMove = Operation
  type
    Scopes CloudresourcemanagerFoldersMove =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerFoldersMove {..} =
    go
      name
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
              Core.Proxy CloudresourcemanagerFoldersMoveResource
          )
          Core.mempty

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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.Folders.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the deletion request for a folder. This method may be called on a folder in any state. If the folder is in the ACTIVE state the result will be a no-op success. In order to succeed, the folder\'s parent must be in the ACTIVE state. In addition, reintroducing the folder into the tree must not violate folder naming, height, and fanout constraints described in the CreateFolder documentation. The caller must have @resourcemanager.folders.undelete@ permission on the identified folder.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.undelete@.
module Network.Google.ResourceManager.Cloudresourcemanager.Folders.Undelete
  ( -- * Resource
    CloudresourcemanagerFoldersUndeleteResource,

    -- ** Constructing a Request
    newCloudresourcemanagerFoldersUndelete,
    CloudresourcemanagerFoldersUndelete,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.undelete@ method which the
-- 'CloudresourcemanagerFoldersUndelete' request conforms to.
type CloudresourcemanagerFoldersUndeleteResource =
  "v3"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteFolderRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Cancels the deletion request for a folder. This method may be called on a folder in any state. If the folder is in the ACTIVE state the result will be a no-op success. In order to succeed, the folder\'s parent must be in the ACTIVE state. In addition, reintroducing the folder into the tree must not violate folder naming, height, and fanout constraints described in the CreateFolder documentation. The caller must have @resourcemanager.folders.undelete@ permission on the identified folder.
--
-- /See:/ 'newCloudresourcemanagerFoldersUndelete' smart constructor.
data CloudresourcemanagerFoldersUndelete = CloudresourcemanagerFoldersUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the folder to undelete. Must be of the form @folders\/{folder_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteFolderRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersUndelete' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersUndelete ::
  -- |  Required. The resource name of the folder to undelete. Must be of the form @folders\/{folder_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteFolderRequest ->
  CloudresourcemanagerFoldersUndelete
newCloudresourcemanagerFoldersUndelete name payload =
  CloudresourcemanagerFoldersUndelete
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
    CloudresourcemanagerFoldersUndelete
  where
  type
    Rs CloudresourcemanagerFoldersUndelete =
      Operation
  type
    Scopes CloudresourcemanagerFoldersUndelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerFoldersUndelete {..} =
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
              Core.Proxy
                CloudresourcemanagerFoldersUndeleteResource
          )
          Core.mempty

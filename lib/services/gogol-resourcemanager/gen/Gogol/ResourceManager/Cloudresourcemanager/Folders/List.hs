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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the folders that are direct descendants of supplied parent resource. @list()@ provides a strongly consistent view of the folders underneath the specified parent resource. @list()@ returns folders sorted based upon the (ascending) lexical ordering of their display_name. The caller must have @resourcemanager.folders.list@ permission on the identified parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.list@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.List
  ( -- * Resource
    CloudresourcemanagerFoldersListResource,

    -- ** Constructing a Request
    newCloudresourcemanagerFoldersList,
    CloudresourcemanagerFoldersList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.list@ method which the
-- 'CloudresourcemanagerFoldersList' request conforms to.
type CloudresourcemanagerFoldersListResource =
  "v3"
    Core.:> "folders"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListFoldersResponse

-- | Lists the folders that are direct descendants of supplied parent resource. @list()@ provides a strongly consistent view of the folders underneath the specified parent resource. @list()@ returns folders sorted based upon the (ascending) lexical ordering of their display_name. The caller must have @resourcemanager.folders.list@ permission on the identified parent.
--
-- /See:/ 'newCloudresourcemanagerFoldersList' smart constructor.
data CloudresourcemanagerFoldersList = CloudresourcemanagerFoldersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A pagination token returned from a previous call to @ListFolders@ that indicates where this listing should continue from.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the organization or folder whose folders are being listed. Must be of the form @folders\/{folder_id}@ or @organizations\/{org_id}@. Access to this method is controlled by checking the @resourcemanager.folders.list@ permission on the @parent@.
    parent :: (Core.Maybe Core.Text),
    -- | Optional. Controls whether folders in the DELETE_REQUESTED state should be returned. Defaults to false.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersList' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersList ::
  CloudresourcemanagerFoldersList
newCloudresourcemanagerFoldersList =
  CloudresourcemanagerFoldersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = Core.Nothing,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerFoldersList
  where
  type
    Rs CloudresourcemanagerFoldersList =
      ListFoldersResponse
  type
    Scopes CloudresourcemanagerFoldersList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient CloudresourcemanagerFoldersList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      parent
      showDeleted
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerFoldersListResource
          )
          Core.mempty

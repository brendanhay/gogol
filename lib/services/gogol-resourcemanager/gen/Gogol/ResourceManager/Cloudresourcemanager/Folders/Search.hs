{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for folders that match specific filter criteria. @search()@ provides an eventually consistent view of the folders a user has access to which meet the specified filter criteria. This will only return folders on which the caller has the permission @resourcemanager.folders.get@.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.search@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.Search
    (
    -- * Resource
      CloudresourcemanagerFoldersSearchResource

    -- ** Constructing a Request
    , newCloudresourcemanagerFoldersSearch
    , CloudresourcemanagerFoldersSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.search@ method which the
-- 'CloudresourcemanagerFoldersSearch' request conforms to.
type CloudresourcemanagerFoldersSearchResource =
     "v3" Core.:>
       "folders:search" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "query" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] SearchFoldersResponse

-- | Search for folders that match specific filter criteria. @search()@ provides an eventually consistent view of the folders a user has access to which meet the specified filter criteria. This will only return folders on which the caller has the permission @resourcemanager.folders.get@.
--
-- /See:/ 'newCloudresourcemanagerFoldersSearch' smart constructor.
data CloudresourcemanagerFoldersSearch = CloudresourcemanagerFoldersSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A pagination token returned from a previous call to @SearchFolders@ that indicates from where search should continue.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Optional. Search criteria used to select the folders to return. If no search criteria is specified then all accessible folders will be returned. Query expressions can be used to restrict results based upon displayName, state and parent, where the operators @=@ (@:@) @NOT@, @AND@ and @OR@ can be used along with the suffix wildcard symbol @*@. The @displayName@ field in a query expression should use escaped quotes for values that include whitespace to prevent unexpected behavior. @| Field | Description | |-------------------------|----------------------------------------| | displayName | Filters by displayName. | | parent | Filters by parent (for example: folders\/123). | | state, lifecycleState | Filters by state. |@ Some example queries are: * Query @displayName=Test*@ returns Folder resources whose display name starts with \"Test\". * Query @state=ACTIVE@ returns Folder resources with @state@ set to @ACTIVE@. * Query @parent=folders\/123@ returns Folder resources that have @folders\/123@ as a parent
      -- resource. * Query @parent=folders\/123 AND state=ACTIVE@ returns active Folder resources that have @folders\/123@ as a parent resource. * Query @displayName=\\\\\"Test String\\\\\"@ returns Folder resources with display names that include both \"Test\" and \"String\".
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersSearch' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersSearch 
    ::  CloudresourcemanagerFoldersSearch
newCloudresourcemanagerFoldersSearch =
  CloudresourcemanagerFoldersSearch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , query = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudresourcemanagerFoldersSearch
         where
        type Rs CloudresourcemanagerFoldersSearch =
             SearchFoldersResponse
        type Scopes CloudresourcemanagerFoldersSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient CloudresourcemanagerFoldersSearch{..}
          = go xgafv accessToken callback pageSize pageToken
              query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudresourcemanagerFoldersSearchResource)
                      Core.mempty


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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Projects.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists projects that are direct children of the specified folder or organization resource. @list()@ provides a strongly consistent view of the projects underneath the specified parent resource. @list()@ returns projects sorted based upon the (ascending) lexical ordering of their @display_name@. The caller must have @resourcemanager.projects.list@ permission on the identified parent.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.list@.
module Gogol.ResourceManager.Cloudresourcemanager.Projects.List
    (
    -- * Resource
      CloudresourcemanagerProjectsListResource

    -- ** Constructing a Request
    , newCloudresourcemanagerProjectsList
    , CloudresourcemanagerProjectsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.list@ method which the
-- 'CloudresourcemanagerProjectsList' request conforms to.
type CloudresourcemanagerProjectsListResource =
     "v3" Core.:>
       "projects" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "parent" Core.Text Core.:>
                     Core.QueryParam "showDeleted" Core.Bool Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListProjectsResponse

-- | Lists projects that are direct children of the specified folder or organization resource. @list()@ provides a strongly consistent view of the projects underneath the specified parent resource. @list()@ returns projects sorted based upon the (ascending) lexical ordering of their @display_name@. The caller must have @resourcemanager.projects.list@ permission on the identified parent.
--
-- /See:/ 'newCloudresourcemanagerProjectsList' smart constructor.
data CloudresourcemanagerProjectsList = CloudresourcemanagerProjectsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of projects to return in the response. The server can return fewer projects than requested. If unspecified, server picks an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. A pagination token returned from a previous call to ListProjects that indicates from where listing should continue.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the parent resource to list projects under. For example, setting this field to \'folders\/1234\' would list all projects directly under that folder.
    , parent :: (Core.Maybe Core.Text)
      -- | Optional. Indicate that projects in the @DELETE_REQUESTED@ state should also be returned. Normally only @ACTIVE@ projects are returned.
    , showDeleted :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsList' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsList 
    ::  CloudresourcemanagerProjectsList
newCloudresourcemanagerProjectsList =
  CloudresourcemanagerProjectsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = Core.Nothing
    , showDeleted = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudresourcemanagerProjectsList
         where
        type Rs CloudresourcemanagerProjectsList =
             ListProjectsResponse
        type Scopes CloudresourcemanagerProjectsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient CloudresourcemanagerProjectsList{..}
          = go xgafv accessToken callback pageSize pageToken
              parent
              showDeleted
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudresourcemanagerProjectsListResource)
                      Core.mempty


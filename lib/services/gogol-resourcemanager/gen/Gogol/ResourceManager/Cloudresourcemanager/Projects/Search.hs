{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Projects.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for projects that the caller has the @resourcemanager.projects.get@ permission on, and also satisfy the specified query. This method returns projects in an unspecified order. This method is eventually consistent with project mutations; this means that a newly created project may not appear in the results or recent updates to an existing project may not be reflected in the results. To retrieve the latest state of a project, use the GetProject method.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.search@.
module Gogol.ResourceManager.Cloudresourcemanager.Projects.Search
    (
    -- * Resource
      CloudresourcemanagerProjectsSearchResource

    -- ** Constructing a Request
    , CloudresourcemanagerProjectsSearch (..)
    , newCloudresourcemanagerProjectsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.search@ method which the
-- 'CloudresourcemanagerProjectsSearch' request conforms to.
type CloudresourcemanagerProjectsSearchResource =
     "v3" Core.:>
       "projects:search" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "query" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] SearchProjectsResponse

-- | Search for projects that the caller has the @resourcemanager.projects.get@ permission on, and also satisfy the specified query. This method returns projects in an unspecified order. This method is eventually consistent with project mutations; this means that a newly created project may not appear in the results or recent updates to an existing project may not be reflected in the results. To retrieve the latest state of a project, use the GetProject method.
--
-- /See:/ 'newCloudresourcemanagerProjectsSearch' smart constructor.
data CloudresourcemanagerProjectsSearch = CloudresourcemanagerProjectsSearch
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
      -- | Optional. A query string for searching for projects that the caller has @resourcemanager.projects.get@ permission to. If multiple fields are included in the query, then it will return results that match any of the fields. Some eligible fields are: @| Field | Description | |-------------------------|----------------------------------------------| | displayName, name | Filters by displayName. | | parent | Project\'s parent (for example: folders\/123, organizations\/*). Prefer parent field over parent.type and parent.id.| | parent.type | Parent\'s type: \`folder\` or \`organization\`. | | parent.id | Parent\'s id number (for example: 123) | | id, projectId | Filters by projectId. | | state, lifecycleState | Filters by state. | | labels | Filters by label name or value. | | labels.\\ (where *key* is the name of a label) | Filters by label name.|@ Search expressions are case insensitive. Some examples queries:
      -- @| Query | Description | |------------------|-----------------------------------------------------| | name:how* | The project\'s name starts with \"how\". | | name:Howl | The project\'s name is \`Howl\` or \`howl\`. | | name:HOWL | Equivalent to above. | | NAME:howl | Equivalent to above. | | labels.color:* | The project has the label \`color\`. | | labels.color:red | The project\'s label \`color\` has the value \`red\`. | | labels.color:red labels.size:big | The project\'s label \`color\` has the value \`red\` or its label \`size\` has the value \`big\`. |@ If no query is specified, the call will return projects for which the user has the @resourcemanager.projects.get@ permission.
    , query :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsSearch' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsSearch 
    ::  CloudresourcemanagerProjectsSearch
newCloudresourcemanagerProjectsSearch =
  CloudresourcemanagerProjectsSearch
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
           CloudresourcemanagerProjectsSearch
         where
        type Rs CloudresourcemanagerProjectsSearch =
             SearchProjectsResponse
        type Scopes CloudresourcemanagerProjectsSearch =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
        requestClient CloudresourcemanagerProjectsSearch{..}
          = go xgafv accessToken callback pageSize pageToken
              query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              resourceManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudresourcemanagerProjectsSearchResource)
                      Core.mempty


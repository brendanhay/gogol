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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all AuthorizedViews from a specific table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.list@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.List
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesAuthorizedViewsListResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesAuthorizedViewsList (..)
    , newBigtableAdminProjectsInstancesTablesAuthorizedViewsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.list@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsList' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "authorizedViews" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "view"
                           ProjectsInstancesTablesAuthorizedViewsListView
                           Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListAuthorizedViewsResponse

-- | Lists all AuthorizedViews from a specific table.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsList' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsList = BigtableAdminProjectsInstancesTablesAuthorizedViewsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Maximum number of results per page. A page/size of zero lets the server choose the number of items to return. A page/size which is strictly positive will return at most that many items. A negative page/size will cause an error. Following the first request, subsequent paginated calls are not required to pass a page/size. If a page/size is set in subsequent calls, it must match the page/size given in the first request.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The value of @next_page_token@ returned by a previous call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the table for which AuthorizedViews should be listed. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. The resource/view to be applied to the returned AuthorizedViews\' fields. Default to NAME/ONLY.
    , view :: (Core.Maybe ProjectsInstancesTablesAuthorizedViewsListView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsList 
    ::  Core.Text
       -- ^  Required. The unique name of the table for which AuthorizedViews should be listed. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'parent'.
    -> BigtableAdminProjectsInstancesTablesAuthorizedViewsList
newBigtableAdminProjectsInstancesTablesAuthorizedViewsList parent =
  BigtableAdminProjectsInstancesTablesAuthorizedViewsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesAuthorizedViewsList
         where
        type Rs
               BigtableAdminProjectsInstancesTablesAuthorizedViewsList
             = ListAuthorizedViewsResponse
        type Scopes
               BigtableAdminProjectsInstancesTablesAuthorizedViewsList
             =
             '[Bigtable'Admin, Bigtable'Admin'Table,
               CloudBigtable'Admin, CloudBigtable'Admin'Table,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesAuthorizedViewsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesAuthorizedViewsListResource)
                      Core.mempty


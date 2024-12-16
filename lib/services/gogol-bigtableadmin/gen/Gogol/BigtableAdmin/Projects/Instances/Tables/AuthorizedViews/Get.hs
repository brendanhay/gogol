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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information from a specified AuthorizedView.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.get@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.Get
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesAuthorizedViewsGetResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesAuthorizedViewsGet (..)
    , newBigtableAdminProjectsInstancesTablesAuthorizedViewsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.get@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsGet' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "view"
                     ProjectsInstancesTablesAuthorizedViewsGetView
                     Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] AuthorizedView

-- | Gets information from a specified AuthorizedView.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsGet' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsGet = BigtableAdminProjectsInstancesTablesAuthorizedViewsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The unique name of the requested AuthorizedView. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. The resource_view to be applied to the returned AuthorizedView\'s fields. Default to BASIC.
    , view :: (Core.Maybe ProjectsInstancesTablesAuthorizedViewsGetView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsGet' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsGet 
    ::  Core.Text
       -- ^  Required. The unique name of the requested AuthorizedView. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}\/authorizedViews\/{authorized_view}@. See 'name'.
    -> BigtableAdminProjectsInstancesTablesAuthorizedViewsGet
newBigtableAdminProjectsInstancesTablesAuthorizedViewsGet name =
  BigtableAdminProjectsInstancesTablesAuthorizedViewsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesAuthorizedViewsGet
         where
        type Rs
               BigtableAdminProjectsInstancesTablesAuthorizedViewsGet
             = AuthorizedView
        type Scopes
               BigtableAdminProjectsInstancesTablesAuthorizedViewsGet
             =
             '[Bigtable'Admin, Bigtable'Admin'Table,
               CloudBigtable'Admin, CloudBigtable'Admin'Table,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesAuthorizedViewsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesAuthorizedViewsGetResource)
                      Core.mempty


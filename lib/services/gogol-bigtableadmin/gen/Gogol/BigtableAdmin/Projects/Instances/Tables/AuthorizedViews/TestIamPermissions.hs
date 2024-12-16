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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified Bigtable resource.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.testIamPermissions@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.TestIamPermissions
    (
    -- * Resource
      BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissionsResource

    -- ** Constructing a Request
    , BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions (..)
    , newBigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigtableAdmin.Types

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.testIamPermissions@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissionsResource
     =
     "v2" Core.:>
       Core.CaptureMode "resource" "testIamPermissions"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
                       Core.:>
                       Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that the caller has on the specified Bigtable resource.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions = BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestIamPermissionsRequest
      -- | REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions 
    ::  TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
newBigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions payload resource =
  BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
         where
        type Rs
               BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
             = TestIamPermissionsResponse
        type Scopes
               BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions
             =
             '[Bigtable'Admin, Bigtable'Admin'Table,
               CloudBigtable'Admin, CloudBigtable'Admin'Table,
               CloudPlatform'FullControl]
        requestClient
          BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigtableAdminService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BigtableAdminProjectsInstancesTablesAuthorizedViewsTestIamPermissionsResource)
                      Core.mempty


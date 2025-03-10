{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigtableAdmin.Projects.Instances.LogicalViews.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified instance resource.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.logicalViews.testIamPermissions@.
module Gogol.BigtableAdmin.Projects.Instances.LogicalViews.TestIamPermissions
  ( -- * Resource
    BigtableAdminProjectsInstancesLogicalViewsTestIamPermissionsResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions (..),
    newBigtableAdminProjectsInstancesLogicalViewsTestIamPermissions,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.logicalViews.testIamPermissions@ method which the
-- 'BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions' request conforms to.
type BigtableAdminProjectsInstancesLogicalViewsTestIamPermissionsResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "testIamPermissions" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that the caller has on the specified instance resource.
--
-- /See:/ 'newBigtableAdminProjectsInstancesLogicalViewsTestIamPermissions' smart constructor.
data BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions = BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesLogicalViewsTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions
newBigtableAdminProjectsInstancesLogicalViewsTestIamPermissions
  payload
  resource =
    BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions
  where
  type
    Rs
      BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes
      BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesLogicalViewsTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesLogicalViewsTestIamPermissionsResource
            )
            Core.mempty

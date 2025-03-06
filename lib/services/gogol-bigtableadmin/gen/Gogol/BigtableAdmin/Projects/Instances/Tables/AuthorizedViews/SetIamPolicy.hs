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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a Bigtable resource. Replaces any existing policy.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.authorizedViews.setIamPolicy@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.AuthorizedViews.SetIamPolicy
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicyResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy (..),
    newBigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy,
  )
where

import Gogol.BigtableAdmin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.authorizedViews.setIamPolicy@ method which the
-- 'BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy' request conforms to.
type BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicyResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on a Bigtable resource. Replaces any existing policy.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy' smart constructor.
data BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy = BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy
newBigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy
  payload
  resource =
    BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy
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
    BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy
  where
  type
    Rs
      BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy =
      Policy
  type
    Scopes
      BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicy {..} =
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
                  BigtableAdminProjectsInstancesTablesAuthorizedViewsSetIamPolicyResource
            )
            Core.mempty

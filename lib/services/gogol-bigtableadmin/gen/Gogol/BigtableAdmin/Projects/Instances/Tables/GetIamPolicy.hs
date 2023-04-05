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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a Table resource. Returns an empty policy if the resource exists but does not have a policy set.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.getIamPolicy@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.GetIamPolicy
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesGetIamPolicyResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesGetIamPolicy (..),
    newBigtableAdminProjectsInstancesTablesGetIamPolicy,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.getIamPolicy@ method which the
-- 'BigtableAdminProjectsInstancesTablesGetIamPolicy' request conforms to.
type BigtableAdminProjectsInstancesTablesGetIamPolicyResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a Table resource. Returns an empty policy if the resource exists but does not have a policy set.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesGetIamPolicy' smart constructor.
data BigtableAdminProjectsInstancesTablesGetIamPolicy = BigtableAdminProjectsInstancesTablesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesGetIamPolicy' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigtableAdminProjectsInstancesTablesGetIamPolicy
newBigtableAdminProjectsInstancesTablesGetIamPolicy payload resource =
  BigtableAdminProjectsInstancesTablesGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesGetIamPolicy
  where
  type
    Rs
      BigtableAdminProjectsInstancesTablesGetIamPolicy =
      Policy
  type
    Scopes
      BigtableAdminProjectsInstancesTablesGetIamPolicy =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesGetIamPolicy {..} =
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
                  BigtableAdminProjectsInstancesTablesGetIamPolicyResource
            )
            Core.mempty

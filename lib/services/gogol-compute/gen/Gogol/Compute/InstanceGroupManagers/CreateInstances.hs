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
-- Module      : Gogol.Compute.InstanceGroupManagers.CreateInstances
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates instances with per-instance configurations in this managed instance group. Instances are created using the current instance template. The create instances operation is marked DONE if the createInstances request is successful. The underlying actions take additional time. You must separately verify the status of the creating or actions with the listmanagedinstances method.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagers.createInstances@.
module Gogol.Compute.InstanceGroupManagers.CreateInstances
  ( -- * Resource
    ComputeInstanceGroupManagersCreateInstancesResource,

    -- ** Constructing a Request
    ComputeInstanceGroupManagersCreateInstances (..),
    newComputeInstanceGroupManagersCreateInstances,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instanceGroupManagers.createInstances@ method which the
-- 'ComputeInstanceGroupManagersCreateInstances' request conforms to.
type ComputeInstanceGroupManagersCreateInstancesResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instanceGroupManagers"
    Core.:> Core.Capture "instanceGroupManager" Core.Text
    Core.:> "createInstances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              InstanceGroupManagersCreateInstancesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates instances with per-instance configurations in this managed instance group. Instances are created using the current instance template. The create instances operation is marked DONE if the createInstances request is successful. The underlying actions take additional time. You must separately verify the status of the creating or actions with the listmanagedinstances method.
--
-- /See:/ 'newComputeInstanceGroupManagersCreateInstances' smart constructor.
data ComputeInstanceGroupManagersCreateInstances = ComputeInstanceGroupManagersCreateInstances
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the managed instance group. It should conform to RFC1035.
    instanceGroupManager :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstanceGroupManagersCreateInstancesRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone where the managed instance group is located. It should conform to RFC1035.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagersCreateInstances' with the minimum fields required to make a request.
newComputeInstanceGroupManagersCreateInstances ::
  -- |  The name of the managed instance group. It should conform to RFC1035. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstanceGroupManagersCreateInstancesRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone where the managed instance group is located. It should conform to RFC1035. See 'zone'.
  Core.Text ->
  ComputeInstanceGroupManagersCreateInstances
newComputeInstanceGroupManagersCreateInstances
  instanceGroupManager
  payload
  project
  zone =
    ComputeInstanceGroupManagersCreateInstances
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        instanceGroupManager = instanceGroupManager,
        payload = payload,
        project = project,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance
  Core.GoogleRequest
    ComputeInstanceGroupManagersCreateInstances
  where
  type Rs ComputeInstanceGroupManagersCreateInstances = Operation
  type
    Scopes ComputeInstanceGroupManagersCreateInstances =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstanceGroupManagersCreateInstances {..} =
    go
      project
      zone
      instanceGroupManager
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeInstanceGroupManagersCreateInstancesResource
          )
          Core.mempty

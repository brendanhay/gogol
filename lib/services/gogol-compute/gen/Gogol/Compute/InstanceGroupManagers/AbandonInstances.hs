{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Compute.InstanceGroupManagers.AbandonInstances
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances to be removed from the managed instance group. Abandoning an instance does not delete the instance, but it does remove the instance from any target pools that are applied by the managed instance group. This method reduces the targetSize of the managed instance group by the number of instances that you abandon. This operation is marked as DONE when the action is scheduled even if the instances have not yet been removed from the group. You must separately verify the status of the abandoning action with the listmanagedinstances method. If the group is part of a backend service that has enabled connection draining, it can take up to 60 seconds after the connection draining duration has elapsed before the VM instance is removed or deleted. You can specify a maximum of 1000 instances with this method per request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagers.abandonInstances@.
module Gogol.Compute.InstanceGroupManagers.AbandonInstances
  ( -- * Resource
    ComputeInstanceGroupManagersAbandonInstancesResource,

    -- ** Constructing a Request
    ComputeInstanceGroupManagersAbandonInstances (..),
    newComputeInstanceGroupManagersAbandonInstances,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instanceGroupManagers.abandonInstances@ method which the
-- 'ComputeInstanceGroupManagersAbandonInstances' request conforms to.
type ComputeInstanceGroupManagersAbandonInstancesResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instanceGroupManagers"
    Core.:> Core.Capture "instanceGroupManager" Core.Text
    Core.:> "abandonInstances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              InstanceGroupManagersAbandonInstancesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Flags the specified instances to be removed from the managed instance group. Abandoning an instance does not delete the instance, but it does remove the instance from any target pools that are applied by the managed instance group. This method reduces the targetSize of the managed instance group by the number of instances that you abandon. This operation is marked as DONE when the action is scheduled even if the instances have not yet been removed from the group. You must separately verify the status of the abandoning action with the listmanagedinstances method. If the group is part of a backend service that has enabled connection draining, it can take up to 60 seconds after the connection draining duration has elapsed before the VM instance is removed or deleted. You can specify a maximum of 1000 instances with this method per request.
--
-- /See:/ 'newComputeInstanceGroupManagersAbandonInstances' smart constructor.
data ComputeInstanceGroupManagersAbandonInstances = ComputeInstanceGroupManagersAbandonInstances
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the managed instance group.
    instanceGroupManager :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstanceGroupManagersAbandonInstancesRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone where the managed instance group is located.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagersAbandonInstances' with the minimum fields required to make a request.
newComputeInstanceGroupManagersAbandonInstances ::
  -- |  The name of the managed instance group. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstanceGroupManagersAbandonInstancesRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone where the managed instance group is located. See 'zone'.
  Core.Text ->
  ComputeInstanceGroupManagersAbandonInstances
newComputeInstanceGroupManagersAbandonInstances
  instanceGroupManager
  payload
  project
  zone =
    ComputeInstanceGroupManagersAbandonInstances
      { xgafv =
          Core.Nothing,
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
    ComputeInstanceGroupManagersAbandonInstances
  where
  type Rs ComputeInstanceGroupManagersAbandonInstances = Operation
  type
    Scopes ComputeInstanceGroupManagersAbandonInstances =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstanceGroupManagersAbandonInstances {..} =
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
              Core.Proxy ComputeInstanceGroupManagersAbandonInstancesResource
          )
          Core.mempty

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
-- Module      : Gogol.Compute.InstanceGroupManagerResizeRequests.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified, inactive resize request. Requests that are still active cannot be deleted. Deleting request does not delete instances that were provisioned previously.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagerResizeRequests.delete@.
module Gogol.Compute.InstanceGroupManagerResizeRequests.Delete
  ( -- * Resource
    ComputeInstanceGroupManagerResizeRequestsDeleteResource,

    -- ** Constructing a Request
    ComputeInstanceGroupManagerResizeRequestsDelete (..),
    newComputeInstanceGroupManagerResizeRequestsDelete,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instanceGroupManagerResizeRequests.delete@ method which the
-- 'ComputeInstanceGroupManagerResizeRequestsDelete' request conforms to.
type ComputeInstanceGroupManagerResizeRequestsDeleteResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instanceGroupManagers"
    Core.:> Core.Capture "instanceGroupManager" Core.Text
    Core.:> "resizeRequests"
    Core.:> Core.Capture "resizeRequest" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the specified, inactive resize request. Requests that are still active cannot be deleted. Deleting request does not delete instances that were provisioned previously.
--
-- /See:/ 'newComputeInstanceGroupManagerResizeRequestsDelete' smart constructor.
data ComputeInstanceGroupManagerResizeRequestsDelete = ComputeInstanceGroupManagerResizeRequestsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the managed instance group. The name should conform to RFC1035 or be a resource ID.
    instanceGroupManager :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | The name of the resize request to delete. The name should conform to RFC1035 or be a resource ID.
    resizeRequest :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone where the managed instance group is located. The name should conform to RFC1035.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagerResizeRequestsDelete' with the minimum fields required to make a request.
newComputeInstanceGroupManagerResizeRequestsDelete ::
  -- |  The name of the managed instance group. The name should conform to RFC1035 or be a resource ID. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the resize request to delete. The name should conform to RFC1035 or be a resource ID. See 'resizeRequest'.
  Core.Text ->
  -- |  The name of the zone where the managed instance group is located. The name should conform to RFC1035. See 'zone'.
  Core.Text ->
  ComputeInstanceGroupManagerResizeRequestsDelete
newComputeInstanceGroupManagerResizeRequestsDelete
  instanceGroupManager
  project
  resizeRequest
  zone =
    ComputeInstanceGroupManagerResizeRequestsDelete
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        instanceGroupManager = instanceGroupManager,
        project = project,
        requestId = Core.Nothing,
        resizeRequest = resizeRequest,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance
  Core.GoogleRequest
    ComputeInstanceGroupManagerResizeRequestsDelete
  where
  type Rs ComputeInstanceGroupManagerResizeRequestsDelete = Operation
  type
    Scopes ComputeInstanceGroupManagerResizeRequestsDelete =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstanceGroupManagerResizeRequestsDelete {..} =
    go
      project
      zone
      instanceGroupManager
      resizeRequest
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeInstanceGroupManagerResizeRequestsDeleteResource
          )
          Core.mempty

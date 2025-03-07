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
-- Module      : Gogol.Compute.RegionNetworkEndpointGroups.DetachNetworkEndpoints
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detach the network endpoint from the specified network endpoint group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.detachNetworkEndpoints@.
module Gogol.Compute.RegionNetworkEndpointGroups.DetachNetworkEndpoints
  ( -- * Resource
    ComputeRegionNetworkEndpointGroupsDetachNetworkEndpointsResource,

    -- ** Constructing a Request
    ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints (..),
    newComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionNetworkEndpointGroups.detachNetworkEndpoints@ method which the
-- 'ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints' request conforms to.
type ComputeRegionNetworkEndpointGroupsDetachNetworkEndpointsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "networkEndpointGroups"
    Core.:> Core.Capture "networkEndpointGroup" Core.Text
    Core.:> "detachNetworkEndpoints"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RegionNetworkEndpointGroupsDetachEndpointsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Detach the network endpoint from the specified network endpoint group.
--
-- /See:/ 'newComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints' smart constructor.
data ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints = ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the network endpoint group you are detaching network endpoints from. It should comply with RFC1035.
    networkEndpointGroup :: Core.Text,
    -- | Multipart request metadata.
    payload :: RegionNetworkEndpointGroupsDetachEndpointsRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the region where the network endpoint group is located. It should comply with RFC1035.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints' with the minimum fields required to make a request.
newComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints ::
  -- |  The name of the network endpoint group you are detaching network endpoints from. It should comply with RFC1035. See 'networkEndpointGroup'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RegionNetworkEndpointGroupsDetachEndpointsRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the region where the network endpoint group is located. It should comply with RFC1035. See 'region'.
  Core.Text ->
  ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints
newComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints
  networkEndpointGroup
  payload
  project
  region =
    ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        networkEndpointGroup =
          networkEndpointGroup,
        payload = payload,
        project = project,
        region = region,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints
  where
  type
    Rs ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints =
      Operation
  type
    Scopes
      ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeRegionNetworkEndpointGroupsDetachNetworkEndpoints {..} =
      go
        project
        region
        networkEndpointGroup
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
                Core.Proxy
                  ComputeRegionNetworkEndpointGroupsDetachNetworkEndpointsResource
            )
            Core.mempty

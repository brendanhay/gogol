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
-- Module      : Gogol.Compute.InstanceGroups.SetNamedPorts
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the named ports for the specified instance group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroups.setNamedPorts@.
module Gogol.Compute.InstanceGroups.SetNamedPorts
  ( -- * Resource
    ComputeInstanceGroupsSetNamedPortsResource,

    -- ** Constructing a Request
    newComputeInstanceGroupsSetNamedPorts,
    ComputeInstanceGroupsSetNamedPorts,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.instanceGroups.setNamedPorts@ method which the
-- 'ComputeInstanceGroupsSetNamedPorts' request conforms to.
type ComputeInstanceGroupsSetNamedPortsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instanceGroups"
    Core.:> Core.Capture "instanceGroup" Core.Text
    Core.:> "setNamedPorts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              InstanceGroupsSetNamedPortsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the named ports for the specified instance group.
--
-- /See:/ 'newComputeInstanceGroupsSetNamedPorts' smart constructor.
data ComputeInstanceGroupsSetNamedPorts = ComputeInstanceGroupsSetNamedPorts
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the instance group where the named ports are updated.
    instanceGroup :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstanceGroupsSetNamedPortsRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone where the instance group is located.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupsSetNamedPorts' with the minimum fields required to make a request.
newComputeInstanceGroupsSetNamedPorts ::
  -- |  The name of the instance group where the named ports are updated. See 'instanceGroup'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstanceGroupsSetNamedPortsRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone where the instance group is located. See 'zone'.
  Core.Text ->
  ComputeInstanceGroupsSetNamedPorts
newComputeInstanceGroupsSetNamedPorts instanceGroup payload project zone =
  ComputeInstanceGroupsSetNamedPorts
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceGroup = instanceGroup,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstanceGroupsSetNamedPorts
  where
  type
    Rs ComputeInstanceGroupsSetNamedPorts =
      Operation
  type
    Scopes ComputeInstanceGroupsSetNamedPorts =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstanceGroupsSetNamedPorts {..} =
    go
      project
      zone
      instanceGroup
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
                ComputeInstanceGroupsSetNamedPortsResource
          )
          Core.mempty

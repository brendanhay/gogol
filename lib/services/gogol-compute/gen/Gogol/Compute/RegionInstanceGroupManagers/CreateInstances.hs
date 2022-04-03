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
-- Module      : Gogol.Compute.RegionInstanceGroupManagers.CreateInstances
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates instances with per-instance configs in this regional managed instance group. Instances are created using the current instance template. The create instances operation is marked DONE if the createInstances request is successful. The underlying actions take additional time. You must separately verify the status of the creating or actions with the listmanagedinstances method.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.createInstances@.
module Gogol.Compute.RegionInstanceGroupManagers.CreateInstances
  ( -- * Resource
    ComputeRegionInstanceGroupManagersCreateInstancesResource,

    -- ** Constructing a Request
    ComputeRegionInstanceGroupManagersCreateInstances (..),
    newComputeRegionInstanceGroupManagersCreateInstances,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionInstanceGroupManagers.createInstances@ method which the
-- 'ComputeRegionInstanceGroupManagersCreateInstances' request conforms to.
type ComputeRegionInstanceGroupManagersCreateInstancesResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
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
              RegionInstanceGroupManagersCreateInstancesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates instances with per-instance configs in this regional managed instance group. Instances are created using the current instance template. The create instances operation is marked DONE if the createInstances request is successful. The underlying actions take additional time. You must separately verify the status of the creating or actions with the listmanagedinstances method.
--
-- /See:/ 'newComputeRegionInstanceGroupManagersCreateInstances' smart constructor.
data ComputeRegionInstanceGroupManagersCreateInstances = ComputeRegionInstanceGroupManagersCreateInstances
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the managed instance group. It should conform to RFC1035.
    instanceGroupManager :: Core.Text,
    -- | Multipart request metadata.
    payload :: RegionInstanceGroupManagersCreateInstancesRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the region where the managed instance group is located. It should conform to RFC1035.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstanceGroupManagersCreateInstances' with the minimum fields required to make a request.
newComputeRegionInstanceGroupManagersCreateInstances ::
  -- |  The name of the managed instance group. It should conform to RFC1035. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RegionInstanceGroupManagersCreateInstancesRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the region where the managed instance group is located. It should conform to RFC1035. See 'region'.
  Core.Text ->
  ComputeRegionInstanceGroupManagersCreateInstances
newComputeRegionInstanceGroupManagersCreateInstances instanceGroupManager payload project region =
  ComputeRegionInstanceGroupManagersCreateInstances
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceGroupManager = instanceGroupManager,
      payload = payload,
      project = project,
      region = region,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionInstanceGroupManagersCreateInstances
  where
  type
    Rs
      ComputeRegionInstanceGroupManagersCreateInstances =
      Operation
  type
    Scopes
      ComputeRegionInstanceGroupManagersCreateInstances =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeRegionInstanceGroupManagersCreateInstances {..} =
      go
        project
        region
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
                Core.Proxy
                  ComputeRegionInstanceGroupManagersCreateInstancesResource
            )
            Core.mempty

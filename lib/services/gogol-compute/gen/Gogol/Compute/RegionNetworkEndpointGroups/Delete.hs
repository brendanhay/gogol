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
-- Module      : Gogol.Compute.RegionNetworkEndpointGroups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network endpoint group. Note that the NEG cannot be deleted if it is configured as a backend of a backend service.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.delete@.
module Gogol.Compute.RegionNetworkEndpointGroups.Delete
  ( -- * Resource
    ComputeRegionNetworkEndpointGroupsDeleteResource,

    -- ** Constructing a Request
    ComputeRegionNetworkEndpointGroupsDelete (..),
    newComputeRegionNetworkEndpointGroupsDelete,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionNetworkEndpointGroups.delete@ method which the
-- 'ComputeRegionNetworkEndpointGroupsDelete' request conforms to.
type ComputeRegionNetworkEndpointGroupsDeleteResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "networkEndpointGroups"
    Core.:> Core.Capture "networkEndpointGroup" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the specified network endpoint group. Note that the NEG cannot be deleted if it is configured as a backend of a backend service.
--
-- /See:/ 'newComputeRegionNetworkEndpointGroupsDelete' smart constructor.
data ComputeRegionNetworkEndpointGroupsDelete = ComputeRegionNetworkEndpointGroupsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the network endpoint group to delete. It should comply with RFC1035.
    networkEndpointGroup :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the region where the network endpoint group is located. It should comply with RFC1035.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionNetworkEndpointGroupsDelete' with the minimum fields required to make a request.
newComputeRegionNetworkEndpointGroupsDelete ::
  -- |  The name of the network endpoint group to delete. It should comply with RFC1035. See 'networkEndpointGroup'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the region where the network endpoint group is located. It should comply with RFC1035. See 'region'.
  Core.Text ->
  ComputeRegionNetworkEndpointGroupsDelete
newComputeRegionNetworkEndpointGroupsDelete networkEndpointGroup project region =
  ComputeRegionNetworkEndpointGroupsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      networkEndpointGroup = networkEndpointGroup,
      project = project,
      region = region,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionNetworkEndpointGroupsDelete
  where
  type
    Rs ComputeRegionNetworkEndpointGroupsDelete =
      Operation
  type
    Scopes ComputeRegionNetworkEndpointGroupsDelete =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeRegionNetworkEndpointGroupsDelete {..} =
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
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeRegionNetworkEndpointGroupsDeleteResource
            )
            Core.mempty

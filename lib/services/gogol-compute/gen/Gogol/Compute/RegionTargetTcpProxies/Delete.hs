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
-- Module      : Gogol.Compute.RegionTargetTcpProxies.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TargetTcpProxy resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionTargetTcpProxies.delete@.
module Gogol.Compute.RegionTargetTcpProxies.Delete
  ( -- * Resource
    ComputeRegionTargetTcpProxiesDeleteResource,

    -- ** Constructing a Request
    ComputeRegionTargetTcpProxiesDelete (..),
    newComputeRegionTargetTcpProxiesDelete,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionTargetTcpProxies.delete@ method which the
-- 'ComputeRegionTargetTcpProxiesDelete' request conforms to.
type ComputeRegionTargetTcpProxiesDeleteResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "targetTcpProxies"
    Core.:> Core.Capture "targetTcpProxy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the specified TargetTcpProxy resource.
--
-- /See:/ 'newComputeRegionTargetTcpProxiesDelete' smart constructor.
data ComputeRegionTargetTcpProxiesDelete = ComputeRegionTargetTcpProxiesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Name of the TargetTcpProxy resource to delete.
    targetTcpProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionTargetTcpProxiesDelete' with the minimum fields required to make a request.
newComputeRegionTargetTcpProxiesDelete ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the TargetTcpProxy resource to delete. See 'targetTcpProxy'.
  Core.Text ->
  ComputeRegionTargetTcpProxiesDelete
newComputeRegionTargetTcpProxiesDelete
  project
  region
  targetTcpProxy =
    ComputeRegionTargetTcpProxiesDelete
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        project = project,
        region = region,
        requestId = Core.Nothing,
        targetTcpProxy = targetTcpProxy,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeRegionTargetTcpProxiesDelete where
  type Rs ComputeRegionTargetTcpProxiesDelete = Operation
  type
    Scopes ComputeRegionTargetTcpProxiesDelete =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeRegionTargetTcpProxiesDelete {..} =
    go
      project
      region
      targetTcpProxy
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
              Core.Proxy ComputeRegionTargetTcpProxiesDeleteResource
          )
          Core.mempty

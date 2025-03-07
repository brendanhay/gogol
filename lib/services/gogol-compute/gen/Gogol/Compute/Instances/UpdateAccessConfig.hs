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
-- Module      : Gogol.Compute.Instances.UpdateAccessConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified access config from an instance\'s network interface with the data included in the request. This method supports PATCH semantics and uses the JSON merge patch format and processing rules.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.updateAccessConfig@.
module Gogol.Compute.Instances.UpdateAccessConfig
  ( -- * Resource
    ComputeInstancesUpdateAccessConfigResource,

    -- ** Constructing a Request
    ComputeInstancesUpdateAccessConfig (..),
    newComputeInstancesUpdateAccessConfig,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instances.updateAccessConfig@ method which the
-- 'ComputeInstancesUpdateAccessConfig' request conforms to.
type ComputeInstancesUpdateAccessConfigResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "updateAccessConfig"
    Core.:> Core.QueryParam "networkInterface" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AccessConfig
    Core.:> Core.Post '[Core.JSON] Operation

-- | Updates the specified access config from an instance\'s network interface with the data included in the request. This method supports PATCH semantics and uses the JSON merge patch format and processing rules.
--
-- /See:/ 'newComputeInstancesUpdateAccessConfig' smart constructor.
data ComputeInstancesUpdateAccessConfig = ComputeInstancesUpdateAccessConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The instance name for this request.
    instance' :: Core.Text,
    -- | The name of the network interface where the access config is attached.
    networkInterface :: Core.Text,
    -- | Multipart request metadata.
    payload :: AccessConfig,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesUpdateAccessConfig' with the minimum fields required to make a request.
newComputeInstancesUpdateAccessConfig ::
  -- |  The instance name for this request. See 'instance''.
  Core.Text ->
  -- |  The name of the network interface where the access config is attached. See 'networkInterface'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AccessConfig ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesUpdateAccessConfig
newComputeInstancesUpdateAccessConfig
  instance'
  networkInterface
  payload
  project
  zone =
    ComputeInstancesUpdateAccessConfig
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        instance' = instance',
        networkInterface = networkInterface,
        payload = payload,
        project = project,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance Core.GoogleRequest ComputeInstancesUpdateAccessConfig where
  type Rs ComputeInstancesUpdateAccessConfig = Operation
  type
    Scopes ComputeInstancesUpdateAccessConfig =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstancesUpdateAccessConfig {..} =
    go
      project
      zone
      instance'
      (Core.Just networkInterface)
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
              Core.Proxy ComputeInstancesUpdateAccessConfigResource
          )
          Core.mempty

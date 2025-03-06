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
-- Module      : Gogol.Compute.Instances.SetDiskAutoDelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the auto-delete flag for a disk attached to an instance.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.setDiskAutoDelete@.
module Gogol.Compute.Instances.SetDiskAutoDelete
  ( -- * Resource
    ComputeInstancesSetDiskAutoDeleteResource,

    -- ** Constructing a Request
    ComputeInstancesSetDiskAutoDelete (..),
    newComputeInstancesSetDiskAutoDelete,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instances.setDiskAutoDelete@ method which the
-- 'ComputeInstancesSetDiskAutoDelete' request conforms to.
type ComputeInstancesSetDiskAutoDeleteResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "setDiskAutoDelete"
    Core.:> Core.QueryParam "autoDelete" Core.Bool
    Core.:> Core.QueryParam "deviceName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the auto-delete flag for a disk attached to an instance.
--
-- /See:/ 'newComputeInstancesSetDiskAutoDelete' smart constructor.
data ComputeInstancesSetDiskAutoDelete = ComputeInstancesSetDiskAutoDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether to auto-delete the disk when the instance is deleted.
    autoDelete :: Core.Bool,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The device name of the disk to modify. Make a get() request on the instance to view currently attached disks and device names.
    deviceName :: Core.Text,
    -- | The instance name for this request.
    instance' :: Core.Text,
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

-- | Creates a value of 'ComputeInstancesSetDiskAutoDelete' with the minimum fields required to make a request.
newComputeInstancesSetDiskAutoDelete ::
  -- |  Whether to auto-delete the disk when the instance is deleted. See 'autoDelete'.
  Core.Bool ->
  -- |  The device name of the disk to modify. Make a get() request on the instance to view currently attached disks and device names. See 'deviceName'.
  Core.Text ->
  -- |  The instance name for this request. See 'instance''.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesSetDiskAutoDelete
newComputeInstancesSetDiskAutoDelete
  autoDelete
  deviceName
  instance'
  project
  zone =
    ComputeInstancesSetDiskAutoDelete
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        autoDelete = autoDelete,
        callback = Core.Nothing,
        deviceName = deviceName,
        instance' = instance',
        project = project,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance Core.GoogleRequest ComputeInstancesSetDiskAutoDelete where
  type Rs ComputeInstancesSetDiskAutoDelete = Operation
  type
    Scopes ComputeInstancesSetDiskAutoDelete =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstancesSetDiskAutoDelete {..} =
    go
      project
      zone
      instance'
      (Core.Just autoDelete)
      (Core.Just deviceName)
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
              Core.Proxy ComputeInstancesSetDiskAutoDeleteResource
          )
          Core.mempty

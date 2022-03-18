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
-- Module      : Network.Google.Compute.Instances.AttachDisk
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches an existing Disk resource to an instance. You must first create the disk before you can attach it. It is not possible to create and attach a disk at the same time. For more information, read Adding a persistent disk to your instance.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.attachDisk@.
module Network.Google.Compute.Instances.AttachDisk
  ( -- * Resource
    ComputeInstancesAttachDiskResource,

    -- ** Constructing a Request
    newComputeInstancesAttachDisk,
    ComputeInstancesAttachDisk,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.instances.attachDisk@ method which the
-- 'ComputeInstancesAttachDisk' request conforms to.
type ComputeInstancesAttachDiskResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "attachDisk"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "forceAttach" Core.Bool
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AttachedDisk
    Core.:> Core.Post '[Core.JSON] Operation

-- | Attaches an existing Disk resource to an instance. You must first create the disk before you can attach it. It is not possible to create and attach a disk at the same time. For more information, read Adding a persistent disk to your instance.
--
-- /See:/ 'newComputeInstancesAttachDisk' smart constructor.
data ComputeInstancesAttachDisk = ComputeInstancesAttachDisk
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether to force attach the regional disk even if it\'s currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
    forceAttach :: (Core.Maybe Core.Bool),
    -- | The instance name for this request.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: AttachedDisk,
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

-- | Creates a value of 'ComputeInstancesAttachDisk' with the minimum fields required to make a request.
newComputeInstancesAttachDisk ::
  -- |  The instance name for this request. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AttachedDisk ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesAttachDisk
newComputeInstancesAttachDisk instance' payload project zone =
  ComputeInstancesAttachDisk
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      forceAttach = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstancesAttachDisk
  where
  type Rs ComputeInstancesAttachDisk = Operation
  type
    Scopes ComputeInstancesAttachDisk =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputeInstancesAttachDisk {..} =
    go
      project
      zone
      instance'
      xgafv
      accessToken
      callback
      forceAttach
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
              Core.Proxy ComputeInstancesAttachDiskResource
          )
          Core.mempty

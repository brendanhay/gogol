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
-- Module      : Gogol.Compute.Instances.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance resource in the specified project using the data included in the request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.insert@.
module Gogol.Compute.Instances.Insert
  ( -- * Resource
    ComputeInstancesInsertResource,

    -- ** Constructing a Request
    ComputeInstancesInsert (..),
    newComputeInstancesInsert,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instances.insert@ method which the
-- 'ComputeInstancesInsert' request conforms to.
type ComputeInstancesInsertResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "sourceInstanceTemplate" Core.Text
    Core.:> Core.QueryParam "sourceMachineImage" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates an instance resource in the specified project using the data included in the request.
--
-- /See:/ 'newComputeInstancesInsert' smart constructor.
data ComputeInstancesInsert = ComputeInstancesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https:\/\/www.googleapis.com\/compute\/v1\/projects\/project \/global\/instanceTemplates\/instanceTemplate - projects\/project\/global\/instanceTemplates\/instanceTemplate - global\/instanceTemplates\/instanceTemplate
    sourceInstanceTemplate :: (Core.Maybe Core.Text),
    -- | Specifies the machine image to use to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to a machine image: - https:\/\/www.googleapis.com\/compute\/v1\/projects\/project\/global\/global \/machineImages\/machineImage - projects\/project\/global\/global\/machineImages\/machineImage - global\/machineImages\/machineImage
    sourceMachineImage :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesInsert' with the minimum fields required to make a request.
newComputeInstancesInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesInsert
newComputeInstancesInsert payload project zone =
  ComputeInstancesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      sourceInstanceTemplate = Core.Nothing,
      sourceMachineImage = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance Core.GoogleRequest ComputeInstancesInsert where
  type Rs ComputeInstancesInsert = Operation
  type
    Scopes ComputeInstancesInsert =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeInstancesInsert {..} =
    go
      project
      zone
      xgafv
      accessToken
      callback
      requestId
      sourceInstanceTemplate
      sourceMachineImage
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ComputeInstancesInsertResource)
          Core.mempty

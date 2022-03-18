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
-- Module      : Network.Google.Compute.Instances.DeleteAccessConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an access config from an instance\'s network interface.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.deleteAccessConfig@.
module Network.Google.Compute.Instances.DeleteAccessConfig
  ( -- * Resource
    ComputeInstancesDeleteAccessConfigResource,

    -- ** Constructing a Request
    newComputeInstancesDeleteAccessConfig,
    ComputeInstancesDeleteAccessConfig,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.instances.deleteAccessConfig@ method which the
-- 'ComputeInstancesDeleteAccessConfig' request conforms to.
type ComputeInstancesDeleteAccessConfigResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "deleteAccessConfig"
    Core.:> Core.QueryParam "accessConfig" Core.Text
    Core.:> Core.QueryParam "networkInterface" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes an access config from an instance\'s network interface.
--
-- /See:/ 'newComputeInstancesDeleteAccessConfig' smart constructor.
data ComputeInstancesDeleteAccessConfig = ComputeInstancesDeleteAccessConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | The name of the access config to delete.
    accessConfig :: Core.Text,
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The instance name for this request.
    instance' :: Core.Text,
    -- | The name of the network interface.
    networkInterface :: Core.Text,
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

-- | Creates a value of 'ComputeInstancesDeleteAccessConfig' with the minimum fields required to make a request.
newComputeInstancesDeleteAccessConfig ::
  -- |  The name of the access config to delete. See 'accessConfig'.
  Core.Text ->
  -- |  The instance name for this request. See 'instance''.
  Core.Text ->
  -- |  The name of the network interface. See 'networkInterface'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesDeleteAccessConfig
newComputeInstancesDeleteAccessConfig accessConfig instance' networkInterface project zone =
  ComputeInstancesDeleteAccessConfig
    { xgafv = Core.Nothing,
      accessConfig = accessConfig,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      networkInterface = networkInterface,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstancesDeleteAccessConfig
  where
  type
    Rs ComputeInstancesDeleteAccessConfig =
      Operation
  type
    Scopes ComputeInstancesDeleteAccessConfig =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputeInstancesDeleteAccessConfig {..} =
    go
      project
      zone
      instance'
      (Core.Just accessConfig)
      (Core.Just networkInterface)
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
                ComputeInstancesDeleteAccessConfigResource
          )
          Core.mempty

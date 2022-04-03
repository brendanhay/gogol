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
-- Module      : Gogol.Compute.Instances.SimulateMaintenanceEvent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Simulates a host maintenance event on a VM. For more information, see Simulate a host maintenance event.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.simulateMaintenanceEvent@.
module Gogol.Compute.Instances.SimulateMaintenanceEvent
  ( -- * Resource
    ComputeInstancesSimulateMaintenanceEventResource,

    -- ** Constructing a Request
    ComputeInstancesSimulateMaintenanceEvent (..),
    newComputeInstancesSimulateMaintenanceEvent,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.instances.simulateMaintenanceEvent@ method which the
-- 'ComputeInstancesSimulateMaintenanceEvent' request conforms to.
type ComputeInstancesSimulateMaintenanceEventResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "simulateMaintenanceEvent"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Simulates a host maintenance event on a VM. For more information, see Simulate a host maintenance event.
--
-- /See:/ 'newComputeInstancesSimulateMaintenanceEvent' smart constructor.
data ComputeInstancesSimulateMaintenanceEvent = ComputeInstancesSimulateMaintenanceEvent
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the instance scoping this request.
    instance' :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesSimulateMaintenanceEvent' with the minimum fields required to make a request.
newComputeInstancesSimulateMaintenanceEvent ::
  -- |  Name of the instance scoping this request. See 'instance''.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesSimulateMaintenanceEvent
newComputeInstancesSimulateMaintenanceEvent instance' project zone =
  ComputeInstancesSimulateMaintenanceEvent
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstancesSimulateMaintenanceEvent
  where
  type
    Rs ComputeInstancesSimulateMaintenanceEvent =
      Operation
  type
    Scopes ComputeInstancesSimulateMaintenanceEvent =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeInstancesSimulateMaintenanceEvent {..} =
      go
        project
        zone
        instance'
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeInstancesSimulateMaintenanceEventResource
            )
            Core.mempty

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
-- Module      : Gogol.Compute.InstanceGroupManagers.DeletePerInstanceConfigs
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes selected per-instance configurations for the managed instance group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagers.deletePerInstanceConfigs@.
module Gogol.Compute.InstanceGroupManagers.DeletePerInstanceConfigs
  ( -- * Resource
    ComputeInstanceGroupManagersDeletePerInstanceConfigsResource,

    -- ** Constructing a Request
    ComputeInstanceGroupManagersDeletePerInstanceConfigs (..),
    newComputeInstanceGroupManagersDeletePerInstanceConfigs,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.instanceGroupManagers.deletePerInstanceConfigs@ method which the
-- 'ComputeInstanceGroupManagersDeletePerInstanceConfigs' request conforms to.
type ComputeInstanceGroupManagersDeletePerInstanceConfigsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instanceGroupManagers"
    Core.:> Core.Capture "instanceGroupManager" Core.Text
    Core.:> "deletePerInstanceConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              InstanceGroupManagersDeletePerInstanceConfigsReq
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes selected per-instance configurations for the managed instance group.
--
-- /See:/ 'newComputeInstanceGroupManagersDeletePerInstanceConfigs' smart constructor.
data ComputeInstanceGroupManagersDeletePerInstanceConfigs = ComputeInstanceGroupManagersDeletePerInstanceConfigs
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the managed instance group. It should conform to RFC1035.
    instanceGroupManager :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstanceGroupManagersDeletePerInstanceConfigsReq,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone where the managed instance group is located. It should conform to RFC1035.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagersDeletePerInstanceConfigs' with the minimum fields required to make a request.
newComputeInstanceGroupManagersDeletePerInstanceConfigs ::
  -- |  The name of the managed instance group. It should conform to RFC1035. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstanceGroupManagersDeletePerInstanceConfigsReq ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone where the managed instance group is located. It should conform to RFC1035. See 'zone'.
  Core.Text ->
  ComputeInstanceGroupManagersDeletePerInstanceConfigs
newComputeInstanceGroupManagersDeletePerInstanceConfigs
  instanceGroupManager
  payload
  project
  zone =
    ComputeInstanceGroupManagersDeletePerInstanceConfigs
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        instanceGroupManager =
          instanceGroupManager,
        payload = payload,
        project = project,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        zone = zone
      }

instance
  Core.GoogleRequest
    ComputeInstanceGroupManagersDeletePerInstanceConfigs
  where
  type
    Rs ComputeInstanceGroupManagersDeletePerInstanceConfigs =
      Operation
  type
    Scopes ComputeInstanceGroupManagersDeletePerInstanceConfigs =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeInstanceGroupManagersDeletePerInstanceConfigs {..} =
      go
        project
        zone
        instanceGroupManager
        xgafv
        accessToken
        callback
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
                  ComputeInstanceGroupManagersDeletePerInstanceConfigsResource
            )
            Core.mempty

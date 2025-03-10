{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Redis.Projects.Locations.Instances.RescheduleMaintenance
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reschedule maintenance for a given instance in a given project and location.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.rescheduleMaintenance@.
module Gogol.Redis.Projects.Locations.Instances.RescheduleMaintenance
  ( -- * Resource
    RedisProjectsLocationsInstancesRescheduleMaintenanceResource,

    -- ** Constructing a Request
    RedisProjectsLocationsInstancesRescheduleMaintenance (..),
    newRedisProjectsLocationsInstancesRescheduleMaintenance,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.rescheduleMaintenance@ method which the
-- 'RedisProjectsLocationsInstancesRescheduleMaintenance' request conforms to.
type RedisProjectsLocationsInstancesRescheduleMaintenanceResource =
  "v1"
    Core.:> Core.CaptureMode "name" "rescheduleMaintenance" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RescheduleMaintenanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Reschedule maintenance for a given instance in a given project and location.
--
-- /See:/ 'newRedisProjectsLocationsInstancesRescheduleMaintenance' smart constructor.
data RedisProjectsLocationsInstancesRescheduleMaintenance = RedisProjectsLocationsInstancesRescheduleMaintenance
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RescheduleMaintenanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesRescheduleMaintenance' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesRescheduleMaintenance ::
  -- |  Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RescheduleMaintenanceRequest ->
  RedisProjectsLocationsInstancesRescheduleMaintenance
newRedisProjectsLocationsInstancesRescheduleMaintenance
  name
  payload =
    RedisProjectsLocationsInstancesRescheduleMaintenance
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    RedisProjectsLocationsInstancesRescheduleMaintenance
  where
  type
    Rs RedisProjectsLocationsInstancesRescheduleMaintenance =
      Operation
  type
    Scopes RedisProjectsLocationsInstancesRescheduleMaintenance =
      '[CloudPlatform'FullControl]
  requestClient
    RedisProjectsLocationsInstancesRescheduleMaintenance {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        redisService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  RedisProjectsLocationsInstancesRescheduleMaintenanceResource
            )
            Core.mempty

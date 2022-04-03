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
-- Module      : Gogol.Redis.Projects.Locations.Instances.Failover
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a failover of the primary node to current replica node for a specific STANDARD tier Cloud Memorystore for Redis instance.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.failover@.
module Gogol.Redis.Projects.Locations.Instances.Failover
  ( -- * Resource
    RedisProjectsLocationsInstancesFailoverResource,

    -- ** Constructing a Request
    RedisProjectsLocationsInstancesFailover (..),
    newRedisProjectsLocationsInstancesFailover,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.failover@ method which the
-- 'RedisProjectsLocationsInstancesFailover' request conforms to.
type RedisProjectsLocationsInstancesFailoverResource =
  "v1"
    Core.:> Core.CaptureMode "name" "failover" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FailoverInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Initiates a failover of the primary node to current replica node for a specific STANDARD tier Cloud Memorystore for Redis instance.
--
-- /See:/ 'newRedisProjectsLocationsInstancesFailover' smart constructor.
data RedisProjectsLocationsInstancesFailover = RedisProjectsLocationsInstancesFailover
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: FailoverInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesFailover' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesFailover ::
  -- |  Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FailoverInstanceRequest ->
  RedisProjectsLocationsInstancesFailover
newRedisProjectsLocationsInstancesFailover name payload =
  RedisProjectsLocationsInstancesFailover
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RedisProjectsLocationsInstancesFailover
  where
  type
    Rs RedisProjectsLocationsInstancesFailover =
      Operation
  type
    Scopes RedisProjectsLocationsInstancesFailover =
      '[CloudPlatform'FullControl]
  requestClient
    RedisProjectsLocationsInstancesFailover {..} =
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
                  RedisProjectsLocationsInstancesFailoverResource
            )
            Core.mempty

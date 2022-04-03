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
-- Module      : Gogol.Redis.Projects.Locations.Instances.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Redis instance based on the specified tier and memory size. By default, the instance is accessible from the project\'s <https://cloud.google.com/vpc/docs/vpc default network>. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis instance will be fully functional. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.create@.
module Gogol.Redis.Projects.Locations.Instances.Create
  ( -- * Resource
    RedisProjectsLocationsInstancesCreateResource,

    -- ** Constructing a Request
    RedisProjectsLocationsInstancesCreate (..),
    newRedisProjectsLocationsInstancesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.create@ method which the
-- 'RedisProjectsLocationsInstancesCreate' request conforms to.
type RedisProjectsLocationsInstancesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "instanceId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a Redis instance based on the specified tier and memory size. By default, the instance is accessible from the project\'s <https://cloud.google.com/vpc/docs/vpc default network>. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis instance will be fully functional. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ 'newRedisProjectsLocationsInstancesCreate' smart constructor.
data RedisProjectsLocationsInstancesCreate = RedisProjectsLocationsInstancesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project \/ location
    instanceId :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the instance location using the form: @projects\/{project_id}\/locations\/{location_id}@ where @location_id@ refers to a GCP region.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesCreate' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesCreate ::
  -- |  Required. The resource name of the instance location using the form: @projects\/{project_id}\/locations\/{location_id}@ where @location_id@ refers to a GCP region. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  RedisProjectsLocationsInstancesCreate
newRedisProjectsLocationsInstancesCreate parent payload =
  RedisProjectsLocationsInstancesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RedisProjectsLocationsInstancesCreate
  where
  type
    Rs RedisProjectsLocationsInstancesCreate =
      Operation
  type
    Scopes RedisProjectsLocationsInstancesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    RedisProjectsLocationsInstancesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        instanceId
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
                  RedisProjectsLocationsInstancesCreateResource
            )
            Core.mempty

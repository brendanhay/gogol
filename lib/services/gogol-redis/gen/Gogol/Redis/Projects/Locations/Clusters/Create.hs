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
-- Module      : Gogol.Redis.Projects.Locations.Clusters.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Redis cluster based on the specified properties. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis cluster will be fully functional. The completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.clusters.create@.
module Gogol.Redis.Projects.Locations.Clusters.Create
  ( -- * Resource
    RedisProjectsLocationsClustersCreateResource,

    -- ** Constructing a Request
    RedisProjectsLocationsClustersCreate (..),
    newRedisProjectsLocationsClustersCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.clusters.create@ method which the
-- 'RedisProjectsLocationsClustersCreate' request conforms to.
type RedisProjectsLocationsClustersCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "clusters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clusterId" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a Redis cluster based on the specified properties. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis cluster will be fully functional. The completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ 'newRedisProjectsLocationsClustersCreate' smart constructor.
data RedisProjectsLocationsClustersCreate = RedisProjectsLocationsClustersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the customer project \/ location
    clusterId :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the cluster location using the form: @projects\/{project_id}\/locations\/{location_id}@ where @location_id@ refers to a GCP region.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Optional. Idempotent request UUID.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsClustersCreate' with the minimum fields required to make a request.
newRedisProjectsLocationsClustersCreate ::
  -- |  Required. The resource name of the cluster location using the form: @projects\/{project_id}\/locations\/{location_id}@ where @location_id@ refers to a GCP region. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  RedisProjectsLocationsClustersCreate
newRedisProjectsLocationsClustersCreate parent payload =
  RedisProjectsLocationsClustersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = Core.Nothing,
      parent = parent,
      payload = payload,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RedisProjectsLocationsClustersCreate where
  type Rs RedisProjectsLocationsClustersCreate = Operation
  type
    Scopes RedisProjectsLocationsClustersCreate =
      '[CloudPlatform'FullControl]
  requestClient RedisProjectsLocationsClustersCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      clusterId
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      redisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RedisProjectsLocationsClustersCreateResource
          )
          Core.mempty

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
-- Module      : Gogol.Redis.Projects.Locations.Clusters.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata and configuration of a specific Redis cluster. Completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.clusters.patch@.
module Gogol.Redis.Projects.Locations.Clusters.Patch
  ( -- * Resource
    RedisProjectsLocationsClustersPatchResource,

    -- ** Constructing a Request
    RedisProjectsLocationsClustersPatch (..),
    newRedisProjectsLocationsClustersPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.clusters.patch@ method which the
-- 'RedisProjectsLocationsClustersPatch' request conforms to.
type RedisProjectsLocationsClustersPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Cluster
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the metadata and configuration of a specific Redis cluster. Completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ 'newRedisProjectsLocationsClustersPatch' smart constructor.
data RedisProjectsLocationsClustersPatch = RedisProjectsLocationsClustersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifier. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Cluster,
    -- | Optional. Idempotent request UUID.
    requestId :: (Core.Maybe Core.Text),
    -- | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from Cluster: * @size_gb@ * @replica_count@ * @cluster_endpoints@
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsClustersPatch' with the minimum fields required to make a request.
newRedisProjectsLocationsClustersPatch ::
  -- |  Required. Identifier. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Cluster ->
  RedisProjectsLocationsClustersPatch
newRedisProjectsLocationsClustersPatch name payload =
  RedisProjectsLocationsClustersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      requestId = Core.Nothing,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RedisProjectsLocationsClustersPatch where
  type Rs RedisProjectsLocationsClustersPatch = Operation
  type
    Scopes RedisProjectsLocationsClustersPatch =
      '[CloudPlatform'FullControl]
  requestClient RedisProjectsLocationsClustersPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      requestId
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      redisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RedisProjectsLocationsClustersPatchResource
          )
          Core.mempty

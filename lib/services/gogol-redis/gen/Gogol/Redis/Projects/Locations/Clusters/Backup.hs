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
-- Module      : Gogol.Redis.Projects.Locations.Clusters.Backup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Backup Redis Cluster. If this is the first time a backup is being created, a backup collection will be created at the backend, and this backup belongs to this collection. Both collection and backup will have a resource name. Backup will be executed for each shard. A replica (primary if nonHA) will be selected to perform the execution. Backup call will be rejected if there is an ongoing backup or update operation. Be aware that during preview, if the cluster\'s internal software version is too old, critical update will be performed before actual backup. Once the internal software version is updated to the minimum version required by the backup feature, subsequent backups will not require critical update. After preview, there will be no critical update needed for backup.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.clusters.backup@.
module Gogol.Redis.Projects.Locations.Clusters.Backup
  ( -- * Resource
    RedisProjectsLocationsClustersBackupResource,

    -- ** Constructing a Request
    RedisProjectsLocationsClustersBackup (..),
    newRedisProjectsLocationsClustersBackup,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.clusters.backup@ method which the
-- 'RedisProjectsLocationsClustersBackup' request conforms to.
type RedisProjectsLocationsClustersBackupResource =
  "v1"
    Core.:> Core.CaptureMode "name" "backup" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BackupClusterRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Backup Redis Cluster. If this is the first time a backup is being created, a backup collection will be created at the backend, and this backup belongs to this collection. Both collection and backup will have a resource name. Backup will be executed for each shard. A replica (primary if nonHA) will be selected to perform the execution. Backup call will be rejected if there is an ongoing backup or update operation. Be aware that during preview, if the cluster\'s internal software version is too old, critical update will be performed before actual backup. Once the internal software version is updated to the minimum version required by the backup feature, subsequent backups will not require critical update. After preview, there will be no critical update needed for backup.
--
-- /See:/ 'newRedisProjectsLocationsClustersBackup' smart constructor.
data RedisProjectsLocationsClustersBackup = RedisProjectsLocationsClustersBackup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Redis cluster resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ where @location_id@ refers to a GCP region.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: BackupClusterRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsClustersBackup' with the minimum fields required to make a request.
newRedisProjectsLocationsClustersBackup ::
  -- |  Required. Redis cluster resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ where @location_id@ refers to a GCP region. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BackupClusterRequest ->
  RedisProjectsLocationsClustersBackup
newRedisProjectsLocationsClustersBackup name payload =
  RedisProjectsLocationsClustersBackup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RedisProjectsLocationsClustersBackup where
  type Rs RedisProjectsLocationsClustersBackup = Operation
  type
    Scopes RedisProjectsLocationsClustersBackup =
      '[CloudPlatform'FullControl]
  requestClient RedisProjectsLocationsClustersBackup {..} =
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
              Core.Proxy RedisProjectsLocationsClustersBackupResource
          )
          Core.mempty

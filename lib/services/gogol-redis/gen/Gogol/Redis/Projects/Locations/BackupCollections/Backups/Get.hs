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
-- Module      : Gogol.Redis.Projects.Locations.BackupCollections.Backups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a specific backup.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.backupCollections.backups.get@.
module Gogol.Redis.Projects.Locations.BackupCollections.Backups.Get
  ( -- * Resource
    RedisProjectsLocationsBackupCollectionsBackupsGetResource,

    -- ** Constructing a Request
    RedisProjectsLocationsBackupCollectionsBackupsGet (..),
    newRedisProjectsLocationsBackupCollectionsBackupsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.backupCollections.backups.get@ method which the
-- 'RedisProjectsLocationsBackupCollectionsBackupsGet' request conforms to.
type RedisProjectsLocationsBackupCollectionsBackupsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Backup

-- | Gets the details of a specific backup.
--
-- /See:/ 'newRedisProjectsLocationsBackupCollectionsBackupsGet' smart constructor.
data RedisProjectsLocationsBackupCollectionsBackupsGet = RedisProjectsLocationsBackupCollectionsBackupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Redis backup resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}\/backups\/{backup_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsBackupCollectionsBackupsGet' with the minimum fields required to make a request.
newRedisProjectsLocationsBackupCollectionsBackupsGet ::
  -- |  Required. Redis backup resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}\/backups\/{backup_id}@ See 'name'.
  Core.Text ->
  RedisProjectsLocationsBackupCollectionsBackupsGet
newRedisProjectsLocationsBackupCollectionsBackupsGet name =
  RedisProjectsLocationsBackupCollectionsBackupsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RedisProjectsLocationsBackupCollectionsBackupsGet
  where
  type Rs RedisProjectsLocationsBackupCollectionsBackupsGet = Backup
  type
    Scopes RedisProjectsLocationsBackupCollectionsBackupsGet =
      '[CloudPlatform'FullControl]
  requestClient RedisProjectsLocationsBackupCollectionsBackupsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      redisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                RedisProjectsLocationsBackupCollectionsBackupsGetResource
          )
          Core.mempty

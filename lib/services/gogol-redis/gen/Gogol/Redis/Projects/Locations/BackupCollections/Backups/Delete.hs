{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Redis.Projects.Locations.BackupCollections.Backups.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific backup.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.backupCollections.backups.delete@.
module Gogol.Redis.Projects.Locations.BackupCollections.Backups.Delete
    (
    -- * Resource
      RedisProjectsLocationsBackupCollectionsBackupsDeleteResource

    -- ** Constructing a Request
    , RedisProjectsLocationsBackupCollectionsBackupsDelete (..)
    , newRedisProjectsLocationsBackupCollectionsBackupsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.backupCollections.backups.delete@ method which the
-- 'RedisProjectsLocationsBackupCollectionsBackupsDelete' request conforms to.
type RedisProjectsLocationsBackupCollectionsBackupsDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "requestId" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Operation

-- | Deletes a specific backup.
--
-- /See:/ 'newRedisProjectsLocationsBackupCollectionsBackupsDelete' smart constructor.
data RedisProjectsLocationsBackupCollectionsBackupsDelete = RedisProjectsLocationsBackupCollectionsBackupsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Redis backup resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}\/backups\/{backup_id}@
    , name :: Core.Text
      -- | Optional. Idempotent request UUID.
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsBackupCollectionsBackupsDelete' with the minimum fields required to make a request.
newRedisProjectsLocationsBackupCollectionsBackupsDelete 
    ::  Core.Text
       -- ^  Required. Redis backup resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}\/backups\/{backup_id}@ See 'name'.
    -> RedisProjectsLocationsBackupCollectionsBackupsDelete
newRedisProjectsLocationsBackupCollectionsBackupsDelete name =
  RedisProjectsLocationsBackupCollectionsBackupsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsBackupCollectionsBackupsDelete
         where
        type Rs
               RedisProjectsLocationsBackupCollectionsBackupsDelete
             = Operation
        type Scopes
               RedisProjectsLocationsBackupCollectionsBackupsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          RedisProjectsLocationsBackupCollectionsBackupsDelete{..}
          = go name xgafv accessToken callback requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsBackupCollectionsBackupsDeleteResource)
                      Core.mempty


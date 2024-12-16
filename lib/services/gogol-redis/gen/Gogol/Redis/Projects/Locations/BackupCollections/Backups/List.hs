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
-- Module      : Gogol.Redis.Projects.Locations.BackupCollections.Backups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all backups owned by a backup collection.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.backupCollections.backups.list@.
module Gogol.Redis.Projects.Locations.BackupCollections.Backups.List
    (
    -- * Resource
      RedisProjectsLocationsBackupCollectionsBackupsListResource

    -- ** Constructing a Request
    , RedisProjectsLocationsBackupCollectionsBackupsList (..)
    , newRedisProjectsLocationsBackupCollectionsBackupsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.backupCollections.backups.list@ method which the
-- 'RedisProjectsLocationsBackupCollectionsBackupsList' request conforms to.
type RedisProjectsLocationsBackupCollectionsBackupsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "backups" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListBackupsResponse

-- | Lists all backups owned by a backup collection.
--
-- /See:/ 'newRedisProjectsLocationsBackupCollectionsBackupsList' smart constructor.
data RedisProjectsLocationsBackupCollectionsBackupsList = RedisProjectsLocationsBackupCollectionsBackupsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response\'s @next_page_token@ to determine if there are more clusters left to be queried.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The @next_page_token@ value returned from a previous [ListBackupCollections] request, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the backupCollection using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsBackupCollectionsBackupsList' with the minimum fields required to make a request.
newRedisProjectsLocationsBackupCollectionsBackupsList 
    ::  Core.Text
       -- ^  Required. The resource name of the backupCollection using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}@ See 'parent'.
    -> RedisProjectsLocationsBackupCollectionsBackupsList
newRedisProjectsLocationsBackupCollectionsBackupsList parent =
  RedisProjectsLocationsBackupCollectionsBackupsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsBackupCollectionsBackupsList
         where
        type Rs
               RedisProjectsLocationsBackupCollectionsBackupsList
             = ListBackupsResponse
        type Scopes
               RedisProjectsLocationsBackupCollectionsBackupsList
             = '[CloudPlatform'FullControl]
        requestClient
          RedisProjectsLocationsBackupCollectionsBackupsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsBackupCollectionsBackupsListResource)
                      Core.mempty


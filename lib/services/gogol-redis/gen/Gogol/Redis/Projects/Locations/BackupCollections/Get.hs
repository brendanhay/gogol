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
-- Module      : Gogol.Redis.Projects.Locations.BackupCollections.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a backup collection.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.backupCollections.get@.
module Gogol.Redis.Projects.Locations.BackupCollections.Get
    (
    -- * Resource
      RedisProjectsLocationsBackupCollectionsGetResource

    -- ** Constructing a Request
    , RedisProjectsLocationsBackupCollectionsGet (..)
    , newRedisProjectsLocationsBackupCollectionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.backupCollections.get@ method which the
-- 'RedisProjectsLocationsBackupCollectionsGet' request conforms to.
type RedisProjectsLocationsBackupCollectionsGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] BackupCollection

-- | Get a backup collection.
--
-- /See:/ 'newRedisProjectsLocationsBackupCollectionsGet' smart constructor.
data RedisProjectsLocationsBackupCollectionsGet = RedisProjectsLocationsBackupCollectionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Redis backupCollection resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}@ where @location_id@ refers to a GCP region.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsBackupCollectionsGet' with the minimum fields required to make a request.
newRedisProjectsLocationsBackupCollectionsGet 
    ::  Core.Text
       -- ^  Required. Redis backupCollection resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/backupCollections\/{backup_collection_id}@ where @location_id@ refers to a GCP region. See 'name'.
    -> RedisProjectsLocationsBackupCollectionsGet
newRedisProjectsLocationsBackupCollectionsGet name =
  RedisProjectsLocationsBackupCollectionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsBackupCollectionsGet
         where
        type Rs RedisProjectsLocationsBackupCollectionsGet =
             BackupCollection
        type Scopes
               RedisProjectsLocationsBackupCollectionsGet
             = '[CloudPlatform'FullControl]
        requestClient
          RedisProjectsLocationsBackupCollectionsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsBackupCollectionsGetResource)
                      Core.mempty


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
-- Module      : Gogol.Redis.Projects.Locations.Clusters.RescheduleClusterMaintenance
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reschedules upcoming maintenance event.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.clusters.rescheduleClusterMaintenance@.
module Gogol.Redis.Projects.Locations.Clusters.RescheduleClusterMaintenance
    (
    -- * Resource
      RedisProjectsLocationsClustersRescheduleClusterMaintenanceResource

    -- ** Constructing a Request
    , RedisProjectsLocationsClustersRescheduleClusterMaintenance (..)
    , newRedisProjectsLocationsClustersRescheduleClusterMaintenance
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.clusters.rescheduleClusterMaintenance@ method which the
-- 'RedisProjectsLocationsClustersRescheduleClusterMaintenance' request conforms to.
type RedisProjectsLocationsClustersRescheduleClusterMaintenanceResource
     =
     "v1" Core.:>
       Core.CaptureMode "name"
         "rescheduleClusterMaintenance"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       RescheduleClusterMaintenanceRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Reschedules upcoming maintenance event.
--
-- /See:/ 'newRedisProjectsLocationsClustersRescheduleClusterMaintenance' smart constructor.
data RedisProjectsLocationsClustersRescheduleClusterMaintenance = RedisProjectsLocationsClustersRescheduleClusterMaintenance
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Redis Cluster instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ where @location_id@ refers to a GCP region.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: RescheduleClusterMaintenanceRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsClustersRescheduleClusterMaintenance' with the minimum fields required to make a request.
newRedisProjectsLocationsClustersRescheduleClusterMaintenance 
    ::  Core.Text
       -- ^  Required. Redis Cluster instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ where @location_id@ refers to a GCP region. See 'name'.
    -> RescheduleClusterMaintenanceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> RedisProjectsLocationsClustersRescheduleClusterMaintenance
newRedisProjectsLocationsClustersRescheduleClusterMaintenance name payload =
  RedisProjectsLocationsClustersRescheduleClusterMaintenance
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsClustersRescheduleClusterMaintenance
         where
        type Rs
               RedisProjectsLocationsClustersRescheduleClusterMaintenance
             = Operation
        type Scopes
               RedisProjectsLocationsClustersRescheduleClusterMaintenance
             = '[CloudPlatform'FullControl]
        requestClient
          RedisProjectsLocationsClustersRescheduleClusterMaintenance{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsClustersRescheduleClusterMaintenanceResource)
                      Core.mempty


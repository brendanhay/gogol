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
-- Module      : Gogol.Redis.Projects.Locations.Clusters.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific Redis cluster. Cluster stops serving and data is deleted.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.clusters.delete@.
module Gogol.Redis.Projects.Locations.Clusters.Delete
    (
    -- * Resource
      RedisProjectsLocationsClustersDeleteResource

    -- ** Constructing a Request
    , RedisProjectsLocationsClustersDelete (..)
    , newRedisProjectsLocationsClustersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.clusters.delete@ method which the
-- 'RedisProjectsLocationsClustersDelete' request conforms to.
type RedisProjectsLocationsClustersDeleteResource =
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

-- | Deletes a specific Redis cluster. Cluster stops serving and data is deleted.
--
-- /See:/ 'newRedisProjectsLocationsClustersDelete' smart constructor.
data RedisProjectsLocationsClustersDelete = RedisProjectsLocationsClustersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Redis cluster resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ where @location_id@ refers to a GCP region.
    , name :: Core.Text
      -- | Idempotent request UUID.
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsClustersDelete' with the minimum fields required to make a request.
newRedisProjectsLocationsClustersDelete 
    ::  Core.Text
       -- ^  Required. Redis cluster resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/clusters\/{cluster_id}@ where @location_id@ refers to a GCP region. See 'name'.
    -> RedisProjectsLocationsClustersDelete
newRedisProjectsLocationsClustersDelete name =
  RedisProjectsLocationsClustersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsClustersDelete
         where
        type Rs RedisProjectsLocationsClustersDelete =
             Operation
        type Scopes RedisProjectsLocationsClustersDelete =
             '[CloudPlatform'FullControl]
        requestClient
          RedisProjectsLocationsClustersDelete{..}
          = go name xgafv accessToken callback requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsClustersDeleteResource)
                      Core.mempty


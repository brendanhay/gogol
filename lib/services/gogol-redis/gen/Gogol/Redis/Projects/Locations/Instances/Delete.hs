{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Redis.Projects.Locations.Instances.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific Redis instance. Instance stops serving and data is deleted.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.delete@.
module Gogol.Redis.Projects.Locations.Instances.Delete
    (
    -- * Resource
      RedisProjectsLocationsInstancesDeleteResource

    -- ** Constructing a Request
    , newRedisProjectsLocationsInstancesDelete
    , RedisProjectsLocationsInstancesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.delete@ method which the
-- 'RedisProjectsLocationsInstancesDelete' request conforms to.
type RedisProjectsLocationsInstancesDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Operation

-- | Deletes a specific Redis instance. Instance stops serving and data is deleted.
--
-- /See:/ 'newRedisProjectsLocationsInstancesDelete' smart constructor.
data RedisProjectsLocationsInstancesDelete = RedisProjectsLocationsInstancesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesDelete' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesDelete 
    ::  Core.Text
       -- ^  Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region. See 'name'.
    -> RedisProjectsLocationsInstancesDelete
newRedisProjectsLocationsInstancesDelete name =
  RedisProjectsLocationsInstancesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RedisProjectsLocationsInstancesDelete
         where
        type Rs RedisProjectsLocationsInstancesDelete =
             Operation
        type Scopes RedisProjectsLocationsInstancesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          RedisProjectsLocationsInstancesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              redisService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RedisProjectsLocationsInstancesDeleteResource)
                      Core.mempty


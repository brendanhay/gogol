{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Redis.Projects.Locations.Instances.GetAuthString
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the AUTH string for a Redis instance. If AUTH is not enabled for the instance the response will be empty. This information is not included in the details returned to GetInstance.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.getAuthString@.
module Gogol.Redis.Projects.Locations.Instances.GetAuthString
  ( -- * Resource
    RedisProjectsLocationsInstancesGetAuthStringResource,

    -- ** Constructing a Request
    newRedisProjectsLocationsInstancesGetAuthString,
    RedisProjectsLocationsInstancesGetAuthString,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.getAuthString@ method which the
-- 'RedisProjectsLocationsInstancesGetAuthString' request conforms to.
type RedisProjectsLocationsInstancesGetAuthStringResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "authString"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InstanceAuthString

-- | Gets the AUTH string for a Redis instance. If AUTH is not enabled for the instance the response will be empty. This information is not included in the details returned to GetInstance.
--
-- /See:/ 'newRedisProjectsLocationsInstancesGetAuthString' smart constructor.
data RedisProjectsLocationsInstancesGetAuthString = RedisProjectsLocationsInstancesGetAuthString
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesGetAuthString' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesGetAuthString ::
  -- |  Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region. See 'name'.
  Core.Text ->
  RedisProjectsLocationsInstancesGetAuthString
newRedisProjectsLocationsInstancesGetAuthString name =
  RedisProjectsLocationsInstancesGetAuthString
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RedisProjectsLocationsInstancesGetAuthString
  where
  type
    Rs RedisProjectsLocationsInstancesGetAuthString =
      InstanceAuthString
  type
    Scopes
      RedisProjectsLocationsInstancesGetAuthString =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    RedisProjectsLocationsInstancesGetAuthString {..} =
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
                  RedisProjectsLocationsInstancesGetAuthStringResource
            )
            Core.mempty

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
-- Module      : Gogol.Redis.Projects.Locations.Instances.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata and configuration of a specific Redis instance. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.patch@.
module Gogol.Redis.Projects.Locations.Instances.Patch
  ( -- * Resource
    RedisProjectsLocationsInstancesPatchResource,

    -- ** Constructing a Request
    newRedisProjectsLocationsInstancesPatch,
    RedisProjectsLocationsInstancesPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.patch@ method which the
-- 'RedisProjectsLocationsInstancesPatch' request conforms to.
type RedisProjectsLocationsInstancesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the metadata and configuration of a specific Redis instance. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ 'newRedisProjectsLocationsInstancesPatch' smart constructor.
data RedisProjectsLocationsInstancesPatch = RedisProjectsLocationsInstancesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ Note: Redis instances are managed and addressed at regional level so location/id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location/id and alternative/location/id fields for more details.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from Instance: * @displayName@ * @labels@ * @memorySizeGb@ * @redisConfig@ * @replica_count@
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesPatch' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesPatch ::
  -- |  Required. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ Note: Redis instances are managed and addressed at regional level so location/id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location/id and alternative/location/id fields for more details. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  RedisProjectsLocationsInstancesPatch
newRedisProjectsLocationsInstancesPatch name payload =
  RedisProjectsLocationsInstancesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RedisProjectsLocationsInstancesPatch
  where
  type
    Rs RedisProjectsLocationsInstancesPatch =
      Operation
  type
    Scopes RedisProjectsLocationsInstancesPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    RedisProjectsLocationsInstancesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
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
                Core.Proxy
                  RedisProjectsLocationsInstancesPatchResource
            )
            Core.mempty

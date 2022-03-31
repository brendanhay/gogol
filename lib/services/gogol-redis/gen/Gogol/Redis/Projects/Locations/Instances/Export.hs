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
-- Module      : Gogol.Redis.Projects.Locations.Instances.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export Redis instance data into a Redis RDB format file in Cloud Storage. Redis will continue serving during this operation. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.export@.
module Gogol.Redis.Projects.Locations.Instances.Export
  ( -- * Resource
    RedisProjectsLocationsInstancesExportResource,

    -- ** Constructing a Request
    newRedisProjectsLocationsInstancesExport,
    RedisProjectsLocationsInstancesExport,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.export@ method which the
-- 'RedisProjectsLocationsInstancesExport' request conforms to.
type RedisProjectsLocationsInstancesExportResource =
  "v1"
    Core.:> Core.CaptureMode "name" "export" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExportInstanceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Export Redis instance data into a Redis RDB format file in Cloud Storage. Redis will continue serving during this operation. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.
--
-- /See:/ 'newRedisProjectsLocationsInstancesExport' smart constructor.
data RedisProjectsLocationsInstancesExport = RedisProjectsLocationsInstancesExport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ExportInstanceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RedisProjectsLocationsInstancesExport' with the minimum fields required to make a request.
newRedisProjectsLocationsInstancesExport ::
  -- |  Required. Redis instance resource name using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ where @location_id@ refers to a GCP region. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ExportInstanceRequest ->
  RedisProjectsLocationsInstancesExport
newRedisProjectsLocationsInstancesExport name payload =
  RedisProjectsLocationsInstancesExport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RedisProjectsLocationsInstancesExport
  where
  type
    Rs RedisProjectsLocationsInstancesExport =
      Operation
  type
    Scopes RedisProjectsLocationsInstancesExport =
      '[CloudPlatform'FullControl]
  requestClient
    RedisProjectsLocationsInstancesExport {..} =
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
                Core.Proxy
                  RedisProjectsLocationsInstancesExportResource
            )
            Core.mempty

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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @WorkerPool@.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.patch@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Patch
  ( -- * Resource
    CloudbuildProjectsLocationsWorkerPoolsPatchResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsWorkerPoolsPatch (..),
    newCloudbuildProjectsLocationsWorkerPoolsPatch,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.workerPools.patch@ method which the
-- 'CloudbuildProjectsLocationsWorkerPoolsPatch' request conforms to.
type CloudbuildProjectsLocationsWorkerPoolsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WorkerPool
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a @WorkerPool@.
--
-- /See:/ 'newCloudbuildProjectsLocationsWorkerPoolsPatch' smart constructor.
data CloudbuildProjectsLocationsWorkerPoolsPatch = CloudbuildProjectsLocationsWorkerPoolsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the @WorkerPool@, with format @projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}@. The value of @{worker_pool}@ is provided by @worker_pool_id@ in @CreateWorkerPool@ request and the value of @{location}@ is determined by the endpoint accessed.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkerPool,
    -- | A mask specifying which fields in @worker_pool@ to update.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | If set, validate the request and preview the response, but do not actually post it.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsWorkerPoolsPatch' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsWorkerPoolsPatch ::
  -- |  Output only. The resource name of the @WorkerPool@, with format @projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}@. The value of @{worker_pool}@ is provided by @worker_pool_id@ in @CreateWorkerPool@ request and the value of @{location}@ is determined by the endpoint accessed. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkerPool ->
  CloudbuildProjectsLocationsWorkerPoolsPatch
newCloudbuildProjectsLocationsWorkerPoolsPatch name payload =
  CloudbuildProjectsLocationsWorkerPoolsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsWorkerPoolsPatch
  where
  type
    Rs CloudbuildProjectsLocationsWorkerPoolsPatch =
      Operation
  type
    Scopes
      CloudbuildProjectsLocationsWorkerPoolsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsWorkerPoolsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        validateOnly
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsWorkerPoolsPatchResource
            )
            Core.mempty

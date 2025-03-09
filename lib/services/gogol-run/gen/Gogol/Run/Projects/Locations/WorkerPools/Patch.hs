{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Projects.Locations.WorkerPools.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a WorkerPool.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.workerPools.patch@.
module Gogol.Run.Projects.Locations.WorkerPools.Patch
  ( -- * Resource
    RunProjectsLocationsWorkerPoolsPatchResource,

    -- ** Constructing a Request
    RunProjectsLocationsWorkerPoolsPatch (..),
    newRunProjectsLocationsWorkerPoolsPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.workerPools.patch@ method which the
-- 'RunProjectsLocationsWorkerPoolsPatch' request conforms to.
type RunProjectsLocationsWorkerPoolsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "forceNewRevision" Core.Bool
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2WorkerPool
    Core.:> Core.Patch '[Core.JSON] GoogleLongrunningOperation

-- | Updates a WorkerPool.
--
-- /See:/ 'newRunProjectsLocationsWorkerPoolsPatch' smart constructor.
data RunProjectsLocationsWorkerPoolsPatch = RunProjectsLocationsWorkerPoolsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. If set to true, and if the WorkerPool does not exist, it will create a new one. The caller must have \'run.workerpools.create\' permissions if this is set to true and the WorkerPool does not exist.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. If set to true, a new revision will be created from the template even if the system doesn\'t detect any changes from the previously deployed revision. This may be useful for cases where the underlying resources need to be recreated or reinitialized. For example if the image is specified by label, but the underlying image digest has changed) or if the container performs deployment initialization work that needs to be performed again.
    forceNewRevision :: (Core.Maybe Core.Bool),
    -- | The fully qualified name of this WorkerPool. In CreateWorkerPoolRequest, this field is ignored, and instead composed from CreateWorkerPoolRequest.parent and CreateWorkerPoolRequest.worker/id. Format: projects\/{project}\/locations\/{location}\/workerPools\/{worker/id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2WorkerPool,
    -- | Optional. The list of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Indicates that the request should be validated and default values populated, without persisting the request or updating any resources.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsWorkerPoolsPatch' with the minimum fields required to make a request.
newRunProjectsLocationsWorkerPoolsPatch ::
  -- |  The fully qualified name of this WorkerPool. In CreateWorkerPoolRequest, this field is ignored, and instead composed from CreateWorkerPoolRequest.parent and CreateWorkerPoolRequest.worker/id. Format: projects\/{project}\/locations\/{location}\/workerPools\/{worker/id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2WorkerPool ->
  RunProjectsLocationsWorkerPoolsPatch
newRunProjectsLocationsWorkerPoolsPatch name payload =
  RunProjectsLocationsWorkerPoolsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowMissing = Core.Nothing,
      callback = Core.Nothing,
      forceNewRevision = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsWorkerPoolsPatch where
  type
    Rs RunProjectsLocationsWorkerPoolsPatch =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsWorkerPoolsPatch =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsWorkerPoolsPatch {..} =
    go
      name
      xgafv
      accessToken
      allowMissing
      callback
      forceNewRevision
      updateMask
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsWorkerPoolsPatchResource
          )
          Core.mempty

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Run.Projects.Locations.WorkerPools.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new WorkerPool in a given project and location.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.workerPools.create@.
module Gogol.Run.Projects.Locations.WorkerPools.Create
  ( -- * Resource
    RunProjectsLocationsWorkerPoolsCreateResource,

    -- ** Constructing a Request
    RunProjectsLocationsWorkerPoolsCreate (..),
    newRunProjectsLocationsWorkerPoolsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.workerPools.create@ method which the
-- 'RunProjectsLocationsWorkerPoolsCreate' request conforms to.
type RunProjectsLocationsWorkerPoolsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workerPools"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "workerPoolId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2WorkerPool
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a new WorkerPool in a given project and location.
--
-- /See:/ 'newRunProjectsLocationsWorkerPoolsCreate' smart constructor.
data RunProjectsLocationsWorkerPoolsCreate = RunProjectsLocationsWorkerPoolsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The location and project in which this worker pool should be created. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number. Only lowercase characters, digits, and hyphens.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2WorkerPool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. Indicates that the request should be validated and default values populated, without persisting the request or creating any resources.
    validateOnly :: (Core.Maybe Core.Bool),
    -- | Required. The unique identifier for the WorkerPool. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the worker pool becomes {parent}\/workerPools\/{worker/pool/id}.
    workerPoolId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsWorkerPoolsCreate' with the minimum fields required to make a request.
newRunProjectsLocationsWorkerPoolsCreate ::
  -- |  Required. The location and project in which this worker pool should be created. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number. Only lowercase characters, digits, and hyphens. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2WorkerPool ->
  RunProjectsLocationsWorkerPoolsCreate
newRunProjectsLocationsWorkerPoolsCreate parent payload =
  RunProjectsLocationsWorkerPoolsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing,
      workerPoolId = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsWorkerPoolsCreate where
  type
    Rs RunProjectsLocationsWorkerPoolsCreate =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsWorkerPoolsCreate =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsWorkerPoolsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      validateOnly
      workerPoolId
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsWorkerPoolsCreateResource
          )
          Core.mempty

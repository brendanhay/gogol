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
-- Module      : Gogol.Run.Projects.Locations.WorkerPools.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a WorkerPool.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.workerPools.get@.
module Gogol.Run.Projects.Locations.WorkerPools.Get
  ( -- * Resource
    RunProjectsLocationsWorkerPoolsGetResource,

    -- ** Constructing a Request
    RunProjectsLocationsWorkerPoolsGet (..),
    newRunProjectsLocationsWorkerPoolsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.workerPools.get@ method which the
-- 'RunProjectsLocationsWorkerPoolsGet' request conforms to.
type RunProjectsLocationsWorkerPoolsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRunV2WorkerPool

-- | Gets information about a WorkerPool.
--
-- /See:/ 'newRunProjectsLocationsWorkerPoolsGet' smart constructor.
data RunProjectsLocationsWorkerPoolsGet = RunProjectsLocationsWorkerPoolsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full name of the WorkerPool. Format: projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}, where {project} can be project id or number.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsWorkerPoolsGet' with the minimum fields required to make a request.
newRunProjectsLocationsWorkerPoolsGet ::
  -- |  Required. The full name of the WorkerPool. Format: projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}, where {project} can be project id or number. See 'name'.
  Core.Text ->
  RunProjectsLocationsWorkerPoolsGet
newRunProjectsLocationsWorkerPoolsGet name =
  RunProjectsLocationsWorkerPoolsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsWorkerPoolsGet where
  type
    Rs RunProjectsLocationsWorkerPoolsGet =
      GoogleCloudRunV2WorkerPool
  type
    Scopes RunProjectsLocationsWorkerPoolsGet =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsWorkerPoolsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsWorkerPoolsGetResource
          )
          Core.mempty

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
-- Module      : Gogol.Run.Projects.Locations.WorkerPools.Revisions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.workerPools.revisions.get@.
module Gogol.Run.Projects.Locations.WorkerPools.Revisions.Get
  ( -- * Resource
    RunProjectsLocationsWorkerPoolsRevisionsGetResource,

    -- ** Constructing a Request
    RunProjectsLocationsWorkerPoolsRevisionsGet (..),
    newRunProjectsLocationsWorkerPoolsRevisionsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.workerPools.revisions.get@ method which the
-- 'RunProjectsLocationsWorkerPoolsRevisionsGet' request conforms to.
type RunProjectsLocationsWorkerPoolsRevisionsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRunV2Revision

-- | Gets information about a Revision.
--
-- /See:/ 'newRunProjectsLocationsWorkerPoolsRevisionsGet' smart constructor.
data RunProjectsLocationsWorkerPoolsRevisionsGet = RunProjectsLocationsWorkerPoolsRevisionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full name of the Revision. Format: projects\/{project}\/locations\/{location}\/services\/{service}\/revisions\/{revision}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsWorkerPoolsRevisionsGet' with the minimum fields required to make a request.
newRunProjectsLocationsWorkerPoolsRevisionsGet ::
  -- |  Required. The full name of the Revision. Format: projects\/{project}\/locations\/{location}\/services\/{service}\/revisions\/{revision} See 'name'.
  Core.Text ->
  RunProjectsLocationsWorkerPoolsRevisionsGet
newRunProjectsLocationsWorkerPoolsRevisionsGet name =
  RunProjectsLocationsWorkerPoolsRevisionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsWorkerPoolsRevisionsGet
  where
  type
    Rs RunProjectsLocationsWorkerPoolsRevisionsGet =
      GoogleCloudRunV2Revision
  type
    Scopes RunProjectsLocationsWorkerPoolsRevisionsGet =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsWorkerPoolsRevisionsGet {..} =
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
              Core.Proxy RunProjectsLocationsWorkerPoolsRevisionsGetResource
          )
          Core.mempty

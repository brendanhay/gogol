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
-- Module      : Gogol.Run.Projects.Locations.Jobs.Run
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Triggers creation of a new Execution of this Job.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.run@.
module Gogol.Run.Projects.Locations.Jobs.Run
  ( -- * Resource
    RunProjectsLocationsJobsRunResource,

    -- ** Constructing a Request
    RunProjectsLocationsJobsRun (..),
    newRunProjectsLocationsJobsRun,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.run@ method which the
-- 'RunProjectsLocationsJobsRun' request conforms to.
type RunProjectsLocationsJobsRunResource =
  "v2"
    Core.:> Core.CaptureMode "name" "run" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2RunJobRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Triggers creation of a new Execution of this Job.
--
-- /See:/ 'newRunProjectsLocationsJobsRun' smart constructor.
data RunProjectsLocationsJobsRun = RunProjectsLocationsJobsRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full name of the Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}, where {project} can be project id or number.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2RunJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsRun' with the minimum fields required to make a request.
newRunProjectsLocationsJobsRun ::
  -- |  Required. The full name of the Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}, where {project} can be project id or number. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2RunJobRequest ->
  RunProjectsLocationsJobsRun
newRunProjectsLocationsJobsRun name payload =
  RunProjectsLocationsJobsRun
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsJobsRun where
  type Rs RunProjectsLocationsJobsRun = GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsJobsRun =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsJobsRun {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy RunProjectsLocationsJobsRunResource)
          Core.mempty

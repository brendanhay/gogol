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
-- Module      : Gogol.Run.Projects.Locations.Builds.Submit
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a build in a given project.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.builds.submit@.
module Gogol.Run.Projects.Locations.Builds.Submit
  ( -- * Resource
    RunProjectsLocationsBuildsSubmitResource,

    -- ** Constructing a Request
    RunProjectsLocationsBuildsSubmit (..),
    newRunProjectsLocationsBuildsSubmit,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.builds.submit@ method which the
-- 'RunProjectsLocationsBuildsSubmit' request conforms to.
type RunProjectsLocationsBuildsSubmitResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "builds:submit"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2SubmitBuildRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudRunV2SubmitBuildResponse

-- | Submits a build in a given project.
--
-- /See:/ 'newRunProjectsLocationsBuildsSubmit' smart constructor.
data RunProjectsLocationsBuildsSubmit = RunProjectsLocationsBuildsSubmit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project and location to build in. Location must be a region, e.g., \'us-central1\' or \'global\' if the global builder is to be used. Format: @projects\/{project}\/locations\/{location}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2SubmitBuildRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsBuildsSubmit' with the minimum fields required to make a request.
newRunProjectsLocationsBuildsSubmit ::
  -- |  Required. The project and location to build in. Location must be a region, e.g., \'us-central1\' or \'global\' if the global builder is to be used. Format: @projects\/{project}\/locations\/{location}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2SubmitBuildRequest ->
  RunProjectsLocationsBuildsSubmit
newRunProjectsLocationsBuildsSubmit parent payload =
  RunProjectsLocationsBuildsSubmit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsBuildsSubmit where
  type
    Rs RunProjectsLocationsBuildsSubmit =
      GoogleCloudRunV2SubmitBuildResponse
  type
    Scopes RunProjectsLocationsBuildsSubmit =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsBuildsSubmit {..} =
    go
      parent
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
          (Core.Proxy :: Core.Proxy RunProjectsLocationsBuildsSubmitResource)
          Core.mempty

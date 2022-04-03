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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a build with the specified configuration. This method returns a long-running @Operation@, which includes the build ID. Pass the build ID to @GetBuild@ to determine the build status (such as @SUCCESS@ or @FAILURE@).
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Create
  ( -- * Resource
    CloudbuildProjectsLocationsBuildsCreateResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsBuildsCreate (..),
    newCloudbuildProjectsLocationsBuildsCreate,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.builds.create@ method which the
-- 'CloudbuildProjectsLocationsBuildsCreate' request conforms to.
type CloudbuildProjectsLocationsBuildsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "builds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Build
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts a build with the specified configuration. This method returns a long-running @Operation@, which includes the build ID. Pass the build ID to @GetBuild@ to determine the build status (such as @SUCCESS@ or @FAILURE@).
--
-- /See:/ 'newCloudbuildProjectsLocationsBuildsCreate' smart constructor.
data CloudbuildProjectsLocationsBuildsCreate = CloudbuildProjectsLocationsBuildsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent resource where this build will be created. Format: @projects\/{project}\/locations\/{location}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Build,
    -- | Required. ID of the project.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBuildsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBuildsCreate ::
  -- |  The parent resource where this build will be created. Format: @projects\/{project}\/locations\/{location}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Build ->
  CloudbuildProjectsLocationsBuildsCreate
newCloudbuildProjectsLocationsBuildsCreate parent payload =
  CloudbuildProjectsLocationsBuildsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsBuildsCreate
  where
  type
    Rs CloudbuildProjectsLocationsBuildsCreate =
      Operation
  type
    Scopes CloudbuildProjectsLocationsBuildsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsBuildsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        projectId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsBuildsCreateResource
            )
            Core.mempty

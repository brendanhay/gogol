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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a previously requested build. The @Build@ that is returned includes its status (such as @SUCCESS@, @FAILURE@, or @WORKING@), and timing information.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.get@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Get
  ( -- * Resource
    CloudbuildProjectsBuildsGetResource,

    -- ** Constructing a Request
    newCloudbuildProjectsBuildsGet,
    CloudbuildProjectsBuildsGet,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.builds.get@ method which the
-- 'CloudbuildProjectsBuildsGet' request conforms to.
type CloudbuildProjectsBuildsGetResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "builds"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Build

-- | Returns information about a previously requested build. The @Build@ that is returned includes its status (such as @SUCCESS@, @FAILURE@, or @WORKING@), and timing information.
--
-- /See:/ 'newCloudbuildProjectsBuildsGet' smart constructor.
data CloudbuildProjectsBuildsGet = CloudbuildProjectsBuildsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of the build.
    id :: Core.Text,
    -- | The name of the @Build@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@
    name :: (Core.Maybe Core.Text),
    -- | Required. ID of the project.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsBuildsGet' with the minimum fields required to make a request.
newCloudbuildProjectsBuildsGet ::
  -- |  Required. ID of the build. See 'id'.
  Core.Text ->
  -- |  Required. ID of the project. See 'projectId'.
  Core.Text ->
  CloudbuildProjectsBuildsGet
newCloudbuildProjectsBuildsGet id projectId =
  CloudbuildProjectsBuildsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      name = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsBuildsGet
  where
  type Rs CloudbuildProjectsBuildsGet = Build
  type
    Scopes CloudbuildProjectsBuildsGet =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsBuildsGet {..} =
    go
      projectId
      id
      xgafv
      accessToken
      callback
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsBuildsGetResource
          )
          Core.mempty

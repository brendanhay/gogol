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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a build in progress.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.cancel@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Cancel
  ( -- * Resource
    CloudbuildProjectsBuildsCancelResource,

    -- ** Constructing a Request
    newCloudbuildProjectsBuildsCancel,
    CloudbuildProjectsBuildsCancel,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.builds.cancel@ method which the
-- 'CloudbuildProjectsBuildsCancel' request conforms to.
type CloudbuildProjectsBuildsCancelResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "builds"
    Core.:> Core.CaptureMode "id" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelBuildRequest
    Core.:> Core.Post '[Core.JSON] Build

-- | Cancels a build in progress.
--
-- /See:/ 'newCloudbuildProjectsBuildsCancel' smart constructor.
data CloudbuildProjectsBuildsCancel = CloudbuildProjectsBuildsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of the build.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelBuildRequest,
    -- | Required. ID of the project.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsBuildsCancel' with the minimum fields required to make a request.
newCloudbuildProjectsBuildsCancel ::
  -- |  Required. ID of the build. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelBuildRequest ->
  -- |  Required. ID of the project. See 'projectId'.
  Core.Text ->
  CloudbuildProjectsBuildsCancel
newCloudbuildProjectsBuildsCancel id payload projectId =
  CloudbuildProjectsBuildsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsBuildsCancel
  where
  type Rs CloudbuildProjectsBuildsCancel = Build
  type
    Scopes CloudbuildProjectsBuildsCancel =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsBuildsCancel {..} =
    go
      projectId
      id
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsBuildsCancelResource
          )
          Core.mempty

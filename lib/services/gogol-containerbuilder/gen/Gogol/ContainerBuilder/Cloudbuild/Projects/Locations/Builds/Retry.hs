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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Retry
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new build based on the specified build. This method creates a new build using the original build request, which may or may not result in an identical build. For triggered builds: * Triggered builds resolve to a precise revision; therefore a retry of a triggered build will result in a build that uses the same revision. For non-triggered builds that specify @RepoSource@: * If the original build built from the tip of a branch, the retried build will build from the tip of that branch, which may not be the same revision as the original build. * If the original build specified a commit sha or revision ID, the retried build will use the identical source. For builds that specify @StorageSource@: * If the original build pulled source from Google Cloud Storage without specifying the generation of the object, the new build will use the current object, which may be different from the original build source. * If the original build pulled source from Cloud Storage and specified the generation of the object, the
-- new build will attempt to use the same object, which may or may not be available depending on the bucket\'s lifecycle management settings.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.retry@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Retry
  ( -- * Resource
    CloudbuildProjectsLocationsBuildsRetryResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsBuildsRetry,
    CloudbuildProjectsLocationsBuildsRetry,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.builds.retry@ method which the
-- 'CloudbuildProjectsLocationsBuildsRetry' request conforms to.
type CloudbuildProjectsLocationsBuildsRetryResource =
  "v1"
    Core.:> Core.CaptureMode "name" "retry" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RetryBuildRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new build based on the specified build. This method creates a new build using the original build request, which may or may not result in an identical build. For triggered builds: * Triggered builds resolve to a precise revision; therefore a retry of a triggered build will result in a build that uses the same revision. For non-triggered builds that specify @RepoSource@: * If the original build built from the tip of a branch, the retried build will build from the tip of that branch, which may not be the same revision as the original build. * If the original build specified a commit sha or revision ID, the retried build will use the identical source. For builds that specify @StorageSource@: * If the original build pulled source from Google Cloud Storage without specifying the generation of the object, the new build will use the current object, which may be different from the original build source. * If the original build pulled source from Cloud Storage and specified the generation of the object, the
-- new build will attempt to use the same object, which may or may not be available depending on the bucket\'s lifecycle management settings.
--
-- /See:/ 'newCloudbuildProjectsLocationsBuildsRetry' smart constructor.
data CloudbuildProjectsLocationsBuildsRetry = CloudbuildProjectsLocationsBuildsRetry
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the @Build@ to retry. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RetryBuildRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBuildsRetry' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBuildsRetry ::
  -- |  The name of the @Build@ to retry. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RetryBuildRequest ->
  CloudbuildProjectsLocationsBuildsRetry
newCloudbuildProjectsLocationsBuildsRetry name payload =
  CloudbuildProjectsLocationsBuildsRetry
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsBuildsRetry
  where
  type
    Rs CloudbuildProjectsLocationsBuildsRetry =
      Operation
  type
    Scopes CloudbuildProjectsLocationsBuildsRetry =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsLocationsBuildsRetry {..} =
      go
        name
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
                Core.Proxy
                  CloudbuildProjectsLocationsBuildsRetryResource
            )
            Core.mempty

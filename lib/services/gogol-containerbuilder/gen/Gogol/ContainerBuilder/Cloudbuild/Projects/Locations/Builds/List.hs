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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists previously requested builds. Previously requested builds may still be in-progress, or may have finished successfully or unsuccessfully.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.List
  ( -- * Resource
    CloudbuildProjectsLocationsBuildsListResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsBuildsList,
    CloudbuildProjectsLocationsBuildsList,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.builds.list@ method which the
-- 'CloudbuildProjectsLocationsBuildsList' request conforms to.
type CloudbuildProjectsLocationsBuildsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "builds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBuildsResponse

-- | Lists previously requested builds. Previously requested builds may still be in-progress, or may have finished successfully or unsuccessfully.
--
-- /See:/ 'newCloudbuildProjectsLocationsBuildsList' smart constructor.
data CloudbuildProjectsLocationsBuildsList = CloudbuildProjectsLocationsBuildsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The raw filter text to constrain the results.
    filter :: (Core.Maybe Core.Text),
    -- | Number of results to return in the list.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The page token for the next page of Builds. If unspecified, the first page of results is returned. If the token is rejected for any reason, INVALID_ARGUMENT will be thrown. In this case, the token should be discarded, and pagination should be restarted from the first page of results. See https:\/\/google.aip.dev\/158 for more.
    pageToken :: (Core.Maybe Core.Text),
    -- | The parent of the collection of @Builds@. Format: @projects\/{project}\/locations\/{location}@
    parent :: Core.Text,
    -- | Required. ID of the project.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBuildsList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBuildsList ::
  -- |  The parent of the collection of @Builds@. Format: @projects\/{project}\/locations\/{location}@ See 'parent'.
  Core.Text ->
  CloudbuildProjectsLocationsBuildsList
newCloudbuildProjectsLocationsBuildsList parent =
  CloudbuildProjectsLocationsBuildsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsBuildsList
  where
  type
    Rs CloudbuildProjectsLocationsBuildsList =
      ListBuildsResponse
  type
    Scopes CloudbuildProjectsLocationsBuildsList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsBuildsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        projectId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsBuildsListResource
            )
            Core.mempty

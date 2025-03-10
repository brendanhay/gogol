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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.FetchGitRefs
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the list of branches or tags for a given repository.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.repositories.fetchGitRefs@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.FetchGitRefs
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefsResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.repositories.fetchGitRefs@ method which the
-- 'CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs' request conforms to.
type CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefsResource =
  "v2"
    Core.:> Core.CaptureMode "repository" "fetchGitRefs" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "refType"
              ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FetchGitRefsResponse

-- | Fetch the list of branches or tags for a given repository.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs' smart constructor.
data CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs = CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Number of results to return in the list. Default to 20.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Page start.
    pageToken :: (Core.Maybe Core.Text),
    -- | Type of refs to fetch
    refType ::
      ( Core.Maybe
          ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
      ),
    -- | Required. The resource name of the repository in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@.
    repository :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs ::
  -- |  Required. The resource name of the repository in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@. See 'repository'.
  Core.Text ->
  CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs
newCloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs
  repository =
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        refType = Core.Nothing,
        repository = repository,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs
  where
  type
    Rs
      CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs =
      FetchGitRefsResponse
  type
    Scopes
      CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefs {..} =
      go
        repository
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        refType
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsConnectionsRepositoriesFetchGitRefsResource
            )
            Core.mempty

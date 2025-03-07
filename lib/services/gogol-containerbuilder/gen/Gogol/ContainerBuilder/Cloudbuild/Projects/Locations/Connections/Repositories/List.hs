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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Repositories in a given connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.repositories.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.List
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsRepositoriesListResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsRepositoriesList (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesList,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.repositories.list@ method which the
-- 'CloudbuildProjectsLocationsConnectionsRepositoriesList' request conforms to.
type CloudbuildProjectsLocationsConnectionsRepositoriesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "repositories"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListRepositoriesResponse

-- | Lists Repositories in a given connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsRepositoriesList' smart constructor.
data CloudbuildProjectsLocationsConnectionsRepositoriesList = CloudbuildProjectsLocationsConnectionsRepositoriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter expression that filters resources listed in the response. Expressions must follow API improvement proposal <https://google.aip.dev/160 AIP-160>. e.g. @remote_uri:\"https:\/\/github.com*\"@.
    filter :: (Core.Maybe Core.Text),
    -- | Number of results to return in the list.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page start.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of Repositories. Format: @projects\/*\/locations\/*\/connections\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsRepositoriesList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsRepositoriesList ::
  -- |  Required. The parent, which owns this collection of Repositories. Format: @projects\/*\/locations\/*\/connections\/*@. See 'parent'.
  Core.Text ->
  CloudbuildProjectsLocationsConnectionsRepositoriesList
newCloudbuildProjectsLocationsConnectionsRepositoriesList parent =
  CloudbuildProjectsLocationsConnectionsRepositoriesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsRepositoriesList
  where
  type
    Rs CloudbuildProjectsLocationsConnectionsRepositoriesList =
      ListRepositoriesResponse
  type
    Scopes CloudbuildProjectsLocationsConnectionsRepositoriesList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsConnectionsRepositoriesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsConnectionsRepositoriesListResource
            )
            Core.mempty

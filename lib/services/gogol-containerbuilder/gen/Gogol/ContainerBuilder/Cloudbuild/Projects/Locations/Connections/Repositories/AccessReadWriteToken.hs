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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.AccessReadWriteToken
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches read\/write token of a given repository.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.repositories.accessReadWriteToken@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.AccessReadWriteToken
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteTokenResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.repositories.accessReadWriteToken@ method which the
-- 'CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken' request conforms to.
type CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteTokenResource =
  "v2"
    Core.:> Core.CaptureMode "repository" "accessReadWriteToken" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FetchReadWriteTokenRequest
    Core.:> Core.Post '[Core.JSON] FetchReadWriteTokenResponse

-- | Fetches read\/write token of a given repository.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken' smart constructor.
data CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken = CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: FetchReadWriteTokenRequest,
    -- | Required. The resource name of the repository in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@.
    repository :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken ::
  -- |  Multipart request metadata. See 'payload'.
  FetchReadWriteTokenRequest ->
  -- |  Required. The resource name of the repository in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@. See 'repository'.
  Core.Text ->
  CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken
newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken
  payload
  repository =
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        repository = repository,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken
  where
  type
    Rs
      CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken =
      FetchReadWriteTokenResponse
  type
    Scopes
      CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteToken {..} =
      go
        repository
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
                  CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadWriteTokenResource
            )
            Core.mempty

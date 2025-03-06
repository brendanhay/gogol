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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.AccessReadToken
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches read token of a given repository.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.repositories.accessReadToken@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.AccessReadToken
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadTokenResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.repositories.accessReadToken@ method which the
-- 'CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken' request conforms to.
type CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadTokenResource =
  "v2"
    Core.:> Core.CaptureMode "repository" "accessReadToken" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FetchReadTokenRequest
    Core.:> Core.Post '[Core.JSON] FetchReadTokenResponse

-- | Fetches read token of a given repository.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken' smart constructor.
data CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken = CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: FetchReadTokenRequest,
    -- | Required. The resource name of the repository in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@.
    repository :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken ::
  -- |  Multipart request metadata. See 'payload'.
  FetchReadTokenRequest ->
  -- |  Required. The resource name of the repository in the format @projects\/*\/locations\/*\/connections\/*\/repositories\/*@. See 'repository'.
  Core.Text ->
  CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken
newCloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken
  payload
  repository =
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        repository = repository,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken
  where
  type
    Rs
      CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken =
      FetchReadTokenResponse
  type
    Scopes
      CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadToken {..} =
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
                  CloudbuildProjectsLocationsConnectionsRepositoriesAccessReadTokenResource
            )
            Core.mempty

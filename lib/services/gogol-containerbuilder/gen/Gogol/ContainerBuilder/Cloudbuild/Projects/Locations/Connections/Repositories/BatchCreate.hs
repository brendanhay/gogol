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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.BatchCreate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple repositories inside a connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.repositories.batchCreate@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.BatchCreate
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreateResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate (..),
    newCloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.repositories.batchCreate@ method which the
-- 'CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate' request conforms to.
type CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "repositories:batchCreate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchCreateRepositoriesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates multiple repositories inside a connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate' smart constructor.
data CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate = CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The connection to contain all the repositories being created. Format: projects\//\/locations\//\/connections\/* The parent field in the CreateRepositoryRequest messages must either be empty or match this field.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchCreateRepositoriesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate ::
  -- |  Required. The connection to contain all the repositories being created. Format: projects\//\/locations\//\/connections\/* The parent field in the CreateRepositoryRequest messages must either be empty or match this field. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchCreateRepositoriesRequest ->
  CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate
newCloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate
  parent
  payload =
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate
  where
  type
    Rs
      CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate =
      Operation
  type
    Scopes
      CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreate {..} =
      go
        parent
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
                  CloudbuildProjectsLocationsConnectionsRepositoriesBatchCreateResource
            )
            Core.mempty

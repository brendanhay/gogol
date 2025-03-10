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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a single connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Delete
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsDeleteResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsDelete (..),
    newCloudbuildProjectsLocationsConnectionsDelete,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.delete@ method which the
-- 'CloudbuildProjectsLocationsConnectionsDelete' request conforms to.
type CloudbuildProjectsLocationsConnectionsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a single connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsDelete' smart constructor.
data CloudbuildProjectsLocationsConnectionsDelete = CloudbuildProjectsLocationsConnectionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The current etag of the connection. If an etag is provided and does not match the current etag of the connection, deletion will be blocked and an ABORTED error will be returned.
    etag :: (Core.Maybe Core.Text),
    -- | Required. The name of the Connection to delete. Format: @projects\/*\/locations\/*\/connections\/*@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | If set, validate the request, but do not actually post it.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsDelete' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsDelete ::
  -- |  Required. The name of the Connection to delete. Format: @projects\/*\/locations\/*\/connections\/*@. See 'name'.
  Core.Text ->
  CloudbuildProjectsLocationsConnectionsDelete
newCloudbuildProjectsLocationsConnectionsDelete name =
  CloudbuildProjectsLocationsConnectionsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsDelete
  where
  type Rs CloudbuildProjectsLocationsConnectionsDelete = Operation
  type
    Scopes CloudbuildProjectsLocationsConnectionsDelete =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsLocationsConnectionsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      etag
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsLocationsConnectionsDeleteResource
          )
          Core.mempty

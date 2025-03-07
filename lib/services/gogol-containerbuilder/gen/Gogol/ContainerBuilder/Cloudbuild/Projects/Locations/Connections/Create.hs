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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Create
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsCreateResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsCreate (..),
    newCloudbuildProjectsLocationsConnectionsCreate,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.create@ method which the
-- 'CloudbuildProjectsLocationsConnectionsCreate' request conforms to.
type CloudbuildProjectsLocationsConnectionsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "connections"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "connectionId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Connection
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a Connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsCreate' smart constructor.
data CloudbuildProjectsLocationsConnectionsCreate = CloudbuildProjectsLocationsConnectionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID to use for the Connection, which will become the final component of the Connection\'s resource name. Names must be unique per-project per-location. Allows alphanumeric characters and any of -._~%!$&\'()*+,;=\@.
    connectionId :: (Core.Maybe Core.Text),
    -- | Required. Project and location where the connection will be created. Format: @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Connection,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsCreate ::
  -- |  Required. Project and location where the connection will be created. Format: @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Connection ->
  CloudbuildProjectsLocationsConnectionsCreate
newCloudbuildProjectsLocationsConnectionsCreate parent payload =
  CloudbuildProjectsLocationsConnectionsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      connectionId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsCreate
  where
  type Rs CloudbuildProjectsLocationsConnectionsCreate = Operation
  type
    Scopes CloudbuildProjectsLocationsConnectionsCreate =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsLocationsConnectionsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      connectionId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsLocationsConnectionsCreateResource
          )
          Core.mempty

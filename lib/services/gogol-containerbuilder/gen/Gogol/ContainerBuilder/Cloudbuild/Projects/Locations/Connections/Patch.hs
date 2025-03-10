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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a single connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.patch@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Patch
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsPatchResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsPatch (..),
    newCloudbuildProjectsLocationsConnectionsPatch,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.patch@ method which the
-- 'CloudbuildProjectsLocationsConnectionsPatch' request conforms to.
type CloudbuildProjectsLocationsConnectionsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "etag" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Connection
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a single connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsPatch' smart constructor.
data CloudbuildProjectsLocationsConnectionsPatch = CloudbuildProjectsLocationsConnectionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If set to true, and the connection is not found a new connection will be created. In this situation @update_mask@ is ignored. The creation will succeed only if the input connection has all the necessary information (e.g a github/config with both user/oauth/token and installation/id properties).
    allowMissing :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The current etag of the connection. If an etag is provided and does not match the current etag of the connection, update will be blocked and an ABORTED error will be returned.
    etag :: (Core.Maybe Core.Text),
    -- | Immutable. The resource name of the connection, in the format @projects\/{project}\/locations\/{location}\/connections\/{connection_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Connection,
    -- | The list of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsPatch' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsPatch ::
  -- |  Immutable. The resource name of the connection, in the format @projects\/{project}\/locations\/{location}\/connections\/{connection_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Connection ->
  CloudbuildProjectsLocationsConnectionsPatch
newCloudbuildProjectsLocationsConnectionsPatch name payload =
  CloudbuildProjectsLocationsConnectionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowMissing = Core.Nothing,
      callback = Core.Nothing,
      etag = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsPatch
  where
  type Rs CloudbuildProjectsLocationsConnectionsPatch = Operation
  type
    Scopes CloudbuildProjectsLocationsConnectionsPatch =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsLocationsConnectionsPatch {..} =
    go
      name
      xgafv
      accessToken
      allowMissing
      callback
      etag
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsLocationsConnectionsPatchResource
          )
          Core.mempty

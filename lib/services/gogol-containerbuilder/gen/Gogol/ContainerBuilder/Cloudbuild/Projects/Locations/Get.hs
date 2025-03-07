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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.get@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Get
  ( -- * Resource
    CloudbuildProjectsLocationsGetResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsGet (..),
    newCloudbuildProjectsLocationsGet,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.get@ method which the
-- 'CloudbuildProjectsLocationsGet' request conforms to.
type CloudbuildProjectsLocationsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'newCloudbuildProjectsLocationsGet' smart constructor.
data CloudbuildProjectsLocationsGet = CloudbuildProjectsLocationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name for the location.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGet' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGet ::
  -- |  Resource name for the location. See 'name'.
  Core.Text ->
  CloudbuildProjectsLocationsGet
newCloudbuildProjectsLocationsGet name =
  CloudbuildProjectsLocationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudbuildProjectsLocationsGet where
  type Rs CloudbuildProjectsLocationsGet = Location
  type
    Scopes CloudbuildProjectsLocationsGet =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsLocationsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      containerBuilderService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudbuildProjectsLocationsGetResource)
          Core.mempty

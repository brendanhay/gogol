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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device registry configuration.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.get@.
module Gogol.CloudIOT.Projects.Locations.Registries.Get
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesGetResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesGet (..),
    newCloudIOTProjectsLocationsRegistriesGet,
  )
where

import Gogol.CloudIOT.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudiot.projects.locations.registries.get@ method which the
-- 'CloudIOTProjectsLocationsRegistriesGet' request conforms to.
type CloudIOTProjectsLocationsRegistriesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DeviceRegistry

-- | Gets a device registry configuration.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesGet' smart constructor.
data CloudIOTProjectsLocationsRegistriesGet = CloudIOTProjectsLocationsRegistriesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesGet' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesGet ::
  -- |  Required. The name of the device registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@. See 'name'.
  Core.Text ->
  CloudIOTProjectsLocationsRegistriesGet
newCloudIOTProjectsLocationsRegistriesGet name =
  CloudIOTProjectsLocationsRegistriesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIOTProjectsLocationsRegistriesGet where
  type Rs CloudIOTProjectsLocationsRegistriesGet = DeviceRegistry
  type
    Scopes CloudIOTProjectsLocationsRegistriesGet =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient CloudIOTProjectsLocationsRegistriesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIOTService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIOTProjectsLocationsRegistriesGetResource
          )
          Core.mempty

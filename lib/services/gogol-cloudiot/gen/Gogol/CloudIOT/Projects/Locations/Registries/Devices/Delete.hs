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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Devices.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.delete@.
module Gogol.CloudIOT.Projects.Locations.Registries.Devices.Delete
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesDeleteResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesDevicesDelete (..),
    newCloudIOTProjectsLocationsRegistriesDevicesDelete,
  )
where

import Gogol.CloudIOT.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.delete@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesDelete' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a device.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesDelete' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesDelete = CloudIOTProjectsLocationsRegistriesDevicesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesDelete' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesDelete ::
  -- |  Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. See 'name'.
  Core.Text ->
  CloudIOTProjectsLocationsRegistriesDevicesDelete
newCloudIOTProjectsLocationsRegistriesDevicesDelete name =
  CloudIOTProjectsLocationsRegistriesDevicesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDevicesDelete
  where
  type Rs CloudIOTProjectsLocationsRegistriesDevicesDelete = Empty
  type
    Scopes CloudIOTProjectsLocationsRegistriesDevicesDelete =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient CloudIOTProjectsLocationsRegistriesDevicesDelete {..} =
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
              Core.Proxy
                CloudIOTProjectsLocationsRegistriesDevicesDeleteResource
          )
          Core.mempty

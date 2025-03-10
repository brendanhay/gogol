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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Devices.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.get@.
module Gogol.CloudIOT.Projects.Locations.Registries.Devices.Get
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesGetResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesDevicesGet (..),
    newCloudIOTProjectsLocationsRegistriesDevicesGet,
  )
where

import Gogol.CloudIOT.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.get@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesGet' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fieldMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Device

-- | Gets details about a device.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesGet' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesGet = CloudIOTProjectsLocationsRegistriesDevicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The fields of the @Device@ resource to be returned in the response. If the field mask is unset or empty, all fields are returned. Fields have to be provided in snake_case format, for example: @last_heartbeat_time@.
    fieldMask :: (Core.Maybe Core.FieldMask),
    -- | Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesGet' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesGet ::
  -- |  Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. See 'name'.
  Core.Text ->
  CloudIOTProjectsLocationsRegistriesDevicesGet
newCloudIOTProjectsLocationsRegistriesDevicesGet name =
  CloudIOTProjectsLocationsRegistriesDevicesGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fieldMask = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDevicesGet
  where
  type Rs CloudIOTProjectsLocationsRegistriesDevicesGet = Device
  type
    Scopes CloudIOTProjectsLocationsRegistriesDevicesGet =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient CloudIOTProjectsLocationsRegistriesDevicesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      fieldMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIOTService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIOTProjectsLocationsRegistriesDevicesGetResource
          )
          Core.mempty

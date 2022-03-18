{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the configuration for the device, which is eventually sent from the Cloud IoT Core servers. Returns the modified configuration version and its metadata.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig@.
module Network.Google.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource,

    -- ** Constructing a Request
    newCloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig,
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig,
  )
where

import Network.Google.CloudIOT.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource =
  "v1"
    Core.:> Core.CaptureMode
              "name"
              "modifyCloudToDeviceConfig"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ModifyCloudToDeviceConfigRequest
    Core.:> Core.Post '[Core.JSON] DeviceConfig

-- | Modifies the configuration for the device, which is eventually sent from the Cloud IoT Core servers. Returns the modified configuration version and its metadata.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig = CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ModifyCloudToDeviceConfigRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig ::
  -- |  Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ModifyCloudToDeviceConfigRequest ->
  CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
newCloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig name payload =
  CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig
  where
  type
    Rs
      CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig =
      DeviceConfig
  type
    Scopes
      CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudiot"
       ]
  requestClient
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudIOTService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource
            )
            Core.mempty

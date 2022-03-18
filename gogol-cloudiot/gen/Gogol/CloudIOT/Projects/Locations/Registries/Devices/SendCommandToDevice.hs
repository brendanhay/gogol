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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a command to the specified device. In order for a device to be able to receive commands, it must: 1) be connected to Cloud IoT Core using the MQTT protocol, and 2) be subscribed to the group of MQTT topics specified by \/devices\/{device-id}\/commands\/#. This subscription will receive commands at the top-level topic \/devices\/{device-id}\/commands as well as commands for subfolders, like \/devices\/{device-id}\/commands\/subfolder. Note that subscribing to specific subfolders is not supported. If the command could not be delivered to the device, this method will return an error; in particular, if the device is not subscribed, this method will return FAILED_PRECONDITION. Otherwise, this method will return OK. If the subscription is QoS 1, at least once delivery will be guaranteed; for QoS 0, no acknowledgment will be expected from the device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.sendCommandToDevice@.
module Gogol.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDeviceResource,

    -- ** Constructing a Request
    newCloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice,
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice,
  )
where

import Gogol.CloudIOT.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.sendCommandToDevice@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDeviceResource =
  "v1"
    Core.:> Core.CaptureMode
              "name"
              "sendCommandToDevice"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SendCommandToDeviceRequest
    Core.:> Core.Post '[Core.JSON] SendCommandToDeviceResponse

-- | Sends a command to the specified device. In order for a device to be able to receive commands, it must: 1) be connected to Cloud IoT Core using the MQTT protocol, and 2) be subscribed to the group of MQTT topics specified by \/devices\/{device-id}\/commands\/#. This subscription will receive commands at the top-level topic \/devices\/{device-id}\/commands as well as commands for subfolders, like \/devices\/{device-id}\/commands\/subfolder. Note that subscribing to specific subfolders is not supported. If the command could not be delivered to the device, this method will return an error; in particular, if the device is not subscribed, this method will return FAILED_PRECONDITION. Otherwise, this method will return OK. If the subscription is QoS 1, at least once delivery will be guaranteed; for QoS 0, no acknowledgment will be expected from the device.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice = CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SendCommandToDeviceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice ::
  -- |  Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SendCommandToDeviceRequest ->
  CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice
newCloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice name payload =
  CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice
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
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice
  where
  type
    Rs
      CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice =
      SendCommandToDeviceResponse
  type
    Scopes
      CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudiot"
       ]
  requestClient
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice {..} =
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
                  CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDeviceResource
            )
            Core.mempty

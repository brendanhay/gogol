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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Devices.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.patch@.
module Gogol.CloudIOT.Projects.Locations.Registries.Devices.Patch
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesPatchResource,

    -- ** Constructing a Request
    newCloudIOTProjectsLocationsRegistriesDevicesPatch,
    CloudIOTProjectsLocationsRegistriesDevicesPatch,
  )
where

import Gogol.CloudIOT.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.patch@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesPatch' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Device
    Core.:> Core.Patch '[Core.JSON] Device

-- | Updates a device.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesPatch' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesPatch = CloudIOTProjectsLocationsRegistriesDevicesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource path name. For example, @projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/dev0@ or @projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. When @name@ is populated as a response from the service, it always ends in the device numeric ID.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Device,
    -- | Required. Only updates the @device@ fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server. Mutable top-level fields: @credentials@, @blocked@, and @metadata@
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesPatch' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesPatch ::
  -- |  The resource path name. For example, @projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/dev0@ or @projects\/p1\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. When @name@ is populated as a response from the service, it always ends in the device numeric ID. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Device ->
  CloudIOTProjectsLocationsRegistriesDevicesPatch
newCloudIOTProjectsLocationsRegistriesDevicesPatch name payload =
  CloudIOTProjectsLocationsRegistriesDevicesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDevicesPatch
  where
  type
    Rs
      CloudIOTProjectsLocationsRegistriesDevicesPatch =
      Device
  type
    Scopes
      CloudIOTProjectsLocationsRegistriesDevicesPatch =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient
    CloudIOTProjectsLocationsRegistriesDevicesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  CloudIOTProjectsLocationsRegistriesDevicesPatchResource
            )
            Core.mempty

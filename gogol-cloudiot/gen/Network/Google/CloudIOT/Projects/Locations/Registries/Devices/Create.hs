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
-- Module      : Network.Google.CloudIOT.Projects.Locations.Registries.Devices.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device in a device registry.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.create@.
module Network.Google.CloudIOT.Projects.Locations.Registries.Devices.Create
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesCreateResource,

    -- ** Constructing a Request
    newCloudIOTProjectsLocationsRegistriesDevicesCreate,
    CloudIOTProjectsLocationsRegistriesDevicesCreate,
  )
where

import Network.Google.CloudIOT.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.create@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesCreate' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "devices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Device
    Core.:> Core.Post '[Core.JSON] Device

-- | Creates a device in a device registry.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesCreate' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesCreate = CloudIOTProjectsLocationsRegistriesDevicesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device registry where this device should be created. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Device,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesCreate' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesCreate ::
  -- |  Required. The name of the device registry where this device should be created. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Device ->
  CloudIOTProjectsLocationsRegistriesDevicesCreate
newCloudIOTProjectsLocationsRegistriesDevicesCreate parent payload =
  CloudIOTProjectsLocationsRegistriesDevicesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDevicesCreate
  where
  type
    Rs
      CloudIOTProjectsLocationsRegistriesDevicesCreate =
      Device
  type
    Scopes
      CloudIOTProjectsLocationsRegistriesDevicesCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudiot"
       ]
  requestClient
    CloudIOTProjectsLocationsRegistriesDevicesCreate {..} =
      go
        parent
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
                  CloudIOTProjectsLocationsRegistriesDevicesCreateResource
            )
            Core.mempty

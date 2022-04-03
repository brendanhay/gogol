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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.Devices.States.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the last few versions of the device state in descending order (i.e.: newest first).
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.devices.states.list@.
module Gogol.CloudIOT.Projects.Locations.Registries.Devices.States.List
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesDevicesStatesListResource,

    -- ** Constructing a Request
    CloudIOTProjectsLocationsRegistriesDevicesStatesList (..),
    newCloudIOTProjectsLocationsRegistriesDevicesStatesList,
  )
where

import Gogol.CloudIOT.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.devices.states.list@ method which the
-- 'CloudIOTProjectsLocationsRegistriesDevicesStatesList' request conforms to.
type CloudIOTProjectsLocationsRegistriesDevicesStatesListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "states"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "numStates" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDeviceStatesResponse

-- | Lists the last few versions of the device state in descending order (i.e.: newest first).
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesDevicesStatesList' smart constructor.
data CloudIOTProjectsLocationsRegistriesDevicesStatesList = CloudIOTProjectsLocationsRegistriesDevicesStatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@.
    name :: Core.Text,
    -- | The number of states to list. States are listed in descending order of update time. The maximum number of states retained is 10. If this value is zero, it will return all the states available.
    numStates :: (Core.Maybe Core.Int32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesDevicesStatesList' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesDevicesStatesList ::
  -- |  Required. The name of the device. For example, @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/device0@ or @projects\/p0\/locations\/us-central1\/registries\/registry0\/devices\/{num_id}@. See 'name'.
  Core.Text ->
  CloudIOTProjectsLocationsRegistriesDevicesStatesList
newCloudIOTProjectsLocationsRegistriesDevicesStatesList name =
  CloudIOTProjectsLocationsRegistriesDevicesStatesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      numStates = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIOTProjectsLocationsRegistriesDevicesStatesList
  where
  type
    Rs
      CloudIOTProjectsLocationsRegistriesDevicesStatesList =
      ListDeviceStatesResponse
  type
    Scopes
      CloudIOTProjectsLocationsRegistriesDevicesStatesList =
      '[CloudPlatform'FullControl, Cloudiot'FullControl]
  requestClient
    CloudIOTProjectsLocationsRegistriesDevicesStatesList {..} =
      go
        name
        xgafv
        accessToken
        callback
        numStates
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudIOTService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudIOTProjectsLocationsRegistriesDevicesStatesListResource
            )
            Core.mempty

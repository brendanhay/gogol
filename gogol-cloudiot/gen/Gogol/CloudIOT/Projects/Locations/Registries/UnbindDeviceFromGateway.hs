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
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the association between the device and the gateway.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.unbindDeviceFromGateway@.
module Gogol.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway
  ( -- * Resource
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGatewayResource,

    -- ** Constructing a Request
    newCloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway,
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway,
  )
where

import Gogol.CloudIOT.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudiot.projects.locations.registries.unbindDeviceFromGateway@ method which the
-- 'CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway' request conforms to.
type CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGatewayResource =
  "v1"
    Core.:> Core.CaptureMode
              "parent"
              "unbindDeviceFromGateway"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UnbindDeviceFromGatewayRequest
    Core.:> Core.Post
              '[Core.JSON]
              UnbindDeviceFromGatewayResponse

-- | Deletes the association between the device and the gateway.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway' smart constructor.
data CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway = CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: UnbindDeviceFromGatewayRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway ::
  -- |  Required. The name of the registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UnbindDeviceFromGatewayRequest ->
  CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway
newCloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway parent payload =
  CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway
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
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway
  where
  type
    Rs
      CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway =
      UnbindDeviceFromGatewayResponse
  type
    Scopes
      CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudiot"
       ]
  requestClient
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway {..} =
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
                  CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGatewayResource
            )
            Core.mempty

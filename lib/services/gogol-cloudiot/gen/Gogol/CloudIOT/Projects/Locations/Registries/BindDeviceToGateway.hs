{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the device with the gateway.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.bindDeviceToGateway@.
module Gogol.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
    (
    -- * Resource
      CloudIOTProjectsLocationsRegistriesBindDeviceToGatewayResource

    -- ** Constructing a Request
    , newCloudIOTProjectsLocationsRegistriesBindDeviceToGateway
    , CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIOT.Types

-- | A resource alias for @cloudiot.projects.locations.registries.bindDeviceToGateway@ method which the
-- 'CloudIOTProjectsLocationsRegistriesBindDeviceToGateway' request conforms to.
type CloudIOTProjectsLocationsRegistriesBindDeviceToGatewayResource
     =
     "v1" Core.:>
       Core.CaptureMode "parent" "bindDeviceToGateway"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] BindDeviceToGatewayRequest
                       Core.:>
                       Core.Post '[Core.JSON] BindDeviceToGatewayResponse

-- | Associates the device with the gateway.
--
-- /See:/ 'newCloudIOTProjectsLocationsRegistriesBindDeviceToGateway' smart constructor.
data CloudIOTProjectsLocationsRegistriesBindDeviceToGateway = CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BindDeviceToGatewayRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIOTProjectsLocationsRegistriesBindDeviceToGateway' with the minimum fields required to make a request.
newCloudIOTProjectsLocationsRegistriesBindDeviceToGateway 
    ::  Core.Text
       -- ^  Required. The name of the registry. For example, @projects\/example-project\/locations\/us-central1\/registries\/my-registry@. See 'parent'.
    -> BindDeviceToGatewayRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
newCloudIOTProjectsLocationsRegistriesBindDeviceToGateway parent payload =
  CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
         where
        type Rs
               CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
             = BindDeviceToGatewayResponse
        type Scopes
               CloudIOTProjectsLocationsRegistriesBindDeviceToGateway
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          CloudIOTProjectsLocationsRegistriesBindDeviceToGateway{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudIOTService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIOTProjectsLocationsRegistriesBindDeviceToGatewayResource)
                      Core.mempty


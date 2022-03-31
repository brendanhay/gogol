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
-- Module      : Gogol.ServiceNetworking.Services.EnableVpcServiceControls
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables VPC service controls for a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.enableVpcServiceControls@.
module Gogol.ServiceNetworking.Services.EnableVpcServiceControls
  ( -- * Resource
    ServiceNetworkingServicesEnableVpcServiceControlsResource,

    -- ** Constructing a Request
    newServiceNetworkingServicesEnableVpcServiceControls,
    ServiceNetworkingServicesEnableVpcServiceControls,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.enableVpcServiceControls@ method which the
-- 'ServiceNetworkingServicesEnableVpcServiceControls' request conforms to.
type ServiceNetworkingServicesEnableVpcServiceControlsResource =
  "v1"
    Core.:> Core.CaptureMode
              "parent"
              "enableVpcServiceControls"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              EnableVpcServiceControlsRequest
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Enables VPC service controls for a connection.
--
-- /See:/ 'newServiceNetworkingServicesEnableVpcServiceControls' smart constructor.
data ServiceNetworkingServicesEnableVpcServiceControls = ServiceNetworkingServicesEnableVpcServiceControls
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: EnableVpcServiceControlsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesEnableVpcServiceControls' with the minimum fields required to make a request.
newServiceNetworkingServicesEnableVpcServiceControls ::
  -- |  The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EnableVpcServiceControlsRequest ->
  ServiceNetworkingServicesEnableVpcServiceControls
newServiceNetworkingServicesEnableVpcServiceControls parent payload =
  ServiceNetworkingServicesEnableVpcServiceControls
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
    ServiceNetworkingServicesEnableVpcServiceControls
  where
  type
    Rs
      ServiceNetworkingServicesEnableVpcServiceControls =
      Operation
  type
    Scopes
      ServiceNetworkingServicesEnableVpcServiceControls =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesEnableVpcServiceControls {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        serviceNetworkingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceNetworkingServicesEnableVpcServiceControlsResource
            )
            Core.mempty

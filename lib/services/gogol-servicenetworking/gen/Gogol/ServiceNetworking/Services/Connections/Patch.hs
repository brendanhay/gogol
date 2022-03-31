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
-- Module      : Gogol.ServiceNetworking.Services.Connections.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the allocated ranges that are assigned to a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.patch@.
module Gogol.ServiceNetworking.Services.Connections.Patch
  ( -- * Resource
    ServiceNetworkingServicesConnectionsPatchResource,

    -- ** Constructing a Request
    newServiceNetworkingServicesConnectionsPatch,
    ServiceNetworkingServicesConnectionsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.patch@ method which the
-- 'ServiceNetworkingServicesConnectionsPatch' request conforms to.
type ServiceNetworkingServicesConnectionsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Connection
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the allocated ranges that are assigned to a connection.
--
-- /See:/ 'newServiceNetworkingServicesConnectionsPatch' smart constructor.
data ServiceNetworkingServicesConnectionsPatch = ServiceNetworkingServicesConnectionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If a previously defined allocated range is removed, force flag must be set to true.
    force :: (Core.Maybe Core.Bool),
    -- | The private service connection that connects to a service producer organization. The name includes both the private service name and the VPC network peering name in the format of @services\/{peering_service_name}\/connections\/{vpc_peering_name}@. For Google services that support this functionality, this is @services\/servicenetworking.googleapis.com\/connections\/servicenetworking-googleapis-com@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Connection,
    -- | The update mask. If this is omitted, it defaults to \"*\". You can only update the listed peering ranges.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesConnectionsPatch' with the minimum fields required to make a request.
newServiceNetworkingServicesConnectionsPatch ::
  -- |  The private service connection that connects to a service producer organization. The name includes both the private service name and the VPC network peering name in the format of @services\/{peering_service_name}\/connections\/{vpc_peering_name}@. For Google services that support this functionality, this is @services\/servicenetworking.googleapis.com\/connections\/servicenetworking-googleapis-com@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Connection ->
  ServiceNetworkingServicesConnectionsPatch
newServiceNetworkingServicesConnectionsPatch name payload =
  ServiceNetworkingServicesConnectionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesConnectionsPatch
  where
  type
    Rs ServiceNetworkingServicesConnectionsPatch =
      Operation
  type
    Scopes ServiceNetworkingServicesConnectionsPatch =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesConnectionsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        force
        updateMask
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
                  ServiceNetworkingServicesConnectionsPatchResource
            )
            Core.mempty

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ServiceNetworking.Services.DnsZones.Add
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to add private DNS zones in the shared producer host project and matching peering zones in the consumer project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsZones.add@.
module Gogol.ServiceNetworking.Services.DnsZones.Add
  ( -- * Resource
    ServiceNetworkingServicesDnsZonesAddResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesDnsZonesAdd (..),
    newServiceNetworkingServicesDnsZonesAdd,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsZones.add@ method which the
-- 'ServiceNetworkingServicesDnsZonesAdd' request conforms to.
type ServiceNetworkingServicesDnsZonesAddResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dnsZones:add"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddDnsZoneRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Service producers can use this method to add private DNS zones in the shared producer host project and matching peering zones in the consumer project.
--
-- /See:/ 'newServiceNetworkingServicesDnsZonesAdd' smart constructor.
data ServiceNetworkingServicesDnsZonesAdd = ServiceNetworkingServicesDnsZonesAdd
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddDnsZoneRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesDnsZonesAdd' with the minimum fields required to make a request.
newServiceNetworkingServicesDnsZonesAdd ::
  -- |  Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddDnsZoneRequest ->
  ServiceNetworkingServicesDnsZonesAdd
newServiceNetworkingServicesDnsZonesAdd parent payload =
  ServiceNetworkingServicesDnsZonesAdd
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ServiceNetworkingServicesDnsZonesAdd where
  type Rs ServiceNetworkingServicesDnsZonesAdd = Operation
  type
    Scopes ServiceNetworkingServicesDnsZonesAdd =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceNetworkingServicesDnsZonesAdd {..} =
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
              Core.Proxy ServiceNetworkingServicesDnsZonesAddResource
          )
          Core.mempty

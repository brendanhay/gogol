{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.DnsZones.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -   Service producers can use this method to retrieve a list of available DNS zones in the shared producer host project and the matching peering zones in the consumer project. *
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.dnsZones.list@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.DnsZones.List
  ( -- * Resource
    ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesListResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList (..),
    newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.dnsZones.list@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dnsZones:list"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDnsZonesResponse

-- | -   Service producers can use this method to retrieve a list of available DNS zones in the shared producer host project and the matching peering zones in the consumer project. *
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList = ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource identifying the connection which owns this collection of DNS zones in the format services\/{service}\/projects\/{project}\/global\/networks\/{network} Service: The service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. Projects: the consumer project containing the consumer network. Network: The consumer network accessible from the tenant project.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList ::
  -- |  Required. Parent resource identifying the connection which owns this collection of DNS zones in the format services\/{service}\/projects\/{project}\/global\/networks\/{network} Service: The service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. Projects: the consumer project containing the consumer network. Network: The consumer network accessible from the tenant project. See 'parent'.
  Core.Text ->
  ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList
newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList
  parent =
    ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList
  where
  type
    Rs ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList =
      ListDnsZonesResponse
  type
    Scopes
      ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        serviceNetworkingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesListResource
            )
            Core.mempty

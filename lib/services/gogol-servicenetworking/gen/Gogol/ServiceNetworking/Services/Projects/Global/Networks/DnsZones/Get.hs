{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.DnsZones.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to retrieve a DNS zone in the shared producer host project and the matching peering zones in consumer project
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.dnsZones.get@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.DnsZones.Get
    (
    -- * Resource
      ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGetResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet (..)
    , newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.dnsZones.get@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GetDnsZoneResponse

-- | Service producers can use this method to retrieve a DNS zone in the shared producer host project and the matching peering zones in consumer project
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet = ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The network that the consumer is using to connect with services. Must be in the form of services\/{service}\/projects\/{project}\/global\/networks\/{network}\/zones\/{zoneName} Where {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this {project} is the project number, as in \'12345\' {network} is the network name. {zoneName} is the DNS zone name
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet 
    ::  Core.Text
       -- ^  Required. The network that the consumer is using to connect with services. Must be in the form of services\/{service}\/projects\/{project}\/global\/networks\/{network}\/zones\/{zoneName} Where {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this {project} is the project number, as in \'12345\' {network} is the network name. {zoneName} is the DNS zone name See 'name'.
    -> ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
newServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet name =
  ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
         where
        type Rs
               ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
             = GetDnsZoneResponse
        type Scopes
               ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet
             = '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesProjectsGlobalNetworksDnsZonesGetResource)
                      Core.mempty


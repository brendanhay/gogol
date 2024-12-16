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
-- Module      : Gogol.ServiceNetworking.Services.AddSubnetwork
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For service producers, provisions a new subnet in a peered service\'s shared VPC network in the requested region and with the requested size that\'s expressed as a CIDR range (number of leading bits of ipV4 network mask). The method checks against the assigned allocated ranges to find a non-conflicting IP address range. The method will reuse a subnet if subsequent calls contain the same subnet name, region, and prefix length. This method will make producer\'s tenant project to be a shared VPC service project as needed.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.addSubnetwork@.
module Gogol.ServiceNetworking.Services.AddSubnetwork
    (
    -- * Resource
      ServiceNetworkingServicesAddSubnetworkResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesAddSubnetwork (..)
    , newServiceNetworkingServicesAddSubnetwork
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.addSubnetwork@ method which the
-- 'ServiceNetworkingServicesAddSubnetwork' request conforms to.
type ServiceNetworkingServicesAddSubnetworkResource =
     "v1" Core.:>
       Core.CaptureMode "parent" "addSubnetwork" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AddSubnetworkRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | For service producers, provisions a new subnet in a peered service\'s shared VPC network in the requested region and with the requested size that\'s expressed as a CIDR range (number of leading bits of ipV4 network mask). The method checks against the assigned allocated ranges to find a non-conflicting IP address range. The method will reuse a subnet if subsequent calls contain the same subnet name, region, and prefix length. This method will make producer\'s tenant project to be a shared VPC service project as needed.
--
-- /See:/ 'newServiceNetworkingServicesAddSubnetwork' smart constructor.
data ServiceNetworkingServicesAddSubnetwork = ServiceNetworkingServicesAddSubnetwork
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A tenant project in the service producer organization, in the following format: services\/{service}\/{collection-id}\/{resource-id}. {collection-id} is the cloud resource collection type that represents the tenant project. Only @projects@ are supported. {resource-id} is the tenant project numeric id, such as @123456@. {service} the name of the peering service, such as @service-peering.example.com@. This service must already be enabled in the service consumer\'s project.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: AddSubnetworkRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesAddSubnetwork' with the minimum fields required to make a request.
newServiceNetworkingServicesAddSubnetwork 
    ::  Core.Text
       -- ^  Required. A tenant project in the service producer organization, in the following format: services\/{service}\/{collection-id}\/{resource-id}. {collection-id} is the cloud resource collection type that represents the tenant project. Only @projects@ are supported. {resource-id} is the tenant project numeric id, such as @123456@. {service} the name of the peering service, such as @service-peering.example.com@. This service must already be enabled in the service consumer\'s project. See 'parent'.
    -> AddSubnetworkRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceNetworkingServicesAddSubnetwork
newServiceNetworkingServicesAddSubnetwork parent payload =
  ServiceNetworkingServicesAddSubnetwork
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesAddSubnetwork
         where
        type Rs ServiceNetworkingServicesAddSubnetwork =
             Operation
        type Scopes ServiceNetworkingServicesAddSubnetwork =
             '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesAddSubnetwork{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesAddSubnetworkResource)
                      Core.mempty


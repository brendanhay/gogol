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
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers use this method to update the configuration of their connection including the import\/export of custom routes and subnetwork routes with public IP.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.updateConsumerConfig@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig
    (
    -- * Resource
      ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfigResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig (..)
    , newServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.updateConsumerConfig@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfigResource
     =
     "v1" Core.:>
       Core.CaptureMode "parent" "updateConsumerConfig"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] UpdateConsumerConfigRequest
                       Core.:> Core.Patch '[Core.JSON] Operation

-- | Service producers use this method to update the configuration of their connection including the import\/export of custom routes and subnetwork routes with public IP.
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig = ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Parent resource identifying the connection for which the consumer config is being updated in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@ {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is the number of the project that contains the service consumer\'s VPC network e.g. @12345@. {network} is the name of the service consumer\'s VPC network.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: UpdateConsumerConfigRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig 
    ::  Core.Text
       -- ^  Required. Parent resource identifying the connection for which the consumer config is being updated in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@ {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is the number of the project that contains the service consumer\'s VPC network e.g. @12345@. {network} is the name of the service consumer\'s VPC network. See 'parent'.
    -> UpdateConsumerConfigRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
newServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig parent payload =
  ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
         where
        type Rs
               ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
             = Operation
        type Scopes
               ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig
             = '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfig{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesProjectsGlobalNetworksUpdateConsumerConfigResource)
                      Core.mempty


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
-- Module      : Gogol.ServiceNetworking.Services.Connections.DeleteConnection
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a private service access connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.deleteConnection@.
module Gogol.ServiceNetworking.Services.Connections.DeleteConnection
    (
    -- * Resource
      ServiceNetworkingServicesConnectionsDeleteConnectionResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesConnectionsDeleteConnection (..)
    , newServiceNetworkingServicesConnectionsDeleteConnection
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.deleteConnection@ method which the
-- 'ServiceNetworkingServicesConnectionsDeleteConnection' request conforms to.
type ServiceNetworkingServicesConnectionsDeleteConnectionResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DeleteConnectionRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes a private service access connection.
--
-- /See:/ 'newServiceNetworkingServicesConnectionsDeleteConnection' smart constructor.
data ServiceNetworkingServicesConnectionsDeleteConnection = ServiceNetworkingServicesConnectionsDeleteConnection
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The private service connection that connects to a service producer organization. The name includes both the private service name and the VPC network peering name in the format of @services\/{peering_service_name}\/connections\/{vpc_peering_name}@. For Google services that support this functionality, this is @services\/servicenetworking.googleapis.com\/connections\/servicenetworking-googleapis-com@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DeleteConnectionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesConnectionsDeleteConnection' with the minimum fields required to make a request.
newServiceNetworkingServicesConnectionsDeleteConnection 
    ::  Core.Text
       -- ^  Required. The private service connection that connects to a service producer organization. The name includes both the private service name and the VPC network peering name in the format of @services\/{peering_service_name}\/connections\/{vpc_peering_name}@. For Google services that support this functionality, this is @services\/servicenetworking.googleapis.com\/connections\/servicenetworking-googleapis-com@. See 'name'.
    -> DeleteConnectionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceNetworkingServicesConnectionsDeleteConnection
newServiceNetworkingServicesConnectionsDeleteConnection name payload =
  ServiceNetworkingServicesConnectionsDeleteConnection
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesConnectionsDeleteConnection
         where
        type Rs
               ServiceNetworkingServicesConnectionsDeleteConnection
             = Operation
        type Scopes
               ServiceNetworkingServicesConnectionsDeleteConnection
             = '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesConnectionsDeleteConnection{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesConnectionsDeleteConnectionResource)
                      Core.mempty


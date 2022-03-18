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
-- Module      : Gogol.ServiceNetworking.Services.Connections.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the private connections that are configured in a service consumer\'s VPC network.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.list@.
module Gogol.ServiceNetworking.Services.Connections.List
    (
    -- * Resource
      ServiceNetworkingServicesConnectionsListResource

    -- ** Constructing a Request
    , newServiceNetworkingServicesConnectionsList
    , ServiceNetworkingServicesConnectionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.list@ method which the
-- 'ServiceNetworkingServicesConnectionsList' request conforms to.
type ServiceNetworkingServicesConnectionsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "connections" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "network" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] ListConnectionsResponse

-- | List the private connections that are configured in a service consumer\'s VPC network.
--
-- /See:/ 'newServiceNetworkingServicesConnectionsList' smart constructor.
data ServiceNetworkingServicesConnectionsList = ServiceNetworkingServicesConnectionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of service consumer\'s VPC network that\'s connected with service producer network through a private connection. The network name must be in the following format: @projects\/{project}\/global\/networks\/{network}@. {project} is a project number, such as in @12345@ that includes the VPC service consumer\'s VPC network. {network} is the name of the service consumer\'s VPC network.
    , network :: (Core.Maybe Core.Text)
      -- | The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. If you specify @services\/-@ as the parameter value, all configured peering services are listed.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesConnectionsList' with the minimum fields required to make a request.
newServiceNetworkingServicesConnectionsList 
    ::  Core.Text
       -- ^  The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. If you specify @services\/-@ as the parameter value, all configured peering services are listed. See 'parent'.
    -> ServiceNetworkingServicesConnectionsList
newServiceNetworkingServicesConnectionsList parent =
  ServiceNetworkingServicesConnectionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , network = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesConnectionsList
         where
        type Rs ServiceNetworkingServicesConnectionsList =
             ListConnectionsResponse
        type Scopes ServiceNetworkingServicesConnectionsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient
          ServiceNetworkingServicesConnectionsList{..}
          = go parent xgafv accessToken callback network
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesConnectionsListResource)
                      Core.mempty


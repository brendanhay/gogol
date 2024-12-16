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
-- Module      : Gogol.ServiceNetworking.Services.DnsRecordSets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Producers can use this method to retrieve a list of available DNS RecordSets available inside the private zone on the tenant host project accessible from their network.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.list@.
module Gogol.ServiceNetworking.Services.DnsRecordSets.List
    (
    -- * Resource
      ServiceNetworkingServicesDnsRecordSetsListResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesDnsRecordSetsList (..)
    , newServiceNetworkingServicesDnsRecordSetsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.list@ method which the
-- 'ServiceNetworkingServicesDnsRecordSetsList' request conforms to.
type ServiceNetworkingServicesDnsRecordSetsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "dnsRecordSets:list" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "consumerNetwork" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "zone" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListDnsRecordSetsResponse

-- | Producers can use this method to retrieve a list of available DNS RecordSets available inside the private zone on the tenant host project accessible from their network.
--
-- /See:/ 'newServiceNetworkingServicesDnsRecordSetsList' smart constructor.
data ServiceNetworkingServicesDnsRecordSetsList = ServiceNetworkingServicesDnsRecordSetsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The network that the consumer is using to connect with services. Must be in the form of projects\/{project}\/global\/networks\/{network} {project} is the project number, as in \'12345\' {network} is the network name.
    , consumerNetwork :: (Core.Maybe Core.Text)
      -- | Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. The name of the private DNS zone in the shared producer host project from which the record set will be removed.
    , zone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesDnsRecordSetsList' with the minimum fields required to make a request.
newServiceNetworkingServicesDnsRecordSetsList 
    ::  Core.Text
       -- ^  Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
    -> ServiceNetworkingServicesDnsRecordSetsList
newServiceNetworkingServicesDnsRecordSetsList parent =
  ServiceNetworkingServicesDnsRecordSetsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , consumerNetwork = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesDnsRecordSetsList
         where
        type Rs ServiceNetworkingServicesDnsRecordSetsList =
             ListDnsRecordSetsResponse
        type Scopes
               ServiceNetworkingServicesDnsRecordSetsList
             = '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesDnsRecordSetsList{..}
          = go parent xgafv accessToken callback
              consumerNetwork
              uploadType
              uploadProtocol
              zone
              (Core.Just Core.AltJSON)
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesDnsRecordSetsListResource)
                      Core.mempty


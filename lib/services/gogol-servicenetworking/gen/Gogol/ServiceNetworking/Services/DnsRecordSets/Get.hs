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
-- Module      : Gogol.ServiceNetworking.Services.DnsRecordSets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Producers can use this method to retrieve information about the DNS record set added to the private zone inside the shared tenant host project associated with a consumer network.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.get@.
module Gogol.ServiceNetworking.Services.DnsRecordSets.Get
    (
    -- * Resource
      ServiceNetworkingServicesDnsRecordSetsGetResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesDnsRecordSetsGet (..)
    , newServiceNetworkingServicesDnsRecordSetsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.get@ method which the
-- 'ServiceNetworkingServicesDnsRecordSetsGet' request conforms to.
type ServiceNetworkingServicesDnsRecordSetsGetResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "dnsRecordSets:get" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "consumerNetwork" Core.Text Core.:>
                   Core.QueryParam "domain" Core.Text Core.:>
                     Core.QueryParam "type" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "zone" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] DnsRecordSet

-- | Producers can use this method to retrieve information about the DNS record set added to the private zone inside the shared tenant host project associated with a consumer network.
--
-- /See:/ 'newServiceNetworkingServicesDnsRecordSetsGet' smart constructor.
data ServiceNetworkingServicesDnsRecordSetsGet = ServiceNetworkingServicesDnsRecordSetsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The consumer network containing the record set. Must be in the form of projects\/{project}\/global\/networks\/{network}
    , consumerNetwork :: (Core.Maybe Core.Text)
      -- | Required. The domain name of the zone containing the recordset.
    , domain :: (Core.Maybe Core.Text)
      -- | Required. Parent resource identifying the connection which owns this collection of DNS zones in the format services\/{service}.
    , parent :: Core.Text
      -- | Required. RecordSet Type eg. type=\'A\'. See the list of <https://cloud.google.com/dns/records/json-record Supported DNS Types>.
    , type' :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. The name of the zone containing the record set.
    , zone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesDnsRecordSetsGet' with the minimum fields required to make a request.
newServiceNetworkingServicesDnsRecordSetsGet 
    ::  Core.Text
       -- ^  Required. Parent resource identifying the connection which owns this collection of DNS zones in the format services\/{service}. See 'parent'.
    -> ServiceNetworkingServicesDnsRecordSetsGet
newServiceNetworkingServicesDnsRecordSetsGet parent =
  ServiceNetworkingServicesDnsRecordSetsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , consumerNetwork = Core.Nothing
    , domain = Core.Nothing
    , parent = parent
    , type' = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesDnsRecordSetsGet
         where
        type Rs ServiceNetworkingServicesDnsRecordSetsGet =
             DnsRecordSet
        type Scopes ServiceNetworkingServicesDnsRecordSetsGet
             = '[CloudPlatform'FullControl, Service'Management]
        requestClient
          ServiceNetworkingServicesDnsRecordSetsGet{..}
          = go parent xgafv accessToken callback
              consumerNetwork
              domain
              type'
              uploadType
              uploadProtocol
              zone
              (Core.Just Core.AltJSON)
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ServiceNetworkingServicesDnsRecordSetsGetResource)
                      Core.mempty


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
-- Module      : Gogol.ServiceNetworking.Services.Validate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers use this method to validate if the consumer provided network, project and requested range are valid. This allows them to use a fail-fast mechanism for consumer requests, and not have to wait for AddSubnetwork operation completion to determine if user request is invalid.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.validate@.
module Gogol.ServiceNetworking.Services.Validate
    (
    -- * Resource
      ServiceNetworkingServicesValidateResource

    -- ** Constructing a Request
    , ServiceNetworkingServicesValidate (..)
    , newServiceNetworkingServicesValidate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.validate@ method which the
-- 'ServiceNetworkingServicesValidate' request conforms to.
type ServiceNetworkingServicesValidateResource =
     "v1" Core.:>
       Core.CaptureMode "parent" "validate" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       ValidateConsumerConfigRequest
                       Core.:>
                       Core.Post '[Core.JSON] ValidateConsumerConfigResponse

-- | Service producers use this method to validate if the consumer provided network, project and requested range are valid. This allows them to use a fail-fast mechanism for consumer requests, and not have to wait for AddSubnetwork operation completion to determine if user request is invalid.
--
-- /See:/ 'newServiceNetworkingServicesValidate' smart constructor.
data ServiceNetworkingServicesValidate = ServiceNetworkingServicesValidate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. This is in a form services\/{service} where {service} is the name of the private access management service. For example \'service-peering.example.com\'.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: ValidateConsumerConfigRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesValidate' with the minimum fields required to make a request.
newServiceNetworkingServicesValidate 
    ::  Core.Text
       -- ^  Required. This is in a form services\/{service} where {service} is the name of the private access management service. For example \'service-peering.example.com\'. See 'parent'.
    -> ValidateConsumerConfigRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ServiceNetworkingServicesValidate
newServiceNetworkingServicesValidate parent payload =
  ServiceNetworkingServicesValidate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ServiceNetworkingServicesValidate
         where
        type Rs ServiceNetworkingServicesValidate =
             ValidateConsumerConfigResponse
        type Scopes ServiceNetworkingServicesValidate =
             '[CloudPlatform'FullControl, Service'Management]
        requestClient ServiceNetworkingServicesValidate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              serviceNetworkingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ServiceNetworkingServicesValidateResource)
                      Core.mempty


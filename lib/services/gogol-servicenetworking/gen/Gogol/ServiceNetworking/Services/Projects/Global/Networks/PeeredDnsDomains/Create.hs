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
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a peered DNS domain which sends requests for records in given namespace originating in the service producer VPC network to the consumer VPC network to be resolved.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.peeredDnsDomains.create@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.Create
  ( -- * Resource
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreateResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate (..),
    newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.peeredDnsDomains.create@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "peeredDnsDomains"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PeeredDnsDomain
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a peered DNS domain which sends requests for records in given namespace originating in the service producer VPC network to the consumer VPC network to be resolved.
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate = ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource identifying the connection for which the peered DNS domain will be created in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@ {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is the number of the project that contains the service consumer\'s VPC network e.g. @12345@. {network} is the name of the service consumer\'s VPC network.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: PeeredDnsDomain,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate ::
  -- |  Required. Parent resource identifying the connection for which the peered DNS domain will be created in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@ {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is the number of the project that contains the service consumer\'s VPC network e.g. @12345@. {network} is the name of the service consumer\'s VPC network. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PeeredDnsDomain ->
  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate
newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate
  parent
  payload =
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate
  where
  type
    Rs
      ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate =
      Operation
  type
    Scopes
      ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreate {..} =
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
                Core.Proxy
                  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsCreateResource
            )
            Core.mempty

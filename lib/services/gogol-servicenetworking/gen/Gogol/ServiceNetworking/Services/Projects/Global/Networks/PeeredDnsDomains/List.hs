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
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists peered DNS domains for a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.peeredDnsDomains.list@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.List
  ( -- * Resource
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsListResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList (..),
    newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.peeredDnsDomains.list@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "peeredDnsDomains"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPeeredDnsDomainsResponse

-- | Lists peered DNS domains for a connection.
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList = ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource identifying the connection which owns this collection of peered DNS domains in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@. {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is a project number e.g. @12345@ that contains the service consumer\'s VPC network. {network} is the name of the service consumer\'s VPC network.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList ::
  -- |  Required. Parent resource identifying the connection which owns this collection of peered DNS domains in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@. {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is a project number e.g. @12345@ that contains the service consumer\'s VPC network. {network} is the name of the service consumer\'s VPC network. See 'parent'.
  Core.Text ->
  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList
newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList
  parent =
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList
  where
  type
    Rs
      ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList =
      ListPeeredDnsDomainsResponse
  type
    Scopes
      ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsList {..} =
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
                  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsListResource
            )
            Core.mempty

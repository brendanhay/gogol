{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a peered DNS domain.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.peeredDnsDomains.delete@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.PeeredDnsDomains.Delete
  ( -- * Resource
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDeleteResource,

    -- ** Constructing a Request
    newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete,
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.peeredDnsDomains.delete@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a peered DNS domain.
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete = ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the peered DNS domain to delete in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}\/peeredDnsDomains\/{name}@. {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is the number of the project that contains the service consumer\'s VPC network e.g. @12345@. {network} is the name of the service consumer\'s VPC network. {name} is the name of the peered DNS domain.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete ::
  -- |  Required. The name of the peered DNS domain to delete in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}\/peeredDnsDomains\/{name}@. {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is the number of the project that contains the service consumer\'s VPC network e.g. @12345@. {network} is the name of the service consumer\'s VPC network. {name} is the name of the peered DNS domain. See 'name'.
  Core.Text ->
  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete
newServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete name =
  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete
  where
  type
    Rs
      ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete =
      Operation
  type
    Scopes
      ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDelete {..} =
      go
        name
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
                  ServiceNetworkingServicesProjectsGlobalNetworksPeeredDnsDomainsDeleteResource
            )
            Core.mempty

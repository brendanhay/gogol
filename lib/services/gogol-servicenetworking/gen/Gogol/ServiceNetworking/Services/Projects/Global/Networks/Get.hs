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
-- Module      : Gogol.ServiceNetworking.Services.Projects.Global.Networks.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers use this method to get the configuration of their connection including the import\/export of custom routes and subnetwork routes with public IP.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.get@.
module Gogol.ServiceNetworking.Services.Projects.Global.Networks.Get
  ( -- * Resource
    ServiceNetworkingServicesProjectsGlobalNetworksGetResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesProjectsGlobalNetworksGet (..),
    newServiceNetworkingServicesProjectsGlobalNetworksGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.get@ method which the
-- 'ServiceNetworkingServicesProjectsGlobalNetworksGet' request conforms to.
type ServiceNetworkingServicesProjectsGlobalNetworksGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ConsumerConfig

-- | Service producers use this method to get the configuration of their connection including the import\/export of custom routes and subnetwork routes with public IP.
--
-- /See:/ 'newServiceNetworkingServicesProjectsGlobalNetworksGet' smart constructor.
data ServiceNetworkingServicesProjectsGlobalNetworksGet = ServiceNetworkingServicesProjectsGlobalNetworksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the consumer config to retrieve in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@. {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is a project number e.g. @12345@ that contains the service consumer\'s VPC network. {network} is the name of the service consumer\'s VPC network.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesProjectsGlobalNetworksGet' with the minimum fields required to make a request.
newServiceNetworkingServicesProjectsGlobalNetworksGet ::
  -- |  Required. Name of the consumer config to retrieve in the format: @services\/{service}\/projects\/{project}\/global\/networks\/{network}@. {service} is the peering service that is managing connectivity for the service producer\'s organization. For Google services that support this functionality, this value is @servicenetworking.googleapis.com@. {project} is a project number e.g. @12345@ that contains the service consumer\'s VPC network. {network} is the name of the service consumer\'s VPC network. See 'name'.
  Core.Text ->
  ServiceNetworkingServicesProjectsGlobalNetworksGet
newServiceNetworkingServicesProjectsGlobalNetworksGet name =
  ServiceNetworkingServicesProjectsGlobalNetworksGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesProjectsGlobalNetworksGet
  where
  type
    Rs
      ServiceNetworkingServicesProjectsGlobalNetworksGet =
      ConsumerConfig
  type
    Scopes
      ServiceNetworkingServicesProjectsGlobalNetworksGet =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesProjectsGlobalNetworksGet {..} =
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
                  ServiceNetworkingServicesProjectsGlobalNetworksGetResource
            )
            Core.mempty

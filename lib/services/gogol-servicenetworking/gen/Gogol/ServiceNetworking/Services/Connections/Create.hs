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
-- Module      : Gogol.ServiceNetworking.Services.Connections.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a private connection that establishes a VPC Network Peering connection to a VPC network in the service producer\'s organization. The administrator of the service consumer\'s VPC network invokes this method. The administrator must assign one or more allocated IP ranges for provisioning subnetworks in the service producer\'s VPC network. This connection is used for all supported services in the service producer\'s organization, so it only needs to be invoked once.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.create@.
module Gogol.ServiceNetworking.Services.Connections.Create
  ( -- * Resource
    ServiceNetworkingServicesConnectionsCreateResource,

    -- ** Constructing a Request
    newServiceNetworkingServicesConnectionsCreate,
    ServiceNetworkingServicesConnectionsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.create@ method which the
-- 'ServiceNetworkingServicesConnectionsCreate' request conforms to.
type ServiceNetworkingServicesConnectionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "connections"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Connection
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a private connection that establishes a VPC Network Peering connection to a VPC network in the service producer\'s organization. The administrator of the service consumer\'s VPC network invokes this method. The administrator must assign one or more allocated IP ranges for provisioning subnetworks in the service producer\'s VPC network. This connection is used for all supported services in the service producer\'s organization, so it only needs to be invoked once.
--
-- /See:/ 'newServiceNetworkingServicesConnectionsCreate' smart constructor.
data ServiceNetworkingServicesConnectionsCreate = ServiceNetworkingServicesConnectionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Connection,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesConnectionsCreate' with the minimum fields required to make a request.
newServiceNetworkingServicesConnectionsCreate ::
  -- |  The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Connection ->
  ServiceNetworkingServicesConnectionsCreate
newServiceNetworkingServicesConnectionsCreate parent payload =
  ServiceNetworkingServicesConnectionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesConnectionsCreate
  where
  type
    Rs ServiceNetworkingServicesConnectionsCreate =
      Operation
  type
    Scopes
      ServiceNetworkingServicesConnectionsCreate =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesConnectionsCreate {..} =
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
                  ServiceNetworkingServicesConnectionsCreateResource
            )
            Core.mempty

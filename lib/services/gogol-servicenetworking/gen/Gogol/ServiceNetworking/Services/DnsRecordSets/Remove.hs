{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.ServiceNetworking.Services.DnsRecordSets.Remove
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to remove DNS record sets from private DNS zones in the shared producer host project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.remove@.
module Gogol.ServiceNetworking.Services.DnsRecordSets.Remove
  ( -- * Resource
    ServiceNetworkingServicesDnsRecordSetsRemoveResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesDnsRecordSetsRemove (..),
    newServiceNetworkingServicesDnsRecordSetsRemove,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.remove@ method which the
-- 'ServiceNetworkingServicesDnsRecordSetsRemove' request conforms to.
type ServiceNetworkingServicesDnsRecordSetsRemoveResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dnsRecordSets:remove"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemoveDnsRecordSetRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Service producers can use this method to remove DNS record sets from private DNS zones in the shared producer host project.
--
-- /See:/ 'newServiceNetworkingServicesDnsRecordSetsRemove' smart constructor.
data ServiceNetworkingServicesDnsRecordSetsRemove = ServiceNetworkingServicesDnsRecordSetsRemove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: RemoveDnsRecordSetRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesDnsRecordSetsRemove' with the minimum fields required to make a request.
newServiceNetworkingServicesDnsRecordSetsRemove ::
  -- |  Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemoveDnsRecordSetRequest ->
  ServiceNetworkingServicesDnsRecordSetsRemove
newServiceNetworkingServicesDnsRecordSetsRemove parent payload =
  ServiceNetworkingServicesDnsRecordSetsRemove
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ServiceNetworkingServicesDnsRecordSetsRemove
  where
  type Rs ServiceNetworkingServicesDnsRecordSetsRemove = Operation
  type
    Scopes ServiceNetworkingServicesDnsRecordSetsRemove =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceNetworkingServicesDnsRecordSetsRemove {..} =
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
              Core.Proxy ServiceNetworkingServicesDnsRecordSetsRemoveResource
          )
          Core.mempty

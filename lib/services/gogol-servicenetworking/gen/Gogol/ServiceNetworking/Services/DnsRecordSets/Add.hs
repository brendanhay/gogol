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
-- Module      : Gogol.ServiceNetworking.Services.DnsRecordSets.Add
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to add DNS record sets to private DNS zones in the shared producer host project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.add@.
module Gogol.ServiceNetworking.Services.DnsRecordSets.Add
  ( -- * Resource
    ServiceNetworkingServicesDnsRecordSetsAddResource,

    -- ** Constructing a Request
    ServiceNetworkingServicesDnsRecordSetsAdd (..),
    newServiceNetworkingServicesDnsRecordSetsAdd,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.add@ method which the
-- 'ServiceNetworkingServicesDnsRecordSetsAdd' request conforms to.
type ServiceNetworkingServicesDnsRecordSetsAddResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dnsRecordSets:add"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddDnsRecordSetRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Service producers can use this method to add DNS record sets to private DNS zones in the shared producer host project.
--
-- /See:/ 'newServiceNetworkingServicesDnsRecordSetsAdd' smart constructor.
data ServiceNetworkingServicesDnsRecordSetsAdd = ServiceNetworkingServicesDnsRecordSetsAdd
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddDnsRecordSetRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesDnsRecordSetsAdd' with the minimum fields required to make a request.
newServiceNetworkingServicesDnsRecordSetsAdd ::
  -- |  Required. The service that is managing peering connectivity for a service producer\'s organization. For Google services that support this functionality, this value is @services\/servicenetworking.googleapis.com@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddDnsRecordSetRequest ->
  ServiceNetworkingServicesDnsRecordSetsAdd
newServiceNetworkingServicesDnsRecordSetsAdd parent payload =
  ServiceNetworkingServicesDnsRecordSetsAdd
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
    ServiceNetworkingServicesDnsRecordSetsAdd
  where
  type Rs ServiceNetworkingServicesDnsRecordSetsAdd = Operation
  type
    Scopes ServiceNetworkingServicesDnsRecordSetsAdd =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient ServiceNetworkingServicesDnsRecordSetsAdd {..} =
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
              Core.Proxy ServiceNetworkingServicesDnsRecordSetsAddResource
          )
          Core.mempty

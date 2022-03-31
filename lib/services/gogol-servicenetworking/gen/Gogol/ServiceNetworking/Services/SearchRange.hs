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
-- Module      : Gogol.ServiceNetworking.Services.SearchRange
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to find a currently unused range within consumer allocated ranges. This returned range is not reserved, and not guaranteed to remain unused. It will validate previously provided allocated ranges, find non-conflicting sub-range of requested size (expressed in number of leading bits of ipv4 network mask, as in CIDR range notation).
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.searchRange@.
module Gogol.ServiceNetworking.Services.SearchRange
  ( -- * Resource
    ServiceNetworkingServicesSearchRangeResource,

    -- ** Constructing a Request
    newServiceNetworkingServicesSearchRange,
    ServiceNetworkingServicesSearchRange,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.searchRange@ method which the
-- 'ServiceNetworkingServicesSearchRange' request conforms to.
type ServiceNetworkingServicesSearchRangeResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "searchRange" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchRangeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Service producers can use this method to find a currently unused range within consumer allocated ranges. This returned range is not reserved, and not guaranteed to remain unused. It will validate previously provided allocated ranges, find non-conflicting sub-range of requested size (expressed in number of leading bits of ipv4 network mask, as in CIDR range notation).
--
-- /See:/ 'newServiceNetworkingServicesSearchRange' smart constructor.
data ServiceNetworkingServicesSearchRange = ServiceNetworkingServicesSearchRange
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. This is in a form services\/{service}. {service} the name of the private access management service, for example \'service-peering.example.com\'.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SearchRangeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceNetworkingServicesSearchRange' with the minimum fields required to make a request.
newServiceNetworkingServicesSearchRange ::
  -- |  Required. This is in a form services\/{service}. {service} the name of the private access management service, for example \'service-peering.example.com\'. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SearchRangeRequest ->
  ServiceNetworkingServicesSearchRange
newServiceNetworkingServicesSearchRange parent payload =
  ServiceNetworkingServicesSearchRange
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
    ServiceNetworkingServicesSearchRange
  where
  type
    Rs ServiceNetworkingServicesSearchRange =
      Operation
  type
    Scopes ServiceNetworkingServicesSearchRange =
      '[CloudPlatform'FullControl, Service'Management]
  requestClient
    ServiceNetworkingServicesSearchRange {..} =
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
                  ServiceNetworkingServicesSearchRangeResource
            )
            Core.mempty

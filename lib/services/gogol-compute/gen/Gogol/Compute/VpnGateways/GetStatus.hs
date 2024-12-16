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
-- Module      : Gogol.Compute.VpnGateways.GetStatus
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status for the specified VPN gateway.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.vpnGateways.getStatus@.
module Gogol.Compute.VpnGateways.GetStatus
    (
    -- * Resource
      ComputeVpnGatewaysGetStatusResource

    -- ** Constructing a Request
    , ComputeVpnGatewaysGetStatus (..)
    , newComputeVpnGatewaysGetStatus
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.vpnGateways.getStatus@ method which the
-- 'ComputeVpnGatewaysGetStatus' request conforms to.
type ComputeVpnGatewaysGetStatusResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "vpnGateways" Core.:>
                   Core.Capture "vpnGateway" Core.Text Core.:>
                     "getStatus" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON]
                                     VpnGatewaysGetStatusResponse

-- | Returns the status for the specified VPN gateway.
--
-- /See:/ 'newComputeVpnGatewaysGetStatus' smart constructor.
data ComputeVpnGatewaysGetStatus = ComputeVpnGatewaysGetStatus
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region for this request.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the VPN gateway to return.
    , vpnGateway :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeVpnGatewaysGetStatus' with the minimum fields required to make a request.
newComputeVpnGatewaysGetStatus 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region for this request. See 'region'.
    -> Core.Text
       -- ^  Name of the VPN gateway to return. See 'vpnGateway'.
    -> ComputeVpnGatewaysGetStatus
newComputeVpnGatewaysGetStatus project region vpnGateway =
  ComputeVpnGatewaysGetStatus
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , project = project
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , vpnGateway = vpnGateway
    }

instance Core.GoogleRequest
           ComputeVpnGatewaysGetStatus
         where
        type Rs ComputeVpnGatewaysGetStatus =
             VpnGatewaysGetStatusResponse
        type Scopes ComputeVpnGatewaysGetStatus =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeVpnGatewaysGetStatus{..}
          = go project region vpnGateway xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeVpnGatewaysGetStatusResource)
                      Core.mempty


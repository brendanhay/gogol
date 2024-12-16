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
-- Module      : Gogol.Compute.Routers.GetNatIpInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves runtime NAT IP information.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.routers.getNatIpInfo@.
module Gogol.Compute.Routers.GetNatIpInfo
    (
    -- * Resource
      ComputeRoutersGetNatIpInfoResource

    -- ** Constructing a Request
    , ComputeRoutersGetNatIpInfo (..)
    , newComputeRoutersGetNatIpInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.routers.getNatIpInfo@ method which the
-- 'ComputeRoutersGetNatIpInfo' request conforms to.
type ComputeRoutersGetNatIpInfoResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "routers" Core.:>
                   Core.Capture "router" Core.Text Core.:>
                     "getNatIpInfo" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "natName" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] NatIpInfoResponse

-- | Retrieves runtime NAT IP information.
--
-- /See:/ 'newComputeRoutersGetNatIpInfo' smart constructor.
data ComputeRoutersGetNatIpInfo = ComputeRoutersGetNatIpInfo
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the nat service to filter the NAT IP information. If it is omitted, all nats for this router will be returned. Name should conform to RFC1035.
    , natName :: (Core.Maybe Core.Text)
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region for this request.
    , region :: Core.Text
      -- | Name of the Router resource to query for Nat IP information. The name should conform to RFC1035.
    , router :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRoutersGetNatIpInfo' with the minimum fields required to make a request.
newComputeRoutersGetNatIpInfo 
    ::  Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region for this request. See 'region'.
    -> Core.Text
       -- ^  Name of the Router resource to query for Nat IP information. The name should conform to RFC1035. See 'router'.
    -> ComputeRoutersGetNatIpInfo
newComputeRoutersGetNatIpInfo project region router =
  ComputeRoutersGetNatIpInfo
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , natName = Core.Nothing
    , project = project
    , region = region
    , router = router
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRoutersGetNatIpInfo
         where
        type Rs ComputeRoutersGetNatIpInfo =
             NatIpInfoResponse
        type Scopes ComputeRoutersGetNatIpInfo =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeRoutersGetNatIpInfo{..}
          = go project region router xgafv accessToken callback
              natName
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRoutersGetNatIpInfoResource)
                      Core.mempty


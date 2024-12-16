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
-- Module      : Gogol.Compute.TargetHttpsProxies.SetQuicOverride
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the QUIC override policy for TargetHttpsProxy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetHttpsProxies.setQuicOverride@.
module Gogol.Compute.TargetHttpsProxies.SetQuicOverride
    (
    -- * Resource
      ComputeTargetHttpsProxiesSetQuicOverrideResource

    -- ** Constructing a Request
    , ComputeTargetHttpsProxiesSetQuicOverride (..)
    , newComputeTargetHttpsProxiesSetQuicOverride
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.targetHttpsProxies.setQuicOverride@ method which the
-- 'ComputeTargetHttpsProxiesSetQuicOverride' request conforms to.
type ComputeTargetHttpsProxiesSetQuicOverrideResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "targetHttpsProxies" Core.:>
                 Core.Capture "targetHttpsProxy" Core.Text Core.:>
                   "setQuicOverride" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     TargetHttpsProxiesSetQuicOverrideRequest
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the QUIC override policy for TargetHttpsProxy.
--
-- /See:/ 'newComputeTargetHttpsProxiesSetQuicOverride' smart constructor.
data ComputeTargetHttpsProxiesSetQuicOverride = ComputeTargetHttpsProxiesSetQuicOverride
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TargetHttpsProxiesSetQuicOverrideRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Name of the TargetHttpsProxy resource to set the QUIC override policy for. The name should conform to RFC1035.
    , targetHttpsProxy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetHttpsProxiesSetQuicOverride' with the minimum fields required to make a request.
newComputeTargetHttpsProxiesSetQuicOverride 
    ::  TargetHttpsProxiesSetQuicOverrideRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the TargetHttpsProxy resource to set the QUIC override policy for. The name should conform to RFC1035. See 'targetHttpsProxy'.
    -> ComputeTargetHttpsProxiesSetQuicOverride
newComputeTargetHttpsProxiesSetQuicOverride payload project targetHttpsProxy =
  ComputeTargetHttpsProxiesSetQuicOverride
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , targetHttpsProxy = targetHttpsProxy
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeTargetHttpsProxiesSetQuicOverride
         where
        type Rs ComputeTargetHttpsProxiesSetQuicOverride =
             Operation
        type Scopes ComputeTargetHttpsProxiesSetQuicOverride
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeTargetHttpsProxiesSetQuicOverride{..}
          = go project targetHttpsProxy xgafv accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeTargetHttpsProxiesSetQuicOverrideResource)
                      Core.mempty


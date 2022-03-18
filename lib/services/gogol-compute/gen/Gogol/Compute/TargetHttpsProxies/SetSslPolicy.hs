{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.TargetHttpsProxies.SetSslPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the SSL policy for TargetHttpsProxy. The SSL policy specifies the server-side support for SSL features. This affects connections between clients and the HTTPS proxy load balancer. They do not affect the connection between the load balancer and the backends.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetHttpsProxies.setSslPolicy@.
module Gogol.Compute.TargetHttpsProxies.SetSslPolicy
    (
    -- * Resource
      ComputeTargetHttpsProxiesSetSslPolicyResource

    -- ** Constructing a Request
    , newComputeTargetHttpsProxiesSetSslPolicy
    , ComputeTargetHttpsProxiesSetSslPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.targetHttpsProxies.setSslPolicy@ method which the
-- 'ComputeTargetHttpsProxiesSetSslPolicy' request conforms to.
type ComputeTargetHttpsProxiesSetSslPolicyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "targetHttpsProxies" Core.:>
                 Core.Capture "targetHttpsProxy" Core.Text Core.:>
                   "setSslPolicy" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON] SslPolicyReference
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the SSL policy for TargetHttpsProxy. The SSL policy specifies the server-side support for SSL features. This affects connections between clients and the HTTPS proxy load balancer. They do not affect the connection between the load balancer and the backends.
--
-- /See:/ 'newComputeTargetHttpsProxiesSetSslPolicy' smart constructor.
data ComputeTargetHttpsProxiesSetSslPolicy = ComputeTargetHttpsProxiesSetSslPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SslPolicyReference
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Name of the TargetHttpsProxy resource whose SSL policy is to be set. The name must be 1-63 characters long, and comply with RFC1035.
    , targetHttpsProxy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetHttpsProxiesSetSslPolicy' with the minimum fields required to make a request.
newComputeTargetHttpsProxiesSetSslPolicy 
    ::  SslPolicyReference
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the TargetHttpsProxy resource whose SSL policy is to be set. The name must be 1-63 characters long, and comply with RFC1035. See 'targetHttpsProxy'.
    -> ComputeTargetHttpsProxiesSetSslPolicy
newComputeTargetHttpsProxiesSetSslPolicy payload project targetHttpsProxy =
  ComputeTargetHttpsProxiesSetSslPolicy
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
           ComputeTargetHttpsProxiesSetSslPolicy
         where
        type Rs ComputeTargetHttpsProxiesSetSslPolicy =
             Operation
        type Scopes ComputeTargetHttpsProxiesSetSslPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          ComputeTargetHttpsProxiesSetSslPolicy{..}
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
                           ComputeTargetHttpsProxiesSetSslPolicyResource)
                      Core.mempty


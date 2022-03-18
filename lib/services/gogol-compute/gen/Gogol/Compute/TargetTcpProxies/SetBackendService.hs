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
-- Module      : Gogol.Compute.TargetTcpProxies.SetBackendService
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the BackendService for TargetTcpProxy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetTcpProxies.setBackendService@.
module Gogol.Compute.TargetTcpProxies.SetBackendService
    (
    -- * Resource
      ComputeTargetTcpProxiesSetBackendServiceResource

    -- ** Constructing a Request
    , newComputeTargetTcpProxiesSetBackendService
    , ComputeTargetTcpProxiesSetBackendService
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.targetTcpProxies.setBackendService@ method which the
-- 'ComputeTargetTcpProxiesSetBackendService' request conforms to.
type ComputeTargetTcpProxiesSetBackendServiceResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "targetTcpProxies" Core.:>
                 Core.Capture "targetTcpProxy" Core.Text Core.:>
                   "setBackendService" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     TargetTcpProxiesSetBackendServiceRequest
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Changes the BackendService for TargetTcpProxy.
--
-- /See:/ 'newComputeTargetTcpProxiesSetBackendService' smart constructor.
data ComputeTargetTcpProxiesSetBackendService = ComputeTargetTcpProxiesSetBackendService
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TargetTcpProxiesSetBackendServiceRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Name of the TargetTcpProxy resource whose BackendService resource is to be set.
    , targetTcpProxy :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetTcpProxiesSetBackendService' with the minimum fields required to make a request.
newComputeTargetTcpProxiesSetBackendService 
    ::  TargetTcpProxiesSetBackendServiceRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the TargetTcpProxy resource whose BackendService resource is to be set. See 'targetTcpProxy'.
    -> ComputeTargetTcpProxiesSetBackendService
newComputeTargetTcpProxiesSetBackendService payload project targetTcpProxy =
  ComputeTargetTcpProxiesSetBackendService
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , targetTcpProxy = targetTcpProxy
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeTargetTcpProxiesSetBackendService
         where
        type Rs ComputeTargetTcpProxiesSetBackendService =
             Operation
        type Scopes ComputeTargetTcpProxiesSetBackendService
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          ComputeTargetTcpProxiesSetBackendService{..}
          = go project targetTcpProxy xgafv accessToken
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
                           ComputeTargetTcpProxiesSetBackendServiceResource)
                      Core.mempty


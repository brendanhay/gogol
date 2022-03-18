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
-- Module      : Gogol.Compute.BackendBuckets.SetEdgeSecurityPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the edge security policy for the specified backend bucket.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.backendBuckets.setEdgeSecurityPolicy@.
module Gogol.Compute.BackendBuckets.SetEdgeSecurityPolicy
    (
    -- * Resource
      ComputeBackendBucketsSetEdgeSecurityPolicyResource

    -- ** Constructing a Request
    , newComputeBackendBucketsSetEdgeSecurityPolicy
    , ComputeBackendBucketsSetEdgeSecurityPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.backendBuckets.setEdgeSecurityPolicy@ method which the
-- 'ComputeBackendBucketsSetEdgeSecurityPolicy' request conforms to.
type ComputeBackendBucketsSetEdgeSecurityPolicyResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "backendBuckets" Core.:>
                 Core.Capture "backendBucket" Core.Text Core.:>
                   "setEdgeSecurityPolicy" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "requestId" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     SecurityPolicyReference
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the edge security policy for the specified backend bucket.
--
-- /See:/ 'newComputeBackendBucketsSetEdgeSecurityPolicy' smart constructor.
data ComputeBackendBucketsSetEdgeSecurityPolicy = ComputeBackendBucketsSetEdgeSecurityPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Name of the BackendService resource to which the security policy should be set. The name should conform to RFC1035.
    , backendBucket :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SecurityPolicyReference
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeBackendBucketsSetEdgeSecurityPolicy' with the minimum fields required to make a request.
newComputeBackendBucketsSetEdgeSecurityPolicy 
    ::  Core.Text
       -- ^  Name of the BackendService resource to which the security policy should be set. The name should conform to RFC1035. See 'backendBucket'.
    -> SecurityPolicyReference
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> ComputeBackendBucketsSetEdgeSecurityPolicy
newComputeBackendBucketsSetEdgeSecurityPolicy backendBucket payload project =
  ComputeBackendBucketsSetEdgeSecurityPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , backendBucket = backendBucket
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeBackendBucketsSetEdgeSecurityPolicy
         where
        type Rs ComputeBackendBucketsSetEdgeSecurityPolicy =
             Operation
        type Scopes
               ComputeBackendBucketsSetEdgeSecurityPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          ComputeBackendBucketsSetEdgeSecurityPolicy{..}
          = go project backendBucket xgafv accessToken callback
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
                           ComputeBackendBucketsSetEdgeSecurityPolicyResource)
                      Core.mempty


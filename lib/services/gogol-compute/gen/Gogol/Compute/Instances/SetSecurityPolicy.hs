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
-- Module      : Gogol.Compute.Instances.SetSecurityPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the Google Cloud Armor security policy for the specified instance. For more information, see Google Cloud Armor Overview
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.setSecurityPolicy@.
module Gogol.Compute.Instances.SetSecurityPolicy
    (
    -- * Resource
      ComputeInstancesSetSecurityPolicyResource

    -- ** Constructing a Request
    , ComputeInstancesSetSecurityPolicy (..)
    , newComputeInstancesSetSecurityPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instances.setSecurityPolicy@ method which the
-- 'ComputeInstancesSetSecurityPolicy' request conforms to.
type ComputeInstancesSetSecurityPolicyResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "instances" Core.:>
                   Core.Capture "instance" Core.Text Core.:>
                     "setSecurityPolicy" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "requestId" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       InstancesSetSecurityPolicyRequest
                                       Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the Google Cloud Armor security policy for the specified instance. For more information, see Google Cloud Armor Overview
--
-- /See:/ 'newComputeInstancesSetSecurityPolicy' smart constructor.
data ComputeInstancesSetSecurityPolicy = ComputeInstancesSetSecurityPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the Instance resource to which the security policy should be set. The name should conform to RFC1035.
    , instance' :: Core.Text
      -- | Multipart request metadata.
    , payload :: InstancesSetSecurityPolicyRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the zone scoping this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesSetSecurityPolicy' with the minimum fields required to make a request.
newComputeInstancesSetSecurityPolicy 
    ::  Core.Text
       -- ^  Name of the Instance resource to which the security policy should be set. The name should conform to RFC1035. See 'instance''.
    -> InstancesSetSecurityPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the zone scoping this request. See 'zone'.
    -> ComputeInstancesSetSecurityPolicy
newComputeInstancesSetSecurityPolicy instance' payload project zone =
  ComputeInstancesSetSecurityPolicy
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instance' = instance'
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeInstancesSetSecurityPolicy
         where
        type Rs ComputeInstancesSetSecurityPolicy = Operation
        type Scopes ComputeInstancesSetSecurityPolicy =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeInstancesSetSecurityPolicy{..}
          = go project zone instance' xgafv accessToken
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
                         Core.Proxy ComputeInstancesSetSecurityPolicyResource)
                      Core.mempty


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
-- Module      : Gogol.Compute.RegionInstanceGroupManagers.SuspendInstances
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances in the managed instance group to be immediately suspended. You can only specify instances that are running in this request. This method reduces the targetSize and increases the targetSuspendedSize of the managed instance group by the number of instances that you suspend. The suspendInstances operation is marked DONE if the suspendInstances request is successful. The underlying actions take additional time. You must separately verify the status of the SUSPENDING action with the listmanagedinstances method. If the standbyPolicy.initialDelaySec field is set, the group delays suspension of the instances until initialDelaySec have passed from instance.creationTimestamp (that is, when the instance was created). This delay gives your application time to set itself up and initialize on the instance. If more than initialDelaySec seconds have passed since instance.creationTimestamp when this method is called, there will be zero delay. If the group is part of a backend service that has
-- enabled connection draining, it can take up to 60 seconds after the connection draining duration has elapsed before the VM instance is suspended. Suspended instances can be resumed using the resumeInstances method. You can specify a maximum of 1000 instances with this method per request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.suspendInstances@.
module Gogol.Compute.RegionInstanceGroupManagers.SuspendInstances
    (
    -- * Resource
      ComputeRegionInstanceGroupManagersSuspendInstancesResource

    -- ** Constructing a Request
    , ComputeRegionInstanceGroupManagersSuspendInstances (..)
    , newComputeRegionInstanceGroupManagersSuspendInstances
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionInstanceGroupManagers.suspendInstances@ method which the
-- 'ComputeRegionInstanceGroupManagersSuspendInstances' request conforms to.
type ComputeRegionInstanceGroupManagersSuspendInstancesResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "instanceGroupManagers" Core.:>
                   Core.Capture "instanceGroupManager" Core.Text Core.:>
                     "suspendInstances" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "requestId" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       RegionInstanceGroupManagersSuspendInstancesRequest
                                       Core.:> Core.Post '[Core.JSON] Operation

-- | Flags the specified instances in the managed instance group to be immediately suspended. You can only specify instances that are running in this request. This method reduces the targetSize and increases the targetSuspendedSize of the managed instance group by the number of instances that you suspend. The suspendInstances operation is marked DONE if the suspendInstances request is successful. The underlying actions take additional time. You must separately verify the status of the SUSPENDING action with the listmanagedinstances method. If the standbyPolicy.initialDelaySec field is set, the group delays suspension of the instances until initialDelaySec have passed from instance.creationTimestamp (that is, when the instance was created). This delay gives your application time to set itself up and initialize on the instance. If more than initialDelaySec seconds have passed since instance.creationTimestamp when this method is called, there will be zero delay. If the group is part of a backend service that has
-- enabled connection draining, it can take up to 60 seconds after the connection draining duration has elapsed before the VM instance is suspended. Suspended instances can be resumed using the resumeInstances method. You can specify a maximum of 1000 instances with this method per request.
--
-- /See:/ 'newComputeRegionInstanceGroupManagersSuspendInstances' smart constructor.
data ComputeRegionInstanceGroupManagersSuspendInstances = ComputeRegionInstanceGroupManagersSuspendInstances
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the managed instance group.
    , instanceGroupManager :: Core.Text
      -- | Multipart request metadata.
    , payload :: RegionInstanceGroupManagersSuspendInstancesRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region scoping this request.
    , region :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstanceGroupManagersSuspendInstances' with the minimum fields required to make a request.
newComputeRegionInstanceGroupManagersSuspendInstances 
    ::  Core.Text
       -- ^  Name of the managed instance group. See 'instanceGroupManager'.
    -> RegionInstanceGroupManagersSuspendInstancesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region scoping this request. See 'region'.
    -> ComputeRegionInstanceGroupManagersSuspendInstances
newComputeRegionInstanceGroupManagersSuspendInstances instanceGroupManager payload project region =
  ComputeRegionInstanceGroupManagersSuspendInstances
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instanceGroupManager = instanceGroupManager
    , payload = payload
    , project = project
    , region = region
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionInstanceGroupManagersSuspendInstances
         where
        type Rs
               ComputeRegionInstanceGroupManagersSuspendInstances
             = Operation
        type Scopes
               ComputeRegionInstanceGroupManagersSuspendInstances
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeRegionInstanceGroupManagersSuspendInstances{..}
          = go project region instanceGroupManager xgafv
              accessToken
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
                           ComputeRegionInstanceGroupManagersSuspendInstancesResource)
                      Core.mempty

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
-- Module      : Gogol.Compute.InstanceGroupManagerResizeRequests.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified resize request and removes it from the queue. Cancelled resize request does no longer wait for the resources to be provisioned. Cancel is only possible for requests that are accepted in the queue.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagerResizeRequests.cancel@.
module Gogol.Compute.InstanceGroupManagerResizeRequests.Cancel
    (
    -- * Resource
      ComputeInstanceGroupManagerResizeRequestsCancelResource

    -- ** Constructing a Request
    , ComputeInstanceGroupManagerResizeRequestsCancel (..)
    , newComputeInstanceGroupManagerResizeRequestsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instanceGroupManagerResizeRequests.cancel@ method which the
-- 'ComputeInstanceGroupManagerResizeRequestsCancel' request conforms to.
type ComputeInstanceGroupManagerResizeRequestsCancelResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "instanceGroupManagers" Core.:>
                   Core.Capture "instanceGroupManager" Core.Text Core.:>
                     "resizeRequests" Core.:>
                       Core.Capture "resizeRequest" Core.Text Core.:>
                         "cancel" Core.:>
                           Core.QueryParam "$.xgafv" Xgafv Core.:>
                             Core.QueryParam "access_token" Core.Text Core.:>
                               Core.QueryParam "callback" Core.Text Core.:>
                                 Core.QueryParam "requestId" Core.Text Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:>
                                         Core.Post '[Core.JSON] Operation

-- | Cancels the specified resize request and removes it from the queue. Cancelled resize request does no longer wait for the resources to be provisioned. Cancel is only possible for requests that are accepted in the queue.
--
-- /See:/ 'newComputeInstanceGroupManagerResizeRequestsCancel' smart constructor.
data ComputeInstanceGroupManagerResizeRequestsCancel = ComputeInstanceGroupManagerResizeRequestsCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the managed instance group. The name should conform to RFC1035 or be a resource ID.
    , instanceGroupManager :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | The name of the resize request to cancel. The name should conform to RFC1035 or be a resource ID.
    , resizeRequest :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone where the managed instance group is located. The name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagerResizeRequestsCancel' with the minimum fields required to make a request.
newComputeInstanceGroupManagerResizeRequestsCancel 
    ::  Core.Text
       -- ^  The name of the managed instance group. The name should conform to RFC1035 or be a resource ID. See 'instanceGroupManager'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the resize request to cancel. The name should conform to RFC1035 or be a resource ID. See 'resizeRequest'.
    -> Core.Text
       -- ^  The name of the zone where the managed instance group is located. The name should conform to RFC1035. See 'zone'.
    -> ComputeInstanceGroupManagerResizeRequestsCancel
newComputeInstanceGroupManagerResizeRequestsCancel instanceGroupManager project resizeRequest zone =
  ComputeInstanceGroupManagerResizeRequestsCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instanceGroupManager = instanceGroupManager
    , project = project
    , requestId = Core.Nothing
    , resizeRequest = resizeRequest
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeInstanceGroupManagerResizeRequestsCancel
         where
        type Rs
               ComputeInstanceGroupManagerResizeRequestsCancel
             = Operation
        type Scopes
               ComputeInstanceGroupManagerResizeRequestsCancel
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeInstanceGroupManagerResizeRequestsCancel{..}
          = go project zone instanceGroupManager resizeRequest
              xgafv
              accessToken
              callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInstanceGroupManagerResizeRequestsCancelResource)
                      Core.mempty


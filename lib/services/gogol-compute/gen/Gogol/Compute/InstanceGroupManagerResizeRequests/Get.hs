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
-- Module      : Gogol.Compute.InstanceGroupManagerResizeRequests.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the details about the specified resize request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagerResizeRequests.get@.
module Gogol.Compute.InstanceGroupManagerResizeRequests.Get
    (
    -- * Resource
      ComputeInstanceGroupManagerResizeRequestsGetResource

    -- ** Constructing a Request
    , ComputeInstanceGroupManagerResizeRequestsGet (..)
    , newComputeInstanceGroupManagerResizeRequestsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instanceGroupManagerResizeRequests.get@ method which the
-- 'ComputeInstanceGroupManagerResizeRequestsGet' request conforms to.
type ComputeInstanceGroupManagerResizeRequestsGetResource
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
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON]
                                       InstanceGroupManagerResizeRequest

-- | Returns all of the details about the specified resize request.
--
-- /See:/ 'newComputeInstanceGroupManagerResizeRequestsGet' smart constructor.
data ComputeInstanceGroupManagerResizeRequestsGet = ComputeInstanceGroupManagerResizeRequestsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the managed instance group. Name should conform to RFC1035 or be a resource ID.
    , instanceGroupManager :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The name of the resize request. Name should conform to RFC1035 or be a resource ID.
    , resizeRequest :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Name of the href=\"\/compute\/docs\/regions-zones\/#available\">zone scoping this request. Name should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagerResizeRequestsGet' with the minimum fields required to make a request.
newComputeInstanceGroupManagerResizeRequestsGet 
    ::  Core.Text
       -- ^  The name of the managed instance group. Name should conform to RFC1035 or be a resource ID. See 'instanceGroupManager'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the resize request. Name should conform to RFC1035 or be a resource ID. See 'resizeRequest'.
    -> Core.Text
       -- ^  Name of the href=\"\/compute\/docs\/regions-zones\/#available\">zone scoping this request. Name should conform to RFC1035. See 'zone'.
    -> ComputeInstanceGroupManagerResizeRequestsGet
newComputeInstanceGroupManagerResizeRequestsGet instanceGroupManager project resizeRequest zone =
  ComputeInstanceGroupManagerResizeRequestsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instanceGroupManager = instanceGroupManager
    , project = project
    , resizeRequest = resizeRequest
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeInstanceGroupManagerResizeRequestsGet
         where
        type Rs ComputeInstanceGroupManagerResizeRequestsGet
             = InstanceGroupManagerResizeRequest
        type Scopes
               ComputeInstanceGroupManagerResizeRequestsGet
             =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient
          ComputeInstanceGroupManagerResizeRequestsGet{..}
          = go project zone instanceGroupManager resizeRequest
              xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInstanceGroupManagerResizeRequestsGetResource)
                      Core.mempty


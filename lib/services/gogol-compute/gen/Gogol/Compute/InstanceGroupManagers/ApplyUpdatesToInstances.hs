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
-- Module      : Gogol.Compute.InstanceGroupManagers.ApplyUpdatesToInstances
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies changes to selected instances on the managed instance group. This method can be used to apply new overrides and\/or new versions.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagers.applyUpdatesToInstances@.
module Gogol.Compute.InstanceGroupManagers.ApplyUpdatesToInstances
    (
    -- * Resource
      ComputeInstanceGroupManagersApplyUpdatesToInstancesResource

    -- ** Constructing a Request
    , ComputeInstanceGroupManagersApplyUpdatesToInstances (..)
    , newComputeInstanceGroupManagersApplyUpdatesToInstances
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.instanceGroupManagers.applyUpdatesToInstances@ method which the
-- 'ComputeInstanceGroupManagersApplyUpdatesToInstances' request conforms to.
type ComputeInstanceGroupManagersApplyUpdatesToInstancesResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "instanceGroupManagers" Core.:>
                   Core.Capture "instanceGroupManager" Core.Text Core.:>
                     "applyUpdatesToInstances" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     InstanceGroupManagersApplyUpdatesRequest
                                     Core.:> Core.Post '[Core.JSON] Operation

-- | Applies changes to selected instances on the managed instance group. This method can be used to apply new overrides and\/or new versions.
--
-- /See:/ 'newComputeInstanceGroupManagersApplyUpdatesToInstances' smart constructor.
data ComputeInstanceGroupManagersApplyUpdatesToInstances = ComputeInstanceGroupManagersApplyUpdatesToInstances
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the managed instance group, should conform to RFC1035.
    , instanceGroupManager :: Core.Text
      -- | Multipart request metadata.
    , payload :: InstanceGroupManagersApplyUpdatesRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone where the managed instance group is located. Should conform to RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagersApplyUpdatesToInstances' with the minimum fields required to make a request.
newComputeInstanceGroupManagersApplyUpdatesToInstances 
    ::  Core.Text
       -- ^  The name of the managed instance group, should conform to RFC1035. See 'instanceGroupManager'.
    -> InstanceGroupManagersApplyUpdatesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the zone where the managed instance group is located. Should conform to RFC1035. See 'zone'.
    -> ComputeInstanceGroupManagersApplyUpdatesToInstances
newComputeInstanceGroupManagersApplyUpdatesToInstances instanceGroupManager payload project zone =
  ComputeInstanceGroupManagersApplyUpdatesToInstances
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instanceGroupManager = instanceGroupManager
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeInstanceGroupManagersApplyUpdatesToInstances
         where
        type Rs
               ComputeInstanceGroupManagersApplyUpdatesToInstances
             = Operation
        type Scopes
               ComputeInstanceGroupManagersApplyUpdatesToInstances
             = '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient
          ComputeInstanceGroupManagersApplyUpdatesToInstances{..}
          = go project zone instanceGroupManager xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeInstanceGroupManagersApplyUpdatesToInstancesResource)
                      Core.mempty


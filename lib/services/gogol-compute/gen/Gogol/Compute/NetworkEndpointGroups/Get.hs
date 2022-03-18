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
-- Module      : Gogol.Compute.NetworkEndpointGroups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network endpoint group. Gets a list of available network endpoint groups by making a list() request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkEndpointGroups.get@.
module Gogol.Compute.NetworkEndpointGroups.Get
    (
    -- * Resource
      ComputeNetworkEndpointGroupsGetResource

    -- ** Constructing a Request
    , newComputeNetworkEndpointGroupsGet
    , ComputeNetworkEndpointGroupsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.networkEndpointGroups.get@ method which the
-- 'ComputeNetworkEndpointGroupsGet' request conforms to.
type ComputeNetworkEndpointGroupsGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "networkEndpointGroups" Core.:>
                   Core.Capture "networkEndpointGroup" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] NetworkEndpointGroup

-- | Returns the specified network endpoint group. Gets a list of available network endpoint groups by making a list() request.
--
-- /See:/ 'newComputeNetworkEndpointGroupsGet' smart constructor.
data ComputeNetworkEndpointGroupsGet = ComputeNetworkEndpointGroupsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the network endpoint group. It should comply with RFC1035.
    , networkEndpointGroup :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone where the network endpoint group is located. It should comply with RFC1035.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworkEndpointGroupsGet' with the minimum fields required to make a request.
newComputeNetworkEndpointGroupsGet 
    ::  Core.Text
       -- ^  The name of the network endpoint group. It should comply with RFC1035. See 'networkEndpointGroup'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the zone where the network endpoint group is located. It should comply with RFC1035. See 'zone'.
    -> ComputeNetworkEndpointGroupsGet
newComputeNetworkEndpointGroupsGet networkEndpointGroup project zone =
  ComputeNetworkEndpointGroupsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , networkEndpointGroup = networkEndpointGroup
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeNetworkEndpointGroupsGet
         where
        type Rs ComputeNetworkEndpointGroupsGet =
             NetworkEndpointGroup
        type Scopes ComputeNetworkEndpointGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ComputeNetworkEndpointGroupsGet{..}
          = go project zone networkEndpointGroup xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeNetworkEndpointGroupsGetResource)
                      Core.mempty


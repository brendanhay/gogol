{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.RegionNetworkEndpointGroups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network endpoint group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.get@.
module Gogol.Compute.RegionNetworkEndpointGroups.Get
  ( -- * Resource
    ComputeRegionNetworkEndpointGroupsGetResource,

    -- ** Constructing a Request
    ComputeRegionNetworkEndpointGroupsGet (..),
    newComputeRegionNetworkEndpointGroupsGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionNetworkEndpointGroups.get@ method which the
-- 'ComputeRegionNetworkEndpointGroupsGet' request conforms to.
type ComputeRegionNetworkEndpointGroupsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "networkEndpointGroups"
    Core.:> Core.Capture "networkEndpointGroup" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] NetworkEndpointGroup

-- | Returns the specified network endpoint group.
--
-- /See:/ 'newComputeRegionNetworkEndpointGroupsGet' smart constructor.
data ComputeRegionNetworkEndpointGroupsGet = ComputeRegionNetworkEndpointGroupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the network endpoint group. It should comply with RFC1035.
    networkEndpointGroup :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the region where the network endpoint group is located. It should comply with RFC1035.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionNetworkEndpointGroupsGet' with the minimum fields required to make a request.
newComputeRegionNetworkEndpointGroupsGet ::
  -- |  The name of the network endpoint group. It should comply with RFC1035. See 'networkEndpointGroup'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the region where the network endpoint group is located. It should comply with RFC1035. See 'region'.
  Core.Text ->
  ComputeRegionNetworkEndpointGroupsGet
newComputeRegionNetworkEndpointGroupsGet networkEndpointGroup project region =
  ComputeRegionNetworkEndpointGroupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      networkEndpointGroup = networkEndpointGroup,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionNetworkEndpointGroupsGet
  where
  type
    Rs ComputeRegionNetworkEndpointGroupsGet =
      NetworkEndpointGroup
  type
    Scopes ComputeRegionNetworkEndpointGroupsGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeRegionNetworkEndpointGroupsGet {..} =
      go
        project
        region
        networkEndpointGroup
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeRegionNetworkEndpointGroupsGetResource
            )
            Core.mempty

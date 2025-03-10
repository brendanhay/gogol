{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.GlobalNetworkEndpointGroups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network endpoint group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.get@.
module Gogol.Compute.GlobalNetworkEndpointGroups.Get
  ( -- * Resource
    ComputeGlobalNetworkEndpointGroupsGetResource,

    -- ** Constructing a Request
    ComputeGlobalNetworkEndpointGroupsGet (..),
    newComputeGlobalNetworkEndpointGroupsGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.globalNetworkEndpointGroups.get@ method which the
-- 'ComputeGlobalNetworkEndpointGroupsGet' request conforms to.
type ComputeGlobalNetworkEndpointGroupsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
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
-- /See:/ 'newComputeGlobalNetworkEndpointGroupsGet' smart constructor.
data ComputeGlobalNetworkEndpointGroupsGet = ComputeGlobalNetworkEndpointGroupsGet
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeGlobalNetworkEndpointGroupsGet' with the minimum fields required to make a request.
newComputeGlobalNetworkEndpointGroupsGet ::
  -- |  The name of the network endpoint group. It should comply with RFC1035. See 'networkEndpointGroup'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeGlobalNetworkEndpointGroupsGet
newComputeGlobalNetworkEndpointGroupsGet
  networkEndpointGroup
  project =
    ComputeGlobalNetworkEndpointGroupsGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        networkEndpointGroup = networkEndpointGroup,
        project = project,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeGlobalNetworkEndpointGroupsGet where
  type
    Rs ComputeGlobalNetworkEndpointGroupsGet =
      NetworkEndpointGroup
  type
    Scopes ComputeGlobalNetworkEndpointGroupsGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeGlobalNetworkEndpointGroupsGet {..} =
    go
      project
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
              Core.Proxy ComputeGlobalNetworkEndpointGroupsGetResource
          )
          Core.mempty

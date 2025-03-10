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
-- Module      : Gogol.Compute.Networks.GetEffectiveFirewalls
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the effective firewalls on a given network.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networks.getEffectiveFirewalls@.
module Gogol.Compute.Networks.GetEffectiveFirewalls
  ( -- * Resource
    ComputeNetworksGetEffectiveFirewallsResource,

    -- ** Constructing a Request
    ComputeNetworksGetEffectiveFirewalls (..),
    newComputeNetworksGetEffectiveFirewalls,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.networks.getEffectiveFirewalls@ method which the
-- 'ComputeNetworksGetEffectiveFirewalls' request conforms to.
type ComputeNetworksGetEffectiveFirewallsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "networks"
    Core.:> Core.Capture "network" Core.Text
    Core.:> "getEffectiveFirewalls"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] NetworksGetEffectiveFirewallsResponse

-- | Returns the effective firewalls on a given network.
--
-- /See:/ 'newComputeNetworksGetEffectiveFirewalls' smart constructor.
data ComputeNetworksGetEffectiveFirewalls = ComputeNetworksGetEffectiveFirewalls
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the network for this request.
    network :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworksGetEffectiveFirewalls' with the minimum fields required to make a request.
newComputeNetworksGetEffectiveFirewalls ::
  -- |  Name of the network for this request. See 'network'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeNetworksGetEffectiveFirewalls
newComputeNetworksGetEffectiveFirewalls network project =
  ComputeNetworksGetEffectiveFirewalls
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      network = network,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeNetworksGetEffectiveFirewalls where
  type
    Rs ComputeNetworksGetEffectiveFirewalls =
      NetworksGetEffectiveFirewallsResponse
  type
    Scopes ComputeNetworksGetEffectiveFirewalls =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeNetworksGetEffectiveFirewalls {..} =
    go
      project
      network
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
              Core.Proxy ComputeNetworksGetEffectiveFirewallsResource
          )
          Core.mempty

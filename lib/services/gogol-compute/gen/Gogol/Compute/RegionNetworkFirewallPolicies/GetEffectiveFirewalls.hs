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
-- Module      : Gogol.Compute.RegionNetworkFirewallPolicies.GetEffectiveFirewalls
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the effective firewalls on a given network.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkFirewallPolicies.getEffectiveFirewalls@.
module Gogol.Compute.RegionNetworkFirewallPolicies.GetEffectiveFirewalls
  ( -- * Resource
    ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewallsResource,

    -- ** Constructing a Request
    newComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls,
    ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionNetworkFirewallPolicies.getEffectiveFirewalls@ method which the
-- 'ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls' request conforms to.
type ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewallsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "firewallPolicies"
    Core.:> "getEffectiveFirewalls"
    Core.:> Core.QueryParam "network" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse

-- | Returns the effective firewalls on a given network.
--
-- /See:/ 'newComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls' smart constructor.
data ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls = ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Network reference
    network :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls' with the minimum fields required to make a request.
newComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls ::
  -- |  Network reference See 'network'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls
newComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls network project region =
  ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      network = network,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls
  where
  type
    Rs
      ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls =
      RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse
  type
    Scopes
      ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewalls {..} =
      go
        project
        region
        (Core.Just network)
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
                  ComputeRegionNetworkFirewallPoliciesGetEffectiveFirewallsResource
            )
            Core.mempty

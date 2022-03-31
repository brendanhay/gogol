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
-- Module      : Gogol.Compute.RegionNetworkFirewallPolicies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network firewall policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkFirewallPolicies.get@.
module Gogol.Compute.RegionNetworkFirewallPolicies.Get
  ( -- * Resource
    ComputeRegionNetworkFirewallPoliciesGetResource,

    -- ** Constructing a Request
    newComputeRegionNetworkFirewallPoliciesGet,
    ComputeRegionNetworkFirewallPoliciesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionNetworkFirewallPolicies.get@ method which the
-- 'ComputeRegionNetworkFirewallPoliciesGet' request conforms to.
type ComputeRegionNetworkFirewallPoliciesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FirewallPolicy

-- | Returns the specified network firewall policy.
--
-- /See:/ 'newComputeRegionNetworkFirewallPoliciesGet' smart constructor.
data ComputeRegionNetworkFirewallPoliciesGet = ComputeRegionNetworkFirewallPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the firewall policy to get.
    firewallPolicy :: Core.Text,
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

-- | Creates a value of 'ComputeRegionNetworkFirewallPoliciesGet' with the minimum fields required to make a request.
newComputeRegionNetworkFirewallPoliciesGet ::
  -- |  Name of the firewall policy to get. See 'firewallPolicy'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionNetworkFirewallPoliciesGet
newComputeRegionNetworkFirewallPoliciesGet firewallPolicy project region =
  ComputeRegionNetworkFirewallPoliciesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      firewallPolicy = firewallPolicy,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionNetworkFirewallPoliciesGet
  where
  type
    Rs ComputeRegionNetworkFirewallPoliciesGet =
      FirewallPolicy
  type
    Scopes ComputeRegionNetworkFirewallPoliciesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeRegionNetworkFirewallPoliciesGet {..} =
      go
        project
        region
        firewallPolicy
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
                  ComputeRegionNetworkFirewallPoliciesGetResource
            )
            Core.mempty

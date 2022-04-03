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
-- Module      : Gogol.Compute.RegionNetworkFirewallPolicies.GetRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a rule of the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkFirewallPolicies.getRule@.
module Gogol.Compute.RegionNetworkFirewallPolicies.GetRule
  ( -- * Resource
    ComputeRegionNetworkFirewallPoliciesGetRuleResource,

    -- ** Constructing a Request
    ComputeRegionNetworkFirewallPoliciesGetRule (..),
    newComputeRegionNetworkFirewallPoliciesGetRule,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionNetworkFirewallPolicies.getRule@ method which the
-- 'ComputeRegionNetworkFirewallPoliciesGetRule' request conforms to.
type ComputeRegionNetworkFirewallPoliciesGetRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> "getRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "priority" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FirewallPolicyRule

-- | Gets a rule of the specified priority.
--
-- /See:/ 'newComputeRegionNetworkFirewallPoliciesGetRule' smart constructor.
data ComputeRegionNetworkFirewallPoliciesGetRule = ComputeRegionNetworkFirewallPoliciesGetRule
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the firewall policy to which the queried rule belongs.
    firewallPolicy :: Core.Text,
    -- | The priority of the rule to get from the firewall policy.
    priority :: (Core.Maybe Core.Int32),
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

-- | Creates a value of 'ComputeRegionNetworkFirewallPoliciesGetRule' with the minimum fields required to make a request.
newComputeRegionNetworkFirewallPoliciesGetRule ::
  -- |  Name of the firewall policy to which the queried rule belongs. See 'firewallPolicy'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeRegionNetworkFirewallPoliciesGetRule
newComputeRegionNetworkFirewallPoliciesGetRule firewallPolicy project region =
  ComputeRegionNetworkFirewallPoliciesGetRule
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      firewallPolicy = firewallPolicy,
      priority = Core.Nothing,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionNetworkFirewallPoliciesGetRule
  where
  type
    Rs ComputeRegionNetworkFirewallPoliciesGetRule =
      FirewallPolicyRule
  type
    Scopes
      ComputeRegionNetworkFirewallPoliciesGetRule =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeRegionNetworkFirewallPoliciesGetRule {..} =
      go
        project
        region
        firewallPolicy
        xgafv
        accessToken
        callback
        priority
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeRegionNetworkFirewallPoliciesGetRuleResource
            )
            Core.mempty

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
-- Module      : Gogol.Compute.NetworkFirewallPolicies.GetPacketMirroringRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a packet mirroring rule of the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkFirewallPolicies.getPacketMirroringRule@.
module Gogol.Compute.NetworkFirewallPolicies.GetPacketMirroringRule
  ( -- * Resource
    ComputeNetworkFirewallPoliciesGetPacketMirroringRuleResource,

    -- ** Constructing a Request
    ComputeNetworkFirewallPoliciesGetPacketMirroringRule (..),
    newComputeNetworkFirewallPoliciesGetPacketMirroringRule,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.networkFirewallPolicies.getPacketMirroringRule@ method which the
-- 'ComputeNetworkFirewallPoliciesGetPacketMirroringRule' request conforms to.
type ComputeNetworkFirewallPoliciesGetPacketMirroringRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> "getPacketMirroringRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "priority" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FirewallPolicyRule

-- | Gets a packet mirroring rule of the specified priority.
--
-- /See:/ 'newComputeNetworkFirewallPoliciesGetPacketMirroringRule' smart constructor.
data ComputeNetworkFirewallPoliciesGetPacketMirroringRule = ComputeNetworkFirewallPoliciesGetPacketMirroringRule
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworkFirewallPoliciesGetPacketMirroringRule' with the minimum fields required to make a request.
newComputeNetworkFirewallPoliciesGetPacketMirroringRule ::
  -- |  Name of the firewall policy to which the queried rule belongs. See 'firewallPolicy'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeNetworkFirewallPoliciesGetPacketMirroringRule
newComputeNetworkFirewallPoliciesGetPacketMirroringRule
  firewallPolicy
  project =
    ComputeNetworkFirewallPoliciesGetPacketMirroringRule
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        firewallPolicy = firewallPolicy,
        priority = Core.Nothing,
        project = project,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComputeNetworkFirewallPoliciesGetPacketMirroringRule
  where
  type
    Rs ComputeNetworkFirewallPoliciesGetPacketMirroringRule =
      FirewallPolicyRule
  type
    Scopes ComputeNetworkFirewallPoliciesGetPacketMirroringRule =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient
    ComputeNetworkFirewallPoliciesGetPacketMirroringRule {..} =
      go
        project
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
                  ComputeNetworkFirewallPoliciesGetPacketMirroringRuleResource
            )
            Core.mempty

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
-- Module      : Gogol.Compute.NetworkFirewallPolicies.AddPacketMirroringRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a packet mirroring rule into a firewall policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkFirewallPolicies.addPacketMirroringRule@.
module Gogol.Compute.NetworkFirewallPolicies.AddPacketMirroringRule
  ( -- * Resource
    ComputeNetworkFirewallPoliciesAddPacketMirroringRuleResource,

    -- ** Constructing a Request
    ComputeNetworkFirewallPoliciesAddPacketMirroringRule (..),
    newComputeNetworkFirewallPoliciesAddPacketMirroringRule,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.networkFirewallPolicies.addPacketMirroringRule@ method which the
-- 'ComputeNetworkFirewallPoliciesAddPacketMirroringRule' request conforms to.
type ComputeNetworkFirewallPoliciesAddPacketMirroringRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> "addPacketMirroringRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxPriority" Core.Int32
    Core.:> Core.QueryParam "minPriority" Core.Int32
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FirewallPolicyRule
    Core.:> Core.Post '[Core.JSON] Operation

-- | Inserts a packet mirroring rule into a firewall policy.
--
-- /See:/ 'newComputeNetworkFirewallPoliciesAddPacketMirroringRule' smart constructor.
data ComputeNetworkFirewallPoliciesAddPacketMirroringRule = ComputeNetworkFirewallPoliciesAddPacketMirroringRule
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the firewall policy to update.
    firewallPolicy :: Core.Text,
    -- | When rule.priority is not specified, auto choose a unused priority between minPriority and maxPriority>. This field is exclusive with rule.priority.
    maxPriority :: (Core.Maybe Core.Int32),
    -- | When rule.priority is not specified, auto choose a unused priority between minPriority and maxPriority>. This field is exclusive with rule.priority.
    minPriority :: (Core.Maybe Core.Int32),
    -- | Multipart request metadata.
    payload :: FirewallPolicyRule,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworkFirewallPoliciesAddPacketMirroringRule' with the minimum fields required to make a request.
newComputeNetworkFirewallPoliciesAddPacketMirroringRule ::
  -- |  Name of the firewall policy to update. See 'firewallPolicy'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FirewallPolicyRule ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeNetworkFirewallPoliciesAddPacketMirroringRule
newComputeNetworkFirewallPoliciesAddPacketMirroringRule
  firewallPolicy
  payload
  project =
    ComputeNetworkFirewallPoliciesAddPacketMirroringRule
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        firewallPolicy = firewallPolicy,
        maxPriority = Core.Nothing,
        minPriority = Core.Nothing,
        payload = payload,
        project = project,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComputeNetworkFirewallPoliciesAddPacketMirroringRule
  where
  type
    Rs ComputeNetworkFirewallPoliciesAddPacketMirroringRule =
      Operation
  type
    Scopes ComputeNetworkFirewallPoliciesAddPacketMirroringRule =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeNetworkFirewallPoliciesAddPacketMirroringRule {..} =
      go
        project
        firewallPolicy
        xgafv
        accessToken
        callback
        maxPriority
        minPriority
        requestId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeNetworkFirewallPoliciesAddPacketMirroringRuleResource
            )
            Core.mempty

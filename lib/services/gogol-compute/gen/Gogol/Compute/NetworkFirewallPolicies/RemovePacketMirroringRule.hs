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
-- Module      : Gogol.Compute.NetworkFirewallPolicies.RemovePacketMirroringRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a packet mirroring rule of the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkFirewallPolicies.removePacketMirroringRule@.
module Gogol.Compute.NetworkFirewallPolicies.RemovePacketMirroringRule
  ( -- * Resource
    ComputeNetworkFirewallPoliciesRemovePacketMirroringRuleResource,

    -- ** Constructing a Request
    ComputeNetworkFirewallPoliciesRemovePacketMirroringRule (..),
    newComputeNetworkFirewallPoliciesRemovePacketMirroringRule,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.networkFirewallPolicies.removePacketMirroringRule@ method which the
-- 'ComputeNetworkFirewallPoliciesRemovePacketMirroringRule' request conforms to.
type ComputeNetworkFirewallPoliciesRemovePacketMirroringRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> "removePacketMirroringRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "priority" Core.Int32
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes a packet mirroring rule of the specified priority.
--
-- /See:/ 'newComputeNetworkFirewallPoliciesRemovePacketMirroringRule' smart constructor.
data ComputeNetworkFirewallPoliciesRemovePacketMirroringRule = ComputeNetworkFirewallPoliciesRemovePacketMirroringRule
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the firewall policy to update.
    firewallPolicy :: Core.Text,
    -- | The priority of the rule to remove from the firewall policy.
    priority :: (Core.Maybe Core.Int32),
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

-- | Creates a value of 'ComputeNetworkFirewallPoliciesRemovePacketMirroringRule' with the minimum fields required to make a request.
newComputeNetworkFirewallPoliciesRemovePacketMirroringRule ::
  -- |  Name of the firewall policy to update. See 'firewallPolicy'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeNetworkFirewallPoliciesRemovePacketMirroringRule
newComputeNetworkFirewallPoliciesRemovePacketMirroringRule
  firewallPolicy
  project =
    ComputeNetworkFirewallPoliciesRemovePacketMirroringRule
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        firewallPolicy = firewallPolicy,
        priority = Core.Nothing,
        project = project,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComputeNetworkFirewallPoliciesRemovePacketMirroringRule
  where
  type
    Rs ComputeNetworkFirewallPoliciesRemovePacketMirroringRule =
      Operation
  type
    Scopes ComputeNetworkFirewallPoliciesRemovePacketMirroringRule =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient
    ComputeNetworkFirewallPoliciesRemovePacketMirroringRule {..} =
      go
        project
        firewallPolicy
        xgafv
        accessToken
        callback
        priority
        requestId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeNetworkFirewallPoliciesRemovePacketMirroringRuleResource
            )
            Core.mempty

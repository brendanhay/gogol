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
-- Module      : Network.Google.Compute.NetworkFirewallPolicies.GetRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a rule of the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkFirewallPolicies.getRule@.
module Network.Google.Compute.NetworkFirewallPolicies.GetRule
  ( -- * Resource
    ComputeNetworkFirewallPoliciesGetRuleResource,

    -- ** Constructing a Request
    newComputeNetworkFirewallPoliciesGetRule,
    ComputeNetworkFirewallPoliciesGetRule,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.networkFirewallPolicies.getRule@ method which the
-- 'ComputeNetworkFirewallPoliciesGetRule' request conforms to.
type ComputeNetworkFirewallPoliciesGetRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
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
-- /See:/ 'newComputeNetworkFirewallPoliciesGetRule' smart constructor.
data ComputeNetworkFirewallPoliciesGetRule = ComputeNetworkFirewallPoliciesGetRule
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

-- | Creates a value of 'ComputeNetworkFirewallPoliciesGetRule' with the minimum fields required to make a request.
newComputeNetworkFirewallPoliciesGetRule ::
  -- |  Name of the firewall policy to which the queried rule belongs. See 'firewallPolicy'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeNetworkFirewallPoliciesGetRule
newComputeNetworkFirewallPoliciesGetRule firewallPolicy project =
  ComputeNetworkFirewallPoliciesGetRule
    { xgafv = Core.Nothing,
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
    ComputeNetworkFirewallPoliciesGetRule
  where
  type
    Rs ComputeNetworkFirewallPoliciesGetRule =
      FirewallPolicyRule
  type
    Scopes ComputeNetworkFirewallPoliciesGetRule =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient
    ComputeNetworkFirewallPoliciesGetRule {..} =
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
                  ComputeNetworkFirewallPoliciesGetRuleResource
            )
            Core.mempty

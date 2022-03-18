{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.RegionNetworkFirewallPolicies.AddRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a rule into a network firewall policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkFirewallPolicies.addRule@.
module Gogol.Compute.RegionNetworkFirewallPolicies.AddRule
    (
    -- * Resource
      ComputeRegionNetworkFirewallPoliciesAddRuleResource

    -- ** Constructing a Request
    , newComputeRegionNetworkFirewallPoliciesAddRule
    , ComputeRegionNetworkFirewallPoliciesAddRule
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionNetworkFirewallPolicies.addRule@ method which the
-- 'ComputeRegionNetworkFirewallPoliciesAddRule' request conforms to.
type ComputeRegionNetworkFirewallPoliciesAddRuleResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "firewallPolicies" Core.:>
                   Core.Capture "firewallPolicy" Core.Text Core.:>
                     "addRule" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "maxPriority" Core.Int32 Core.:>
                               Core.QueryParam "minPriority" Core.Int32 Core.:>
                                 Core.QueryParam "requestId" Core.Text Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:>
                                         Core.ReqBody '[Core.JSON]
                                           FirewallPolicyRule
                                           Core.:>
                                           Core.Post '[Core.JSON] Operation

-- | Inserts a rule into a network firewall policy.
--
-- /See:/ 'newComputeRegionNetworkFirewallPoliciesAddRule' smart constructor.
data ComputeRegionNetworkFirewallPoliciesAddRule = ComputeRegionNetworkFirewallPoliciesAddRule
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the firewall policy to update.
    , firewallPolicy :: Core.Text
      -- | When rule.priority is not specified, auto choose a unused priority between minPriority and maxPriority>. This field is exclusive with rule.priority.
    , maxPriority :: (Core.Maybe Core.Int32)
      -- | When rule.priority is not specified, auto choose a unused priority between minPriority and maxPriority>. This field is exclusive with rule.priority.
    , minPriority :: (Core.Maybe Core.Int32)
      -- | Multipart request metadata.
    , payload :: FirewallPolicyRule
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region scoping this request.
    , region :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionNetworkFirewallPoliciesAddRule' with the minimum fields required to make a request.
newComputeRegionNetworkFirewallPoliciesAddRule 
    ::  Core.Text
       -- ^  Name of the firewall policy to update. See 'firewallPolicy'.
    -> FirewallPolicyRule
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region scoping this request. See 'region'.
    -> ComputeRegionNetworkFirewallPoliciesAddRule
newComputeRegionNetworkFirewallPoliciesAddRule firewallPolicy payload project region =
  ComputeRegionNetworkFirewallPoliciesAddRule
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , firewallPolicy = firewallPolicy
    , maxPriority = Core.Nothing
    , minPriority = Core.Nothing
    , payload = payload
    , project = project
    , region = region
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionNetworkFirewallPoliciesAddRule
         where
        type Rs ComputeRegionNetworkFirewallPoliciesAddRule =
             Operation
        type Scopes
               ComputeRegionNetworkFirewallPoliciesAddRule
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          ComputeRegionNetworkFirewallPoliciesAddRule{..}
          = go project region firewallPolicy xgafv accessToken
              callback
              maxPriority
              minPriority
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeRegionNetworkFirewallPoliciesAddRuleResource)
                      Core.mempty


{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.FirewallPolicies.CloneRules
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies rules to the specified firewall policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.firewallPolicies.cloneRules@.
module Gogol.Compute.FirewallPolicies.CloneRules
    (
    -- * Resource
      ComputeFirewallPoliciesCloneRulesResource

    -- ** Constructing a Request
    , ComputeFirewallPoliciesCloneRules (..)
    , newComputeFirewallPoliciesCloneRules
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.firewallPolicies.cloneRules@ method which the
-- 'ComputeFirewallPoliciesCloneRules' request conforms to.
type ComputeFirewallPoliciesCloneRulesResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "firewallPolicies" Core.:>
               Core.Capture "firewallPolicy" Core.Text Core.:>
                 "cloneRules" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "requestId" Core.Text Core.:>
                           Core.QueryParam "sourceFirewallPolicy" Core.Text
                             Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] Operation

-- | Copies rules to the specified firewall policy.
--
-- /See:/ 'newComputeFirewallPoliciesCloneRules' smart constructor.
data ComputeFirewallPoliciesCloneRules = ComputeFirewallPoliciesCloneRules
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the firewall policy to update.
    , firewallPolicy :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | The firewall policy from which to copy rules.
    , sourceFirewallPolicy :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFirewallPoliciesCloneRules' with the minimum fields required to make a request.
newComputeFirewallPoliciesCloneRules 
    ::  Core.Text
       -- ^  Name of the firewall policy to update. See 'firewallPolicy'.
    -> ComputeFirewallPoliciesCloneRules
newComputeFirewallPoliciesCloneRules firewallPolicy =
  ComputeFirewallPoliciesCloneRules
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , firewallPolicy = firewallPolicy
    , requestId = Core.Nothing
    , sourceFirewallPolicy = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeFirewallPoliciesCloneRules
         where
        type Rs ComputeFirewallPoliciesCloneRules = Operation
        type Scopes ComputeFirewallPoliciesCloneRules =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeFirewallPoliciesCloneRules{..}
          = go firewallPolicy xgafv accessToken callback
              requestId
              sourceFirewallPolicy
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeFirewallPoliciesCloneRulesResource)
                      Core.mempty


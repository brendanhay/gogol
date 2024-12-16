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
-- Module      : Gogol.Compute.FirewallPolicies.GetAssociation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an association with the specified name.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.firewallPolicies.getAssociation@.
module Gogol.Compute.FirewallPolicies.GetAssociation
    (
    -- * Resource
      ComputeFirewallPoliciesGetAssociationResource

    -- ** Constructing a Request
    , ComputeFirewallPoliciesGetAssociation (..)
    , newComputeFirewallPoliciesGetAssociation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.firewallPolicies.getAssociation@ method which the
-- 'ComputeFirewallPoliciesGetAssociation' request conforms to.
type ComputeFirewallPoliciesGetAssociationResource =
     "compute" Core.:>
       "v1" Core.:>
         "locations" Core.:>
           "global" Core.:>
             "firewallPolicies" Core.:>
               Core.Capture "firewallPolicy" Core.Text Core.:>
                 "getAssociation" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "name" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] FirewallPolicyAssociation

-- | Gets an association with the specified name.
--
-- /See:/ 'newComputeFirewallPoliciesGetAssociation' smart constructor.
data ComputeFirewallPoliciesGetAssociation = ComputeFirewallPoliciesGetAssociation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the firewall policy to which the queried rule belongs.
    , firewallPolicy :: Core.Text
      -- | The name of the association to get from the firewall policy.
    , name :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFirewallPoliciesGetAssociation' with the minimum fields required to make a request.
newComputeFirewallPoliciesGetAssociation 
    ::  Core.Text
       -- ^  Name of the firewall policy to which the queried rule belongs. See 'firewallPolicy'.
    -> ComputeFirewallPoliciesGetAssociation
newComputeFirewallPoliciesGetAssociation firewallPolicy =
  ComputeFirewallPoliciesGetAssociation
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , firewallPolicy = firewallPolicy
    , name = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeFirewallPoliciesGetAssociation
         where
        type Rs ComputeFirewallPoliciesGetAssociation =
             FirewallPolicyAssociation
        type Scopes ComputeFirewallPoliciesGetAssociation =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient
          ComputeFirewallPoliciesGetAssociation{..}
          = go firewallPolicy xgafv accessToken callback name
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeFirewallPoliciesGetAssociationResource)
                      Core.mempty


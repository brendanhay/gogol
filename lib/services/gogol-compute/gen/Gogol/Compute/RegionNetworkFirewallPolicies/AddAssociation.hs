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
-- Module      : Gogol.Compute.RegionNetworkFirewallPolicies.AddAssociation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts an association for the specified network firewall policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionNetworkFirewallPolicies.addAssociation@.
module Gogol.Compute.RegionNetworkFirewallPolicies.AddAssociation
    (
    -- * Resource
      ComputeRegionNetworkFirewallPoliciesAddAssociationResource

    -- ** Constructing a Request
    , newComputeRegionNetworkFirewallPoliciesAddAssociation
    , ComputeRegionNetworkFirewallPoliciesAddAssociation
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionNetworkFirewallPolicies.addAssociation@ method which the
-- 'ComputeRegionNetworkFirewallPoliciesAddAssociation' request conforms to.
type ComputeRegionNetworkFirewallPoliciesAddAssociationResource
     =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "firewallPolicies" Core.:>
                   Core.Capture "firewallPolicy" Core.Text Core.:>
                     "addAssociation" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "replaceExistingAssociation"
                               Core.Bool
                               Core.:>
                               Core.QueryParam "requestId" Core.Text Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.ReqBody '[Core.JSON]
                                         FirewallPolicyAssociation
                                         Core.:>
                                         Core.Post '[Core.JSON] Operation

-- | Inserts an association for the specified network firewall policy.
--
-- /See:/ 'newComputeRegionNetworkFirewallPoliciesAddAssociation' smart constructor.
data ComputeRegionNetworkFirewallPoliciesAddAssociation = ComputeRegionNetworkFirewallPoliciesAddAssociation
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the firewall policy to update.
    , firewallPolicy :: Core.Text
      -- | Multipart request metadata.
    , payload :: FirewallPolicyAssociation
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region scoping this request.
    , region :: Core.Text
      -- | Indicates whether or not to replace it if an association already exists. This is false by default, in which case an error will be returned if an association already exists.
    , replaceExistingAssociation :: (Core.Maybe Core.Bool)
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionNetworkFirewallPoliciesAddAssociation' with the minimum fields required to make a request.
newComputeRegionNetworkFirewallPoliciesAddAssociation 
    ::  Core.Text
       -- ^  Name of the firewall policy to update. See 'firewallPolicy'.
    -> FirewallPolicyAssociation
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region scoping this request. See 'region'.
    -> ComputeRegionNetworkFirewallPoliciesAddAssociation
newComputeRegionNetworkFirewallPoliciesAddAssociation firewallPolicy payload project region =
  ComputeRegionNetworkFirewallPoliciesAddAssociation
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , firewallPolicy = firewallPolicy
    , payload = payload
    , project = project
    , region = region
    , replaceExistingAssociation = Core.Nothing
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionNetworkFirewallPoliciesAddAssociation
         where
        type Rs
               ComputeRegionNetworkFirewallPoliciesAddAssociation
             = Operation
        type Scopes
               ComputeRegionNetworkFirewallPoliciesAddAssociation
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          ComputeRegionNetworkFirewallPoliciesAddAssociation{..}
          = go project region firewallPolicy xgafv accessToken
              callback
              replaceExistingAssociation
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
                           ComputeRegionNetworkFirewallPoliciesAddAssociationResource)
                      Core.mempty


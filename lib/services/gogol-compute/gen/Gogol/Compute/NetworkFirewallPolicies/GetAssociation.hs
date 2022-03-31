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
-- Module      : Gogol.Compute.NetworkFirewallPolicies.GetAssociation
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an association with the specified name.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkFirewallPolicies.getAssociation@.
module Gogol.Compute.NetworkFirewallPolicies.GetAssociation
  ( -- * Resource
    ComputeNetworkFirewallPoliciesGetAssociationResource,

    -- ** Constructing a Request
    newComputeNetworkFirewallPoliciesGetAssociation,
    ComputeNetworkFirewallPoliciesGetAssociation,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.networkFirewallPolicies.getAssociation@ method which the
-- 'ComputeNetworkFirewallPoliciesGetAssociation' request conforms to.
type ComputeNetworkFirewallPoliciesGetAssociationResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> "getAssociation"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              FirewallPolicyAssociation

-- | Gets an association with the specified name.
--
-- /See:/ 'newComputeNetworkFirewallPoliciesGetAssociation' smart constructor.
data ComputeNetworkFirewallPoliciesGetAssociation = ComputeNetworkFirewallPoliciesGetAssociation
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the firewall policy to which the queried association belongs.
    firewallPolicy :: Core.Text,
    -- | The name of the association to get from the firewall policy.
    name :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworkFirewallPoliciesGetAssociation' with the minimum fields required to make a request.
newComputeNetworkFirewallPoliciesGetAssociation ::
  -- |  Name of the firewall policy to which the queried association belongs. See 'firewallPolicy'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeNetworkFirewallPoliciesGetAssociation
newComputeNetworkFirewallPoliciesGetAssociation firewallPolicy project =
  ComputeNetworkFirewallPoliciesGetAssociation
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      firewallPolicy = firewallPolicy,
      name = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeNetworkFirewallPoliciesGetAssociation
  where
  type
    Rs ComputeNetworkFirewallPoliciesGetAssociation =
      FirewallPolicyAssociation
  type
    Scopes
      ComputeNetworkFirewallPoliciesGetAssociation =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeNetworkFirewallPoliciesGetAssociation {..} =
      go
        project
        firewallPolicy
        xgafv
        accessToken
        callback
        name
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeNetworkFirewallPoliciesGetAssociationResource
            )
            Core.mempty

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Compute.FirewallPolicies.GetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.firewallPolicies.getIamPolicy@.
module Gogol.Compute.FirewallPolicies.GetIamPolicy
  ( -- * Resource
    ComputeFirewallPoliciesGetIamPolicyResource,

    -- ** Constructing a Request
    ComputeFirewallPoliciesGetIamPolicy (..),
    newComputeFirewallPoliciesGetIamPolicy,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.firewallPolicies.getIamPolicy@ method which the
-- 'ComputeFirewallPoliciesGetIamPolicy' request conforms to.
type ComputeFirewallPoliciesGetIamPolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "locations"
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "getIamPolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "optionsRequestedPolicyVersion" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such policy or resource exists.
--
-- /See:/ 'newComputeFirewallPoliciesGetIamPolicy' smart constructor.
data ComputeFirewallPoliciesGetIamPolicy = ComputeFirewallPoliciesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested IAM Policy version.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | Name or id of the resource for this request.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFirewallPoliciesGetIamPolicy' with the minimum fields required to make a request.
newComputeFirewallPoliciesGetIamPolicy ::
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeFirewallPoliciesGetIamPolicy
newComputeFirewallPoliciesGetIamPolicy resource =
  ComputeFirewallPoliciesGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      optionsRequestedPolicyVersion = Core.Nothing,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeFirewallPoliciesGetIamPolicy where
  type Rs ComputeFirewallPoliciesGetIamPolicy = Policy
  type
    Scopes ComputeFirewallPoliciesGetIamPolicy =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeFirewallPoliciesGetIamPolicy {..} =
    go
      resource
      xgafv
      accessToken
      callback
      optionsRequestedPolicyVersion
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeFirewallPoliciesGetIamPolicyResource
          )
          Core.mempty

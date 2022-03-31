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
-- Module      : Gogol.Compute.FirewallPolicies.Move
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified firewall policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.firewallPolicies.move@.
module Gogol.Compute.FirewallPolicies.Move
  ( -- * Resource
    ComputeFirewallPoliciesMoveResource,

    -- ** Constructing a Request
    newComputeFirewallPoliciesMove,
    ComputeFirewallPoliciesMove,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.firewallPolicies.move@ method which the
-- 'ComputeFirewallPoliciesMove' request conforms to.
type ComputeFirewallPoliciesMoveResource =
  "compute"
    Core.:> "v1"
    Core.:> "locations"
    Core.:> "global"
    Core.:> "firewallPolicies"
    Core.:> Core.Capture "firewallPolicy" Core.Text
    Core.:> "move"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parentId" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Moves the specified firewall policy.
--
-- /See:/ 'newComputeFirewallPoliciesMove' smart constructor.
data ComputeFirewallPoliciesMove = ComputeFirewallPoliciesMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the firewall policy to update.
    firewallPolicy :: Core.Text,
    -- | The new parent of the firewall policy.
    parentId :: (Core.Maybe Core.Text),
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeFirewallPoliciesMove' with the minimum fields required to make a request.
newComputeFirewallPoliciesMove ::
  -- |  Name of the firewall policy to update. See 'firewallPolicy'.
  Core.Text ->
  ComputeFirewallPoliciesMove
newComputeFirewallPoliciesMove firewallPolicy =
  ComputeFirewallPoliciesMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      firewallPolicy = firewallPolicy,
      parentId = Core.Nothing,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeFirewallPoliciesMove
  where
  type Rs ComputeFirewallPoliciesMove = Operation
  type
    Scopes ComputeFirewallPoliciesMove =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeFirewallPoliciesMove {..} =
    go
      firewallPolicy
      xgafv
      accessToken
      callback
      parentId
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeFirewallPoliciesMoveResource
          )
          Core.mempty

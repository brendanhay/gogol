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
-- Module      : Gogol.Compute.SecurityPolicies.PatchRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a rule at the specified priority. To clear fields in the rule, leave the fields empty and specify them in the updateMask.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.securityPolicies.patchRule@.
module Gogol.Compute.SecurityPolicies.PatchRule
  ( -- * Resource
    ComputeSecurityPoliciesPatchRuleResource,

    -- ** Constructing a Request
    ComputeSecurityPoliciesPatchRule (..),
    newComputeSecurityPoliciesPatchRule,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.securityPolicies.patchRule@ method which the
-- 'ComputeSecurityPoliciesPatchRule' request conforms to.
type ComputeSecurityPoliciesPatchRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "securityPolicies"
    Core.:> Core.Capture "securityPolicy" Core.Text
    Core.:> "patchRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "priority" Core.Int32
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SecurityPolicyRule
    Core.:> Core.Post '[Core.JSON] Operation

-- | Patches a rule at the specified priority. To clear fields in the rule, leave the fields empty and specify them in the updateMask.
--
-- /See:/ 'newComputeSecurityPoliciesPatchRule' smart constructor.
data ComputeSecurityPoliciesPatchRule = ComputeSecurityPoliciesPatchRule
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SecurityPolicyRule,
    -- | The priority of the rule to patch.
    priority :: (Core.Maybe Core.Int32),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the security policy to update.
    securityPolicy :: Core.Text,
    -- | Indicates fields to be cleared as part of this request.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | If true, the request will not be committed.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSecurityPoliciesPatchRule' with the minimum fields required to make a request.
newComputeSecurityPoliciesPatchRule ::
  -- |  Multipart request metadata. See 'payload'.
  SecurityPolicyRule ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the security policy to update. See 'securityPolicy'.
  Core.Text ->
  ComputeSecurityPoliciesPatchRule
newComputeSecurityPoliciesPatchRule payload project securityPolicy =
  ComputeSecurityPoliciesPatchRule
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      priority = Core.Nothing,
      project = project,
      securityPolicy = securityPolicy,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest ComputeSecurityPoliciesPatchRule where
  type Rs ComputeSecurityPoliciesPatchRule = Operation
  type
    Scopes ComputeSecurityPoliciesPatchRule =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeSecurityPoliciesPatchRule {..} =
    go
      project
      securityPolicy
      xgafv
      accessToken
      callback
      priority
      updateMask
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ComputeSecurityPoliciesPatchRuleResource)
          Core.mempty

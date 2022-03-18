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
-- Module      : Gogol.Compute.SecurityPolicies.PatchRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a rule at the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.securityPolicies.patchRule@.
module Gogol.Compute.SecurityPolicies.PatchRule
  ( -- * Resource
    ComputeSecurityPoliciesPatchRuleResource,

    -- ** Constructing a Request
    newComputeSecurityPoliciesPatchRule,
    ComputeSecurityPoliciesPatchRule,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

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
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SecurityPolicyRule
    Core.:> Core.Post '[Core.JSON] Operation

-- | Patches a rule at the specified priority.
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
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
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
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeSecurityPoliciesPatchRule
  where
  type Rs ComputeSecurityPoliciesPatchRule = Operation
  type
    Scopes ComputeSecurityPoliciesPatchRule =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputeSecurityPoliciesPatchRule {..} =
    go
      project
      securityPolicy
      xgafv
      accessToken
      callback
      priority
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeSecurityPoliciesPatchRuleResource
          )
          Core.mempty

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
-- Module      : Gogol.Compute.SecurityPolicies.AddRule
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a rule into a security policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.securityPolicies.addRule@.
module Gogol.Compute.SecurityPolicies.AddRule
  ( -- * Resource
    ComputeSecurityPoliciesAddRuleResource,

    -- ** Constructing a Request
    ComputeSecurityPoliciesAddRule (..),
    newComputeSecurityPoliciesAddRule,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.securityPolicies.addRule@ method which the
-- 'ComputeSecurityPoliciesAddRule' request conforms to.
type ComputeSecurityPoliciesAddRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "securityPolicies"
    Core.:> Core.Capture "securityPolicy" Core.Text
    Core.:> "addRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SecurityPolicyRule
    Core.:> Core.Post '[Core.JSON] Operation

-- | Inserts a rule into a security policy.
--
-- /See:/ 'newComputeSecurityPoliciesAddRule' smart constructor.
data ComputeSecurityPoliciesAddRule = ComputeSecurityPoliciesAddRule
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SecurityPolicyRule,
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

-- | Creates a value of 'ComputeSecurityPoliciesAddRule' with the minimum fields required to make a request.
newComputeSecurityPoliciesAddRule ::
  -- |  Multipart request metadata. See 'payload'.
  SecurityPolicyRule ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the security policy to update. See 'securityPolicy'.
  Core.Text ->
  ComputeSecurityPoliciesAddRule
newComputeSecurityPoliciesAddRule payload project securityPolicy =
  ComputeSecurityPoliciesAddRule
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      securityPolicy = securityPolicy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeSecurityPoliciesAddRule
  where
  type Rs ComputeSecurityPoliciesAddRule = Operation
  type
    Scopes ComputeSecurityPoliciesAddRule =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeSecurityPoliciesAddRule {..} =
    go
      project
      securityPolicy
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeSecurityPoliciesAddRuleResource
          )
          Core.mempty

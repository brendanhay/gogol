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
-- Module      : Gogol.Compute.RegionSecurityPolicies.RemoveRule
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a rule at the specified priority.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionSecurityPolicies.removeRule@.
module Gogol.Compute.RegionSecurityPolicies.RemoveRule
  ( -- * Resource
    ComputeRegionSecurityPoliciesRemoveRuleResource,

    -- ** Constructing a Request
    ComputeRegionSecurityPoliciesRemoveRule (..),
    newComputeRegionSecurityPoliciesRemoveRule,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.regionSecurityPolicies.removeRule@ method which the
-- 'ComputeRegionSecurityPoliciesRemoveRule' request conforms to.
type ComputeRegionSecurityPoliciesRemoveRuleResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "securityPolicies"
    Core.:> Core.Capture "securityPolicy" Core.Text
    Core.:> "removeRule"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "priority" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes a rule at the specified priority.
--
-- /See:/ 'newComputeRegionSecurityPoliciesRemoveRule' smart constructor.
data ComputeRegionSecurityPoliciesRemoveRule = ComputeRegionSecurityPoliciesRemoveRule
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The priority of the rule to remove from the security policy.
    priority :: (Core.Maybe Core.Int32),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Name of the security policy to update.
    securityPolicy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionSecurityPoliciesRemoveRule' with the minimum fields required to make a request.
newComputeRegionSecurityPoliciesRemoveRule ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the security policy to update. See 'securityPolicy'.
  Core.Text ->
  ComputeRegionSecurityPoliciesRemoveRule
newComputeRegionSecurityPoliciesRemoveRule
  project
  region
  securityPolicy =
    ComputeRegionSecurityPoliciesRemoveRule
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        priority = Core.Nothing,
        project = project,
        region = region,
        securityPolicy = securityPolicy,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ComputeRegionSecurityPoliciesRemoveRule where
  type Rs ComputeRegionSecurityPoliciesRemoveRule = Operation
  type
    Scopes ComputeRegionSecurityPoliciesRemoveRule =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeRegionSecurityPoliciesRemoveRule {..} =
    go
      project
      region
      securityPolicy
      xgafv
      accessToken
      callback
      priority
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeRegionSecurityPoliciesRemoveRuleResource
          )
          Core.mempty

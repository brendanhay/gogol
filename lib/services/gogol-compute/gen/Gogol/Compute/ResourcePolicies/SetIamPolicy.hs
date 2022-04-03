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
-- Module      : Gogol.Compute.ResourcePolicies.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.resourcePolicies.setIamPolicy@.
module Gogol.Compute.ResourcePolicies.SetIamPolicy
  ( -- * Resource
    ComputeResourcePoliciesSetIamPolicyResource,

    -- ** Constructing a Request
    ComputeResourcePoliciesSetIamPolicy (..),
    newComputeResourcePoliciesSetIamPolicy,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.resourcePolicies.setIamPolicy@ method which the
-- 'ComputeResourcePoliciesSetIamPolicy' request conforms to.
type ComputeResourcePoliciesSetIamPolicyResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "resourcePolicies"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "setIamPolicy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RegionSetPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any existing policy.
--
-- /See:/ 'newComputeResourcePoliciesSetIamPolicy' smart constructor.
data ComputeResourcePoliciesSetIamPolicy = ComputeResourcePoliciesSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RegionSetPolicyRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | The name of the region for this request.
    region :: Core.Text,
    -- | Name or id of the resource for this request.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeResourcePoliciesSetIamPolicy' with the minimum fields required to make a request.
newComputeResourcePoliciesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  RegionSetPolicyRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the region for this request. See 'region'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeResourcePoliciesSetIamPolicy
newComputeResourcePoliciesSetIamPolicy payload project region resource =
  ComputeResourcePoliciesSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      region = region,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeResourcePoliciesSetIamPolicy
  where
  type Rs ComputeResourcePoliciesSetIamPolicy = Policy
  type
    Scopes ComputeResourcePoliciesSetIamPolicy =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeResourcePoliciesSetIamPolicy {..} =
    go
      project
      region
      resource
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
              Core.Proxy
                ComputeResourcePoliciesSetIamPolicyResource
          )
          Core.mempty

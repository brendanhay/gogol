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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DataMapperWorkspaces.GetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dataMapperWorkspaces.getIamPolicy@.
module Gogol.Healthcare.Projects.Locations.Datasets.DataMapperWorkspaces.GetIamPolicy
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicyResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy (..),
    newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dataMapperWorkspaces.getIamPolicy@ method which the
-- 'HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy' request conforms to.
type HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "options.requestedPolicyVersion" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy' smart constructor.
data HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy = HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy ::
  -- |  REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy
newHealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy
  resource =
    HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        optionsRequestedPolicyVersion =
          Core.Nothing,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy =
      Policy
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        optionsRequestedPolicyVersion
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsDataMapperWorkspacesGetIamPolicyResource
            )
            Core.mempty

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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.getIamPolicy@.
module Gogol.DataFusion.Projects.Locations.Instances.GetIamPolicy
  ( -- * Resource
    DataFusionProjectsLocationsInstancesGetIamPolicyResource,

    -- ** Constructing a Request
    newDataFusionProjectsLocationsInstancesGetIamPolicy,
    DataFusionProjectsLocationsInstancesGetIamPolicy,
  )
where

import Gogol.DataFusion.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datafusion.projects.locations.instances.getIamPolicy@ method which the
-- 'DataFusionProjectsLocationsInstancesGetIamPolicy' request conforms to.
type DataFusionProjectsLocationsInstancesGetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "options.requestedPolicyVersion"
              Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesGetIamPolicy' smart constructor.
data DataFusionProjectsLocationsInstancesGetIamPolicy = DataFusionProjectsLocationsInstancesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The policy format version to be returned. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional bindings must specify version 3. Policies without any conditional bindings may specify any valid value or leave the field unset. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesGetIamPolicy' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesGetIamPolicy ::
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  DataFusionProjectsLocationsInstancesGetIamPolicy
newDataFusionProjectsLocationsInstancesGetIamPolicy resource =
  DataFusionProjectsLocationsInstancesGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      optionsRequestedPolicyVersion = Core.Nothing,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataFusionProjectsLocationsInstancesGetIamPolicy
  where
  type
    Rs
      DataFusionProjectsLocationsInstancesGetIamPolicy =
      Policy
  type
    Scopes
      DataFusionProjectsLocationsInstancesGetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    DataFusionProjectsLocationsInstancesGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        optionsRequestedPolicyVersion
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataFusionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataFusionProjectsLocationsInstancesGetIamPolicyResource
            )
            Core.mempty

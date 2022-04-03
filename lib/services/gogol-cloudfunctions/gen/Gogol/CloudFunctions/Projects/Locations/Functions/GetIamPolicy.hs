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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.getIamPolicy@.
module Gogol.CloudFunctions.Projects.Locations.Functions.GetIamPolicy
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsGetIamPolicyResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsGetIamPolicy (..),
    newCloudFunctionsProjectsLocationsFunctionsGetIamPolicy,
  )
where

import Gogol.CloudFunctions.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.getIamPolicy@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsGetIamPolicy' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsGetIamPolicyResource =
  "v2beta"
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
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsGetIamPolicy' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsGetIamPolicy = CloudFunctionsProjectsLocationsFunctionsGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsGetIamPolicy' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsGetIamPolicy ::
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudFunctionsProjectsLocationsFunctionsGetIamPolicy
newCloudFunctionsProjectsLocationsFunctionsGetIamPolicy resource =
  CloudFunctionsProjectsLocationsFunctionsGetIamPolicy
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
    CloudFunctionsProjectsLocationsFunctionsGetIamPolicy
  where
  type
    Rs
      CloudFunctionsProjectsLocationsFunctionsGetIamPolicy =
      Policy
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsGetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        optionsRequestedPolicyVersion
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudFunctionsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudFunctionsProjectsLocationsFunctionsGetIamPolicyResource
            )
            Core.mempty

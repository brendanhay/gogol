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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.Organizations.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The @resource@ field should be the organization\'s resource name, for example: \"organizations\/123\". Authorization requires the IAM permission @resourcemanager.organizations.getIamPolicy@ on the specified organization.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.getIamPolicy@.
module Network.Google.ResourceManager.Cloudresourcemanager.Organizations.GetIamPolicy
  ( -- * Resource
    CloudresourcemanagerOrganizationsGetIamPolicyResource,

    -- ** Constructing a Request
    newCloudresourcemanagerOrganizationsGetIamPolicy,
    CloudresourcemanagerOrganizationsGetIamPolicy,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.getIamPolicy@ method which the
-- 'CloudresourcemanagerOrganizationsGetIamPolicy' request conforms to.
type CloudresourcemanagerOrganizationsGetIamPolicyResource =
  "v3"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The @resource@ field should be the organization\'s resource name, for example: \"organizations\/123\". Authorization requires the IAM permission @resourcemanager.organizations.getIamPolicy@ on the specified organization.
--
-- /See:/ 'newCloudresourcemanagerOrganizationsGetIamPolicy' smart constructor.
data CloudresourcemanagerOrganizationsGetIamPolicy = CloudresourcemanagerOrganizationsGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerOrganizationsGetIamPolicy' with the minimum fields required to make a request.
newCloudresourcemanagerOrganizationsGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudresourcemanagerOrganizationsGetIamPolicy
newCloudresourcemanagerOrganizationsGetIamPolicy payload resource =
  CloudresourcemanagerOrganizationsGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerOrganizationsGetIamPolicy
  where
  type
    Rs CloudresourcemanagerOrganizationsGetIamPolicy =
      Policy
  type
    Scopes
      CloudresourcemanagerOrganizationsGetIamPolicy =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient
    CloudresourcemanagerOrganizationsGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        resourceManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudresourcemanagerOrganizationsGetIamPolicyResource
            )
            Core.mempty

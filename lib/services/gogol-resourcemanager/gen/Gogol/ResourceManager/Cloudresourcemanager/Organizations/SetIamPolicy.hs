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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Organizations.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on an organization resource. Replaces any existing policy. The @resource@ field should be the organization\'s resource name, for example: \"organizations\/123\". Authorization requires the IAM permission @resourcemanager.organizations.setIamPolicy@ on the specified organization.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.setIamPolicy@.
module Gogol.ResourceManager.Cloudresourcemanager.Organizations.SetIamPolicy
  ( -- * Resource
    CloudresourcemanagerOrganizationsSetIamPolicyResource,

    -- ** Constructing a Request
    CloudresourcemanagerOrganizationsSetIamPolicy (..),
    newCloudresourcemanagerOrganizationsSetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.setIamPolicy@ method which the
-- 'CloudresourcemanagerOrganizationsSetIamPolicy' request conforms to.
type CloudresourcemanagerOrganizationsSetIamPolicyResource =
  "v3"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on an organization resource. Replaces any existing policy. The @resource@ field should be the organization\'s resource name, for example: \"organizations\/123\". Authorization requires the IAM permission @resourcemanager.organizations.setIamPolicy@ on the specified organization.
--
-- /See:/ 'newCloudresourcemanagerOrganizationsSetIamPolicy' smart constructor.
data CloudresourcemanagerOrganizationsSetIamPolicy = CloudresourcemanagerOrganizationsSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerOrganizationsSetIamPolicy' with the minimum fields required to make a request.
newCloudresourcemanagerOrganizationsSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudresourcemanagerOrganizationsSetIamPolicy
newCloudresourcemanagerOrganizationsSetIamPolicy payload resource =
  CloudresourcemanagerOrganizationsSetIamPolicy
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
    CloudresourcemanagerOrganizationsSetIamPolicy
  where
  type
    Rs CloudresourcemanagerOrganizationsSetIamPolicy =
      Policy
  type
    Scopes
      CloudresourcemanagerOrganizationsSetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    CloudresourcemanagerOrganizationsSetIamPolicy {..} =
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
                  CloudresourcemanagerOrganizationsSetIamPolicyResource
            )
            Core.mempty

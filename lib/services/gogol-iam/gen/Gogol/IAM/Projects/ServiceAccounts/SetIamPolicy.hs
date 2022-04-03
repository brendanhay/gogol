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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM policy that is attached to a ServiceAccount. Use this method to grant or revoke access to the service account. For example, you could grant a principal the ability to impersonate the service account. This method does not enable the service account to access other resources. To grant roles to a service account on a resource, follow these steps: 1. Call the resource\'s @getIamPolicy@ method to get its current IAM policy. 2. Edit the policy so that it binds the service account to an IAM role for the resource. 3. Call the resource\'s @setIamPolicy@ method to update its IAM policy. For detailed instructions, see <https://cloud.google.com/iam/help/service-accounts/granting-access-to-service-accounts Manage access to project, folders, and organizations> or <https://cloud.google.com/iam/help/access/manage-other-resources Manage access to other resources>.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.setIamPolicy@.
module Gogol.IAM.Projects.ServiceAccounts.SetIamPolicy
  ( -- * Resource
    IAMProjectsServiceAccountsSetIamPolicyResource,

    -- ** Constructing a Request
    IAMProjectsServiceAccountsSetIamPolicy (..),
    newIAMProjectsServiceAccountsSetIamPolicy,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.setIamPolicy@ method which the
-- 'IAMProjectsServiceAccountsSetIamPolicy' request conforms to.
type IAMProjectsServiceAccountsSetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the IAM policy that is attached to a ServiceAccount. Use this method to grant or revoke access to the service account. For example, you could grant a principal the ability to impersonate the service account. This method does not enable the service account to access other resources. To grant roles to a service account on a resource, follow these steps: 1. Call the resource\'s @getIamPolicy@ method to get its current IAM policy. 2. Edit the policy so that it binds the service account to an IAM role for the resource. 3. Call the resource\'s @setIamPolicy@ method to update its IAM policy. For detailed instructions, see <https://cloud.google.com/iam/help/service-accounts/granting-access-to-service-accounts Manage access to project, folders, and organizations> or <https://cloud.google.com/iam/help/access/manage-other-resources Manage access to other resources>.
--
-- /See:/ 'newIAMProjectsServiceAccountsSetIamPolicy' smart constructor.
data IAMProjectsServiceAccountsSetIamPolicy = IAMProjectsServiceAccountsSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsSetIamPolicy' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  IAMProjectsServiceAccountsSetIamPolicy
newIAMProjectsServiceAccountsSetIamPolicy payload resource =
  IAMProjectsServiceAccountsSetIamPolicy
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
    IAMProjectsServiceAccountsSetIamPolicy
  where
  type
    Rs IAMProjectsServiceAccountsSetIamPolicy =
      Policy
  type
    Scopes IAMProjectsServiceAccountsSetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    IAMProjectsServiceAccountsSetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsServiceAccountsSetIamPolicyResource
            )
            Core.mempty

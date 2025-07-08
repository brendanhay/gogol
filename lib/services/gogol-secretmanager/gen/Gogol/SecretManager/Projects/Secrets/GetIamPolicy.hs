{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecretManager.Projects.Secrets.GetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.getIamPolicy@.
module Gogol.SecretManager.Projects.Secrets.GetIamPolicy
    (
    -- * Resource
      SecretManagerProjectsSecretsGetIamPolicyResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsGetIamPolicy (..)
    , newSecretManagerProjectsSecretsGetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.getIamPolicy@ method which the
-- 'SecretManagerProjectsSecretsGetIamPolicy' request conforms to.
type SecretManagerProjectsSecretsGetIamPolicyResource =
     "v1" Core.:>
       Core.CaptureMode "resource" "getIamPolicy" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "options.requestedPolicyVersion" Core.Int32 Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.
--
-- /See:/ 'newSecretManagerProjectsSecretsGetIamPolicy' smart constructor.
data SecretManagerProjectsSecretsGetIamPolicy = SecretManagerProjectsSecretsGetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    , optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32)
      -- | REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsGetIamPolicy' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsGetIamPolicy 
    :: 
                                            Core.Text
       -- ^  REQUIRED: The resource for which the policy is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> SecretManagerProjectsSecretsGetIamPolicy
newSecretManagerProjectsSecretsGetIamPolicy resource
  = SecretManagerProjectsSecretsGetIamPolicy{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             optionsRequestedPolicyVersion = Core.Nothing,
                                             resource = resource, uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsSecretsGetIamPolicy
         where
        type Rs SecretManagerProjectsSecretsGetIamPolicy = Policy
        type Scopes SecretManagerProjectsSecretsGetIamPolicy =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsGetIamPolicy{..}
          = go resource xgafv accessToken callback
              optionsRequestedPolicyVersion
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsGetIamPolicyResource)
                      Core.mempty


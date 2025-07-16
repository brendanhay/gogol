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
-- Module      : Gogol.SecretManager.Projects.Secrets.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified secret. Replaces any existing policy. Permissions on SecretVersions are enforced according to the policy set on the associated Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.setIamPolicy@.
module Gogol.SecretManager.Projects.Secrets.SetIamPolicy
    (
    -- * Resource
      SecretManagerProjectsSecretsSetIamPolicyResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsSetIamPolicy (..)
    , newSecretManagerProjectsSecretsSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.setIamPolicy@ method which the
-- 'SecretManagerProjectsSecretsSetIamPolicy' request conforms to.
type SecretManagerProjectsSecretsSetIamPolicyResource =
     "v1" Core.:>
       Core.CaptureMode "resource" "setIamPolicy" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SetIamPolicyRequest Core.:>
                       Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on the specified secret. Replaces any existing policy. Permissions on SecretVersions are enforced according to the policy set on the associated Secret.
--
-- /See:/ 'newSecretManagerProjectsSecretsSetIamPolicy' smart constructor.
data SecretManagerProjectsSecretsSetIamPolicy = SecretManagerProjectsSecretsSetIamPolicy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: SetIamPolicyRequest
      -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsSetIamPolicy' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsSetIamPolicy 
    :: 
                                            SetIamPolicyRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> SecretManagerProjectsSecretsSetIamPolicy
newSecretManagerProjectsSecretsSetIamPolicy payload resource
  = SecretManagerProjectsSecretsSetIamPolicy{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             payload = payload, resource = resource,
                                             uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsSecretsSetIamPolicy
         where
        type Rs SecretManagerProjectsSecretsSetIamPolicy = Policy
        type Scopes SecretManagerProjectsSecretsSetIamPolicy =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsSetIamPolicy{..}
          = go resource xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsSetIamPolicyResource)
                      Core.mempty


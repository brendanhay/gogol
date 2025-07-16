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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has for the specified secret. If the secret does not exist, this call returns an empty set of permissions, not a NOT_FOUND error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.testIamPermissions@.
module Gogol.SecretManager.Projects.Locations.Secrets.TestIamPermissions
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsTestIamPermissionsResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsTestIamPermissions (..)
    , newSecretManagerProjectsLocationsSecretsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.testIamPermissions@ method which the
-- 'SecretManagerProjectsLocationsSecretsTestIamPermissions' request conforms to.
type SecretManagerProjectsLocationsSecretsTestIamPermissionsResource
     =
     "v1" Core.:>
       Core.CaptureMode "resource" "testIamPermissions" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] TestIamPermissionsRequest Core.:>
                       Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has for the specified secret. If the secret does not exist, this call returns an empty set of permissions, not a NOT_FOUND error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsTestIamPermissions' smart constructor.
data SecretManagerProjectsLocationsSecretsTestIamPermissions = SecretManagerProjectsLocationsSecretsTestIamPermissions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TestIamPermissionsRequest
      -- | REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsTestIamPermissions' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsTestIamPermissions 
    :: 
                                                           TestIamPermissionsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
    -> SecretManagerProjectsLocationsSecretsTestIamPermissions
newSecretManagerProjectsLocationsSecretsTestIamPermissions payload
  resource
  = SecretManagerProjectsLocationsSecretsTestIamPermissions{xgafv =
                                                              Core.Nothing,
                                                            accessToken = Core.Nothing,
                                                            callback = Core.Nothing,
                                                            payload = payload, resource = resource,
                                                            uploadType = Core.Nothing,
                                                            uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsTestIamPermissions
         where
        type Rs SecretManagerProjectsLocationsSecretsTestIamPermissions =
             TestIamPermissionsResponse
        type Scopes SecretManagerProjectsLocationsSecretsTestIamPermissions
             = '[CloudPlatform'FullControl]
        requestClient
          SecretManagerProjectsLocationsSecretsTestIamPermissions{..}
          = go resource xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecretManagerProjectsLocationsSecretsTestIamPermissionsResource)
                      Core.mempty


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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.Versions.Destroy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.versions.destroy@.
module Gogol.SecretManager.Projects.Locations.Secrets.Versions.Destroy
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsVersionsDestroyResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsVersionsDestroy (..)
    , newSecretManagerProjectsLocationsSecretsVersionsDestroy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.versions.destroy@ method which the
-- 'SecretManagerProjectsLocationsSecretsVersionsDestroy' request conforms to.
type SecretManagerProjectsLocationsSecretsVersionsDestroyResource =
     "v1" Core.:>
       Core.CaptureMode "name" "destroy" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] DestroySecretVersionRequest Core.:>
                       Core.Post '[Core.JSON] SecretVersion

-- | Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsVersionsDestroy' smart constructor.
data SecretManagerProjectsLocationsSecretsVersionsDestroy = SecretManagerProjectsLocationsSecretsVersionsDestroy
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the SecretVersion to destroy in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: DestroySecretVersionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsVersionsDestroy' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsVersionsDestroy 
    :: 
                                                        Core.Text
       -- ^  Required. The resource name of the SecretVersion to destroy in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@. See 'name'.
    -> DestroySecretVersionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsLocationsSecretsVersionsDestroy
newSecretManagerProjectsLocationsSecretsVersionsDestroy name
  payload
  = SecretManagerProjectsLocationsSecretsVersionsDestroy{xgafv =
                                                           Core.Nothing,
                                                         accessToken = Core.Nothing,
                                                         callback = Core.Nothing, name = name,
                                                         payload = payload,
                                                         uploadType = Core.Nothing,
                                                         uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsVersionsDestroy
         where
        type Rs SecretManagerProjectsLocationsSecretsVersionsDestroy =
             SecretVersion
        type Scopes SecretManagerProjectsLocationsSecretsVersionsDestroy =
             '[CloudPlatform'FullControl]
        requestClient
          SecretManagerProjectsLocationsSecretsVersionsDestroy{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecretManagerProjectsLocationsSecretsVersionsDestroyResource)
                      Core.mempty


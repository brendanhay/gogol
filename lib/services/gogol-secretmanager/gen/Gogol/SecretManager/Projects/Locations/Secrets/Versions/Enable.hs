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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.Versions.Enable
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.versions.enable@.
module Gogol.SecretManager.Projects.Locations.Secrets.Versions.Enable
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsVersionsEnableResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsVersionsEnable (..)
    , newSecretManagerProjectsLocationsSecretsVersionsEnable
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.versions.enable@ method which the
-- 'SecretManagerProjectsLocationsSecretsVersionsEnable' request conforms to.
type SecretManagerProjectsLocationsSecretsVersionsEnableResource =
     "v1" Core.:>
       Core.CaptureMode "name" "enable" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] EnableSecretVersionRequest Core.:>
                       Core.Post '[Core.JSON] SecretVersion

-- | Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsVersionsEnable' smart constructor.
data SecretManagerProjectsLocationsSecretsVersionsEnable = SecretManagerProjectsLocationsSecretsVersionsEnable
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the SecretVersion to enable in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: EnableSecretVersionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsVersionsEnable' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsVersionsEnable 
    :: 
                                                       Core.Text
       -- ^  Required. The resource name of the SecretVersion to enable in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@. See 'name'.
    -> EnableSecretVersionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsLocationsSecretsVersionsEnable
newSecretManagerProjectsLocationsSecretsVersionsEnable name payload
  = SecretManagerProjectsLocationsSecretsVersionsEnable{xgafv =
                                                          Core.Nothing,
                                                        accessToken = Core.Nothing,
                                                        callback = Core.Nothing, name = name,
                                                        payload = payload,
                                                        uploadType = Core.Nothing,
                                                        uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsVersionsEnable
         where
        type Rs SecretManagerProjectsLocationsSecretsVersionsEnable =
             SecretVersion
        type Scopes SecretManagerProjectsLocationsSecretsVersionsEnable =
             '[CloudPlatform'FullControl]
        requestClient
          SecretManagerProjectsLocationsSecretsVersionsEnable{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecretManagerProjectsLocationsSecretsVersionsEnableResource)
                      Core.mempty


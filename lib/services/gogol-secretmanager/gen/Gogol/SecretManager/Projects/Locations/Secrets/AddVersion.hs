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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.AddVersion
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new SecretVersion containing secret data and attaches it to an existing Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.addVersion@.
module Gogol.SecretManager.Projects.Locations.Secrets.AddVersion
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsAddVersionResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsAddVersion (..)
    , newSecretManagerProjectsLocationsSecretsAddVersion
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.addVersion@ method which the
-- 'SecretManagerProjectsLocationsSecretsAddVersion' request conforms to.
type SecretManagerProjectsLocationsSecretsAddVersionResource =
     "v1" Core.:>
       Core.CaptureMode "parent" "addVersion" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AddSecretVersionRequest Core.:>
                       Core.Post '[Core.JSON] SecretVersion

-- | Creates a new SecretVersion containing secret data and attaches it to an existing Secret.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsAddVersion' smart constructor.
data SecretManagerProjectsLocationsSecretsAddVersion = SecretManagerProjectsLocationsSecretsAddVersion
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Secret to associate with the SecretVersion in the format @projects\/*\/secrets\/*@ or @projects\/*\/locations\/*\/secrets\/*@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: AddSecretVersionRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsAddVersion' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsAddVersion 
    :: 
                                                   Core.Text
       -- ^  Required. The resource name of the Secret to associate with the SecretVersion in the format @projects\/*\/secrets\/*@ or @projects\/*\/locations\/*\/secrets\/*@. See 'parent'.
    -> AddSecretVersionRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsLocationsSecretsAddVersion
newSecretManagerProjectsLocationsSecretsAddVersion parent payload
  = SecretManagerProjectsLocationsSecretsAddVersion{xgafv =
                                                      Core.Nothing,
                                                    accessToken = Core.Nothing,
                                                    callback = Core.Nothing, parent = parent,
                                                    payload = payload, uploadType = Core.Nothing,
                                                    uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsAddVersion
         where
        type Rs SecretManagerProjectsLocationsSecretsAddVersion =
             SecretVersion
        type Scopes SecretManagerProjectsLocationsSecretsAddVersion =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsSecretsAddVersion{..}
          = go parent xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsLocationsSecretsAddVersionResource)
                      Core.mempty


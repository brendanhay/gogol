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
-- Module      : Gogol.SecretManager.Projects.Secrets.Versions.Access
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses a SecretVersion. This call returns the secret data. @projects\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.versions.access@.
module Gogol.SecretManager.Projects.Secrets.Versions.Access
    (
    -- * Resource
      SecretManagerProjectsSecretsVersionsAccessResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsVersionsAccess (..)
    , newSecretManagerProjectsSecretsVersionsAccess
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.versions.access@ method which the
-- 'SecretManagerProjectsSecretsVersionsAccess' request conforms to.
type SecretManagerProjectsSecretsVersionsAccessResource =
     "v1" Core.:>
       Core.CaptureMode "name" "access" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AccessSecretVersionResponse

-- | Accesses a SecretVersion. This call returns the secret data. @projects\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion.
--
-- /See:/ 'newSecretManagerProjectsSecretsVersionsAccess' smart constructor.
data SecretManagerProjectsSecretsVersionsAccess = SecretManagerProjectsSecretsVersionsAccess
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the SecretVersion in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@. @projects\/*\/secrets\/*\/versions\/latest@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsVersionsAccess' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsVersionsAccess 
    :: 
                                              Core.Text
       -- ^  Required. The resource name of the SecretVersion in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@. @projects\/*\/secrets\/*\/versions\/latest@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion. See 'name'.
    -> SecretManagerProjectsSecretsVersionsAccess
newSecretManagerProjectsSecretsVersionsAccess name
  = SecretManagerProjectsSecretsVersionsAccess{xgafv = Core.Nothing,
                                               accessToken = Core.Nothing, callback = Core.Nothing,
                                               name = name, uploadType = Core.Nothing,
                                               uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsSecretsVersionsAccess
         where
        type Rs SecretManagerProjectsSecretsVersionsAccess =
             AccessSecretVersionResponse
        type Scopes SecretManagerProjectsSecretsVersionsAccess =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsVersionsAccess{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsVersionsAccessResource)
                      Core.mempty


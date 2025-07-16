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
-- Module      : Gogol.SecretManager.Projects.Secrets.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Secret containing no SecretVersions.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.create@.
module Gogol.SecretManager.Projects.Secrets.Create
    (
    -- * Resource
      SecretManagerProjectsSecretsCreateResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsCreate (..)
    , newSecretManagerProjectsSecretsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.create@ method which the
-- 'SecretManagerProjectsSecretsCreate' request conforms to.
type SecretManagerProjectsSecretsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "secrets" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "secretId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Secret Core.:>
                           Core.Post '[Core.JSON] Secret

-- | Creates a new Secret containing no SecretVersions.
--
-- /See:/ 'newSecretManagerProjectsSecretsCreate' smart constructor.
data SecretManagerProjectsSecretsCreate = SecretManagerProjectsSecretsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the project to associate with the Secret, in the format @projects\/*@ or @projects\/*\/locations\/*@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Secret
      -- | Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (@-@) and underscore (@_@) characters.
    , secretId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsCreate' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsCreate 
    :: 
                                      Core.Text
       -- ^  Required. The resource name of the project to associate with the Secret, in the format @projects\/*@ or @projects\/*\/locations\/*@. See 'parent'.
    -> Secret
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsSecretsCreate
newSecretManagerProjectsSecretsCreate parent payload
  = SecretManagerProjectsSecretsCreate{xgafv = Core.Nothing,
                                       accessToken = Core.Nothing, callback = Core.Nothing,
                                       parent = parent, payload = payload, secretId = Core.Nothing,
                                       uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SecretManagerProjectsSecretsCreate
         where
        type Rs SecretManagerProjectsSecretsCreate = Secret
        type Scopes SecretManagerProjectsSecretsCreate =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsCreate{..}
          = go parent xgafv accessToken callback secretId uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsCreateResource)
                      Core.mempty


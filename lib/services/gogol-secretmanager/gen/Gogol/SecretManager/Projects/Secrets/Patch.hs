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
-- Module      : Gogol.SecretManager.Projects.Secrets.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata of an existing Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.patch@.
module Gogol.SecretManager.Projects.Secrets.Patch
    (
    -- * Resource
      SecretManagerProjectsSecretsPatchResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsPatch (..)
    , newSecretManagerProjectsSecretsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.patch@ method which the
-- 'SecretManagerProjectsSecretsPatch' request conforms to.
type SecretManagerProjectsSecretsPatchResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Secret Core.:>
                         Core.Patch '[Core.JSON] Secret

-- | Updates metadata of an existing Secret.
--
-- /See:/ 'newSecretManagerProjectsSecretsPatch' smart constructor.
data SecretManagerProjectsSecretsPatch = SecretManagerProjectsSecretsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The resource name of the Secret in the format @projects\/*\/secrets\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Secret
      -- | Required. Specifies the fields to be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsPatch' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsPatch 
    :: 
                                     Core.Text
       -- ^  Output only. The resource name of the Secret in the format @projects\/*\/secrets\/*@. See 'name'.
    -> Secret
       -- ^  Multipart request metadata. See 'payload'.
    -> SecretManagerProjectsSecretsPatch
newSecretManagerProjectsSecretsPatch name payload
  = SecretManagerProjectsSecretsPatch{xgafv = Core.Nothing,
                                      accessToken = Core.Nothing, callback = Core.Nothing,
                                      name = name, payload = payload, updateMask = Core.Nothing,
                                      uploadType = Core.Nothing, uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SecretManagerProjectsSecretsPatch where
        type Rs SecretManagerProjectsSecretsPatch = Secret
        type Scopes SecretManagerProjectsSecretsPatch =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsPatch{..}
          = go name xgafv accessToken callback updateMask uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsPatchResource)
                      Core.mempty


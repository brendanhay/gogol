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
-- Module      : Gogol.SecretManager.Projects.Secrets.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.secrets.delete@.
module Gogol.SecretManager.Projects.Secrets.Delete
    (
    -- * Resource
      SecretManagerProjectsSecretsDeleteResource

    -- ** Constructing a Request
    , SecretManagerProjectsSecretsDelete (..)
    , newSecretManagerProjectsSecretsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.secrets.delete@ method which the
-- 'SecretManagerProjectsSecretsDelete' request conforms to.
type SecretManagerProjectsSecretsDeleteResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "etag" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes a Secret.
--
-- /See:/ 'newSecretManagerProjectsSecretsDelete' smart constructor.
data SecretManagerProjectsSecretsDelete = SecretManagerProjectsSecretsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Etag of the Secret. The request succeeds if it matches the etag of the currently stored secret object. If the etag is omitted, the request succeeds.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Secret to delete in the format @projects\/*\/secrets\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsSecretsDelete' with the minimum fields required to make a request.
newSecretManagerProjectsSecretsDelete 
    :: 
                                      Core.Text
       -- ^  Required. The resource name of the Secret to delete in the format @projects\/*\/secrets\/*@. See 'name'.
    -> SecretManagerProjectsSecretsDelete
newSecretManagerProjectsSecretsDelete name
  = SecretManagerProjectsSecretsDelete{xgafv = Core.Nothing,
                                       accessToken = Core.Nothing, callback = Core.Nothing,
                                       etag = Core.Nothing, name = name, uploadType = Core.Nothing,
                                       uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SecretManagerProjectsSecretsDelete
         where
        type Rs SecretManagerProjectsSecretsDelete = Empty
        type Scopes SecretManagerProjectsSecretsDelete =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsSecretsDelete{..}
          = go name xgafv accessToken callback etag uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsSecretsDeleteResource)
                      Core.mempty


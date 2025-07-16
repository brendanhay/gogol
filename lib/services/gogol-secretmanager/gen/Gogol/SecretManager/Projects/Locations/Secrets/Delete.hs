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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.delete@.
module Gogol.SecretManager.Projects.Locations.Secrets.Delete
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsDeleteResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsDelete (..)
    , newSecretManagerProjectsLocationsSecretsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.delete@ method which the
-- 'SecretManagerProjectsLocationsSecretsDelete' request conforms to.
type SecretManagerProjectsLocationsSecretsDeleteResource =
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
-- /See:/ 'newSecretManagerProjectsLocationsSecretsDelete' smart constructor.
data SecretManagerProjectsLocationsSecretsDelete = SecretManagerProjectsLocationsSecretsDelete
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

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsDelete' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsDelete 
    :: 
                                               Core.Text
       -- ^  Required. The resource name of the Secret to delete in the format @projects\/*\/secrets\/*@. See 'name'.
    -> SecretManagerProjectsLocationsSecretsDelete
newSecretManagerProjectsLocationsSecretsDelete name
  = SecretManagerProjectsLocationsSecretsDelete{xgafv = Core.Nothing,
                                                accessToken = Core.Nothing, callback = Core.Nothing,
                                                etag = Core.Nothing, name = name,
                                                uploadType = Core.Nothing,
                                                uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsDelete
         where
        type Rs SecretManagerProjectsLocationsSecretsDelete = Empty
        type Scopes SecretManagerProjectsLocationsSecretsDelete =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsSecretsDelete{..}
          = go name xgafv accessToken callback etag uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsLocationsSecretsDeleteResource)
                      Core.mempty


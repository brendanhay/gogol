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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata for a given Secret.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.get@.
module Gogol.SecretManager.Projects.Locations.Secrets.Get
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsGetResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsGet (..)
    , newSecretManagerProjectsLocationsSecretsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.get@ method which the
-- 'SecretManagerProjectsLocationsSecretsGet' request conforms to.
type SecretManagerProjectsLocationsSecretsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Secret

-- | Gets metadata for a given Secret.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsGet' smart constructor.
data SecretManagerProjectsLocationsSecretsGet = SecretManagerProjectsLocationsSecretsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the Secret, in the format @projects\/*\/secrets\/*@ or @projects\/*\/locations\/*\/secrets\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsGet' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsGet 
    :: 
                                            Core.Text
       -- ^  Required. The resource name of the Secret, in the format @projects\/*\/secrets\/*@ or @projects\/*\/locations\/*\/secrets\/*@. See 'name'.
    -> SecretManagerProjectsLocationsSecretsGet
newSecretManagerProjectsLocationsSecretsGet name
  = SecretManagerProjectsLocationsSecretsGet{xgafv = Core.Nothing,
                                             accessToken = Core.Nothing, callback = Core.Nothing,
                                             name = name, uploadType = Core.Nothing,
                                             uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsGet
         where
        type Rs SecretManagerProjectsLocationsSecretsGet = Secret
        type Scopes SecretManagerProjectsLocationsSecretsGet =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsSecretsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsLocationsSecretsGetResource)
                      Core.mempty


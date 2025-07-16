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
-- Module      : Gogol.SecretManager.Projects.Locations.Secrets.Versions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata for a SecretVersion. @projects\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.secrets.versions.get@.
module Gogol.SecretManager.Projects.Locations.Secrets.Versions.Get
    (
    -- * Resource
      SecretManagerProjectsLocationsSecretsVersionsGetResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsSecretsVersionsGet (..)
    , newSecretManagerProjectsLocationsSecretsVersionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.secrets.versions.get@ method which the
-- 'SecretManagerProjectsLocationsSecretsVersionsGet' request conforms to.
type SecretManagerProjectsLocationsSecretsVersionsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] SecretVersion

-- | Gets metadata for a SecretVersion. @projects\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion.
--
-- /See:/ 'newSecretManagerProjectsLocationsSecretsVersionsGet' smart constructor.
data SecretManagerProjectsLocationsSecretsVersionsGet = SecretManagerProjectsLocationsSecretsVersionsGet
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

-- | Creates a value of 'SecretManagerProjectsLocationsSecretsVersionsGet' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsSecretsVersionsGet 
    :: 
                                                    Core.Text
       -- ^  Required. The resource name of the SecretVersion in the format @projects\/*\/secrets\/*\/versions\/*@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/*@. @projects\/*\/secrets\/*\/versions\/latest@ or @projects\/*\/locations\/*\/secrets\/*\/versions\/latest@ is an alias to the most recently created SecretVersion. See 'name'.
    -> SecretManagerProjectsLocationsSecretsVersionsGet
newSecretManagerProjectsLocationsSecretsVersionsGet name
  = SecretManagerProjectsLocationsSecretsVersionsGet{xgafv =
                                                       Core.Nothing,
                                                     accessToken = Core.Nothing,
                                                     callback = Core.Nothing, name = name,
                                                     uploadType = Core.Nothing,
                                                     uploadProtocol = Core.Nothing}
instance Core.GoogleRequest
           SecretManagerProjectsLocationsSecretsVersionsGet
         where
        type Rs SecretManagerProjectsLocationsSecretsVersionsGet =
             SecretVersion
        type Scopes SecretManagerProjectsLocationsSecretsVersionsGet =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsSecretsVersionsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecretManagerProjectsLocationsSecretsVersionsGetResource)
                      Core.mempty


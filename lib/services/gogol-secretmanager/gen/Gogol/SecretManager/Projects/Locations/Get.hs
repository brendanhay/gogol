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
-- Module      : Gogol.SecretManager.Projects.Locations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/secret-manager/ Secret Manager API Reference> for @secretmanager.projects.locations.get@.
module Gogol.SecretManager.Projects.Locations.Get
    (
    -- * Resource
      SecretManagerProjectsLocationsGetResource

    -- ** Constructing a Request
    , SecretManagerProjectsLocationsGet (..)
    , newSecretManagerProjectsLocationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecretManager.Types

-- | A resource alias for @secretmanager.projects.locations.get@ method which the
-- 'SecretManagerProjectsLocationsGet' request conforms to.
type SecretManagerProjectsLocationsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'newSecretManagerProjectsLocationsGet' smart constructor.
data SecretManagerProjectsLocationsGet = SecretManagerProjectsLocationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Resource name for the location.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerProjectsLocationsGet' with the minimum fields required to make a request.
newSecretManagerProjectsLocationsGet 
    :: 
                                     Core.Text
       -- ^  Resource name for the location. See 'name'.
    -> SecretManagerProjectsLocationsGet
newSecretManagerProjectsLocationsGet name
  = SecretManagerProjectsLocationsGet{xgafv = Core.Nothing,
                                      accessToken = Core.Nothing, callback = Core.Nothing,
                                      name = name, uploadType = Core.Nothing,
                                      uploadProtocol = Core.Nothing}
instance Core.GoogleRequest SecretManagerProjectsLocationsGet where
        type Rs SecretManagerProjectsLocationsGet = Location
        type Scopes SecretManagerProjectsLocationsGet =
             '[CloudPlatform'FullControl]
        requestClient SecretManagerProjectsLocationsGet{..}
          = go name xgafv accessToken callback uploadType uploadProtocol
              (Core.Just Core.AltJSON)
              secretManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SecretManagerProjectsLocationsGetResource)
                      Core.mempty


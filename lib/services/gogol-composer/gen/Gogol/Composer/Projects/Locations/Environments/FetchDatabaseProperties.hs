{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Composer.Projects.Locations.Environments.FetchDatabaseProperties
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches database properties.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.fetchDatabaseProperties@.
module Gogol.Composer.Projects.Locations.Environments.FetchDatabaseProperties
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsFetchDatabasePropertiesResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties (..),
    newComposerProjectsLocationsEnvironmentsFetchDatabaseProperties,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.fetchDatabaseProperties@ method which the
-- 'ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties' request conforms to.
type ComposerProjectsLocationsEnvironmentsFetchDatabasePropertiesResource =
  "v1"
    Core.:> Core.CaptureMode "environment" "fetchDatabaseProperties" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FetchDatabasePropertiesResponse

-- | Fetches database properties.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsFetchDatabaseProperties' smart constructor.
data ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties = ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the environment, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    environment :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsFetchDatabaseProperties ::
  -- |  Required. The resource name of the environment, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'environment'.
  Core.Text ->
  ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties
newComposerProjectsLocationsEnvironmentsFetchDatabaseProperties
  environment =
    ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        environment = environment,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties
  where
  type
    Rs
      ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties =
      FetchDatabasePropertiesResponse
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties {..} =
      go
        environment
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsEnvironmentsFetchDatabasePropertiesResource
            )
            Core.mempty

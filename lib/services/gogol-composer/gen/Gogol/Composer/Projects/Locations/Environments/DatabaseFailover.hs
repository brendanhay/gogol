{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Composer.Projects.Locations.Environments.DatabaseFailover
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Triggers database failover (only for highly resilient environments).
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.databaseFailover@.
module Gogol.Composer.Projects.Locations.Environments.DatabaseFailover
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsDatabaseFailoverResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsDatabaseFailover (..),
    newComposerProjectsLocationsEnvironmentsDatabaseFailover,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.databaseFailover@ method which the
-- 'ComposerProjectsLocationsEnvironmentsDatabaseFailover' request conforms to.
type ComposerProjectsLocationsEnvironmentsDatabaseFailoverResource =
  "v1"
    Core.:> Core.CaptureMode "environment" "databaseFailover" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DatabaseFailoverRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Triggers database failover (only for highly resilient environments).
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsDatabaseFailover' smart constructor.
data ComposerProjectsLocationsEnvironmentsDatabaseFailover = ComposerProjectsLocationsEnvironmentsDatabaseFailover
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Target environment: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: DatabaseFailoverRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsDatabaseFailover' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsDatabaseFailover ::
  -- |  Target environment: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DatabaseFailoverRequest ->
  ComposerProjectsLocationsEnvironmentsDatabaseFailover
newComposerProjectsLocationsEnvironmentsDatabaseFailover
  environment
  payload =
    ComposerProjectsLocationsEnvironmentsDatabaseFailover
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        environment = environment,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsDatabaseFailover
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsDatabaseFailover =
      Operation
  type
    Scopes ComposerProjectsLocationsEnvironmentsDatabaseFailover =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsDatabaseFailover {..} =
      go
        environment
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsEnvironmentsDatabaseFailoverResource
            )
            Core.mempty

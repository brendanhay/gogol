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
-- Module      : Gogol.Composer.Projects.Locations.Environments.PollAirflowCommand
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Polls Airflow CLI command execution and fetches logs.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.pollAirflowCommand@.
module Gogol.Composer.Projects.Locations.Environments.PollAirflowCommand
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsPollAirflowCommandResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsPollAirflowCommand (..),
    newComposerProjectsLocationsEnvironmentsPollAirflowCommand,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.pollAirflowCommand@ method which the
-- 'ComposerProjectsLocationsEnvironmentsPollAirflowCommand' request conforms to.
type ComposerProjectsLocationsEnvironmentsPollAirflowCommandResource =
  "v1"
    Core.:> Core.CaptureMode "environment" "pollAirflowCommand" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PollAirflowCommandRequest
    Core.:> Core.Post '[Core.JSON] PollAirflowCommandResponse

-- | Polls Airflow CLI command execution and fetches logs.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsPollAirflowCommand' smart constructor.
data ComposerProjectsLocationsEnvironmentsPollAirflowCommand = ComposerProjectsLocationsEnvironmentsPollAirflowCommand
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: PollAirflowCommandRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsPollAirflowCommand' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsPollAirflowCommand ::
  -- |  The resource name of the environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PollAirflowCommandRequest ->
  ComposerProjectsLocationsEnvironmentsPollAirflowCommand
newComposerProjectsLocationsEnvironmentsPollAirflowCommand
  environment
  payload =
    ComposerProjectsLocationsEnvironmentsPollAirflowCommand
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
    ComposerProjectsLocationsEnvironmentsPollAirflowCommand
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsPollAirflowCommand =
      PollAirflowCommandResponse
  type
    Scopes ComposerProjectsLocationsEnvironmentsPollAirflowCommand =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsPollAirflowCommand {..} =
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
                  ComposerProjectsLocationsEnvironmentsPollAirflowCommandResource
            )
            Core.mempty

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
-- Module      : Gogol.Composer.Projects.Locations.Environments.ExecuteAirflowCommand
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes Airflow CLI command.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.executeAirflowCommand@.
module Gogol.Composer.Projects.Locations.Environments.ExecuteAirflowCommand
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommandResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand (..),
    newComposerProjectsLocationsEnvironmentsExecuteAirflowCommand,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.executeAirflowCommand@ method which the
-- 'ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand' request conforms to.
type ComposerProjectsLocationsEnvironmentsExecuteAirflowCommandResource =
  "v1"
    Core.:> Core.CaptureMode "environment" "executeAirflowCommand" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExecuteAirflowCommandRequest
    Core.:> Core.Post '[Core.JSON] ExecuteAirflowCommandResponse

-- | Executes Airflow CLI command.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsExecuteAirflowCommand' smart constructor.
data ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand = ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\".
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: ExecuteAirflowCommandRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsExecuteAirflowCommand ::
  -- |  The resource name of the environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\". See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ExecuteAirflowCommandRequest ->
  ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand
newComposerProjectsLocationsEnvironmentsExecuteAirflowCommand
  environment
  payload =
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand
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
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand =
      ExecuteAirflowCommandResponse
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand {..} =
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
                  ComposerProjectsLocationsEnvironmentsExecuteAirflowCommandResource
            )
            Core.mempty

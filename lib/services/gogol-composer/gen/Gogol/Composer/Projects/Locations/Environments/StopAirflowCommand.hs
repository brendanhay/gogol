{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Composer.Projects.Locations.Environments.StopAirflowCommand
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops Airflow CLI command execution.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.stopAirflowCommand@.
module Gogol.Composer.Projects.Locations.Environments.StopAirflowCommand
    (
    -- * Resource
      ComposerProjectsLocationsEnvironmentsStopAirflowCommandResource

    -- ** Constructing a Request
    , ComposerProjectsLocationsEnvironmentsStopAirflowCommand (..)
    , newComposerProjectsLocationsEnvironmentsStopAirflowCommand
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Composer.Types

-- | A resource alias for @composer.projects.locations.environments.stopAirflowCommand@ method which the
-- 'ComposerProjectsLocationsEnvironmentsStopAirflowCommand' request conforms to.
type ComposerProjectsLocationsEnvironmentsStopAirflowCommandResource
     =
     "v1" Core.:>
       Core.CaptureMode "environment" "stopAirflowCommand"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] StopAirflowCommandRequest
                       Core.:>
                       Core.Post '[Core.JSON] StopAirflowCommandResponse

-- | Stops Airflow CLI command execution.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsStopAirflowCommand' smart constructor.
data ComposerProjectsLocationsEnvironmentsStopAirflowCommand = ComposerProjectsLocationsEnvironmentsStopAirflowCommand
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\".
    , environment :: Core.Text
      -- | Multipart request metadata.
    , payload :: StopAirflowCommandRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsStopAirflowCommand' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsStopAirflowCommand 
    ::  Core.Text
       -- ^  The resource name of the environment in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\". See 'environment'.
    -> StopAirflowCommandRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ComposerProjectsLocationsEnvironmentsStopAirflowCommand
newComposerProjectsLocationsEnvironmentsStopAirflowCommand environment payload =
  ComposerProjectsLocationsEnvironmentsStopAirflowCommand
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , environment = environment
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComposerProjectsLocationsEnvironmentsStopAirflowCommand
         where
        type Rs
               ComposerProjectsLocationsEnvironmentsStopAirflowCommand
             = StopAirflowCommandResponse
        type Scopes
               ComposerProjectsLocationsEnvironmentsStopAirflowCommand
             = '[CloudPlatform'FullControl]
        requestClient
          ComposerProjectsLocationsEnvironmentsStopAirflowCommand{..}
          = go environment xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              composerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComposerProjectsLocationsEnvironmentsStopAirflowCommandResource)
                      Core.mempty


{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the specified Experiment. This rpc only changes the state of experiment from RUNNING to DONE.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.stop@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Stop
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStopResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
    , DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.stop@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStopResource
     =
     "v3" Core.:>
       Core.CaptureMode "name" "stop" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudDialogflowCxV3StopExperimentRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GoogleCloudDialogflowCxV3Experiment

-- | Stops the specified Experiment. This rpc only changes the state of experiment from RUNNING to DONE.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop = DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the experiment to stop. Format: @projects\/\/locations\/\/agents\/\/environments\/\/experiments\/@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3StopExperimentRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop 
    ::  Core.Text
       -- ^  Required. Resource name of the experiment to stop. Format: @projects\/\/locations\/\/agents\/\/environments\/\/experiments\/@. See 'name'.
    -> GoogleCloudDialogflowCxV3StopExperimentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop name payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStop{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStopResource)
                      Core.mempty


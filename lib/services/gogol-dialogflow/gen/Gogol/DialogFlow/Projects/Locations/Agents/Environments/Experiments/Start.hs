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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Start
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified Experiment. This rpc only changes the state of experiment from PENDING to RUNNING.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.start@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Start
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStartResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart (..)
    , newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.start@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStartResource
     =
     "v3" Core.:>
       Core.CaptureMode "name" "start" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudDialogflowCxV3StartExperimentRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GoogleCloudDialogflowCxV3Experiment

-- | Starts the specified Experiment. This rpc only changes the state of experiment from PENDING to RUNNING.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart = DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the experiment to start. Format: @projects\/\/locations\/\/agents\/\/environments\/\/experiments\/@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3StartExperimentRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart 
    ::  Core.Text
       -- ^  Required. Resource name of the experiment to start. Format: @projects\/\/locations\/\/agents\/\/environments\/\/experiments\/@. See 'name'.
    -> GoogleCloudDialogflowCxV3StartExperimentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart name payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStart{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsStartResource)
                      Core.mempty


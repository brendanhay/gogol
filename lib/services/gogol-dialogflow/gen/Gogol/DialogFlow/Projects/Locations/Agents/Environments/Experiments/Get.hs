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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Experiment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Get
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGetResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
    , DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGetResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON]
                       GoogleCloudDialogflowCxV3Experiment

-- | Retrieves the specified Experiment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet = DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Environment. Format: @projects\/\/locations\/\/agents\/\/environments\/\/experiments\/@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet 
    ::  Core.Text
       -- ^  Required. The name of the Environment. Format: @projects\/\/locations\/\/agents\/\/environments\/\/experiments\/@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
newDialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet name =
  DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEnvironmentsExperimentsGetResource)
                      Core.mempty


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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.CalculateCoverage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Calculates the test coverage for an agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.calculateCoverage@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.CalculateCoverage
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverageResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage (..)
    , newDialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.calculateCoverage@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverageResource
     =
     "v3" Core.:>
       Core.Capture "agent" Core.Text Core.:>
         "testCases:calculateCoverage" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "type"
                   ProjectsLocationsAgentsTestCasesCalculateCoverageType
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           GoogleCloudDialogflowCxV3CalculateCoverageResponse

-- | Calculates the test coverage for an agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage = DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The agent to calculate coverage for. Format: @projects\/\/locations\/\/agents\/@.
    , agent :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The type of coverage requested.
    , type' :: (Core.Maybe ProjectsLocationsAgentsTestCasesCalculateCoverageType)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage 
    ::  Core.Text
       -- ^  Required. The agent to calculate coverage for. Format: @projects\/\/locations\/\/agents\/@. See 'agent'.
    -> DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
newDialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage agent =
  DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , agent = agent
    , callback = Core.Nothing
    , type' = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
         where
        type Rs
               DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
             = GoogleCloudDialogflowCxV3CalculateCoverageResponse
        type Scopes
               DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverage{..}
          = go agent xgafv accessToken callback type'
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsTestCasesCalculateCoverageResource)
                      Core.mempty


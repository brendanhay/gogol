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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.GetValidationResult
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest agent validation result. Agent validation is performed when ValidateAgent is called.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.getValidationResult@.
module Gogol.DialogFlow.Projects.Locations.Agents.GetValidationResult
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsGetValidationResultResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsGetValidationResult
    , DialogFlowProjectsLocationsAgentsGetValidationResult
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.getValidationResult@ method which the
-- 'DialogFlowProjectsLocationsAgentsGetValidationResult' request conforms to.
type DialogFlowProjectsLocationsAgentsGetValidationResultResource
     =
     "v3" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "languageCode" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON]
                         GoogleCloudDialogflowCxV3AgentValidationResult

-- | Gets the latest agent validation result. Agent validation is performed when ValidateAgent is called.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsGetValidationResult' smart constructor.
data DialogFlowProjectsLocationsAgentsGetValidationResult = DialogFlowProjectsLocationsAgentsGetValidationResult
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If not specified, the agent\'s default language is used.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. The agent name. Format: @projects\/\/locations\/\/agents\/\/validationResult@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsGetValidationResult' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsGetValidationResult 
    ::  Core.Text
       -- ^  Required. The agent name. Format: @projects\/\/locations\/\/agents\/\/validationResult@. See 'name'.
    -> DialogFlowProjectsLocationsAgentsGetValidationResult
newDialogFlowProjectsLocationsAgentsGetValidationResult name =
  DialogFlowProjectsLocationsAgentsGetValidationResult
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsGetValidationResult
         where
        type Rs
               DialogFlowProjectsLocationsAgentsGetValidationResult
             = GoogleCloudDialogflowCxV3AgentValidationResult
        type Scopes
               DialogFlowProjectsLocationsAgentsGetValidationResult
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsGetValidationResult{..}
          = go name xgafv accessToken callback languageCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsGetValidationResultResource)
                      Core.mempty


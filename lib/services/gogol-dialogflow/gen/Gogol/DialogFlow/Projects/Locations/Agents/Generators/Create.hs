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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Generators.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a generator in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.generators.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Generators.Create
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsGeneratorsCreateResource

    -- ** Constructing a Request
    , DialogFlowProjectsLocationsAgentsGeneratorsCreate (..)
    , newDialogFlowProjectsLocationsAgentsGeneratorsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.generators.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsGeneratorsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsGeneratorsCreateResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "generators" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON]
                           GoogleCloudDialogflowCxV3Generator
                           Core.:>
                           Core.Post '[Core.JSON]
                             GoogleCloudDialogflowCxV3Generator

-- | Creates a generator in the specified agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsGeneratorsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsGeneratorsCreate = DialogFlowProjectsLocationsAgentsGeneratorsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The language to create generators for the following fields: * @Generator.prompt_text.text@ If not specified, the agent\'s default language is used.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. The agent to create a generator for. Format: @projects\/\/locations\/\/agents\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3Generator
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsGeneratorsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsGeneratorsCreate 
    ::  Core.Text
       -- ^  Required. The agent to create a generator for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
    -> GoogleCloudDialogflowCxV3Generator
       -- ^  Multipart request metadata. See 'payload'.
    -> DialogFlowProjectsLocationsAgentsGeneratorsCreate
newDialogFlowProjectsLocationsAgentsGeneratorsCreate parent payload =
  DialogFlowProjectsLocationsAgentsGeneratorsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsGeneratorsCreate
         where
        type Rs
               DialogFlowProjectsLocationsAgentsGeneratorsCreate
             = GoogleCloudDialogflowCxV3Generator
        type Scopes
               DialogFlowProjectsLocationsAgentsGeneratorsCreate
             =
             '[CloudPlatform'FullControl, Dialogflow'FullControl]
        requestClient
          DialogFlowProjectsLocationsAgentsGeneratorsCreate{..}
          = go parent xgafv accessToken callback languageCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsGeneratorsCreateResource)
                      Core.mempty


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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all entity types in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.List
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEntityTypesListResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsEntityTypesList
    , DialogFlowProjectsLocationsAgentsEntityTypesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsEntityTypesList' request conforms to.
type DialogFlowProjectsLocationsAgentsEntityTypesListResource
     =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "entityTypes" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleCloudDialogflowCxV3ListEntityTypesResponse

-- | Returns the list of all entity types in the specified agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEntityTypesList' smart constructor.
data DialogFlowProjectsLocationsAgentsEntityTypesList = DialogFlowProjectsLocationsAgentsEntityTypesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The language to list entity types for. The following fields are language dependent: * @EntityType.entities.value@ * @EntityType.entities.synonyms@ * @EntityType.excluded_phrases.value@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    , languageCode :: (Core.Maybe Core.Text)
      -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The next/page/token value returned from a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The agent to list all entity types for. Format: @projects\/\/locations\/\/agents\/@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEntityTypesList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEntityTypesList 
    ::  Core.Text
       -- ^  Required. The agent to list all entity types for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
    -> DialogFlowProjectsLocationsAgentsEntityTypesList
newDialogFlowProjectsLocationsAgentsEntityTypesList parent =
  DialogFlowProjectsLocationsAgentsEntityTypesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEntityTypesList
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEntityTypesList
             = GoogleCloudDialogflowCxV3ListEntityTypesResponse
        type Scopes
               DialogFlowProjectsLocationsAgentsEntityTypesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsEntityTypesList{..}
          = go parent xgafv accessToken callback languageCode
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEntityTypesListResource)
                      Core.mempty


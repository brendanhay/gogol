{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all flows in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsListResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsList,
    DialogFlowProjectsLocationsAgentsFlowsList,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsList' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "flows"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListFlowsResponse

-- | Returns the list of all flows in the specified agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsList' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsList = DialogFlowProjectsLocationsAgentsFlowsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to list flows for. The following fields are language dependent: * @Flow.event_handlers.trigger_fulfillment.messages@ * @Flow.event_handlers.trigger_fulfillment.conditional_cases@ * @Flow.transition_routes.trigger_fulfillment.messages@ * @Flow.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The agent containing the flows. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsList ::
  -- |  Required. The agent containing the flows. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsList
newDialogFlowProjectsLocationsAgentsFlowsList parent =
  DialogFlowProjectsLocationsAgentsFlowsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsList
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsList =
      GoogleCloudDialogflowCxV3ListFlowsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        languageCode
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsFlowsListResource
            )
            Core.mempty

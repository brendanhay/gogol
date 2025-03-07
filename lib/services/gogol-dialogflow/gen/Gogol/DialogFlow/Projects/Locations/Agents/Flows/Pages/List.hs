{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all pages in the specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsPagesListResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsFlowsPagesList (..),
    newDialogFlowProjectsLocationsAgentsFlowsPagesList,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsPagesList' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsPagesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "pages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3ListPagesResponse

-- | Returns the list of all pages in the specified flow.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsPagesList' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsPagesList = DialogFlowProjectsLocationsAgentsFlowsPagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to list pages for. The following fields are language dependent: * @Page.entry_fulfillment.messages@ * @Page.entry_fulfillment.conditional_cases@ * @Page.event_handlers.trigger_fulfillment.messages@ * @Page.event_handlers.trigger_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.messages@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases@ * @Page.transition_routes.trigger_fulfillment.messages@ * @Page.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The flow to list all pages for. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsPagesList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsPagesList ::
  -- |  Required. The flow to list all pages for. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsPagesList
newDialogFlowProjectsLocationsAgentsFlowsPagesList parent =
  DialogFlowProjectsLocationsAgentsFlowsPagesList
    { xgafv =
        Core.Nothing,
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
    DialogFlowProjectsLocationsAgentsFlowsPagesList
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsPagesList =
      GoogleCloudDialogflowCxV3ListPagesResponse
  type
    Scopes DialogFlowProjectsLocationsAgentsFlowsPagesList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsFlowsPagesList {..} =
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
              Core.Proxy DialogFlowProjectsLocationsAgentsFlowsPagesListResource
          )
          Core.mempty

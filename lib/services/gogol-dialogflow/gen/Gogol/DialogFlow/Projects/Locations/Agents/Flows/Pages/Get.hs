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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified page.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsPagesGetResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsFlowsPagesGet (..),
    newDialogFlowProjectsLocationsAgentsFlowsPagesGet,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsPagesGet' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsPagesGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Page

-- | Retrieves the specified page.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsPagesGet' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsPagesGet = DialogFlowProjectsLocationsAgentsFlowsPagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to retrieve the page for. The following fields are language dependent: * @Page.entry_fulfillment.messages@ * @Page.entry_fulfillment.conditional_cases@ * @Page.event_handlers.trigger_fulfillment.messages@ * @Page.event_handlers.trigger_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.messages@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases@ * @Page.transition_routes.trigger_fulfillment.messages@ * @Page.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The name of the page. Format: @projects\/\/locations\/\/agents\/\/flows\/\/pages\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsPagesGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsPagesGet ::
  -- |  Required. The name of the page. Format: @projects\/\/locations\/\/agents\/\/flows\/\/pages\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsPagesGet
newDialogFlowProjectsLocationsAgentsFlowsPagesGet name =
  DialogFlowProjectsLocationsAgentsFlowsPagesGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsPagesGet
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsPagesGet =
      GoogleCloudDialogflowCxV3Page
  type
    Scopes DialogFlowProjectsLocationsAgentsFlowsPagesGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsFlowsPagesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      languageCode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dialogFlowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DialogFlowProjectsLocationsAgentsFlowsPagesGetResource
          )
          Core.mempty

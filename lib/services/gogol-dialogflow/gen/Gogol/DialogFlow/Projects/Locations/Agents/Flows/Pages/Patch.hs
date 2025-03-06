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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified page. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsPagesPatchResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsFlowsPagesPatch (..),
    newDialogFlowProjectsLocationsAgentsFlowsPagesPatch,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsPagesPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsPagesPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudDialogflowCxV3Page
    Core.:> Core.Patch '[Core.JSON] GoogleCloudDialogflowCxV3Page

-- | Updates the specified page. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsPagesPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsPagesPatch = DialogFlowProjectsLocationsAgentsFlowsPagesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @page@: * @Page.entry_fulfillment.messages@ * @Page.entry_fulfillment.conditional_cases@ * @Page.event_handlers.trigger_fulfillment.messages@ * @Page.event_handlers.trigger_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.messages@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases@ * @Page.transition_routes.trigger_fulfillment.messages@ * @Page.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: @projects\/\/locations\/\/agents\/\/flows\/\/pages\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Page,
    -- | The mask to control which fields get updated. If the mask is not present, all fields will be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsPagesPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsPagesPatch ::
  -- |  The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: @projects\/\/locations\/\/agents\/\/flows\/\/pages\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Page ->
  DialogFlowProjectsLocationsAgentsFlowsPagesPatch
newDialogFlowProjectsLocationsAgentsFlowsPagesPatch name payload =
  DialogFlowProjectsLocationsAgentsFlowsPagesPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsPagesPatch
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsPagesPatch =
      GoogleCloudDialogflowCxV3Page
  type
    Scopes DialogFlowProjectsLocationsAgentsFlowsPagesPatch =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsFlowsPagesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      languageCode
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dialogFlowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DialogFlowProjectsLocationsAgentsFlowsPagesPatchResource
          )
          Core.mempty

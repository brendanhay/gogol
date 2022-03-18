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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a page in the specified flow. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.pages.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Pages.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsPagesCreateResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsPagesCreate,
    DialogFlowProjectsLocationsAgentsFlowsPagesCreate,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.pages.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsPagesCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsPagesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "pages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Page
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3Page

-- | Creates a page in the specified flow. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsPagesCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsPagesCreate = DialogFlowProjectsLocationsAgentsFlowsPagesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @page@: * @Page.entry_fulfillment.messages@ * @Page.entry_fulfillment.conditional_cases@ * @Page.event_handlers.trigger_fulfillment.messages@ * @Page.event_handlers.trigger_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages@ * @Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.messages@ * @Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases@ * @Page.transition_routes.trigger_fulfillment.messages@ * @Page.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The flow to create a page for. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Page,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsPagesCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsPagesCreate ::
  -- |  Required. The flow to create a page for. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Page ->
  DialogFlowProjectsLocationsAgentsFlowsPagesCreate
newDialogFlowProjectsLocationsAgentsFlowsPagesCreate parent payload =
  DialogFlowProjectsLocationsAgentsFlowsPagesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsPagesCreate
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsPagesCreate =
      GoogleCloudDialogflowCxV3Page
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsPagesCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsPagesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        languageCode
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
                  DialogFlowProjectsLocationsAgentsFlowsPagesCreateResource
            )
            Core.mempty

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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a flow in the specified agent. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsCreateResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsCreate,
    DialogFlowProjectsLocationsAgentsFlowsCreate,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "flows"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Flow
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3Flow

-- | Creates a flow in the specified agent. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsCreate = DialogFlowProjectsLocationsAgentsFlowsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @flow@: * @Flow.event_handlers.trigger_fulfillment.messages@ * @Flow.event_handlers.trigger_fulfillment.conditional_cases@ * @Flow.transition_routes.trigger_fulfillment.messages@ * @Flow.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The agent to create a flow for. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Flow,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsCreate ::
  -- |  Required. The agent to create a flow for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Flow ->
  DialogFlowProjectsLocationsAgentsFlowsCreate
newDialogFlowProjectsLocationsAgentsFlowsCreate parent payload =
  DialogFlowProjectsLocationsAgentsFlowsCreate
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
    DialogFlowProjectsLocationsAgentsFlowsCreate
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsCreate =
      GoogleCloudDialogflowCxV3Flow
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsCreate {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsCreateResource
            )
            Core.mempty

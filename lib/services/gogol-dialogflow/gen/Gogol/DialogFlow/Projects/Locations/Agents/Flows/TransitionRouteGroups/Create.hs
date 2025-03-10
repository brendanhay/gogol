{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an TransitionRouteGroup in the specified flow. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreateResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate (..),
    newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "transitionRouteGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3TransitionRouteGroup
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudDialogflowCxV3TransitionRouteGroup

-- | Creates an TransitionRouteGroup in the specified flow. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate = DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @TransitionRouteGroup@: * @TransitionRouteGroup.transition_routes.trigger_fulfillment.messages@ * @TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The flow to create an TransitionRouteGroup for. Format: @projects\/\/locations\/\/agents\/\/flows\/@ or @projects\/\/locations\/\/agents\/@ for agent-level groups.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3TransitionRouteGroup,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate ::
  -- |  Required. The flow to create an TransitionRouteGroup for. Format: @projects\/\/locations\/\/agents\/\/flows\/@ or @projects\/\/locations\/\/agents\/@ for agent-level groups. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3TransitionRouteGroup ->
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
  parent
  payload =
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
      { xgafv =
          Core.Nothing,
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
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate =
      GoogleCloudDialogflowCxV3TransitionRouteGroup
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreate {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsCreateResource
            )
            Core.mempty

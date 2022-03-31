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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all transition route groups in the specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsListResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList,
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "transitionRouteGroups"
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
              GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse

-- | Returns the list of all transition route groups in the specified flow.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList = DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to list transition route groups for. The following fields are language dependent: * @TransitionRouteGroup.transition_routes.trigger_fulfillment.messages@ * @TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The flow to list all transition route groups for. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList ::
  -- |  Required. The flow to list all transition route groups for. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList parent =
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList
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
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList =
      GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsList {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsListResource
            )
            Core.mempty

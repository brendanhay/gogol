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
-- Module      : Network.Google.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified TransitionRouteGroup.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.get@.
module Network.Google.DialogFlow.Projects.Locations.Agents.Flows.TransitionRouteGroups.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGetResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet,
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet,
  )
where

import Network.Google.DialogFlow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.transitionRouteGroups.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3TransitionRouteGroup

-- | Retrieves the specified TransitionRouteGroup.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet = DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to retrieve the transition route group for. The following fields are language dependent: * @TransitionRouteGroup.transition_routes.trigger_fulfillment.messages@ * @TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The name of the TransitionRouteGroup. Format: @projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet ::
  -- |  Required. The name of the TransitionRouteGroup. Format: @projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
newDialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet name =
  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet =
      GoogleCloudDialogflowCxV3TransitionRouteGroup
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGet {..} =
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
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsFlowsTransitionRouteGroupsGetResource
            )
            Core.mempty

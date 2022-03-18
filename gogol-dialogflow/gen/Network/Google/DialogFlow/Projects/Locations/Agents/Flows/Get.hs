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
-- Module      : Network.Google.DialogFlow.Projects.Locations.Agents.Flows.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.get@.
module Network.Google.DialogFlow.Projects.Locations.Agents.Flows.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsGetResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsGet,
    DialogFlowProjectsLocationsAgentsFlowsGet,
  )
where

import Network.Google.DialogFlow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsGet' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Flow

-- | Retrieves the specified flow.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsGet' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsGet = DialogFlowProjectsLocationsAgentsFlowsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language to retrieve the flow for. The following fields are language dependent: * @Flow.event_handlers.trigger_fulfillment.messages@ * @Flow.event_handlers.trigger_fulfillment.conditional_cases@ * @Flow.transition_routes.trigger_fulfillment.messages@ * @Flow.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The name of the flow to get. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsGet ::
  -- |  Required. The name of the flow to get. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsFlowsGet
newDialogFlowProjectsLocationsAgentsFlowsGet name =
  DialogFlowProjectsLocationsAgentsFlowsGet
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
    DialogFlowProjectsLocationsAgentsFlowsGet
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsGet =
      GoogleCloudDialogflowCxV3Flow
  type
    Scopes DialogFlowProjectsLocationsAgentsFlowsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsGet {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsGetResource
            )
            Core.mempty

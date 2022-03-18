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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified flow. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsPatchResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsPatch,
    DialogFlowProjectsLocationsAgentsFlowsPatch,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3Flow
    Core.:> Core.Patch '[Core.JSON] GoogleCloudDialogflowCxV3Flow

-- | Updates the specified flow. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsPatch = DialogFlowProjectsLocationsAgentsFlowsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @flow@: * @Flow.event_handlers.trigger_fulfillment.messages@ * @Flow.event_handlers.trigger_fulfillment.conditional_cases@ * @Flow.transition_routes.trigger_fulfillment.messages@ * @Flow.transition_routes.trigger_fulfillment.conditional_cases@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | The unique identifier of the flow. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Flow,
    -- | The mask to control which fields get updated. If the mask is not present, all fields will be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsPatch ::
  -- |  The unique identifier of the flow. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Flow ->
  DialogFlowProjectsLocationsAgentsFlowsPatch
newDialogFlowProjectsLocationsAgentsFlowsPatch name payload =
  DialogFlowProjectsLocationsAgentsFlowsPatch
    { xgafv = Core.Nothing,
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
    DialogFlowProjectsLocationsAgentsFlowsPatch
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsPatch =
      GoogleCloudDialogflowCxV3Flow
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsPatch {..} =
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
                  DialogFlowProjectsLocationsAgentsFlowsPatchResource
            )
            Core.mempty

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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Intents.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an intent in the specified agent. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.intents.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Intents.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsIntentsCreateResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsIntentsCreate (..),
    newDialogFlowProjectsLocationsAgentsIntentsCreate,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.intents.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsIntentsCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsIntentsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "intents"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudDialogflowCxV3Intent
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3Intent

-- | Creates an intent in the specified agent. Note: You should always train a flow prior to sending it queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsIntentsCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsIntentsCreate = DialogFlowProjectsLocationsAgentsIntentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The language of the following fields in @intent@: * @Intent.training_phrases.parts.text@ If not specified, the agent\'s default language is used. <https://cloud.google.com/dialogflow/cx/docs/reference/language Many languages> are supported. Note: languages must be enabled in the agent before they can be used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The agent to create an intent for. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Intent,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsIntentsCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsIntentsCreate ::
  -- |  Required. The agent to create an intent for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Intent ->
  DialogFlowProjectsLocationsAgentsIntentsCreate
newDialogFlowProjectsLocationsAgentsIntentsCreate parent payload =
  DialogFlowProjectsLocationsAgentsIntentsCreate
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
    DialogFlowProjectsLocationsAgentsIntentsCreate
  where
  type
    Rs DialogFlowProjectsLocationsAgentsIntentsCreate =
      GoogleCloudDialogflowCxV3Intent
  type
    Scopes DialogFlowProjectsLocationsAgentsIntentsCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsIntentsCreate {..} =
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
              Core.Proxy DialogFlowProjectsLocationsAgentsIntentsCreateResource
          )
          Core.mempty

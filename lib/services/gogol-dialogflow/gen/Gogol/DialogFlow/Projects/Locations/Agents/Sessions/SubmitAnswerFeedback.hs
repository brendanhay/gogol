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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Sessions.SubmitAnswerFeedback
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the feedback received from the user for a single turn of the bot response.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.submitAnswerFeedback@.
module Gogol.DialogFlow.Projects.Locations.Agents.Sessions.SubmitAnswerFeedback
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedbackResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback (..),
    newDialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.submitAnswerFeedback@ method which the
-- 'DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback' request conforms to.
type DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedbackResource =
  "v3"
    Core.:> Core.CaptureMode "session" "submitAnswerFeedback" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3AnswerFeedback

-- | Updates the feedback received from the user for a single turn of the bot response.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback' smart constructor.
data DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback = DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest,
    -- | Required. The name of the session the feedback was sent to.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest ->
  -- |  Required. The name of the session the feedback was sent to. See 'session'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback
newDialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback
  payload
  session =
    DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        session = session,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback =
      GoogleCloudDialogflowCxV3AnswerFeedback
  type
    Scopes
      DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedback {..} =
      go
        session
        xgafv
        accessToken
        callback
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
                  DialogFlowProjectsLocationsAgentsSessionsSubmitAnswerFeedbackResource
            )
            Core.mempty

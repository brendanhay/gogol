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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Sessions.MatchIntent
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns preliminary intent match results, doesn\'t change the session status.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.matchIntent@.
module Gogol.DialogFlow.Projects.Locations.Agents.Sessions.MatchIntent
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsSessionsMatchIntentResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsSessionsMatchIntent (..),
    newDialogFlowProjectsLocationsAgentsSessionsMatchIntent,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.matchIntent@ method which the
-- 'DialogFlowProjectsLocationsAgentsSessionsMatchIntent' request conforms to.
type DialogFlowProjectsLocationsAgentsSessionsMatchIntentResource =
  "v3"
    Core.:> Core.CaptureMode "session" "matchIntent" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3MatchIntentRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3MatchIntentResponse

-- | Returns preliminary intent match results, doesn\'t change the session status.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsSessionsMatchIntent' smart constructor.
data DialogFlowProjectsLocationsAgentsSessionsMatchIntent = DialogFlowProjectsLocationsAgentsSessionsMatchIntent
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3MatchIntentRequest,
    -- | Required. The name of the session this query is sent to. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. It\'s up to the API caller to choose an appropriate @Session ID@. It can be a random number or some type of session identifiers (preferably hashed). The length of the @Session ID@ must not exceed 36 characters. For more information, see the <https://cloud.google.com/dialogflow/cx/docs/concept/session sessions guide>.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsSessionsMatchIntent' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsSessionsMatchIntent ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3MatchIntentRequest ->
  -- |  Required. The name of the session this query is sent to. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. It\'s up to the API caller to choose an appropriate @Session ID@. It can be a random number or some type of session identifiers (preferably hashed). The length of the @Session ID@ must not exceed 36 characters. For more information, see the <https://cloud.google.com/dialogflow/cx/docs/concept/session sessions guide>. See 'session'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsSessionsMatchIntent
newDialogFlowProjectsLocationsAgentsSessionsMatchIntent
  payload
  session =
    DialogFlowProjectsLocationsAgentsSessionsMatchIntent
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
    DialogFlowProjectsLocationsAgentsSessionsMatchIntent
  where
  type
    Rs DialogFlowProjectsLocationsAgentsSessionsMatchIntent =
      GoogleCloudDialogflowCxV3MatchIntentResponse
  type
    Scopes DialogFlowProjectsLocationsAgentsSessionsMatchIntent =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsSessionsMatchIntent {..} =
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
                  DialogFlowProjectsLocationsAgentsSessionsMatchIntentResource
            )
            Core.mempty

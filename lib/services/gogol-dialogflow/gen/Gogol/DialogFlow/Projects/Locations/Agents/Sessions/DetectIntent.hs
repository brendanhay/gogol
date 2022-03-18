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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Sessions.DetectIntent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Processes a natural language query and returns structured, actionable data as a result. This method is not idempotent, because it may cause session entity types to be updated, which in turn might affect results of future queries. Note: Always use agent versions for production traffic. See <https://cloud.google.com/dialogflow/cx/docs/concept/version Versions and environments>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.detectIntent@.
module Gogol.DialogFlow.Projects.Locations.Agents.Sessions.DetectIntent
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsSessionsDetectIntentResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsSessionsDetectIntent,
    DialogFlowProjectsLocationsAgentsSessionsDetectIntent,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.detectIntent@ method which the
-- 'DialogFlowProjectsLocationsAgentsSessionsDetectIntent' request conforms to.
type DialogFlowProjectsLocationsAgentsSessionsDetectIntentResource =
  "v3"
    Core.:> Core.CaptureMode "session" "detectIntent" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3DetectIntentRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudDialogflowCxV3DetectIntentResponse

-- | Processes a natural language query and returns structured, actionable data as a result. This method is not idempotent, because it may cause session entity types to be updated, which in turn might affect results of future queries. Note: Always use agent versions for production traffic. See <https://cloud.google.com/dialogflow/cx/docs/concept/version Versions and environments>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsSessionsDetectIntent' smart constructor.
data DialogFlowProjectsLocationsAgentsSessionsDetectIntent = DialogFlowProjectsLocationsAgentsSessionsDetectIntent
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3DetectIntentRequest,
    -- | Required. The name of the session this query is sent to. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. It\'s up to the API caller to choose an appropriate @Session ID@. It can be a random number or some type of session identifiers (preferably hashed). The length of the @Session ID@ must not exceed 36 characters. For more information, see the <https://cloud.google.com/dialogflow/cx/docs/concept/session sessions guide>. Note: Always use agent versions for production traffic. See <https://cloud.google.com/dialogflow/cx/docs/concept/version Versions and environments>.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsSessionsDetectIntent' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsSessionsDetectIntent ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3DetectIntentRequest ->
  -- |  Required. The name of the session this query is sent to. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. It\'s up to the API caller to choose an appropriate @Session ID@. It can be a random number or some type of session identifiers (preferably hashed). The length of the @Session ID@ must not exceed 36 characters. For more information, see the <https://cloud.google.com/dialogflow/cx/docs/concept/session sessions guide>. Note: Always use agent versions for production traffic. See <https://cloud.google.com/dialogflow/cx/docs/concept/version Versions and environments>. See 'session'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsSessionsDetectIntent
newDialogFlowProjectsLocationsAgentsSessionsDetectIntent payload session =
  DialogFlowProjectsLocationsAgentsSessionsDetectIntent
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      session = session,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsSessionsDetectIntent
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsSessionsDetectIntent =
      GoogleCloudDialogflowCxV3DetectIntentResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsSessionsDetectIntent =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsSessionsDetectIntent {..} =
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
                  DialogFlowProjectsLocationsAgentsSessionsDetectIntentResource
            )
            Core.mempty

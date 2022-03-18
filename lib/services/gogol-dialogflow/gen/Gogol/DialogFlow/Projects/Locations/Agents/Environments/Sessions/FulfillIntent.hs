{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.Sessions.FulfillIntent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fulfills a matched intent returned by MatchIntent. Must be called after MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is undefined.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.fulfillIntent@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.Sessions.FulfillIntent
    (
    -- * Resource
      DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntentResource

    -- ** Constructing a Request
    , newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
    , DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DialogFlow.Types

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.fulfillIntent@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntentResource
     =
     "v3" Core.:>
       Core.CaptureMode "session" "fulfillIntent" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GoogleCloudDialogflowCxV3FulfillIntentRequest
                       Core.:>
                       Core.Post '[Core.JSON]
                         GoogleCloudDialogflowCxV3FulfillIntentResponse

-- | Fulfills a matched intent returned by MatchIntent. Must be called after MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is undefined.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent = DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GoogleCloudDialogflowCxV3FulfillIntentRequest
      -- | Required. The name of the session this query is sent to. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. It\'s up to the API caller to choose an appropriate @Session ID@. It can be a random number or some type of session identifiers (preferably hashed). The length of the @Session ID@ must not exceed 36 characters. For more information, see the <https://cloud.google.com/dialogflow/cx/docs/concept/session sessions guide>.
    , session :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent 
    ::  GoogleCloudDialogflowCxV3FulfillIntentRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The name of the session this query is sent to. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. It\'s up to the API caller to choose an appropriate @Session ID@. It can be a random number or some type of session identifiers (preferably hashed). The length of the @Session ID@ must not exceed 36 characters. For more information, see the <https://cloud.google.com/dialogflow/cx/docs/concept/session sessions guide>. See 'session'.
    -> DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent payload session =
  DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , session = session
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
         where
        type Rs
               DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
             = GoogleCloudDialogflowCxV3FulfillIntentResponse
        type Scopes
               DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntent{..}
          = go session xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dialogFlowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DialogFlowProjectsLocationsAgentsEnvironmentsSessionsFulfillIntentResource)
                      Core.mempty


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
-- Module      : Network.Google.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch@.
module Network.Google.DialogFlow.Projects.Locations.Agents.Environments.Sessions.EntityTypes.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatchResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch,
    DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch,
  )
where

import Network.Google.DialogFlow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3SessionEntityType
    Core.:> Core.Patch
              '[Core.JSON]
              GoogleCloudDialogflowCxV3SessionEntityType

-- | Updates the specified session entity type.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch = DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique identifier of the session entity type. Format: @projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3SessionEntityType,
    -- | The mask to control which fields get updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch ::
  -- |  Required. The unique identifier of the session entity type. Format: @projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3SessionEntityType ->
  DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
newDialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch name payload =
  DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch =
      GoogleCloudDialogflowCxV3SessionEntityType
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsSessionsEntityTypesPatchResource
            )
            Core.mempty

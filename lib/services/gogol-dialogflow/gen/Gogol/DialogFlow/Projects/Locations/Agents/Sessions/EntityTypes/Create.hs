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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreateResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate (..),
    newDialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "entityTypes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3SessionEntityType
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3SessionEntityType

-- | Creates a session entity type.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate = DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The session to create a session entity type for. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3SessionEntityType,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate ::
  -- |  Required. The session to create a session entity type for. Format: @projects\/\/locations\/\/agents\/\/sessions\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3SessionEntityType ->
  DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate
newDialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate
  parent
  payload =
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate
  where
  type
    Rs DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate =
      GoogleCloudDialogflowCxV3SessionEntityType
  type
    Scopes
      DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreate {..} =
      go
        parent
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
                  DialogFlowProjectsLocationsAgentsSessionsEntityTypesCreateResource
            )
            Core.mempty

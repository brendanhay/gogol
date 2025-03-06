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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.sessions.entityTypes.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Sessions.EntityTypes.Delete
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesDeleteResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete (..),
    newDialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.sessions.entityTypes.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsSessionsEntityTypesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes the specified session entity type.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete = DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the session entity type to delete. Format: @projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete ::
  -- |  Required. The name of the session entity type to delete. Format: @projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/@ or @projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/@. If @Environment ID@ is not specified, we assume default \'draft\' environment. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete
newDialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete name =
  DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete
  where
  type
    Rs DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete =
      GoogleProtobufEmpty
  type
    Scopes
      DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsSessionsEntityTypesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsSessionsEntityTypesDeleteResource
            )
            Core.mempty

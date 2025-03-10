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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified agent. Note: You should always train flows prior to sending them queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.patch@.
module Gogol.DialogFlow.Projects.Locations.Agents.Patch
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsPatchResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsPatch (..),
    newDialogFlowProjectsLocationsAgentsPatch,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.patch@ method which the
-- 'DialogFlowProjectsLocationsAgentsPatch' request conforms to.
type DialogFlowProjectsLocationsAgentsPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudDialogflowCxV3Agent
    Core.:> Core.Patch '[Core.JSON] GoogleCloudDialogflowCxV3Agent

-- | Updates the specified agent. Note: You should always train flows prior to sending them queries. See the <https://cloud.google.com/dialogflow/cx/docs/concept/training training documentation>.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsPatch' smart constructor.
data DialogFlowProjectsLocationsAgentsPatch = DialogFlowProjectsLocationsAgentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: @projects\/\/locations\/\/agents\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3Agent,
    -- | The mask to control which fields get updated. If the mask is not present, all fields will be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsPatch' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsPatch ::
  -- |  The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: @projects\/\/locations\/\/agents\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3Agent ->
  DialogFlowProjectsLocationsAgentsPatch
newDialogFlowProjectsLocationsAgentsPatch name payload =
  DialogFlowProjectsLocationsAgentsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DialogFlowProjectsLocationsAgentsPatch where
  type
    Rs DialogFlowProjectsLocationsAgentsPatch =
      GoogleCloudDialogflowCxV3Agent
  type
    Scopes DialogFlowProjectsLocationsAgentsPatch =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsPatch {..} =
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
              Core.Proxy DialogFlowProjectsLocationsAgentsPatchResource
          )
          Core.mempty

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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Import
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the specified entitytypes into the agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.entityTypes.import@.
module Gogol.DialogFlow.Projects.Locations.Agents.EntityTypes.Import
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEntityTypesImportResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEntityTypesImport (..),
    newDialogFlowProjectsLocationsAgentsEntityTypesImport,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.entityTypes.import@ method which the
-- 'DialogFlowProjectsLocationsAgentsEntityTypesImport' request conforms to.
type DialogFlowProjectsLocationsAgentsEntityTypesImportResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "entityTypes:import"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ImportEntityTypesRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Imports the specified entitytypes into the agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEntityTypesImport' smart constructor.
data DialogFlowProjectsLocationsAgentsEntityTypesImport = DialogFlowProjectsLocationsAgentsEntityTypesImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The agent to import the entity types into. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3ImportEntityTypesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEntityTypesImport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEntityTypesImport ::
  -- |  Required. The agent to import the entity types into. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3ImportEntityTypesRequest ->
  DialogFlowProjectsLocationsAgentsEntityTypesImport
newDialogFlowProjectsLocationsAgentsEntityTypesImport
  parent
  payload =
    DialogFlowProjectsLocationsAgentsEntityTypesImport
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
    DialogFlowProjectsLocationsAgentsEntityTypesImport
  where
  type
    Rs DialogFlowProjectsLocationsAgentsEntityTypesImport =
      GoogleLongrunningOperation
  type
    Scopes DialogFlowProjectsLocationsAgentsEntityTypesImport =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEntityTypesImport {..} =
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
                  DialogFlowProjectsLocationsAgentsEntityTypesImportResource
            )
            Core.mempty

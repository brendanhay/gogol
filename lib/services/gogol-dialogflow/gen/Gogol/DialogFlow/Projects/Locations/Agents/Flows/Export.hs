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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Flows.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the specified flow to a binary file. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: An empty <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct Struct message> - @response@: ExportFlowResponse Note that resources (e.g. intents, entities, webhooks) that the flow references will also be exported.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.export@.
module Gogol.DialogFlow.Projects.Locations.Agents.Flows.Export
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsFlowsExportResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsFlowsExport,
    DialogFlowProjectsLocationsAgentsFlowsExport,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.flows.export@ method which the
-- 'DialogFlowProjectsLocationsAgentsFlowsExport' request conforms to.
type DialogFlowProjectsLocationsAgentsFlowsExportResource =
  "v3"
    Core.:> Core.CaptureMode "name" "export" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ExportFlowRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Exports the specified flow to a binary file. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: An empty <https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct Struct message> - @response@: ExportFlowResponse Note that resources (e.g. intents, entities, webhooks) that the flow references will also be exported.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsFlowsExport' smart constructor.
data DialogFlowProjectsLocationsAgentsFlowsExport = DialogFlowProjectsLocationsAgentsFlowsExport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the flow to export. Format: @projects\/\/locations\/\/agents\/\/flows\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3ExportFlowRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsFlowsExport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsFlowsExport ::
  -- |  Required. The name of the flow to export. Format: @projects\/\/locations\/\/agents\/\/flows\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3ExportFlowRequest ->
  DialogFlowProjectsLocationsAgentsFlowsExport
newDialogFlowProjectsLocationsAgentsFlowsExport name payload =
  DialogFlowProjectsLocationsAgentsFlowsExport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsFlowsExport
  where
  type
    Rs DialogFlowProjectsLocationsAgentsFlowsExport =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsFlowsExport =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsFlowsExport {..} =
      go
        name
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
                  DialogFlowProjectsLocationsAgentsFlowsExportResource
            )
            Core.mempty

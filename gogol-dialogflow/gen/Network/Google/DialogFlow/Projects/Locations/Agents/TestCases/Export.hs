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
-- Module      : Network.Google.DialogFlow.Projects.Locations.Agents.TestCases.Export
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the test cases under the agent to a Cloud Storage bucket or a local file. Filter can be applied to export a subset of test cases. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: ExportTestCasesMetadata - @response@: ExportTestCasesResponse
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.export@.
module Network.Google.DialogFlow.Projects.Locations.Agents.TestCases.Export
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesExportResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsTestCasesExport,
    DialogFlowProjectsLocationsAgentsTestCasesExport,
  )
where

import Network.Google.DialogFlow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.export@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesExport' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesExportResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "testCases:export"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ExportTestCasesRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Exports the test cases under the agent to a Cloud Storage bucket or a local file. Filter can be applied to export a subset of test cases. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: ExportTestCasesMetadata - @response@: ExportTestCasesResponse
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesExport' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesExport = DialogFlowProjectsLocationsAgentsTestCasesExport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The agent where to export test cases from. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3ExportTestCasesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesExport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesExport ::
  -- |  Required. The agent where to export test cases from. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3ExportTestCasesRequest ->
  DialogFlowProjectsLocationsAgentsTestCasesExport
newDialogFlowProjectsLocationsAgentsTestCasesExport parent payload =
  DialogFlowProjectsLocationsAgentsTestCasesExport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsTestCasesExport
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsTestCasesExport =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsTestCasesExport =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsTestCasesExport {..} =
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
                  DialogFlowProjectsLocationsAgentsTestCasesExportResource
            )
            Core.mempty
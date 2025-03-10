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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.BatchRun
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Kicks off a batch run of test cases. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: BatchRunTestCasesMetadata - @response@: BatchRunTestCasesResponse
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.batchRun@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.BatchRun
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesBatchRunResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsTestCasesBatchRun (..),
    newDialogFlowProjectsLocationsAgentsTestCasesBatchRun,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.batchRun@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesBatchRun' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesBatchRunResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "testCases:batchRun"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Kicks off a batch run of test cases. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: BatchRunTestCasesMetadata - @response@: BatchRunTestCasesResponse
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesBatchRun' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesBatchRun = DialogFlowProjectsLocationsAgentsTestCasesBatchRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Agent name. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3BatchRunTestCasesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesBatchRun' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesBatchRun ::
  -- |  Required. Agent name. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3BatchRunTestCasesRequest ->
  DialogFlowProjectsLocationsAgentsTestCasesBatchRun
newDialogFlowProjectsLocationsAgentsTestCasesBatchRun
  parent
  payload =
    DialogFlowProjectsLocationsAgentsTestCasesBatchRun
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
    DialogFlowProjectsLocationsAgentsTestCasesBatchRun
  where
  type
    Rs DialogFlowProjectsLocationsAgentsTestCasesBatchRun =
      GoogleLongrunningOperation
  type
    Scopes DialogFlowProjectsLocationsAgentsTestCasesBatchRun =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsTestCasesBatchRun {..} =
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
                  DialogFlowProjectsLocationsAgentsTestCasesBatchRunResource
            )
            Core.mempty

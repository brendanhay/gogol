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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Run
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Kicks off a test case run. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: RunTestCaseMetadata - @response@: RunTestCaseResponse
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.run@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Run
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesRunResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsTestCasesRun (..),
    newDialogFlowProjectsLocationsAgentsTestCasesRun,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.run@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesRun' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesRunResource =
  "v3"
    Core.:> Core.CaptureMode "name" "run" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3RunTestCaseRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Kicks off a test case run. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: RunTestCaseMetadata - @response@: RunTestCaseResponse
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesRun' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesRun = DialogFlowProjectsLocationsAgentsTestCasesRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Format of test case name to run: @projects\/\/locations\/\/agents\/\/testCases\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3RunTestCaseRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesRun' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesRun ::
  -- |  Required. Format of test case name to run: @projects\/\/locations\/\/agents\/\/testCases\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3RunTestCaseRequest ->
  DialogFlowProjectsLocationsAgentsTestCasesRun
newDialogFlowProjectsLocationsAgentsTestCasesRun name payload =
  DialogFlowProjectsLocationsAgentsTestCasesRun
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsTestCasesRun
  where
  type
    Rs DialogFlowProjectsLocationsAgentsTestCasesRun =
      GoogleLongrunningOperation
  type
    Scopes DialogFlowProjectsLocationsAgentsTestCasesRun =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsTestCasesRun {..} =
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
              Core.Proxy DialogFlowProjectsLocationsAgentsTestCasesRunResource
          )
          Core.mempty

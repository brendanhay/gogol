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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the test cases from a Cloud Storage bucket or a local file. It always creates new test cases and won\'t overwite any existing ones. The provided ID in the imported test case is neglected. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: ImportTestCasesMetadata - @response@: ImportTestCasesResponse
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.import@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Import
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesImportResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsTestCasesImport (..),
    newDialogFlowProjectsLocationsAgentsTestCasesImport,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.import@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesImport' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesImportResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "testCases:import"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ImportTestCasesRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Imports the test cases from a Cloud Storage bucket or a local file. It always creates new test cases and won\'t overwite any existing ones. The provided ID in the imported test case is neglected. This method is a <https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation long-running operation>. The returned @Operation@ type has the following method-specific fields: - @metadata@: ImportTestCasesMetadata - @response@: ImportTestCasesResponse
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesImport' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesImport = DialogFlowProjectsLocationsAgentsTestCasesImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The agent to import test cases to. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3ImportTestCasesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesImport' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesImport ::
  -- |  Required. The agent to import test cases to. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3ImportTestCasesRequest ->
  DialogFlowProjectsLocationsAgentsTestCasesImport
newDialogFlowProjectsLocationsAgentsTestCasesImport parent payload =
  DialogFlowProjectsLocationsAgentsTestCasesImport
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
    DialogFlowProjectsLocationsAgentsTestCasesImport
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsTestCasesImport =
      GoogleLongrunningOperation
  type
    Scopes
      DialogFlowProjectsLocationsAgentsTestCasesImport =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsTestCasesImport {..} =
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
                  DialogFlowProjectsLocationsAgentsTestCasesImportResource
            )
            Core.mempty

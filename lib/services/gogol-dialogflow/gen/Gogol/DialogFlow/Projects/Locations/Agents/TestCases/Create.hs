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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a test case for the given agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.create@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Create
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesCreateResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsTestCasesCreate (..),
    newDialogFlowProjectsLocationsAgentsTestCasesCreate,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.create@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesCreate' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "testCases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudDialogflowCxV3TestCase
    Core.:> Core.Post '[Core.JSON] GoogleCloudDialogflowCxV3TestCase

-- | Creates a test case for the given agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesCreate' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesCreate = DialogFlowProjectsLocationsAgentsTestCasesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The agent to create the test case for. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudDialogflowCxV3TestCase,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesCreate' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesCreate ::
  -- |  Required. The agent to create the test case for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudDialogflowCxV3TestCase ->
  DialogFlowProjectsLocationsAgentsTestCasesCreate
newDialogFlowProjectsLocationsAgentsTestCasesCreate parent payload =
  DialogFlowProjectsLocationsAgentsTestCasesCreate
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
    DialogFlowProjectsLocationsAgentsTestCasesCreate
  where
  type
    Rs DialogFlowProjectsLocationsAgentsTestCasesCreate =
      GoogleCloudDialogflowCxV3TestCase
  type
    Scopes DialogFlowProjectsLocationsAgentsTestCasesCreate =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsTestCasesCreate {..} =
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
                DialogFlowProjectsLocationsAgentsTestCasesCreateResource
          )
          Core.mempty

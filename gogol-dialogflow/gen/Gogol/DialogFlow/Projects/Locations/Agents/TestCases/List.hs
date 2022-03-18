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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a list of test cases for a given agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesListResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsTestCasesList,
    DialogFlowProjectsLocationsAgentsTestCasesList,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesList' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "testCases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "view"
              ProjectsLocationsAgentsTestCasesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListTestCasesResponse

-- | Fetches a list of test cases for a given agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesList' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesList = DialogFlowProjectsLocationsAgentsTestCasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 20. Note that when TestCaseView = FULL, the maximum page size allowed is 20. When TestCaseView = BASIC, the maximum page size allowed is 500.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The agent to list all pages for. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies whether response should include all fields or just the metadata.
    view :: (Core.Maybe ProjectsLocationsAgentsTestCasesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesList ::
  -- |  Required. The agent to list all pages for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsTestCasesList
newDialogFlowProjectsLocationsAgentsTestCasesList parent =
  DialogFlowProjectsLocationsAgentsTestCasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsTestCasesList
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsTestCasesList =
      GoogleCloudDialogflowCxV3ListTestCasesResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsTestCasesList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsTestCasesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsTestCasesListResource
            )
            Core.mempty

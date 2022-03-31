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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Results.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a list of results for a given test case.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.results.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.TestCases.Results.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsTestCasesResultsListResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsTestCasesResultsList,
    DialogFlowProjectsLocationsAgentsTestCasesResultsList,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.results.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsTestCasesResultsList' request conforms to.
type DialogFlowProjectsLocationsAgentsTestCasesResultsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "results"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListTestCaseResultsResponse

-- | Fetches a list of results for a given test case.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsTestCasesResultsList' smart constructor.
data DialogFlowProjectsLocationsAgentsTestCasesResultsList = DialogFlowProjectsLocationsAgentsTestCasesResultsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter expression used to filter test case results. See <https://aip.dev/160 API Filtering>. The expression is case insensitive. Only \'AND\' is supported for logical operators. The supported syntax is listed below in detail: [AND ] ... [AND latest] The supported fields and operators are: field operator @environment@ @=@, @IN@ (Use value @draft@ for draft environment) @test_time@ @>@, @\<@ @latest@ only returns the latest test result in all results for each test case. Examples: * \"environment=draft AND latest\" matches the latest test result for each test case in the draft environment. * \"environment IN (e1,e2)\" matches any test case results with an environment resource name of either \"e1\" or \"e2\". * \"test_time > 1602540713\" matches any test case results with test time later than a unix timestamp in seconds 1602540713.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The test case to list results for. Format: @projects\/\/locations\/\/agents\/\/ testCases\/@. Specify a @-@ as a wildcard for TestCase ID to list results across multiple test cases.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsTestCasesResultsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsTestCasesResultsList ::
  -- |  Required. The test case to list results for. Format: @projects\/\/locations\/\/agents\/\/ testCases\/@. Specify a @-@ as a wildcard for TestCase ID to list results across multiple test cases. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsTestCasesResultsList
newDialogFlowProjectsLocationsAgentsTestCasesResultsList parent =
  DialogFlowProjectsLocationsAgentsTestCasesResultsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsTestCasesResultsList
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsTestCasesResultsList =
      GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsTestCasesResultsList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsTestCasesResultsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsTestCasesResultsListResource
            )
            Core.mempty

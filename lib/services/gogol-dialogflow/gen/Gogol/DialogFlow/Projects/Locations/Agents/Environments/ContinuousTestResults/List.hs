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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.ContinuousTestResults.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches a list of continuous test results for a given environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.continuousTestResults.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.ContinuousTestResults.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsListResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList (..),
    newDialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.continuousTestResults.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "continuousTestResults"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse

-- | Fetches a list of continuous test results for a given environment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList = DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The environment to list results for. Format: @projects\/\/locations\/\/agents\/\/environments\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList ::
  -- |  Required. The environment to list results for. Format: @projects\/\/locations\/\/agents\/\/environments\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
newDialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
  parent =
    DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback = Core.Nothing,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        parent = parent,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList =
      GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsContinuousTestResultsListResource
            )
            Core.mempty

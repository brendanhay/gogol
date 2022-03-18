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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Environments.LookupEnvironmentHistory
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up the history of the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory@.
module Gogol.DialogFlow.Projects.Locations.Agents.Environments.LookupEnvironmentHistory
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistoryResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory,
    DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory@ method which the
-- 'DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory' request conforms to.
type DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistoryResource =
  "v3"
    Core.:> Core.CaptureMode
              "name"
              "lookupEnvironmentHistory"
              Core.Text
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
              GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse

-- | Looks up the history of the specified Environment.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory' smart constructor.
data DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory = DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the environment to look up the history for. Format: @projects\/\/locations\/\/agents\/\/environments\/@.
    name :: Core.Text,
    -- | The maximum number of items to return in a single page. By default 100 and at most 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory ::
  -- |  Required. Resource name of the environment to look up the history for. Format: @projects\/\/locations\/\/agents\/\/environments\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
newDialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory name =
  DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory =
      GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
  type
    Scopes
      DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistory {..} =
      go
        name
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
                  DialogFlowProjectsLocationsAgentsEnvironmentsLookupEnvironmentHistoryResource
            )
            Core.mempty

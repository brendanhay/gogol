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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Webhooks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all webhooks in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.list@.
module Gogol.DialogFlow.Projects.Locations.Agents.Webhooks.List
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsWebhooksListResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsWebhooksList (..),
    newDialogFlowProjectsLocationsAgentsWebhooksList,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.list@ method which the
-- 'DialogFlowProjectsLocationsAgentsWebhooksList' request conforms to.
type DialogFlowProjectsLocationsAgentsWebhooksListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "webhooks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3ListWebhooksResponse

-- | Returns the list of all webhooks in the specified agent.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsWebhooksList' smart constructor.
data DialogFlowProjectsLocationsAgentsWebhooksList = DialogFlowProjectsLocationsAgentsWebhooksList
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
    -- | Required. The agent to list all webhooks for. Format: @projects\/\/locations\/\/agents\/@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsWebhooksList' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsWebhooksList ::
  -- |  Required. The agent to list all webhooks for. Format: @projects\/\/locations\/\/agents\/@. See 'parent'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsWebhooksList
newDialogFlowProjectsLocationsAgentsWebhooksList parent =
  DialogFlowProjectsLocationsAgentsWebhooksList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsWebhooksList
  where
  type
    Rs DialogFlowProjectsLocationsAgentsWebhooksList =
      GoogleCloudDialogflowCxV3ListWebhooksResponse
  type
    Scopes DialogFlowProjectsLocationsAgentsWebhooksList =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsWebhooksList {..} =
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
              Core.Proxy DialogFlowProjectsLocationsAgentsWebhooksListResource
          )
          Core.mempty

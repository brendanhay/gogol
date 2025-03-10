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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Webhooks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified webhook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.get@.
module Gogol.DialogFlow.Projects.Locations.Agents.Webhooks.Get
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsWebhooksGetResource,

    -- ** Constructing a Request
    DialogFlowProjectsLocationsAgentsWebhooksGet (..),
    newDialogFlowProjectsLocationsAgentsWebhooksGet,
  )
where

import Gogol.DialogFlow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.get@ method which the
-- 'DialogFlowProjectsLocationsAgentsWebhooksGet' request conforms to.
type DialogFlowProjectsLocationsAgentsWebhooksGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudDialogflowCxV3Webhook

-- | Retrieves the specified webhook.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsWebhooksGet' smart constructor.
data DialogFlowProjectsLocationsAgentsWebhooksGet = DialogFlowProjectsLocationsAgentsWebhooksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the webhook. Format: @projects\/\/locations\/\/agents\/\/webhooks\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsWebhooksGet' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsWebhooksGet ::
  -- |  Required. The name of the webhook. Format: @projects\/\/locations\/\/agents\/\/webhooks\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsWebhooksGet
newDialogFlowProjectsLocationsAgentsWebhooksGet name =
  DialogFlowProjectsLocationsAgentsWebhooksGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsWebhooksGet
  where
  type
    Rs DialogFlowProjectsLocationsAgentsWebhooksGet =
      GoogleCloudDialogflowCxV3Webhook
  type
    Scopes DialogFlowProjectsLocationsAgentsWebhooksGet =
      '[CloudPlatform'FullControl, Dialogflow'FullControl]
  requestClient DialogFlowProjectsLocationsAgentsWebhooksGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dialogFlowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DialogFlowProjectsLocationsAgentsWebhooksGetResource
          )
          Core.mempty

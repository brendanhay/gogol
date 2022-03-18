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
-- Module      : Gogol.DialogFlow.Projects.Locations.Agents.Webhooks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified webhook.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.delete@.
module Gogol.DialogFlow.Projects.Locations.Agents.Webhooks.Delete
  ( -- * Resource
    DialogFlowProjectsLocationsAgentsWebhooksDeleteResource,

    -- ** Constructing a Request
    newDialogFlowProjectsLocationsAgentsWebhooksDelete,
    DialogFlowProjectsLocationsAgentsWebhooksDelete,
  )
where

import Gogol.DialogFlow.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.delete@ method which the
-- 'DialogFlowProjectsLocationsAgentsWebhooksDelete' request conforms to.
type DialogFlowProjectsLocationsAgentsWebhooksDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes the specified webhook.
--
-- /See:/ 'newDialogFlowProjectsLocationsAgentsWebhooksDelete' smart constructor.
data DialogFlowProjectsLocationsAgentsWebhooksDelete = DialogFlowProjectsLocationsAgentsWebhooksDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This field has no effect for webhook not being used. For webhooks that are used by pages\/flows\/transition route groups: * If @force@ is set to false, an error will be returned with message indicating the referenced resources. * If @force@ is set to true, Dialogflow will remove the webhook, as well as any references to the webhook (i.e. Webhook and tagin fulfillments that point to this webhook will be removed).
    force :: (Core.Maybe Core.Bool),
    -- | Required. The name of the webhook to delete. Format: @projects\/\/locations\/\/agents\/\/webhooks\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DialogFlowProjectsLocationsAgentsWebhooksDelete' with the minimum fields required to make a request.
newDialogFlowProjectsLocationsAgentsWebhooksDelete ::
  -- |  Required. The name of the webhook to delete. Format: @projects\/\/locations\/\/agents\/\/webhooks\/@. See 'name'.
  Core.Text ->
  DialogFlowProjectsLocationsAgentsWebhooksDelete
newDialogFlowProjectsLocationsAgentsWebhooksDelete name =
  DialogFlowProjectsLocationsAgentsWebhooksDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DialogFlowProjectsLocationsAgentsWebhooksDelete
  where
  type
    Rs
      DialogFlowProjectsLocationsAgentsWebhooksDelete =
      GoogleProtobufEmpty
  type
    Scopes
      DialogFlowProjectsLocationsAgentsWebhooksDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/dialogflow"
       ]
  requestClient
    DialogFlowProjectsLocationsAgentsWebhooksDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        force
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dialogFlowService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DialogFlowProjectsLocationsAgentsWebhooksDeleteResource
            )
            Core.mempty

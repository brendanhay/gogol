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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.ProcessWebhook
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- ProcessWebhook is called by the external SCM for notifying of events.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.processWebhook@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.ProcessWebhook
  ( -- * Resource
    CloudbuildProjectsLocationsConnectionsProcessWebhookResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsConnectionsProcessWebhook (..),
    newCloudbuildProjectsLocationsConnectionsProcessWebhook,
  )
where

import Gogol.ContainerBuilder.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbuild.projects.locations.connections.processWebhook@ method which the
-- 'CloudbuildProjectsLocationsConnectionsProcessWebhook' request conforms to.
type CloudbuildProjectsLocationsConnectionsProcessWebhookResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "connections:processWebhook"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "webhookKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] Empty

-- | ProcessWebhook is called by the external SCM for notifying of events.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsProcessWebhook' smart constructor.
data CloudbuildProjectsLocationsConnectionsProcessWebhook = CloudbuildProjectsLocationsConnectionsProcessWebhook
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Project and location where the webhook will be received. Format: @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: HttpBody,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Arbitrary additional key to find the matching repository for a webhook event if needed.
    webhookKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsProcessWebhook' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsProcessWebhook ::
  -- |  Required. Project and location where the webhook will be received. Format: @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  CloudbuildProjectsLocationsConnectionsProcessWebhook
newCloudbuildProjectsLocationsConnectionsProcessWebhook
  parent
  payload =
    CloudbuildProjectsLocationsConnectionsProcessWebhook
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        webhookKey = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsConnectionsProcessWebhook
  where
  type
    Rs CloudbuildProjectsLocationsConnectionsProcessWebhook =
      Empty
  type
    Scopes CloudbuildProjectsLocationsConnectionsProcessWebhook =
      '[]
  requestClient
    CloudbuildProjectsLocationsConnectionsProcessWebhook {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        webhookKey
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsConnectionsProcessWebhookResource
            )
            Core.mempty

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.AdaptMessage
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Handles a single message from the client and returns the result as a stream. The server will interpret the message frame and respond with message frames to the client.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.adaptMessage@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.AdaptMessage
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsAdaptMessageResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsAdaptMessage (..),
    newSpannerProjectsInstancesDatabasesSessionsAdaptMessage,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.adaptMessage@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsAdaptMessage' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsAdaptMessageResource =
  "v1"
    Core.:> Core.CaptureMode "name" "adaptMessage" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdaptMessageRequest
    Core.:> Core.Post '[Core.JSON] AdaptMessageResponse

-- | Handles a single message from the client and returns the result as a stream. The server will interpret the message frame and respond with message frames to the client.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsAdaptMessage' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsAdaptMessage = SpannerProjectsInstancesDatabasesSessionsAdaptMessage
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database session in which the adapter request is processed.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdaptMessageRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsAdaptMessage' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsAdaptMessage ::
  -- |  Required. The database session in which the adapter request is processed. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdaptMessageRequest ->
  SpannerProjectsInstancesDatabasesSessionsAdaptMessage
newSpannerProjectsInstancesDatabasesSessionsAdaptMessage
  name
  payload =
    SpannerProjectsInstancesDatabasesSessionsAdaptMessage
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsAdaptMessage
  where
  type
    Rs SpannerProjectsInstancesDatabasesSessionsAdaptMessage =
      AdaptMessageResponse
  type
    Scopes SpannerProjectsInstancesDatabasesSessionsAdaptMessage =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsAdaptMessage {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesDatabasesSessionsAdaptMessageResource
            )
            Core.mempty

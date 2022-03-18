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
-- Module      : Network.Google.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Like Read, except returns the result set as a stream. Unlike Read, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.streamingRead@.
module Network.Google.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsStreamingReadResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesDatabasesSessionsStreamingRead,
    SpannerProjectsInstancesDatabasesSessionsStreamingRead,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.streamingRead@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsStreamingRead' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsStreamingReadResource =
  "v1"
    Core.:> Core.CaptureMode "session" "streamingRead" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReadRequest
    Core.:> Core.Post '[Core.JSON] PartialResultSet

-- | Like Read, except returns the result set as a stream. Unlike Read, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsStreamingRead' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsStreamingRead = SpannerProjectsInstancesDatabasesSessionsStreamingRead
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReadRequest,
    -- | Required. The session in which the read should be performed.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsStreamingRead' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsStreamingRead ::
  -- |  Multipart request metadata. See 'payload'.
  ReadRequest ->
  -- |  Required. The session in which the read should be performed. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsStreamingRead
newSpannerProjectsInstancesDatabasesSessionsStreamingRead payload session =
  SpannerProjectsInstancesDatabasesSessionsStreamingRead
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      session = session,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsStreamingRead
  where
  type
    Rs
      SpannerProjectsInstancesDatabasesSessionsStreamingRead =
      PartialResultSet
  type
    Scopes
      SpannerProjectsInstancesDatabasesSessionsStreamingRead =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/spanner.data"
       ]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsStreamingRead {..} =
      go
        session
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
                  SpannerProjectsInstancesDatabasesSessionsStreamingReadResource
            )
            Core.mempty

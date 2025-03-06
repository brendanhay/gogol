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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Read
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads rows from the database using key lookups and scans, as a simple key\/value style alternative to ExecuteSql. This method cannot be used to return a result set larger than 10 MiB; if the read matches more data than that, the read fails with a @FAILED_PRECONDITION@ error. Reads inside read-write transactions might return @ABORTED@. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be yielded in streaming fashion by calling StreamingRead instead.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.read@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Read
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsReadResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsRead (..),
    newSpannerProjectsInstancesDatabasesSessionsRead,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.read@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsRead' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsReadResource =
  "v1"
    Core.:> Core.CaptureMode "session" "read" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReadRequest
    Core.:> Core.Post '[Core.JSON] ResultSet

-- | Reads rows from the database using key lookups and scans, as a simple key\/value style alternative to ExecuteSql. This method cannot be used to return a result set larger than 10 MiB; if the read matches more data than that, the read fails with a @FAILED_PRECONDITION@ error. Reads inside read-write transactions might return @ABORTED@. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be yielded in streaming fashion by calling StreamingRead instead.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsRead' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsRead = SpannerProjectsInstancesDatabasesSessionsRead
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

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsRead' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsRead ::
  -- |  Multipart request metadata. See 'payload'.
  ReadRequest ->
  -- |  Required. The session in which the read should be performed. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsRead
newSpannerProjectsInstancesDatabasesSessionsRead payload session =
  SpannerProjectsInstancesDatabasesSessionsRead
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      session = session,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsRead
  where
  type Rs SpannerProjectsInstancesDatabasesSessionsRead = ResultSet
  type
    Scopes SpannerProjectsInstancesDatabasesSessionsRead =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient SpannerProjectsInstancesDatabasesSessionsRead {..} =
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
              Core.Proxy SpannerProjectsInstancesDatabasesSessionsReadResource
          )
          Core.mempty

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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new session. A session can be used to perform transactions that read and\/or modify data in a Cloud Spanner database. Sessions are meant to be reused for many consecutive transactions. Sessions can only execute one transaction at a time. To execute multiple concurrent read-write\/write-only transactions, create multiple sessions. Note that standalone reads and queries use a transaction internally, and count toward the one transaction limit. Active sessions use additional server resources, so it is a good idea to delete idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner may delete sessions for which no operations are sent for more than an hour. If a session is deleted, requests to it return @NOT_FOUND@. Idle sessions can be kept alive by sending a trivial SQL query periodically, e.g., @\"SELECT 1\"@.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.create@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Create
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsCreateResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesDatabasesSessionsCreate,
    SpannerProjectsInstancesDatabasesSessionsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.create@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsCreate' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsCreateResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> "sessions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateSessionRequest
    Core.:> Core.Post '[Core.JSON] Session

-- | Creates a new session. A session can be used to perform transactions that read and\/or modify data in a Cloud Spanner database. Sessions are meant to be reused for many consecutive transactions. Sessions can only execute one transaction at a time. To execute multiple concurrent read-write\/write-only transactions, create multiple sessions. Note that standalone reads and queries use a transaction internally, and count toward the one transaction limit. Active sessions use additional server resources, so it is a good idea to delete idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner may delete sessions for which no operations are sent for more than an hour. If a session is deleted, requests to it return @NOT_FOUND@. Idle sessions can be kept alive by sending a trivial SQL query periodically, e.g., @\"SELECT 1\"@.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsCreate' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsCreate = SpannerProjectsInstancesDatabasesSessionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database in which the new session is created.
    database :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateSessionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsCreate ::
  -- |  Required. The database in which the new session is created. See 'database'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateSessionRequest ->
  SpannerProjectsInstancesDatabasesSessionsCreate
newSpannerProjectsInstancesDatabasesSessionsCreate database payload =
  SpannerProjectsInstancesDatabasesSessionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsCreate
  where
  type
    Rs
      SpannerProjectsInstancesDatabasesSessionsCreate =
      Session
  type
    Scopes
      SpannerProjectsInstancesDatabasesSessionsCreate =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsCreate {..} =
      go
        database
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
                  SpannerProjectsInstancesDatabasesSessionsCreateResource
            )
            Core.mempty

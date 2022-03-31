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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteSql
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes an SQL statement, returning all results in a single reply. This method cannot be used to return a result set larger than 10 MiB; if the query yields more data than that, the query fails with a @FAILED_PRECONDITION@ error. Operations inside read-write transactions might return @ABORTED@. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be fetched in streaming fashion by calling ExecuteStreamingSql instead.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.executeSql@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.ExecuteSql
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsExecuteSqlResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesDatabasesSessionsExecuteSql,
    SpannerProjectsInstancesDatabasesSessionsExecuteSql,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.executeSql@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsExecuteSql' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsExecuteSqlResource =
  "v1"
    Core.:> Core.CaptureMode "session" "executeSql" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ExecuteSqlRequest
    Core.:> Core.Post '[Core.JSON] ResultSet

-- | Executes an SQL statement, returning all results in a single reply. This method cannot be used to return a result set larger than 10 MiB; if the query yields more data than that, the query fails with a @FAILED_PRECONDITION@ error. Operations inside read-write transactions might return @ABORTED@. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be fetched in streaming fashion by calling ExecuteStreamingSql instead.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsExecuteSql' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsExecuteSql = SpannerProjectsInstancesDatabasesSessionsExecuteSql
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ExecuteSqlRequest,
    -- | Required. The session in which the SQL query should be performed.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsExecuteSql' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsExecuteSql ::
  -- |  Multipart request metadata. See 'payload'.
  ExecuteSqlRequest ->
  -- |  Required. The session in which the SQL query should be performed. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsExecuteSql
newSpannerProjectsInstancesDatabasesSessionsExecuteSql payload session =
  SpannerProjectsInstancesDatabasesSessionsExecuteSql
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
    SpannerProjectsInstancesDatabasesSessionsExecuteSql
  where
  type
    Rs
      SpannerProjectsInstancesDatabasesSessionsExecuteSql =
      ResultSet
  type
    Scopes
      SpannerProjectsInstancesDatabasesSessionsExecuteSql =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsExecuteSql {..} =
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
                  SpannerProjectsInstancesDatabasesSessionsExecuteSqlResource
            )
            Core.mempty

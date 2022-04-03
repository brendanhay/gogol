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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a set of partition tokens that can be used to execute a query operation in parallel. Each of the returned partition tokens can be used by ExecuteStreamingSql to specify a subset of the query result to read. The same session and read-only transaction must be used by the PartitionQueryRequest used to create the partition tokens and the ExecuteSqlRequests that use the partition tokens. Partition tokens become invalid when the session used to create them is deleted, is idle for too long, begins a new transaction, or becomes too old. When any of these happen, it is not possible to resume the query, and the whole operation must be restarted from the beginning.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.partitionQuery@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsPartitionQueryResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsPartitionQuery (..),
    newSpannerProjectsInstancesDatabasesSessionsPartitionQuery,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.partitionQuery@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsPartitionQuery' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsPartitionQueryResource =
  "v1"
    Core.:> Core.CaptureMode "session" "partitionQuery" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PartitionQueryRequest
    Core.:> Core.Post '[Core.JSON] PartitionResponse

-- | Creates a set of partition tokens that can be used to execute a query operation in parallel. Each of the returned partition tokens can be used by ExecuteStreamingSql to specify a subset of the query result to read. The same session and read-only transaction must be used by the PartitionQueryRequest used to create the partition tokens and the ExecuteSqlRequests that use the partition tokens. Partition tokens become invalid when the session used to create them is deleted, is idle for too long, begins a new transaction, or becomes too old. When any of these happen, it is not possible to resume the query, and the whole operation must be restarted from the beginning.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsPartitionQuery' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsPartitionQuery = SpannerProjectsInstancesDatabasesSessionsPartitionQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PartitionQueryRequest,
    -- | Required. The session used to create the partitions.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsPartitionQuery' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsPartitionQuery ::
  -- |  Multipart request metadata. See 'payload'.
  PartitionQueryRequest ->
  -- |  Required. The session used to create the partitions. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsPartitionQuery
newSpannerProjectsInstancesDatabasesSessionsPartitionQuery payload session =
  SpannerProjectsInstancesDatabasesSessionsPartitionQuery
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
    SpannerProjectsInstancesDatabasesSessionsPartitionQuery
  where
  type
    Rs
      SpannerProjectsInstancesDatabasesSessionsPartitionQuery =
      PartitionResponse
  type
    Scopes
      SpannerProjectsInstancesDatabasesSessionsPartitionQuery =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsPartitionQuery {..} =
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
                  SpannerProjectsInstancesDatabasesSessionsPartitionQueryResource
            )
            Core.mempty

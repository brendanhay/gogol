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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.BatchWrite
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batches the supplied mutation groups in a collection of efficient transactions. All mutations in a group are committed atomically. However, mutations across groups can be committed non-atomically in an unspecified order and thus, they must be independent of each other. Partial failure is possible, i.e., some groups may have been committed successfully, while some may have failed. The results of individual batches are streamed into the response as the batches are applied. BatchWrite requests are not replay protected, meaning that each mutation group may be applied more than once. Replays of non-idempotent mutations may have undesirable effects. For example, replays of an insert mutation may produce an already exists error or if you use generated or commit timestamp-based keys, it may result in additional rows being added to the mutation\'s table. We recommend structuring your mutation groups to be idempotent to avoid this issue.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.batchWrite@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.BatchWrite
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsBatchWriteResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsBatchWrite (..),
    newSpannerProjectsInstancesDatabasesSessionsBatchWrite,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.batchWrite@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsBatchWrite' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsBatchWriteResource =
  "v1"
    Core.:> Core.CaptureMode "session" "batchWrite" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchWriteRequest
    Core.:> Core.Post '[Core.JSON] BatchWriteResponse

-- | Batches the supplied mutation groups in a collection of efficient transactions. All mutations in a group are committed atomically. However, mutations across groups can be committed non-atomically in an unspecified order and thus, they must be independent of each other. Partial failure is possible, i.e., some groups may have been committed successfully, while some may have failed. The results of individual batches are streamed into the response as the batches are applied. BatchWrite requests are not replay protected, meaning that each mutation group may be applied more than once. Replays of non-idempotent mutations may have undesirable effects. For example, replays of an insert mutation may produce an already exists error or if you use generated or commit timestamp-based keys, it may result in additional rows being added to the mutation\'s table. We recommend structuring your mutation groups to be idempotent to avoid this issue.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsBatchWrite' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsBatchWrite = SpannerProjectsInstancesDatabasesSessionsBatchWrite
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchWriteRequest,
    -- | Required. The session in which the batch request is to be run.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsBatchWrite' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsBatchWrite ::
  -- |  Multipart request metadata. See 'payload'.
  BatchWriteRequest ->
  -- |  Required. The session in which the batch request is to be run. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsBatchWrite
newSpannerProjectsInstancesDatabasesSessionsBatchWrite
  payload
  session =
    SpannerProjectsInstancesDatabasesSessionsBatchWrite
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
    SpannerProjectsInstancesDatabasesSessionsBatchWrite
  where
  type
    Rs SpannerProjectsInstancesDatabasesSessionsBatchWrite =
      BatchWriteResponse
  type
    Scopes SpannerProjectsInstancesDatabasesSessionsBatchWrite =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsBatchWrite {..} =
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
                  SpannerProjectsInstancesDatabasesSessionsBatchWriteResource
            )
            Core.mempty

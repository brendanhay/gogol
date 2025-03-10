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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins a new transaction. This step can often be skipped: Read, ExecuteSql and Commit can begin a new transaction as a side-effect.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.beginTransaction@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsBeginTransactionResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsBeginTransaction (..),
    newSpannerProjectsInstancesDatabasesSessionsBeginTransaction,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.beginTransaction@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsBeginTransaction' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsBeginTransactionResource =
  "v1"
    Core.:> Core.CaptureMode "session" "beginTransaction" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BeginTransactionRequest
    Core.:> Core.Post '[Core.JSON] Transaction

-- | Begins a new transaction. This step can often be skipped: Read, ExecuteSql and Commit can begin a new transaction as a side-effect.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsBeginTransaction' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsBeginTransaction = SpannerProjectsInstancesDatabasesSessionsBeginTransaction
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BeginTransactionRequest,
    -- | Required. The session in which the transaction runs.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsBeginTransaction' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsBeginTransaction ::
  -- |  Multipart request metadata. See 'payload'.
  BeginTransactionRequest ->
  -- |  Required. The session in which the transaction runs. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsBeginTransaction
newSpannerProjectsInstancesDatabasesSessionsBeginTransaction
  payload
  session =
    SpannerProjectsInstancesDatabasesSessionsBeginTransaction
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
    SpannerProjectsInstancesDatabasesSessionsBeginTransaction
  where
  type
    Rs SpannerProjectsInstancesDatabasesSessionsBeginTransaction =
      Transaction
  type
    Scopes
      SpannerProjectsInstancesDatabasesSessionsBeginTransaction =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient
    SpannerProjectsInstancesDatabasesSessionsBeginTransaction {..} =
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
                  SpannerProjectsInstancesDatabasesSessionsBeginTransactionResource
            )
            Core.mempty

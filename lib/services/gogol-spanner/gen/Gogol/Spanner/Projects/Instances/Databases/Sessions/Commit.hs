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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Commit
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a transaction. The request includes the mutations to be applied to rows in the database. @Commit@ might return an @ABORTED@ error. This can occur at any time; commonly, the cause is conflicts with concurrent transactions. However, it can also happen for a variety of other reasons. If @Commit@ returns @ABORTED@, the caller should re-attempt the transaction from the beginning, re-using the same session. On very rare occasions, @Commit@ might return @UNKNOWN@. This can happen, for example, if the client job experiences a 1+ hour networking failure. At that point, Cloud Spanner has lost track of the transaction outcome and we recommend that you perform another read from the database to see the state of things as they are now.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.commit@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Commit
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsCommitResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsCommit (..),
    newSpannerProjectsInstancesDatabasesSessionsCommit,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.commit@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsCommit' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsCommitResource =
  "v1"
    Core.:> Core.CaptureMode "session" "commit" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CommitRequest
    Core.:> Core.Post '[Core.JSON] CommitResponse

-- | Commits a transaction. The request includes the mutations to be applied to rows in the database. @Commit@ might return an @ABORTED@ error. This can occur at any time; commonly, the cause is conflicts with concurrent transactions. However, it can also happen for a variety of other reasons. If @Commit@ returns @ABORTED@, the caller should re-attempt the transaction from the beginning, re-using the same session. On very rare occasions, @Commit@ might return @UNKNOWN@. This can happen, for example, if the client job experiences a 1+ hour networking failure. At that point, Cloud Spanner has lost track of the transaction outcome and we recommend that you perform another read from the database to see the state of things as they are now.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsCommit' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsCommit = SpannerProjectsInstancesDatabasesSessionsCommit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CommitRequest,
    -- | Required. The session in which the transaction to be committed is running.
    session :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsCommit' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsCommit ::
  -- |  Multipart request metadata. See 'payload'.
  CommitRequest ->
  -- |  Required. The session in which the transaction to be committed is running. See 'session'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsCommit
newSpannerProjectsInstancesDatabasesSessionsCommit payload session =
  SpannerProjectsInstancesDatabasesSessionsCommit
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
    SpannerProjectsInstancesDatabasesSessionsCommit
  where
  type
    Rs SpannerProjectsInstancesDatabasesSessionsCommit =
      CommitResponse
  type
    Scopes SpannerProjectsInstancesDatabasesSessionsCommit =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient SpannerProjectsInstancesDatabasesSessionsCommit {..} =
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
              Core.Proxy SpannerProjectsInstancesDatabasesSessionsCommitResource
          )
          Core.mempty

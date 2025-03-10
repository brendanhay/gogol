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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Adapter
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new session to be used for requests made by the adapter. A session identifies a specific incarnation of a database resource and is meant to be reused across many @AdaptMessage@ calls.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.adapter@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Adapter
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsAdapterResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsAdapter (..),
    newSpannerProjectsInstancesDatabasesSessionsAdapter,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.adapter@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsAdapter' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsAdapterResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sessions:adapter"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdapterSession
    Core.:> Core.Post '[Core.JSON] AdapterSession

-- | Creates a new session to be used for requests made by the adapter. A session identifies a specific incarnation of a database resource and is meant to be reused across many @AdaptMessage@ calls.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsAdapter' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsAdapter = SpannerProjectsInstancesDatabasesSessionsAdapter
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database in which the new session is created.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdapterSession,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsAdapter' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsAdapter ::
  -- |  Required. The database in which the new session is created. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdapterSession ->
  SpannerProjectsInstancesDatabasesSessionsAdapter
newSpannerProjectsInstancesDatabasesSessionsAdapter parent payload =
  SpannerProjectsInstancesDatabasesSessionsAdapter
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsAdapter
  where
  type
    Rs SpannerProjectsInstancesDatabasesSessionsAdapter =
      AdapterSession
  type
    Scopes SpannerProjectsInstancesDatabasesSessionsAdapter =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient SpannerProjectsInstancesDatabasesSessionsAdapter {..} =
    go
      parent
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
                SpannerProjectsInstancesDatabasesSessionsAdapterResource
          )
          Core.mempty

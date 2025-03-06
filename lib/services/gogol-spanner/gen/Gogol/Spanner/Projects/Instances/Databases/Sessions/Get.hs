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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.Sessions.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a session. Returns @NOT_FOUND@ if the session does not exist. This is mainly useful for determining whether a session is still alive.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.get@.
module Gogol.Spanner.Projects.Instances.Databases.Sessions.Get
  ( -- * Resource
    SpannerProjectsInstancesDatabasesSessionsGetResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesSessionsGet (..),
    newSpannerProjectsInstancesDatabasesSessionsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.get@ method which the
-- 'SpannerProjectsInstancesDatabasesSessionsGet' request conforms to.
type SpannerProjectsInstancesDatabasesSessionsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Session

-- | Gets a session. Returns @NOT_FOUND@ if the session does not exist. This is mainly useful for determining whether a session is still alive.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesSessionsGet' smart constructor.
data SpannerProjectsInstancesDatabasesSessionsGet = SpannerProjectsInstancesDatabasesSessionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the session to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesSessionsGet' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesSessionsGet ::
  -- |  Required. The name of the session to retrieve. See 'name'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesSessionsGet
newSpannerProjectsInstancesDatabasesSessionsGet name =
  SpannerProjectsInstancesDatabasesSessionsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesSessionsGet
  where
  type Rs SpannerProjectsInstancesDatabasesSessionsGet = Session
  type
    Scopes SpannerProjectsInstancesDatabasesSessionsGet =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient SpannerProjectsInstancesDatabasesSessionsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesDatabasesSessionsGetResource
          )
          Core.mempty

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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.GetDdl
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the schema of a Cloud Spanner database as a list of formatted DDL statements. This method does not show pending schema updates, those may be queried using the Operations API.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.getDdl@.
module Gogol.Spanner.Projects.Instances.Databases.GetDdl
  ( -- * Resource
    SpannerProjectsInstancesDatabasesGetDdlResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesGetDdl (..),
    newSpannerProjectsInstancesDatabasesGetDdl,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.getDdl@ method which the
-- 'SpannerProjectsInstancesDatabasesGetDdl' request conforms to.
type SpannerProjectsInstancesDatabasesGetDdlResource =
  "v1"
    Core.:> Core.Capture "database" Core.Text
    Core.:> "ddl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetDatabaseDdlResponse

-- | Returns the schema of a Cloud Spanner database as a list of formatted DDL statements. This method does not show pending schema updates, those may be queried using the Operations API.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesGetDdl' smart constructor.
data SpannerProjectsInstancesDatabasesGetDdl = SpannerProjectsInstancesDatabasesGetDdl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database whose schema we wish to get. Values are of the form @projects\/\/instances\/\/databases\/@
    database :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesGetDdl' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesGetDdl ::
  -- |  Required. The database whose schema we wish to get. Values are of the form @projects\/\/instances\/\/databases\/@ See 'database'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesGetDdl
newSpannerProjectsInstancesDatabasesGetDdl database =
  SpannerProjectsInstancesDatabasesGetDdl
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SpannerProjectsInstancesDatabasesGetDdl where
  type
    Rs SpannerProjectsInstancesDatabasesGetDdl =
      GetDatabaseDdlResponse
  type
    Scopes SpannerProjectsInstancesDatabasesGetDdl =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesDatabasesGetDdl {..} =
    go
      database
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
              Core.Proxy SpannerProjectsInstancesDatabasesGetDdlResource
          )
          Core.mempty

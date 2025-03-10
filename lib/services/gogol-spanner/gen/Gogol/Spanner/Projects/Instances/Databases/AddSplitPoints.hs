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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.AddSplitPoints
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds split points to specified tables, indexes of a database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.addSplitPoints@.
module Gogol.Spanner.Projects.Instances.Databases.AddSplitPoints
  ( -- * Resource
    SpannerProjectsInstancesDatabasesAddSplitPointsResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesAddSplitPoints (..),
    newSpannerProjectsInstancesDatabasesAddSplitPoints,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.addSplitPoints@ method which the
-- 'SpannerProjectsInstancesDatabasesAddSplitPoints' request conforms to.
type SpannerProjectsInstancesDatabasesAddSplitPointsResource =
  "v1"
    Core.:> Core.CaptureMode "database" "addSplitPoints" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddSplitPointsRequest
    Core.:> Core.Post '[Core.JSON] AddSplitPointsResponse

-- | Adds split points to specified tables, indexes of a database.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesAddSplitPoints' smart constructor.
data SpannerProjectsInstancesDatabasesAddSplitPoints = SpannerProjectsInstancesDatabasesAddSplitPoints
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The database on whose tables\/indexes split points are to be added. Values are of the form @projects\/\/instances\/\/databases\/@.
    database :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddSplitPointsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesAddSplitPoints' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesAddSplitPoints ::
  -- |  Required. The database on whose tables\/indexes split points are to be added. Values are of the form @projects\/\/instances\/\/databases\/@. See 'database'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddSplitPointsRequest ->
  SpannerProjectsInstancesDatabasesAddSplitPoints
newSpannerProjectsInstancesDatabasesAddSplitPoints database payload =
  SpannerProjectsInstancesDatabasesAddSplitPoints
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      database = database,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesAddSplitPoints
  where
  type
    Rs SpannerProjectsInstancesDatabasesAddSplitPoints =
      AddSplitPointsResponse
  type
    Scopes SpannerProjectsInstancesDatabasesAddSplitPoints =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesDatabasesAddSplitPoints {..} =
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
              Core.Proxy SpannerProjectsInstancesDatabasesAddSplitPointsResource
          )
          Core.mempty

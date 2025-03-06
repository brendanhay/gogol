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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.GetScans
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request a specific scan with Database-specific data for Cloud Key Visualizer.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.getScans@.
module Gogol.Spanner.Projects.Instances.Databases.GetScans
  ( -- * Resource
    SpannerProjectsInstancesDatabasesGetScansResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesGetScans (..),
    newSpannerProjectsInstancesDatabasesGetScans,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.getScans@ method which the
-- 'SpannerProjectsInstancesDatabasesGetScans' request conforms to.
type SpannerProjectsInstancesDatabasesGetScansResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "scans"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime
    Core.:> Core.QueryParam "startTime" Core.DateTime
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsInstancesDatabasesGetScansView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Scan

-- | Request a specific scan with Database-specific data for Cloud Key Visualizer.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesGetScans' smart constructor.
data SpannerProjectsInstancesDatabasesGetScans = SpannerProjectsInstancesDatabasesGetScans
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The upper bound for the time range to retrieve Scan data for.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Required. The unique name of the scan containing the requested information, specific to the Database service implementing this interface.
    name :: Core.Text,
    -- | These fields restrict the Database-specific information returned in the @Scan.data@ field. If a @View@ is provided that does not include the @Scan.data@ field, these are ignored. This range of time must be entirely contained within the defined time range of the targeted scan. The lower bound for the time range to retrieve Scan data for.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies which parts of the Scan should be returned in the response. Note, if left unspecified, the FULL view is assumed.
    view :: (Core.Maybe ProjectsInstancesDatabasesGetScansView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesGetScans' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesGetScans ::
  -- |  Required. The unique name of the scan containing the requested information, specific to the Database service implementing this interface. See 'name'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesGetScans
newSpannerProjectsInstancesDatabasesGetScans name =
  SpannerProjectsInstancesDatabasesGetScans
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      endTime = Core.Nothing,
      name = name,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesGetScans
  where
  type Rs SpannerProjectsInstancesDatabasesGetScans = Scan
  type
    Scopes SpannerProjectsInstancesDatabasesGetScans =
      '[CloudPlatform'FullControl, Spanner'Data]
  requestClient SpannerProjectsInstancesDatabasesGetScans {..} =
    go
      name
      xgafv
      accessToken
      callback
      endTime
      startTime
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      spannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpannerProjectsInstancesDatabasesGetScansResource
          )
          Core.mempty

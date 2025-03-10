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
-- Module      : Gogol.Run.Projects.Locations.ExportMetadata
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export generated customer metadata for a given resource.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.exportMetadata@.
module Gogol.Run.Projects.Locations.ExportMetadata
  ( -- * Resource
    RunProjectsLocationsExportMetadataResource,

    -- ** Constructing a Request
    RunProjectsLocationsExportMetadata (..),
    newRunProjectsLocationsExportMetadata,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.exportMetadata@ method which the
-- 'RunProjectsLocationsExportMetadata' request conforms to.
type RunProjectsLocationsExportMetadataResource =
  "v2"
    Core.:> Core.CaptureMode "name" "exportMetadata" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRunV2Metadata

-- | Export generated customer metadata for a given resource.
--
-- /See:/ 'newRunProjectsLocationsExportMetadata' smart constructor.
data RunProjectsLocationsExportMetadata = RunProjectsLocationsExportMetadata
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the resource of which metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}@ for Service @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsExportMetadata' with the minimum fields required to make a request.
newRunProjectsLocationsExportMetadata ::
  -- |  Required. The name of the resource of which metadata should be exported. Format: @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}@ for Service @projects\/{project_id_or_number}\/locations\/{location}\/services\/{service}\/revisions\/{revision}@ for Revision @projects\/{project_id_or_number}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}@ for Execution See 'name'.
  Core.Text ->
  RunProjectsLocationsExportMetadata
newRunProjectsLocationsExportMetadata name =
  RunProjectsLocationsExportMetadata
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsExportMetadata where
  type
    Rs RunProjectsLocationsExportMetadata =
      GoogleCloudRunV2Metadata
  type
    Scopes RunProjectsLocationsExportMetadata =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsExportMetadata {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsExportMetadataResource
          )
          Core.mempty

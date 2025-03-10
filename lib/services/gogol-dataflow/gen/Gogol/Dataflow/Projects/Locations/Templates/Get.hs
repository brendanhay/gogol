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
-- Module      : Gogol.Dataflow.Projects.Locations.Templates.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the template associated with a template. To get the template, we recommend using @projects.locations.templates.get@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.templates.get@ is not recommended, because only templates that are running in @us-central1@ are retrieved.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.templates.get@.
module Gogol.Dataflow.Projects.Locations.Templates.Get
  ( -- * Resource
    DataflowProjectsLocationsTemplatesGetResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsTemplatesGet (..),
    newDataflowProjectsLocationsTemplatesGet,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.templates.get@ method which the
-- 'DataflowProjectsLocationsTemplatesGet' request conforms to.
type DataflowProjectsLocationsTemplatesGetResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "templates:get"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "gcsPath" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" ProjectsLocationsTemplatesGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetTemplateResponse

-- | Get the template associated with a template. To get the template, we recommend using @projects.locations.templates.get@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.templates.get@ is not recommended, because only templates that are running in @us-central1@ are retrieved.
--
-- /See:/ 'newDataflowProjectsLocationsTemplatesGet' smart constructor.
data DataflowProjectsLocationsTemplatesGet = DataflowProjectsLocationsTemplatesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginning with \'gs:\/\/\'.
    gcsPath :: (Core.Maybe Core.Text),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request.
    location :: Core.Text,
    -- | Required. The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The view to retrieve. Defaults to METADATA_ONLY.
    view :: (Core.Maybe ProjectsLocationsTemplatesGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsTemplatesGet' with the minimum fields required to make a request.
newDataflowProjectsLocationsTemplatesGet ::
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request. See 'location'.
  Core.Text ->
  -- |  Required. The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsTemplatesGet
newDataflowProjectsLocationsTemplatesGet location projectId =
  DataflowProjectsLocationsTemplatesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      gcsPath = Core.Nothing,
      location = location,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsLocationsTemplatesGet where
  type Rs DataflowProjectsLocationsTemplatesGet = GetTemplateResponse
  type
    Scopes DataflowProjectsLocationsTemplatesGet =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsTemplatesGet {..} =
    go
      projectId
      location
      xgafv
      accessToken
      callback
      gcsPath
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsTemplatesGetResource
          )
          Core.mempty

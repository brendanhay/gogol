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
-- Module      : Gogol.Dataflow.Projects.Templates.Launch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches a template. To launch a template, we recommend using @projects.locations.templates.launch@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.templates.launch@ is not recommended, because jobs launched from the template will always start in @us-central1@.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.templates.launch@.
module Gogol.Dataflow.Projects.Templates.Launch
  ( -- * Resource
    DataflowProjectsTemplatesLaunchResource,

    -- ** Constructing a Request
    DataflowProjectsTemplatesLaunch (..),
    newDataflowProjectsTemplatesLaunch,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.templates.launch@ method which the
-- 'DataflowProjectsTemplatesLaunch' request conforms to.
type DataflowProjectsTemplatesLaunchResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "templates:launch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "dynamicTemplate.gcsPath" Core.Text
    Core.:> Core.QueryParam "dynamicTemplate.stagingLocation" Core.Text
    Core.:> Core.QueryParam "gcsPath" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LaunchTemplateParameters
    Core.:> Core.Post '[Core.JSON] LaunchTemplateResponse

-- | Launches a template. To launch a template, we recommend using @projects.locations.templates.launch@ with a [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints). Using @projects.templates.launch@ is not recommended, because jobs launched from the template will always start in @us-central1@.
--
-- /See:/ 'newDataflowProjectsTemplatesLaunch' smart constructor.
data DataflowProjectsTemplatesLaunch = DataflowProjectsTemplatesLaunch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Path to the dynamic template specification file on Cloud Storage. The file must be a JSON serialized @DynamicTemplateFileSpec@ object.
    dynamicTemplateGcsPath :: (Core.Maybe Core.Text),
    -- | Cloud Storage path for staging dependencies. Must be a valid Cloud Storage URL, beginning with @gs:\/\/@.
    dynamicTemplateStagingLocation :: (Core.Maybe Core.Text),
    -- | A Cloud Storage path to the template to use to create the job. Must be valid Cloud Storage URL, beginning with @gs:\/\/@.
    gcsPath :: (Core.Maybe Core.Text),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request.
    location :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LaunchTemplateParameters,
    -- | Required. The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | If true, the request is validated but not actually executed. Defaults to false.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsTemplatesLaunch' with the minimum fields required to make a request.
newDataflowProjectsTemplatesLaunch ::
  -- |  Multipart request metadata. See 'payload'.
  LaunchTemplateParameters ->
  -- |  Required. The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsTemplatesLaunch
newDataflowProjectsTemplatesLaunch payload projectId =
  DataflowProjectsTemplatesLaunch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dynamicTemplateGcsPath = Core.Nothing,
      dynamicTemplateStagingLocation = Core.Nothing,
      gcsPath = Core.Nothing,
      location = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest DataflowProjectsTemplatesLaunch where
  type Rs DataflowProjectsTemplatesLaunch = LaunchTemplateResponse
  type
    Scopes DataflowProjectsTemplatesLaunch =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsTemplatesLaunch {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      dynamicTemplateGcsPath
      dynamicTemplateStagingLocation
      gcsPath
      location
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      dataflowService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DataflowProjectsTemplatesLaunchResource)
          Core.mempty

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
-- Module      : Gogol.Dataflow.Projects.Locations.FlexTemplates.Launch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launch a job with a FlexTemplate.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.flexTemplates.launch@.
module Gogol.Dataflow.Projects.Locations.FlexTemplates.Launch
  ( -- * Resource
    DataflowProjectsLocationsFlexTemplatesLaunchResource,

    -- ** Constructing a Request
    DataflowProjectsLocationsFlexTemplatesLaunch (..),
    newDataflowProjectsLocationsFlexTemplatesLaunch,
  )
where

import Gogol.Dataflow.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataflow.projects.locations.flexTemplates.launch@ method which the
-- 'DataflowProjectsLocationsFlexTemplatesLaunch' request conforms to.
type DataflowProjectsLocationsFlexTemplatesLaunchResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "flexTemplates:launch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LaunchFlexTemplateRequest
    Core.:> Core.Post '[Core.JSON] LaunchFlexTemplateResponse

-- | Launch a job with a FlexTemplate.
--
-- /See:/ 'newDataflowProjectsLocationsFlexTemplatesLaunch' smart constructor.
data DataflowProjectsLocationsFlexTemplatesLaunch = DataflowProjectsLocationsFlexTemplatesLaunch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request. E.g., us-central1, us-west1.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: LaunchFlexTemplateRequest,
    -- | Required. The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsFlexTemplatesLaunch' with the minimum fields required to make a request.
newDataflowProjectsLocationsFlexTemplatesLaunch ::
  -- |  Required. The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request. E.g., us-central1, us-west1. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LaunchFlexTemplateRequest ->
  -- |  Required. The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsFlexTemplatesLaunch
newDataflowProjectsLocationsFlexTemplatesLaunch
  location
  payload
  projectId =
    DataflowProjectsLocationsFlexTemplatesLaunch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        location = location,
        payload = payload,
        projectId = projectId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataflowProjectsLocationsFlexTemplatesLaunch
  where
  type
    Rs DataflowProjectsLocationsFlexTemplatesLaunch =
      LaunchFlexTemplateResponse
  type
    Scopes DataflowProjectsLocationsFlexTemplatesLaunch =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient DataflowProjectsLocationsFlexTemplatesLaunch {..} =
    go
      projectId
      location
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsLocationsFlexTemplatesLaunchResource
          )
          Core.mempty

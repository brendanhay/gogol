{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Dataflow.Projects.Locations.Templates.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud Dataflow job from a template.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.templates.create@.
module Network.Google.Dataflow.Projects.Locations.Templates.Create
  ( -- * Resource
    DataflowProjectsLocationsTemplatesCreateResource,

    -- ** Constructing a Request
    newDataflowProjectsLocationsTemplatesCreate,
    DataflowProjectsLocationsTemplatesCreate,
  )
where

import Network.Google.Dataflow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataflow.projects.locations.templates.create@ method which the
-- 'DataflowProjectsLocationsTemplatesCreate' request conforms to.
type DataflowProjectsLocationsTemplatesCreateResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "locations"
    Core.:> Core.Capture "location" Core.Text
    Core.:> "templates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              CreateJobFromTemplateRequest
    Core.:> Core.Post '[Core.JSON] Job

-- | Creates a Cloud Dataflow job from a template.
--
-- /See:/ 'newDataflowProjectsLocationsTemplatesCreate' smart constructor.
data DataflowProjectsLocationsTemplatesCreate = DataflowProjectsLocationsTemplatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request.
    location :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateJobFromTemplateRequest,
    -- | Required. The ID of the Cloud Platform project that the job belongs to.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsTemplatesCreate' with the minimum fields required to make a request.
newDataflowProjectsLocationsTemplatesCreate ::
  -- |  The [regional endpoint] (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints) to which to direct the request. See 'location'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateJobFromTemplateRequest ->
  -- |  Required. The ID of the Cloud Platform project that the job belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsLocationsTemplatesCreate
newDataflowProjectsLocationsTemplatesCreate location payload projectId =
  DataflowProjectsLocationsTemplatesCreate
    { xgafv = Core.Nothing,
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
    DataflowProjectsLocationsTemplatesCreate
  where
  type
    Rs DataflowProjectsLocationsTemplatesCreate =
      Job
  type
    Scopes DataflowProjectsLocationsTemplatesCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient
    DataflowProjectsLocationsTemplatesCreate {..} =
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
                Core.Proxy
                  DataflowProjectsLocationsTemplatesCreateResource
            )
            Core.mempty

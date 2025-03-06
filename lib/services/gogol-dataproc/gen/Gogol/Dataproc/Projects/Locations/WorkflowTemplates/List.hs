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
-- Module      : Gogol.Dataproc.Projects.Locations.WorkflowTemplates.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists workflows that match the specified filter in the request.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.list@.
module Gogol.Dataproc.Projects.Locations.WorkflowTemplates.List
  ( -- * Resource
    DataprocProjectsLocationsWorkflowTemplatesListResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsWorkflowTemplatesList (..),
    newDataprocProjectsLocationsWorkflowTemplatesList,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.list@ method which the
-- 'DataprocProjectsLocationsWorkflowTemplatesList' request conforms to.
type DataprocProjectsLocationsWorkflowTemplatesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workflowTemplates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListWorkflowTemplatesResponse

-- | Lists workflows that match the specified filter in the request.
--
-- /See:/ 'newDataprocProjectsLocationsWorkflowTemplatesList' smart constructor.
data DataprocProjectsLocationsWorkflowTemplatesList = DataprocProjectsLocationsWorkflowTemplatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return in each response.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The page token, returned by a previous call, to request the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates,list, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.list, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsWorkflowTemplatesList' with the minimum fields required to make a request.
newDataprocProjectsLocationsWorkflowTemplatesList ::
  -- |  Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates,list, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.list, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location} See 'parent'.
  Core.Text ->
  DataprocProjectsLocationsWorkflowTemplatesList
newDataprocProjectsLocationsWorkflowTemplatesList parent =
  DataprocProjectsLocationsWorkflowTemplatesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsWorkflowTemplatesList
  where
  type
    Rs DataprocProjectsLocationsWorkflowTemplatesList =
      ListWorkflowTemplatesResponse
  type
    Scopes DataprocProjectsLocationsWorkflowTemplatesList =
      '[CloudPlatform'FullControl]
  requestClient DataprocProjectsLocationsWorkflowTemplatesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataprocService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataprocProjectsLocationsWorkflowTemplatesListResource
          )
          Core.mempty

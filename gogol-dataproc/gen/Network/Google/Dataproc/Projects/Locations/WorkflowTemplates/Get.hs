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
-- Module      : Network.Google.Dataproc.Projects.Locations.WorkflowTemplates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.get@.
module Network.Google.Dataproc.Projects.Locations.WorkflowTemplates.Get
  ( -- * Resource
    DataprocProjectsLocationsWorkflowTemplatesGetResource,

    -- ** Constructing a Request
    newDataprocProjectsLocationsWorkflowTemplatesGet,
    DataprocProjectsLocationsWorkflowTemplatesGet,
  )
where

import Network.Google.Dataproc.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.get@ method which the
-- 'DataprocProjectsLocationsWorkflowTemplatesGet' request conforms to.
type DataprocProjectsLocationsWorkflowTemplatesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "version" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WorkflowTemplate

-- | Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
--
-- /See:/ 'newDataprocProjectsLocationsWorkflowTemplatesGet' smart constructor.
data DataprocProjectsLocationsWorkflowTemplatesGet = DataprocProjectsLocationsWorkflowTemplatesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.get, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates.get, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Optional. The version of workflow template to retrieve. Only previously instantiated versions can be retrieved.If unspecified, retrieves the current version.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsWorkflowTemplatesGet' with the minimum fields required to make a request.
newDataprocProjectsLocationsWorkflowTemplatesGet ::
  -- |  Required. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.get, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates.get, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id} See 'name'.
  Core.Text ->
  DataprocProjectsLocationsWorkflowTemplatesGet
newDataprocProjectsLocationsWorkflowTemplatesGet name =
  DataprocProjectsLocationsWorkflowTemplatesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsWorkflowTemplatesGet
  where
  type
    Rs DataprocProjectsLocationsWorkflowTemplatesGet =
      WorkflowTemplate
  type
    Scopes
      DataprocProjectsLocationsWorkflowTemplatesGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsLocationsWorkflowTemplatesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        version
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsWorkflowTemplatesGetResource
            )
            Core.mempty

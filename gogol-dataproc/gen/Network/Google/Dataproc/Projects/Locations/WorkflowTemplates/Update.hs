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
-- Module      : Network.Google.Dataproc.Projects.Locations.WorkflowTemplates.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) workflow template. The updated template must contain version that matches the current server version.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.update@.
module Network.Google.Dataproc.Projects.Locations.WorkflowTemplates.Update
  ( -- * Resource
    DataprocProjectsLocationsWorkflowTemplatesUpdateResource,

    -- ** Constructing a Request
    newDataprocProjectsLocationsWorkflowTemplatesUpdate,
    DataprocProjectsLocationsWorkflowTemplatesUpdate,
  )
where

import Network.Google.Dataproc.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.update@ method which the
-- 'DataprocProjectsLocationsWorkflowTemplatesUpdate' request conforms to.
type DataprocProjectsLocationsWorkflowTemplatesUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WorkflowTemplate
    Core.:> Core.Put '[Core.JSON] WorkflowTemplate

-- | Updates (replaces) workflow template. The updated template must contain version that matches the current server version.
--
-- /See:/ 'newDataprocProjectsLocationsWorkflowTemplatesUpdate' smart constructor.
data DataprocProjectsLocationsWorkflowTemplatesUpdate = DataprocProjectsLocationsWorkflowTemplatesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkflowTemplate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsWorkflowTemplatesUpdate' with the minimum fields required to make a request.
newDataprocProjectsLocationsWorkflowTemplatesUpdate ::
  -- |  Output only. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkflowTemplate ->
  DataprocProjectsLocationsWorkflowTemplatesUpdate
newDataprocProjectsLocationsWorkflowTemplatesUpdate name payload =
  DataprocProjectsLocationsWorkflowTemplatesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsWorkflowTemplatesUpdate
  where
  type
    Rs
      DataprocProjectsLocationsWorkflowTemplatesUpdate =
      WorkflowTemplate
  type
    Scopes
      DataprocProjectsLocationsWorkflowTemplatesUpdate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsLocationsWorkflowTemplatesUpdate {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsWorkflowTemplatesUpdateResource
            )
            Core.mempty

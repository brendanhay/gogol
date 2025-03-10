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
-- Module      : Gogol.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Instantiates a template and begins execution.This method is equivalent to executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.instantiateInline@.
module Gogol.Dataproc.Projects.Regions.WorkflowTemplates.InstantiateInline
  ( -- * Resource
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInlineResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInline (..),
    newDataprocProjectsRegionsWorkflowTemplatesInstantiateInline,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.instantiateInline@ method which the
-- 'DataprocProjectsRegionsWorkflowTemplatesInstantiateInline' request conforms to.
type DataprocProjectsRegionsWorkflowTemplatesInstantiateInlineResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workflowTemplates:instantiateInline"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WorkflowTemplate
    Core.:> Core.Post '[Core.JSON] Operation

-- | Instantiates a template and begins execution.This method is equivalent to executing the sequence CreateWorkflowTemplate, InstantiateWorkflowTemplate, DeleteWorkflowTemplate.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.
--
-- /See:/ 'newDataprocProjectsRegionsWorkflowTemplatesInstantiateInline' smart constructor.
data DataprocProjectsRegionsWorkflowTemplatesInstantiateInline = DataprocProjectsRegionsWorkflowTemplatesInstantiateInline
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates,instantiateinline, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.instantiateinline, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkflowTemplate,
    -- | Optional. A tag that prevents multiple concurrent workflow instances with the same tag from running. This mitigates risk of concurrent instances started due to retries.It is recommended to always set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The tag must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsWorkflowTemplatesInstantiateInline' with the minimum fields required to make a request.
newDataprocProjectsRegionsWorkflowTemplatesInstantiateInline ::
  -- |  Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates,instantiateinline, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.instantiateinline, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkflowTemplate ->
  DataprocProjectsRegionsWorkflowTemplatesInstantiateInline
newDataprocProjectsRegionsWorkflowTemplatesInstantiateInline
  parent
  payload =
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInline
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        requestId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInline
  where
  type
    Rs DataprocProjectsRegionsWorkflowTemplatesInstantiateInline =
      Operation
  type
    Scopes
      DataprocProjectsRegionsWorkflowTemplatesInstantiateInline =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsWorkflowTemplatesInstantiateInline {..} =
      go
        parent
        xgafv
        accessToken
        callback
        requestId
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
                  DataprocProjectsRegionsWorkflowTemplatesInstantiateInlineResource
            )
            Core.mempty

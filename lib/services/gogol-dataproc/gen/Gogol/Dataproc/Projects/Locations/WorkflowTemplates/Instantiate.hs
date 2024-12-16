{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Instantiates a template and begins execution.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.instantiate@.
module Gogol.Dataproc.Projects.Locations.WorkflowTemplates.Instantiate
    (
    -- * Resource
      DataprocProjectsLocationsWorkflowTemplatesInstantiateResource

    -- ** Constructing a Request
    , DataprocProjectsLocationsWorkflowTemplatesInstantiate (..)
    , newDataprocProjectsLocationsWorkflowTemplatesInstantiate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.instantiate@ method which the
-- 'DataprocProjectsLocationsWorkflowTemplatesInstantiate' request conforms to.
type DataprocProjectsLocationsWorkflowTemplatesInstantiateResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "instantiate" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       InstantiateWorkflowTemplateRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Instantiates a template and begins execution.The returned Operation can be used to track execution of workflow by polling operations.get. The Operation will complete when entire workflow is finished.The running workflow can be aborted via operations.cancel. This will cause any inflight jobs to be cancelled and workflow-owned clusters to be deleted.The Operation.metadata will be WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#workflowmetadata). Also see Using WorkflowMetadata (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/workflows\/debugging#using_workflowmetadata).On successful completion, Operation.response will be Empty.
--
-- /See:/ 'newDataprocProjectsLocationsWorkflowTemplatesInstantiate' smart constructor.
data DataprocProjectsLocationsWorkflowTemplatesInstantiate = DataprocProjectsLocationsWorkflowTemplatesInstantiate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.instantiate, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: InstantiateWorkflowTemplateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsWorkflowTemplatesInstantiate' with the minimum fields required to make a request.
newDataprocProjectsLocationsWorkflowTemplatesInstantiate 
    ::  Core.Text
       -- ^  Required. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.instantiate, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id} See 'name'.
    -> InstantiateWorkflowTemplateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsLocationsWorkflowTemplatesInstantiate
newDataprocProjectsLocationsWorkflowTemplatesInstantiate name payload =
  DataprocProjectsLocationsWorkflowTemplatesInstantiate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsLocationsWorkflowTemplatesInstantiate
         where
        type Rs
               DataprocProjectsLocationsWorkflowTemplatesInstantiate
             = Operation
        type Scopes
               DataprocProjectsLocationsWorkflowTemplatesInstantiate
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsLocationsWorkflowTemplatesInstantiate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsLocationsWorkflowTemplatesInstantiateResource)
                      Core.mempty


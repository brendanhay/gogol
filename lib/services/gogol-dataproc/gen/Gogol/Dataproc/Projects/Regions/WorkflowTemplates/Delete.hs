{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a workflow template. It does not cancel in-progress workflows.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.delete@.
module Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Delete
    (
    -- * Resource
      DataprocProjectsRegionsWorkflowTemplatesDeleteResource

    -- ** Constructing a Request
    , newDataprocProjectsRegionsWorkflowTemplatesDelete
    , DataprocProjectsRegionsWorkflowTemplatesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.delete@ method which the
-- 'DataprocProjectsRegionsWorkflowTemplatesDelete' request conforms to.
type DataprocProjectsRegionsWorkflowTemplatesDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "version" Core.Int32 Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] Empty

-- | Deletes a workflow template. It does not cancel in-progress workflows.
--
-- /See:/ 'newDataprocProjectsRegionsWorkflowTemplatesDelete' smart constructor.
data DataprocProjectsRegionsWorkflowTemplatesDelete = DataprocProjectsRegionsWorkflowTemplatesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.delete, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Optional. The version of workflow template to delete. If specified, will only delete the template if the current server version matches specified version.
    , version :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsWorkflowTemplatesDelete' with the minimum fields required to make a request.
newDataprocProjectsRegionsWorkflowTemplatesDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.delete, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates.instantiate, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id} See 'name'.
    -> DataprocProjectsRegionsWorkflowTemplatesDelete
newDataprocProjectsRegionsWorkflowTemplatesDelete name =
  DataprocProjectsRegionsWorkflowTemplatesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , version = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsWorkflowTemplatesDelete
         where
        type Rs
               DataprocProjectsRegionsWorkflowTemplatesDelete
             = Empty
        type Scopes
               DataprocProjectsRegionsWorkflowTemplatesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DataprocProjectsRegionsWorkflowTemplatesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              version
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsWorkflowTemplatesDeleteResource)
                      Core.mempty


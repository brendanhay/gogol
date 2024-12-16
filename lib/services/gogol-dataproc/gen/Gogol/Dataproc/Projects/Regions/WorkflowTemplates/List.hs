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
-- Module      : Gogol.Dataproc.Projects.Regions.WorkflowTemplates.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists workflows that match the specified filter in the request.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.list@.
module Gogol.Dataproc.Projects.Regions.WorkflowTemplates.List
    (
    -- * Resource
      DataprocProjectsRegionsWorkflowTemplatesListResource

    -- ** Constructing a Request
    , DataprocProjectsRegionsWorkflowTemplatesList (..)
    , newDataprocProjectsRegionsWorkflowTemplatesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.list@ method which the
-- 'DataprocProjectsRegionsWorkflowTemplatesList' request conforms to.
type DataprocProjectsRegionsWorkflowTemplatesListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "workflowTemplates" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListWorkflowTemplatesResponse

-- | Lists workflows that match the specified filter in the request.
--
-- /See:/ 'newDataprocProjectsRegionsWorkflowTemplatesList' smart constructor.
data DataprocProjectsRegionsWorkflowTemplatesList = DataprocProjectsRegionsWorkflowTemplatesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to return in each response.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The page token, returned by a previous call, to request the next page of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates,list, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.list, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location}
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsWorkflowTemplatesList' with the minimum fields required to make a request.
newDataprocProjectsRegionsWorkflowTemplatesList 
    ::  Core.Text
       -- ^  Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates,list, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.list, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location} See 'parent'.
    -> DataprocProjectsRegionsWorkflowTemplatesList
newDataprocProjectsRegionsWorkflowTemplatesList parent =
  DataprocProjectsRegionsWorkflowTemplatesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsWorkflowTemplatesList
         where
        type Rs DataprocProjectsRegionsWorkflowTemplatesList
             = ListWorkflowTemplatesResponse
        type Scopes
               DataprocProjectsRegionsWorkflowTemplatesList
             = '[CloudPlatform'FullControl]
        requestClient
          DataprocProjectsRegionsWorkflowTemplatesList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsWorkflowTemplatesListResource)
                      Core.mempty


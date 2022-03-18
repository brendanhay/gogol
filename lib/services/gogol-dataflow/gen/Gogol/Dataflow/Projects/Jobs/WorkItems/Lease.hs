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
-- Module      : Gogol.Dataflow.Projects.Jobs.WorkItems.Lease
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Leases a dataflow WorkItem to run.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.workItems.lease@.
module Gogol.Dataflow.Projects.Jobs.WorkItems.Lease
    (
    -- * Resource
      DataflowProjectsJobsWorkItemsLeaseResource

    -- ** Constructing a Request
    , newDataflowProjectsJobsWorkItemsLease
    , DataflowProjectsJobsWorkItemsLease
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.jobs.workItems.lease@ method which the
-- 'DataflowProjectsJobsWorkItemsLease' request conforms to.
type DataflowProjectsJobsWorkItemsLeaseResource =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "jobs" Core.:>
             Core.Capture "jobId" Core.Text Core.:>
               "workItems:lease" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] LeaseWorkItemRequest
                               Core.:>
                               Core.Post '[Core.JSON] LeaseWorkItemResponse

-- | Leases a dataflow WorkItem to run.
--
-- /See:/ 'newDataflowProjectsJobsWorkItemsLease' smart constructor.
data DataflowProjectsJobsWorkItemsLease = DataflowProjectsJobsWorkItemsLease
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Identifies the workflow job this worker belongs to.
    , jobId :: Core.Text
      -- | Multipart request metadata.
    , payload :: LeaseWorkItemRequest
      -- | Identifies the project this worker belongs to.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsJobsWorkItemsLease' with the minimum fields required to make a request.
newDataflowProjectsJobsWorkItemsLease 
    ::  Core.Text
       -- ^  Identifies the workflow job this worker belongs to. See 'jobId'.
    -> LeaseWorkItemRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Identifies the project this worker belongs to. See 'projectId'.
    -> DataflowProjectsJobsWorkItemsLease
newDataflowProjectsJobsWorkItemsLease jobId payload projectId =
  DataflowProjectsJobsWorkItemsLease
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataflowProjectsJobsWorkItemsLease
         where
        type Rs DataflowProjectsJobsWorkItemsLease =
             LeaseWorkItemResponse
        type Scopes DataflowProjectsJobsWorkItemsLease =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient DataflowProjectsJobsWorkItemsLease{..}
          = go projectId jobId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataflowProjectsJobsWorkItemsLeaseResource)
                      Core.mempty


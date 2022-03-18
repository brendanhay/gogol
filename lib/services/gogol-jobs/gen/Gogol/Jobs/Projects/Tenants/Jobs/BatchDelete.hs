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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.BatchDelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins executing a batch delete jobs operation.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.batchDelete@.
module Gogol.Jobs.Projects.Tenants.Jobs.BatchDelete
    (
    -- * Resource
      JobsProjectsTenantsJobsBatchDeleteResource

    -- ** Constructing a Request
    , newJobsProjectsTenantsJobsBatchDelete
    , JobsProjectsTenantsJobsBatchDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Jobs.Types

-- | A resource alias for @jobs.projects.tenants.jobs.batchDelete@ method which the
-- 'JobsProjectsTenantsJobsBatchDelete' request conforms to.
type JobsProjectsTenantsJobsBatchDeleteResource =
     "v4" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "jobs:batchDelete" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BatchDeleteJobsRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Begins executing a batch delete jobs operation.
--
-- /See:/ 'newJobsProjectsTenantsJobsBatchDelete' smart constructor.
data JobsProjectsTenantsJobsBatchDelete = JobsProjectsTenantsJobsBatchDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\". The parent of all of the jobs specified in @names@ must match this field.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchDeleteJobsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsBatchDelete' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsBatchDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\". The parent of all of the jobs specified in @names@ must match this field. See 'parent'.
    -> BatchDeleteJobsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> JobsProjectsTenantsJobsBatchDelete
newJobsProjectsTenantsJobsBatchDelete parent payload =
  JobsProjectsTenantsJobsBatchDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           JobsProjectsTenantsJobsBatchDelete
         where
        type Rs JobsProjectsTenantsJobsBatchDelete =
             Operation
        type Scopes JobsProjectsTenantsJobsBatchDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient JobsProjectsTenantsJobsBatchDelete{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              jobsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           JobsProjectsTenantsJobsBatchDeleteResource)
                      Core.mempty


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
-- Module      : Gogol.Jobs.Projects.Tenants.Jobs.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins executing a batch update jobs operation.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.batchUpdate@.
module Gogol.Jobs.Projects.Tenants.Jobs.BatchUpdate
    (
    -- * Resource
      JobsProjectsTenantsJobsBatchUpdateResource

    -- ** Constructing a Request
    , JobsProjectsTenantsJobsBatchUpdate (..)
    , newJobsProjectsTenantsJobsBatchUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Jobs.Types

-- | A resource alias for @jobs.projects.tenants.jobs.batchUpdate@ method which the
-- 'JobsProjectsTenantsJobsBatchUpdate' request conforms to.
type JobsProjectsTenantsJobsBatchUpdateResource =
     "v4" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "jobs:batchUpdate" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] BatchUpdateJobsRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Begins executing a batch update jobs operation.
--
-- /See:/ 'newJobsProjectsTenantsJobsBatchUpdate' smart constructor.
data JobsProjectsTenantsJobsBatchUpdate = JobsProjectsTenantsJobsBatchUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\".
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchUpdateJobsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsJobsBatchUpdate' with the minimum fields required to make a request.
newJobsProjectsTenantsJobsBatchUpdate 
    ::  Core.Text
       -- ^  Required. The resource name of the tenant under which the job is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\". For example, \"projects\/foo\/tenants\/bar\". See 'parent'.
    -> BatchUpdateJobsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> JobsProjectsTenantsJobsBatchUpdate
newJobsProjectsTenantsJobsBatchUpdate parent payload =
  JobsProjectsTenantsJobsBatchUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           JobsProjectsTenantsJobsBatchUpdate
         where
        type Rs JobsProjectsTenantsJobsBatchUpdate =
             Operation
        type Scopes JobsProjectsTenantsJobsBatchUpdate =
             '[CloudPlatform'FullControl, Jobs'FullControl]
        requestClient JobsProjectsTenantsJobsBatchUpdate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              jobsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           JobsProjectsTenantsJobsBatchUpdateResource)
                      Core.mempty


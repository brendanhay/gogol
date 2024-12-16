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
-- Module      : Gogol.Run.Projects.Locations.Jobs.Executions.Tasks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Tasks from an Execution of a Job.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.executions.tasks.list@.
module Gogol.Run.Projects.Locations.Jobs.Executions.Tasks.List
    (
    -- * Resource
      RunProjectsLocationsJobsExecutionsTasksListResource

    -- ** Constructing a Request
    , RunProjectsLocationsJobsExecutionsTasksList (..)
    , newRunProjectsLocationsJobsExecutionsTasksList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.executions.tasks.list@ method which the
-- 'RunProjectsLocationsJobsExecutionsTasksList' request conforms to.
type RunProjectsLocationsJobsExecutionsTasksListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "tasks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "showDeleted" Core.Bool Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleCloudRunV2ListTasksResponse

-- | Lists Tasks from an Execution of a Job.
--
-- /See:/ 'newRunProjectsLocationsJobsExecutionsTasksList' smart constructor.
data RunProjectsLocationsJobsExecutionsTasksList = RunProjectsLocationsJobsExecutionsTasksList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum number of Tasks to return in this call.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token received from a previous call to ListTasks. All other parameters must match.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The Execution from which the Tasks should be listed. To list all Tasks across Executions of a Job, use \"-\" instead of Execution name. To list all Tasks across Jobs, use \"-\" instead of Job name. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}\/executions\/{execution}
    , parent :: Core.Text
      -- | If true, returns deleted (but unexpired) resources along with active ones.
    , showDeleted :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsExecutionsTasksList' with the minimum fields required to make a request.
newRunProjectsLocationsJobsExecutionsTasksList 
    ::  Core.Text
       -- ^  Required. The Execution from which the Tasks should be listed. To list all Tasks across Executions of a Job, use \"-\" instead of Execution name. To list all Tasks across Jobs, use \"-\" instead of Job name. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}\/executions\/{execution} See 'parent'.
    -> RunProjectsLocationsJobsExecutionsTasksList
newRunProjectsLocationsJobsExecutionsTasksList parent =
  RunProjectsLocationsJobsExecutionsTasksList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , showDeleted = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsJobsExecutionsTasksList
         where
        type Rs RunProjectsLocationsJobsExecutionsTasksList =
             GoogleCloudRunV2ListTasksResponse
        type Scopes
               RunProjectsLocationsJobsExecutionsTasksList
             = '[CloudPlatform'FullControl]
        requestClient
          RunProjectsLocationsJobsExecutionsTasksList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              showDeleted
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           RunProjectsLocationsJobsExecutionsTasksListResource)
                      Core.mempty


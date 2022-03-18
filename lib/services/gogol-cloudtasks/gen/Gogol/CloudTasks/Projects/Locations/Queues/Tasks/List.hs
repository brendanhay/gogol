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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Tasks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tasks in a queue. By default, only the BASIC view is retrieved due to performance considerations; response_view controls the subset of information which is returned. The tasks may be returned in any order. The ordering may change at any time.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.list@.
module Gogol.CloudTasks.Projects.Locations.Queues.Tasks.List
    (
    -- * Resource
      CloudTasksProjectsLocationsQueuesTasksListResource

    -- ** Constructing a Request
    , newCloudTasksProjectsLocationsQueuesTasksList
    , CloudTasksProjectsLocationsQueuesTasksList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Types

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.list@ method which the
-- 'CloudTasksProjectsLocationsQueuesTasksList' request conforms to.
type CloudTasksProjectsLocationsQueuesTasksListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "tasks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "responseView"
                       ProjectsLocationsQueuesTasksListResponseView
                       Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListTasksResponse

-- | Lists the tasks in a queue. By default, only the BASIC view is retrieved due to performance considerations; response_view controls the subset of information which is returned. The tasks may be returned in any order. The ordering may change at any time.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesTasksList' smart constructor.
data CloudTasksProjectsLocationsQueuesTasksList = CloudTasksProjectsLocationsQueuesTasksList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum page size. Fewer tasks than requested might be returned, even if more tasks exist; use next/page/token in the response to determine if more tasks exist. The maximum page size is 1000. If unspecified, the page size will be the maximum.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying the page of results to return. To request the first page results, page/token must be empty. To request the next page of results, page/token must be the value of next/page/token returned from the previous call to ListTasks method. The page token is valid for only 2 hours.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The queue name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@
    , parent :: Core.Text
      -- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
    , responseView :: (Core.Maybe ProjectsLocationsQueuesTasksListResponseView)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesTasksList' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesTasksList 
    ::  Core.Text
       -- ^  Required. The queue name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ See 'parent'.
    -> CloudTasksProjectsLocationsQueuesTasksList
newCloudTasksProjectsLocationsQueuesTasksList parent =
  CloudTasksProjectsLocationsQueuesTasksList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , responseView = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudTasksProjectsLocationsQueuesTasksList
         where
        type Rs CloudTasksProjectsLocationsQueuesTasksList =
             ListTasksResponse
        type Scopes
               CloudTasksProjectsLocationsQueuesTasksList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudTasksProjectsLocationsQueuesTasksList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              responseView
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudTasksProjectsLocationsQueuesTasksListResource)
                      Core.mempty


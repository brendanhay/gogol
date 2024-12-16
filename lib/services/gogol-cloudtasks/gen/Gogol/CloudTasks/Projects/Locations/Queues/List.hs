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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists queues. Queues are returned in lexicographical order.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.list@.
module Gogol.CloudTasks.Projects.Locations.Queues.List
    (
    -- * Resource
      CloudTasksProjectsLocationsQueuesListResource

    -- ** Constructing a Request
    , CloudTasksProjectsLocationsQueuesList (..)
    , newCloudTasksProjectsLocationsQueuesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Types

-- | A resource alias for @cloudtasks.projects.locations.queues.list@ method which the
-- 'CloudTasksProjectsLocationsQueuesList' request conforms to.
type CloudTasksProjectsLocationsQueuesListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "queues" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListQueuesResponse

-- | Lists queues. Queues are returned in lexicographical order.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesList' smart constructor.
data CloudTasksProjectsLocationsQueuesList = CloudTasksProjectsLocationsQueuesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | @filter@ can be used to specify a subset of queues. Any Queue field can be used as a filter and several operators as supported. For example: @\<=, \<, >=, >, !=, =, :@. The filter syntax is the same as described in <https://cloud.google.com/logging/docs/view/advanced_filters Stackdriver\'s Advanced Logs Filters>. Sample filter \"state: PAUSED\". Note that using filters might cause fewer queues than the requested page_size to be returned.
    , filter :: (Core.Maybe Core.Text)
      -- | Requested page size. The maximum page size is 9800. If unspecified, the page size will be the maximum. Fewer queues than requested might be returned, even if more queues exist; use the next/page/token in the response to determine if more queues exist.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying the page of results to return. To request the first page results, page/token must be empty. To request the next page of results, page/token must be the value of next/page/token returned from the previous call to ListQueues method. It is an error to switch the value of the filter while iterating through pages.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The location name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesList' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesList 
    ::  Core.Text
       -- ^  Required. The location name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@ See 'parent'.
    -> CloudTasksProjectsLocationsQueuesList
newCloudTasksProjectsLocationsQueuesList parent =
  CloudTasksProjectsLocationsQueuesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudTasksProjectsLocationsQueuesList
         where
        type Rs CloudTasksProjectsLocationsQueuesList =
             ListQueuesResponse
        type Scopes CloudTasksProjectsLocationsQueuesList =
             '[CloudPlatform'FullControl]
        requestClient
          CloudTasksProjectsLocationsQueuesList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudTasksProjectsLocationsQueuesListResource)
                      Core.mempty


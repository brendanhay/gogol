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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a queue. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine @queue.yaml@ or @queue.xml@ file to manage your queues. Read <https://cloud.google.com/tasks/docs/queue-yaml Overview of Queue Management and queue.yaml> before using this method.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.create@.
module Gogol.CloudTasks.Projects.Locations.Queues.Create
    (
    -- * Resource
      CloudTasksProjectsLocationsQueuesCreateResource

    -- ** Constructing a Request
    , CloudTasksProjectsLocationsQueuesCreate (..)
    , newCloudTasksProjectsLocationsQueuesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Types

-- | A resource alias for @cloudtasks.projects.locations.queues.create@ method which the
-- 'CloudTasksProjectsLocationsQueuesCreate' request conforms to.
type CloudTasksProjectsLocationsQueuesCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "queues" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Queue Core.:>
                         Core.Post '[Core.JSON] Queue

-- | Creates a queue. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine @queue.yaml@ or @queue.xml@ file to manage your queues. Read <https://cloud.google.com/tasks/docs/queue-yaml Overview of Queue Management and queue.yaml> before using this method.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesCreate' smart constructor.
data CloudTasksProjectsLocationsQueuesCreate = CloudTasksProjectsLocationsQueuesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The location name in which the queue will be created. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@ The list of allowed locations can be obtained by calling Cloud Tasks\' implementation of ListLocations.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Queue
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesCreate' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesCreate 
    ::  Core.Text
       -- ^  Required. The location name in which the queue will be created. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID@ The list of allowed locations can be obtained by calling Cloud Tasks\' implementation of ListLocations. See 'parent'.
    -> Queue
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudTasksProjectsLocationsQueuesCreate
newCloudTasksProjectsLocationsQueuesCreate parent payload =
  CloudTasksProjectsLocationsQueuesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudTasksProjectsLocationsQueuesCreate
         where
        type Rs CloudTasksProjectsLocationsQueuesCreate =
             Queue
        type Scopes CloudTasksProjectsLocationsQueuesCreate =
             '[CloudPlatform'FullControl]
        requestClient
          CloudTasksProjectsLocationsQueuesCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudTasksProjectsLocationsQueuesCreateResource)
                      Core.mempty


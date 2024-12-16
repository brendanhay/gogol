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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a queue. This method creates the queue if it does not exist and updates the queue if it does exist. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine @queue.yaml@ or @queue.xml@ file to manage your queues. Read <https://cloud.google.com/tasks/docs/queue-yaml Overview of Queue Management and queue.yaml> before using this method.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.patch@.
module Gogol.CloudTasks.Projects.Locations.Queues.Patch
    (
    -- * Resource
      CloudTasksProjectsLocationsQueuesPatchResource

    -- ** Constructing a Request
    , CloudTasksProjectsLocationsQueuesPatch (..)
    , newCloudTasksProjectsLocationsQueuesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Types

-- | A resource alias for @cloudtasks.projects.locations.queues.patch@ method which the
-- 'CloudTasksProjectsLocationsQueuesPatch' request conforms to.
type CloudTasksProjectsLocationsQueuesPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Queue Core.:>
                         Core.Patch '[Core.JSON] Queue

-- | Updates a queue. This method creates the queue if it does not exist and updates the queue if it does exist. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine @queue.yaml@ or @queue.xml@ file to manage your queues. Read <https://cloud.google.com/tasks/docs/queue-yaml Overview of Queue Management and queue.yaml> before using this method.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesPatch' smart constructor.
data CloudTasksProjectsLocationsQueuesPatch = CloudTasksProjectsLocationsQueuesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the queue\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @QUEUE_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Queue
      -- | A mask used to specify which fields of the queue are being updated. If empty, then all fields will be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesPatch' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesPatch 
    ::  Core.Text
       -- ^  Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ * @PROJECT_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see <https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects Identifying projects> * @LOCATION_ID@ is the canonical ID for the queue\'s location. The list of available locations can be obtained by calling ListLocations. For more information, see https:\/\/cloud.google.com\/about\/locations\/. * @QUEUE_ID@ can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. See 'name'.
    -> Queue
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudTasksProjectsLocationsQueuesPatch
newCloudTasksProjectsLocationsQueuesPatch name payload =
  CloudTasksProjectsLocationsQueuesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudTasksProjectsLocationsQueuesPatch
         where
        type Rs CloudTasksProjectsLocationsQueuesPatch =
             Queue
        type Scopes CloudTasksProjectsLocationsQueuesPatch =
             '[CloudPlatform'FullControl]
        requestClient
          CloudTasksProjectsLocationsQueuesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudTasksProjectsLocationsQueuesPatchResource)
                      Core.mempty


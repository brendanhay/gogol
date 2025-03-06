{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Buffer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and buffers a new task without the need to explicitly define a Task message. The queue must have HTTP target. To create the task with a custom ID, use the following format and set TASK/ID to your desired ID: projects\/PROJECT/ID\/locations\/LOCATION/ID\/queues\/QUEUE/ID\/tasks\/TASK/ID:buffer To create the task with an automatically generated ID, use the following format: projects\/PROJECT/ID\/locations\/LOCATION/ID\/queues\/QUEUE/ID\/tasks:buffer.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.buffer@.
module Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Buffer
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesTasksBufferResource,

    -- ** Constructing a Request
    CloudTasksProjectsLocationsQueuesTasksBuffer (..),
    newCloudTasksProjectsLocationsQueuesTasksBuffer,
  )
where

import Gogol.CloudTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.buffer@ method which the
-- 'CloudTasksProjectsLocationsQueuesTasksBuffer' request conforms to.
type CloudTasksProjectsLocationsQueuesTasksBufferResource =
  "v2"
    Core.:> Core.Capture "queue" Core.Text
    Core.:> "tasks"
    Core.:> Core.CaptureMode "taskId" "buffer" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BufferTaskRequest
    Core.:> Core.Post '[Core.JSON] BufferTaskResponse

-- | Creates and buffers a new task without the need to explicitly define a Task message. The queue must have HTTP target. To create the task with a custom ID, use the following format and set TASK/ID to your desired ID: projects\/PROJECT/ID\/locations\/LOCATION/ID\/queues\/QUEUE/ID\/tasks\/TASK/ID:buffer To create the task with an automatically generated ID, use the following format: projects\/PROJECT/ID\/locations\/LOCATION/ID\/queues\/QUEUE/ID\/tasks:buffer.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesTasksBuffer' smart constructor.
data CloudTasksProjectsLocationsQueuesTasksBuffer = CloudTasksProjectsLocationsQueuesTasksBuffer
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BufferTaskRequest,
    -- | Required. The parent queue name. For example: projects\/PROJECT/ID\/locations\/LOCATION/ID\/queues\/QUEUE_ID\` The queue must already exist.
    queue :: Core.Text,
    -- | Optional. Task ID for the task being created. If not provided, Cloud Tasks generates an ID for the task.
    taskId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesTasksBuffer' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesTasksBuffer ::
  -- |  Multipart request metadata. See 'payload'.
  BufferTaskRequest ->
  -- |  Required. The parent queue name. For example: projects\/PROJECT/ID\/locations\/LOCATION/ID\/queues\/QUEUE_ID\` The queue must already exist. See 'queue'.
  Core.Text ->
  -- |  Optional. Task ID for the task being created. If not provided, Cloud Tasks generates an ID for the task. See 'taskId'.
  Core.Text ->
  CloudTasksProjectsLocationsQueuesTasksBuffer
newCloudTasksProjectsLocationsQueuesTasksBuffer
  payload
  queue
  taskId =
    CloudTasksProjectsLocationsQueuesTasksBuffer
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        queue = queue,
        taskId = taskId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesTasksBuffer
  where
  type
    Rs CloudTasksProjectsLocationsQueuesTasksBuffer =
      BufferTaskResponse
  type
    Scopes CloudTasksProjectsLocationsQueuesTasksBuffer =
      '[CloudPlatform'FullControl]
  requestClient CloudTasksProjectsLocationsQueuesTasksBuffer {..} =
    go
      queue
      taskId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudTasksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudTasksProjectsLocationsQueuesTasksBufferResource
          )
          Core.mempty

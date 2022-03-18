{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forces a task to run now. When this method is called, Cloud Tasks will dispatch the task, even if the task is already running, the queue has reached its RateLimits or is PAUSED. This command is meant to be used for manual debugging. For example, RunTask can be used to retry a failed task after a fix has been made or to manually force a task to be dispatched now. The dispatched task is returned. That is, the task that is returned contains the status after the task is dispatched but before the task is received by its target. If Cloud Tasks receives a successful response from the task\'s target, then the task will be deleted; otherwise the task\'s schedule/time will be reset to the time that RunTask was called plus the retry delay specified in the queue\'s RetryConfig. RunTask returns NOT/FOUND when it is called on a task that has already succeeded or permanently failed.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.run@.
module Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Run
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesTasksRunResource,

    -- ** Constructing a Request
    newCloudTasksProjectsLocationsQueuesTasksRun,
    CloudTasksProjectsLocationsQueuesTasksRun,
  )
where

import Gogol.CloudTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.run@ method which the
-- 'CloudTasksProjectsLocationsQueuesTasksRun' request conforms to.
type CloudTasksProjectsLocationsQueuesTasksRunResource =
  "v2"
    Core.:> Core.CaptureMode "name" "run" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunTaskRequest
    Core.:> Core.Post '[Core.JSON] Task

-- | Forces a task to run now. When this method is called, Cloud Tasks will dispatch the task, even if the task is already running, the queue has reached its RateLimits or is PAUSED. This command is meant to be used for manual debugging. For example, RunTask can be used to retry a failed task after a fix has been made or to manually force a task to be dispatched now. The dispatched task is returned. That is, the task that is returned contains the status after the task is dispatched but before the task is received by its target. If Cloud Tasks receives a successful response from the task\'s target, then the task will be deleted; otherwise the task\'s schedule/time will be reset to the time that RunTask was called plus the retry delay specified in the queue\'s RetryConfig. RunTask returns NOT/FOUND when it is called on a task that has already succeeded or permanently failed.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesTasksRun' smart constructor.
data CloudTasksProjectsLocationsQueuesTasksRun = CloudTasksProjectsLocationsQueuesTasksRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The task name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RunTaskRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesTasksRun' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesTasksRun ::
  -- |  Required. The task name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RunTaskRequest ->
  CloudTasksProjectsLocationsQueuesTasksRun
newCloudTasksProjectsLocationsQueuesTasksRun name payload =
  CloudTasksProjectsLocationsQueuesTasksRun
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesTasksRun
  where
  type
    Rs CloudTasksProjectsLocationsQueuesTasksRun =
      Task
  type
    Scopes CloudTasksProjectsLocationsQueuesTasksRun =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudTasksProjectsLocationsQueuesTasksRun {..} =
      go
        name
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
                Core.Proxy
                  CloudTasksProjectsLocationsQueuesTasksRunResource
            )
            Core.mempty

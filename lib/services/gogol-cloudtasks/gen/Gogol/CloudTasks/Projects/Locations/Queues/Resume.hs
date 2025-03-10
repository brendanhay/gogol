{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Resume
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resume a queue. This method resumes a queue after it has been PAUSED or DISABLED. The state of a queue is stored in the queue\'s state; after calling this method it will be set to RUNNING. WARNING: Resuming many high-QPS queues at the same time can lead to target overloading. If you are resuming high-QPS queues, follow the 500\/50\/5 pattern described in <https://cloud.google.com/tasks/docs/manage-cloud-task-scaling Managing Cloud Tasks Scaling Risks>.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.resume@.
module Gogol.CloudTasks.Projects.Locations.Queues.Resume
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesResumeResource,

    -- ** Constructing a Request
    CloudTasksProjectsLocationsQueuesResume (..),
    newCloudTasksProjectsLocationsQueuesResume,
  )
where

import Gogol.CloudTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.resume@ method which the
-- 'CloudTasksProjectsLocationsQueuesResume' request conforms to.
type CloudTasksProjectsLocationsQueuesResumeResource =
  "v2"
    Core.:> Core.CaptureMode "name" "resume" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResumeQueueRequest
    Core.:> Core.Post '[Core.JSON] Queue

-- | Resume a queue. This method resumes a queue after it has been PAUSED or DISABLED. The state of a queue is stored in the queue\'s state; after calling this method it will be set to RUNNING. WARNING: Resuming many high-QPS queues at the same time can lead to target overloading. If you are resuming high-QPS queues, follow the 500\/50\/5 pattern described in <https://cloud.google.com/tasks/docs/manage-cloud-task-scaling Managing Cloud Tasks Scaling Risks>.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesResume' smart constructor.
data CloudTasksProjectsLocationsQueuesResume = CloudTasksProjectsLocationsQueuesResume
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The queue name. For example: @projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ResumeQueueRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesResume' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesResume ::
  -- |  Required. The queue name. For example: @projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ResumeQueueRequest ->
  CloudTasksProjectsLocationsQueuesResume
newCloudTasksProjectsLocationsQueuesResume name payload =
  CloudTasksProjectsLocationsQueuesResume
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudTasksProjectsLocationsQueuesResume where
  type Rs CloudTasksProjectsLocationsQueuesResume = Queue
  type
    Scopes CloudTasksProjectsLocationsQueuesResume =
      '[CloudPlatform'FullControl]
  requestClient CloudTasksProjectsLocationsQueuesResume {..} =
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
              Core.Proxy CloudTasksProjectsLocationsQueuesResumeResource
          )
          Core.mempty

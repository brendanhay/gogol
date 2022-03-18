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
-- Module      : Network.Google.CloudTasks.Projects.Locations.Queues.Pause
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses the queue. If a queue is paused then the system will stop dispatching tasks until the queue is resumed via ResumeQueue. Tasks can still be added when the queue is paused. A queue is paused if its state is PAUSED.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.pause@.
module Network.Google.CloudTasks.Projects.Locations.Queues.Pause
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesPauseResource,

    -- ** Constructing a Request
    newCloudTasksProjectsLocationsQueuesPause,
    CloudTasksProjectsLocationsQueuesPause,
  )
where

import Network.Google.CloudTasks.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.pause@ method which the
-- 'CloudTasksProjectsLocationsQueuesPause' request conforms to.
type CloudTasksProjectsLocationsQueuesPauseResource =
  "v2"
    Core.:> Core.CaptureMode "name" "pause" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PauseQueueRequest
    Core.:> Core.Post '[Core.JSON] Queue

-- | Pauses the queue. If a queue is paused then the system will stop dispatching tasks until the queue is resumed via ResumeQueue. Tasks can still be added when the queue is paused. A queue is paused if its state is PAUSED.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesPause' smart constructor.
data CloudTasksProjectsLocationsQueuesPause = CloudTasksProjectsLocationsQueuesPause
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The queue name. For example: @projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PauseQueueRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesPause' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesPause ::
  -- |  Required. The queue name. For example: @projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PauseQueueRequest ->
  CloudTasksProjectsLocationsQueuesPause
newCloudTasksProjectsLocationsQueuesPause name payload =
  CloudTasksProjectsLocationsQueuesPause
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
    CloudTasksProjectsLocationsQueuesPause
  where
  type
    Rs CloudTasksProjectsLocationsQueuesPause =
      Queue
  type
    Scopes CloudTasksProjectsLocationsQueuesPause =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudTasksProjectsLocationsQueuesPause {..} =
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
                  CloudTasksProjectsLocationsQueuesPauseResource
            )
            Core.mempty

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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a queue. This command will delete the queue even if it has tasks in it. Note: If you delete a queue, you may be prevented from creating a new queue with the same name as the deleted queue for a tombstone window of up to 3 days. During this window, the CreateQueue operation may appear to recreate the queue, but this can be misleading. If you attempt to create a queue with the same name as one that is in the tombstone window, run GetQueue to confirm that the queue creation was successful. If GetQueue returns 200 response code, your queue was successfully created with the name of the previously deleted queue. Otherwise, your queue did not successfully recreate. WARNING: Using this method may have unintended side effects if you are using an App Engine @queue.yaml@ or @queue.xml@ file to manage your queues. Read <https://cloud.google.com/tasks/docs/queue-yaml Overview of Queue Management and queue.yaml> before using this method.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.delete@.
module Gogol.CloudTasks.Projects.Locations.Queues.Delete
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesDeleteResource,

    -- ** Constructing a Request
    CloudTasksProjectsLocationsQueuesDelete (..),
    newCloudTasksProjectsLocationsQueuesDelete,
  )
where

import Gogol.CloudTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.delete@ method which the
-- 'CloudTasksProjectsLocationsQueuesDelete' request conforms to.
type CloudTasksProjectsLocationsQueuesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a queue. This command will delete the queue even if it has tasks in it. Note: If you delete a queue, you may be prevented from creating a new queue with the same name as the deleted queue for a tombstone window of up to 3 days. During this window, the CreateQueue operation may appear to recreate the queue, but this can be misleading. If you attempt to create a queue with the same name as one that is in the tombstone window, run GetQueue to confirm that the queue creation was successful. If GetQueue returns 200 response code, your queue was successfully created with the name of the previously deleted queue. Otherwise, your queue did not successfully recreate. WARNING: Using this method may have unintended side effects if you are using an App Engine @queue.yaml@ or @queue.xml@ file to manage your queues. Read <https://cloud.google.com/tasks/docs/queue-yaml Overview of Queue Management and queue.yaml> before using this method.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesDelete' smart constructor.
data CloudTasksProjectsLocationsQueuesDelete = CloudTasksProjectsLocationsQueuesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The queue name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesDelete' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesDelete ::
  -- |  Required. The queue name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ See 'name'.
  Core.Text ->
  CloudTasksProjectsLocationsQueuesDelete
newCloudTasksProjectsLocationsQueuesDelete name =
  CloudTasksProjectsLocationsQueuesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudTasksProjectsLocationsQueuesDelete where
  type Rs CloudTasksProjectsLocationsQueuesDelete = Empty
  type
    Scopes CloudTasksProjectsLocationsQueuesDelete =
      '[CloudPlatform'FullControl]
  requestClient CloudTasksProjectsLocationsQueuesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudTasksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudTasksProjectsLocationsQueuesDeleteResource
          )
          Core.mempty

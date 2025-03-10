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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a task. A task can be deleted if it is scheduled or dispatched. A task cannot be deleted if it has executed successfully or permanently failed.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.delete@.
module Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Delete
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesTasksDeleteResource,

    -- ** Constructing a Request
    CloudTasksProjectsLocationsQueuesTasksDelete (..),
    newCloudTasksProjectsLocationsQueuesTasksDelete,
  )
where

import Gogol.CloudTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.delete@ method which the
-- 'CloudTasksProjectsLocationsQueuesTasksDelete' request conforms to.
type CloudTasksProjectsLocationsQueuesTasksDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a task. A task can be deleted if it is scheduled or dispatched. A task cannot be deleted if it has executed successfully or permanently failed.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesTasksDelete' smart constructor.
data CloudTasksProjectsLocationsQueuesTasksDelete = CloudTasksProjectsLocationsQueuesTasksDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The task name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesTasksDelete' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesTasksDelete ::
  -- |  Required. The task name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@ See 'name'.
  Core.Text ->
  CloudTasksProjectsLocationsQueuesTasksDelete
newCloudTasksProjectsLocationsQueuesTasksDelete name =
  CloudTasksProjectsLocationsQueuesTasksDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesTasksDelete
  where
  type Rs CloudTasksProjectsLocationsQueuesTasksDelete = Empty
  type
    Scopes CloudTasksProjectsLocationsQueuesTasksDelete =
      '[CloudPlatform'FullControl]
  requestClient CloudTasksProjectsLocationsQueuesTasksDelete {..} =
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
              Core.Proxy CloudTasksProjectsLocationsQueuesTasksDeleteResource
          )
          Core.mempty

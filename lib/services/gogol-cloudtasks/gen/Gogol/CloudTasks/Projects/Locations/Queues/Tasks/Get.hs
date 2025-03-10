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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a task.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.get@.
module Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Get
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesTasksGetResource,

    -- ** Constructing a Request
    CloudTasksProjectsLocationsQueuesTasksGet (..),
    newCloudTasksProjectsLocationsQueuesTasksGet,
  )
where

import Gogol.CloudTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.get@ method which the
-- 'CloudTasksProjectsLocationsQueuesTasksGet' request conforms to.
type CloudTasksProjectsLocationsQueuesTasksGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "responseView"
              ProjectsLocationsQueuesTasksGetResponseView
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Task

-- | Gets a task.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesTasksGet' smart constructor.
data CloudTasksProjectsLocationsQueuesTasksGet = CloudTasksProjectsLocationsQueuesTasksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The task name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@
    name :: Core.Text,
    -- | The response/view specifies which subset of the Task will be returned. By default response/view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires @cloudtasks.tasks.fullView@ <https://cloud.google.com/iam/ Google IAM> permission on the Task resource.
    responseView :: (Core.Maybe ProjectsLocationsQueuesTasksGetResponseView),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesTasksGet' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesTasksGet ::
  -- |  Required. The task name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID@ See 'name'.
  Core.Text ->
  CloudTasksProjectsLocationsQueuesTasksGet
newCloudTasksProjectsLocationsQueuesTasksGet name =
  CloudTasksProjectsLocationsQueuesTasksGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      responseView = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesTasksGet
  where
  type Rs CloudTasksProjectsLocationsQueuesTasksGet = Task
  type
    Scopes CloudTasksProjectsLocationsQueuesTasksGet =
      '[CloudPlatform'FullControl]
  requestClient CloudTasksProjectsLocationsQueuesTasksGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      responseView
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudTasksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudTasksProjectsLocationsQueuesTasksGetResource
          )
          Core.mempty

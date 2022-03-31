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
-- Module      : Gogol.AppsTasks.Tasks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tasks in the specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.list@.
module Gogol.AppsTasks.Tasks.List
  ( -- * Resource
    TasksTasksListResource,

    -- ** Constructing a Request
    newTasksTasksList,
    TasksTasksList,
  )
where

import Gogol.AppsTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @tasks.tasks.list@ method which the
-- 'TasksTasksList' request conforms to.
type TasksTasksListResource =
  "tasks"
    Core.:> "v1"
    Core.:> "lists"
    Core.:> Core.Capture "tasklist" Core.Text
    Core.:> "tasks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "completedMax" Core.Text
    Core.:> Core.QueryParam "completedMin" Core.Text
    Core.:> Core.QueryParam "dueMax" Core.Text
    Core.:> Core.QueryParam "dueMin" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showCompleted" Core.Bool
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "showHidden" Core.Bool
    Core.:> Core.QueryParam "updatedMin" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Tasks

-- | Returns all tasks in the specified task list.
--
-- /See:/ 'newTasksTasksList' smart constructor.
data TasksTasksList = TasksTasksList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Upper bound for a task\'s completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
    completedMax :: (Core.Maybe Core.Text),
    -- | Lower bound for a task\'s completion date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by completion date.
    completedMin :: (Core.Maybe Core.Text),
    -- | Upper bound for a task\'s due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
    dueMax :: (Core.Maybe Core.Text),
    -- | Lower bound for a task\'s due date (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by due date.
    dueMin :: (Core.Maybe Core.Text),
    -- | Maximum number of task lists returned on one page. Optional. The default is 20 (max allowed: 100).
    maxResults :: (Core.Maybe Core.Int32),
    -- | Token specifying the result page to return. Optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | Flag indicating whether completed tasks are returned in the result. Optional. The default is True. Note that showHidden must also be True to show tasks completed in first party clients, such as the web UI and Google\'s mobile apps.
    showCompleted :: (Core.Maybe Core.Bool),
    -- | Flag indicating whether deleted tasks are returned in the result. Optional. The default is False.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Flag indicating whether hidden tasks are returned in the result. Optional. The default is False.
    showHidden :: (Core.Maybe Core.Bool),
    -- | Task list identifier.
    tasklist :: Core.Text,
    -- | Lower bound for a task\'s last modification time (as a RFC 3339 timestamp) to filter by. Optional. The default is not to filter by last modification time.
    updatedMin :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasksList' with the minimum fields required to make a request.
newTasksTasksList ::
  -- |  Task list identifier. See 'tasklist'.
  Core.Text ->
  TasksTasksList
newTasksTasksList tasklist =
  TasksTasksList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      completedMax = Core.Nothing,
      completedMin = Core.Nothing,
      dueMax = Core.Nothing,
      dueMin = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      showCompleted = Core.Nothing,
      showDeleted = Core.Nothing,
      showHidden = Core.Nothing,
      tasklist = tasklist,
      updatedMin = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksList where
  type Rs TasksTasksList = Tasks
  type
    Scopes TasksTasksList =
      '[Tasks'FullControl, Tasks'Readonly]
  requestClient TasksTasksList {..} =
    go
      tasklist
      xgafv
      accessToken
      callback
      completedMax
      completedMin
      dueMax
      dueMin
      maxResults
      pageToken
      showCompleted
      showDeleted
      showHidden
      updatedMin
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsTasksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TasksTasksListResource)
          Core.mempty

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
-- Module      : Gogol.AppsTasks.Tasks.Move
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified task to another position in the destination task list. If the destination list is not specified, the task is moved within its current list. This can include putting it as a child task under a new parent and\/or move it to a different position among its sibling tasks. A user can have up to 2,000 subtasks per task.
--
-- /See:/ <https://developers.google.com/tasks/ Google Tasks API Reference> for @tasks.tasks.move@.
module Gogol.AppsTasks.Tasks.Move
  ( -- * Resource
    TasksTasksMoveResource,

    -- ** Constructing a Request
    TasksTasksMove (..),
    newTasksTasksMove,
  )
where

import Gogol.AppsTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @tasks.tasks.move@ method which the
-- 'TasksTasksMove' request conforms to.
type TasksTasksMoveResource =
  "tasks"
    Core.:> "v1"
    Core.:> "lists"
    Core.:> Core.Capture "tasklist" Core.Text
    Core.:> "tasks"
    Core.:> Core.Capture "task" Core.Text
    Core.:> "move"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "destinationTasklist" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "previous" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Task

-- | Moves the specified task to another position in the destination task list. If the destination list is not specified, the task is moved within its current list. This can include putting it as a child task under a new parent and\/or move it to a different position among its sibling tasks. A user can have up to 2,000 subtasks per task.
--
-- /See:/ 'newTasksTasksMove' smart constructor.
data TasksTasksMove = TasksTasksMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Destination task list identifier. If set, the task is moved from tasklist to the destinationTasklist list. Otherwise the task is moved within its current list. Recurrent tasks cannot currently be moved between lists.
    destinationTasklist :: (Core.Maybe Core.Text),
    -- | Optional. New parent task identifier. If the task is moved to the top level, this parameter is omitted. The task set as parent must exist in the task list and can not be hidden. Exceptions: 1. Assigned tasks can not be set as parent task (have subtasks) or be moved under a parent task (become subtasks). 2. Tasks that are both completed and hidden cannot be nested, so the parent field must be empty.
    parent :: (Core.Maybe Core.Text),
    -- | Optional. New previous sibling task identifier. If the task is moved to the first position among its siblings, this parameter is omitted. The task set as previous must exist in the task list and can not be hidden. Exceptions: 1. Tasks that are both completed and hidden can only be moved to position 0, so the previous field must be empty.
    previous :: (Core.Maybe Core.Text),
    -- | Task identifier.
    task :: Core.Text,
    -- | Task list identifier.
    tasklist :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasksMove' with the minimum fields required to make a request.
newTasksTasksMove ::
  -- |  Task identifier. See 'task'.
  Core.Text ->
  -- |  Task list identifier. See 'tasklist'.
  Core.Text ->
  TasksTasksMove
newTasksTasksMove task tasklist =
  TasksTasksMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      destinationTasklist = Core.Nothing,
      parent = Core.Nothing,
      previous = Core.Nothing,
      task = task,
      tasklist = tasklist,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksMove where
  type Rs TasksTasksMove = Task
  type Scopes TasksTasksMove = '[Tasks'FullControl]
  requestClient TasksTasksMove {..} =
    go
      tasklist
      task
      xgafv
      accessToken
      callback
      destinationTasklist
      parent
      previous
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsTasksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TasksTasksMoveResource)
          Core.mempty

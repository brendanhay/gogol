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
-- Module      : Network.Google.AppsTasks.Tasks.Move
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified task to another position in the task list. This can include putting it as a child task under a new parent and\/or move it to a different position among its sibling tasks.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.move@.
module Network.Google.AppsTasks.Tasks.Move
  ( -- * Resource
    TasksTasksMoveResource,

    -- ** Constructing a Request
    newTasksTasksMove,
    TasksTasksMove,
  )
where

import Network.Google.AppsTasks.Types
import qualified Network.Google.Prelude as Core

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
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "previous" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Task

-- | Moves the specified task to another position in the task list. This can include putting it as a child task under a new parent and\/or move it to a different position among its sibling tasks.
--
-- /See:/ 'newTasksTasksMove' smart constructor.
data TasksTasksMove = TasksTasksMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | New parent task identifier. If the task is moved to the top level, this parameter is omitted. Optional.
    parent :: (Core.Maybe Core.Text),
    -- | New previous sibling task identifier. If the task is moved to the first position among its siblings, this parameter is omitted. Optional.
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
      parent = Core.Nothing,
      previous = Core.Nothing,
      task = task,
      tasklist = tasklist,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksMove where
  type Rs TasksTasksMove = Task
  type
    Scopes TasksTasksMove =
      '["https://www.googleapis.com/auth/tasks"]
  requestClient TasksTasksMove {..} =
    go
      tasklist
      task
      xgafv
      accessToken
      callback
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

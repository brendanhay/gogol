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
-- Module      : Gogol.AppsTasks.Tasks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified task from the task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.delete@.
module Gogol.AppsTasks.Tasks.Delete
  ( -- * Resource
    TasksTasksDeleteResource,

    -- ** Constructing a Request
    newTasksTasksDelete,
    TasksTasksDelete,
  )
where

import Gogol.AppsTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @tasks.tasks.delete@ method which the
-- 'TasksTasksDelete' request conforms to.
type TasksTasksDeleteResource =
  "tasks"
    Core.:> "v1"
    Core.:> "lists"
    Core.:> Core.Capture "tasklist" Core.Text
    Core.:> "tasks"
    Core.:> Core.Capture "task" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the specified task from the task list.
--
-- /See:/ 'newTasksTasksDelete' smart constructor.
data TasksTasksDelete = TasksTasksDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
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

-- | Creates a value of 'TasksTasksDelete' with the minimum fields required to make a request.
newTasksTasksDelete ::
  -- |  Task identifier. See 'task'.
  Core.Text ->
  -- |  Task list identifier. See 'tasklist'.
  Core.Text ->
  TasksTasksDelete
newTasksTasksDelete task tasklist =
  TasksTasksDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      task = task,
      tasklist = tasklist,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasksDelete where
  type Rs TasksTasksDelete = ()
  type
    Scopes TasksTasksDelete =
      '["https://www.googleapis.com/auth/tasks"]
  requestClient TasksTasksDelete {..} =
    go
      tasklist
      task
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsTasksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TasksTasksDeleteResource)
          Core.mempty

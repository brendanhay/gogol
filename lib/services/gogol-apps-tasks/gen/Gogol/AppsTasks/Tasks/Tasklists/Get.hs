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
-- Module      : Gogol.AppsTasks.Tasks.Tasklists.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Google Tasks API Reference> for @tasks.tasklists.get@.
module Gogol.AppsTasks.Tasks.Tasklists.Get
  ( -- * Resource
    TasksTasklistsGetResource,

    -- ** Constructing a Request
    TasksTasklistsGet (..),
    newTasksTasklistsGet,
  )
where

import Gogol.AppsTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @tasks.tasklists.get@ method which the
-- 'TasksTasklistsGet' request conforms to.
type TasksTasklistsGetResource =
  "tasks"
    Core.:> "v1"
    Core.:> "users"
    Core.:> "@me"
    Core.:> "lists"
    Core.:> Core.Capture "tasklist" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TaskList

-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ 'newTasksTasklistsGet' smart constructor.
data TasksTasklistsGet = TasksTasklistsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Task list identifier.
    tasklist :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasklistsGet' with the minimum fields required to make a request.
newTasksTasklistsGet ::
  -- |  Task list identifier. See 'tasklist'.
  Core.Text ->
  TasksTasklistsGet
newTasksTasklistsGet tasklist =
  TasksTasklistsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      tasklist = tasklist,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasklistsGet where
  type Rs TasksTasklistsGet = TaskList
  type
    Scopes TasksTasklistsGet =
      '[Tasks'FullControl, Tasks'Readonly]
  requestClient TasksTasklistsGet {..} =
    go
      tasklist
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
          (Core.Proxy :: Core.Proxy TasksTasklistsGetResource)
          Core.mempty

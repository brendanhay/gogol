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
-- Module      : Gogol.AppsTasks.Tasks.Tasklists.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the authenticated user\'s specified task list. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/tasks/ Google Tasks API Reference> for @tasks.tasklists.patch@.
module Gogol.AppsTasks.Tasks.Tasklists.Patch
  ( -- * Resource
    TasksTasklistsPatchResource,

    -- ** Constructing a Request
    TasksTasklistsPatch (..),
    newTasksTasklistsPatch,
  )
where

import Gogol.AppsTasks.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @tasks.tasklists.patch@ method which the
-- 'TasksTasklistsPatch' request conforms to.
type TasksTasklistsPatchResource =
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
    Core.:> Core.ReqBody '[Core.JSON] TaskList
    Core.:> Core.Patch '[Core.JSON] TaskList

-- | Updates the authenticated user\'s specified task list. This method supports patch semantics.
--
-- /See:/ 'newTasksTasklistsPatch' smart constructor.
data TasksTasklistsPatch = TasksTasklistsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TaskList,
    -- | Task list identifier.
    tasklist :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TasksTasklistsPatch' with the minimum fields required to make a request.
newTasksTasklistsPatch ::
  -- |  Multipart request metadata. See 'payload'.
  TaskList ->
  -- |  Task list identifier. See 'tasklist'.
  Core.Text ->
  TasksTasklistsPatch
newTasksTasklistsPatch payload tasklist =
  TasksTasklistsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      tasklist = tasklist,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasklistsPatch where
  type Rs TasksTasklistsPatch = TaskList
  type Scopes TasksTasklistsPatch = '[Tasks'FullControl]
  requestClient TasksTasklistsPatch {..} =
    go
      tasklist
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appsTasksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TasksTasklistsPatchResource)
          Core.mempty

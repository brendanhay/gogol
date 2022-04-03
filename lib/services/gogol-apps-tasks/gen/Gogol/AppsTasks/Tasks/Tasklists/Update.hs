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
-- Module      : Gogol.AppsTasks.Tasks.Tasklists.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.update@.
module Gogol.AppsTasks.Tasks.Tasklists.Update
  ( -- * Resource
    TasksTasklistsUpdateResource,

    -- ** Constructing a Request
    TasksTasklistsUpdate (..),
    newTasksTasklistsUpdate,
  )
where

import Gogol.AppsTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @tasks.tasklists.update@ method which the
-- 'TasksTasklistsUpdate' request conforms to.
type TasksTasklistsUpdateResource =
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
    Core.:> Core.Put '[Core.JSON] TaskList

-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ 'newTasksTasklistsUpdate' smart constructor.
data TasksTasklistsUpdate = TasksTasklistsUpdate
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

-- | Creates a value of 'TasksTasklistsUpdate' with the minimum fields required to make a request.
newTasksTasklistsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  TaskList ->
  -- |  Task list identifier. See 'tasklist'.
  Core.Text ->
  TasksTasklistsUpdate
newTasksTasklistsUpdate payload tasklist =
  TasksTasklistsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      tasklist = tasklist,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TasksTasklistsUpdate where
  type Rs TasksTasklistsUpdate = TaskList
  type
    Scopes TasksTasklistsUpdate =
      '[Tasks'FullControl]
  requestClient TasksTasklistsUpdate {..} =
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
          ( Core.Proxy ::
              Core.Proxy TasksTasklistsUpdateResource
          )
          Core.mempty

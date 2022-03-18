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
-- Module      : Gogol.AppsTasks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Tasks API lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference>
module Gogol.AppsTasks
  ( -- * Configuration
    appsTasksService,

    -- * OAuth Scopes
    tasksScope,
    tasksReadOnlyScope,

    -- * Resources

    -- ** tasks.tasklists.delete
    TasksTasklistsDeleteResource,
    newTasksTasklistsDelete,
    TasksTasklistsDelete,

    -- ** tasks.tasklists.get
    TasksTasklistsGetResource,
    newTasksTasklistsGet,
    TasksTasklistsGet,

    -- ** tasks.tasklists.insert
    TasksTasklistsInsertResource,
    newTasksTasklistsInsert,
    TasksTasklistsInsert,

    -- ** tasks.tasklists.list
    TasksTasklistsListResource,
    newTasksTasklistsList,
    TasksTasklistsList,

    -- ** tasks.tasklists.patch
    TasksTasklistsPatchResource,
    newTasksTasklistsPatch,
    TasksTasklistsPatch,

    -- ** tasks.tasklists.update
    TasksTasklistsUpdateResource,
    newTasksTasklistsUpdate,
    TasksTasklistsUpdate,

    -- ** tasks.tasks.clear
    TasksTasksClearResource,
    newTasksTasksClear,
    TasksTasksClear,

    -- ** tasks.tasks.delete
    TasksTasksDeleteResource,
    newTasksTasksDelete,
    TasksTasksDelete,

    -- ** tasks.tasks.get
    TasksTasksGetResource,
    newTasksTasksGet,
    TasksTasksGet,

    -- ** tasks.tasks.insert
    TasksTasksInsertResource,
    newTasksTasksInsert,
    TasksTasksInsert,

    -- ** tasks.tasks.list
    TasksTasksListResource,
    newTasksTasksList,
    TasksTasksList,

    -- ** tasks.tasks.move
    TasksTasksMoveResource,
    newTasksTasksMove,
    TasksTasksMove,

    -- ** tasks.tasks.patch
    TasksTasksPatchResource,
    newTasksTasksPatch,
    TasksTasksPatch,

    -- ** tasks.tasks.update
    TasksTasksUpdateResource,
    newTasksTasksUpdate,
    TasksTasksUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Task
    Task (..),
    newTask,

    -- ** Task_LinksItem
    Task_LinksItem (..),
    newTask_LinksItem,

    -- ** TaskList
    TaskList (..),
    newTaskList,

    -- ** TaskLists
    TaskLists (..),
    newTaskLists,

    -- ** Tasks
    Tasks (..),
    newTasks,
  )
where

import Gogol.AppsTasks.Tasks.Clear
import Gogol.AppsTasks.Tasks.Delete
import Gogol.AppsTasks.Tasks.Get
import Gogol.AppsTasks.Tasks.Insert
import Gogol.AppsTasks.Tasks.List
import Gogol.AppsTasks.Tasks.Move
import Gogol.AppsTasks.Tasks.Patch
import Gogol.AppsTasks.Tasks.Tasklists.Delete
import Gogol.AppsTasks.Tasks.Tasklists.Get
import Gogol.AppsTasks.Tasks.Tasklists.Insert
import Gogol.AppsTasks.Tasks.Tasklists.List
import Gogol.AppsTasks.Tasks.Tasklists.Patch
import Gogol.AppsTasks.Tasks.Tasklists.Update
import Gogol.AppsTasks.Tasks.Update
import Gogol.AppsTasks.Types

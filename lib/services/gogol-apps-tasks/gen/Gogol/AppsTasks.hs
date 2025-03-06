{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AppsTasks
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Tasks API lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/tasks/ Google Tasks API Reference>
module Gogol.AppsTasks
  ( -- * Configuration
    appsTasksService,

    -- * OAuth Scopes
    Tasks'FullControl,
    Tasks'Readonly,

    -- * Resources

    -- ** tasks.tasklists.delete
    TasksTasklistsDeleteResource,
    TasksTasklistsDelete (..),
    newTasksTasklistsDelete,

    -- ** tasks.tasklists.get
    TasksTasklistsGetResource,
    TasksTasklistsGet (..),
    newTasksTasklistsGet,

    -- ** tasks.tasklists.insert
    TasksTasklistsInsertResource,
    TasksTasklistsInsert (..),
    newTasksTasklistsInsert,

    -- ** tasks.tasklists.list
    TasksTasklistsListResource,
    TasksTasklistsList (..),
    newTasksTasklistsList,

    -- ** tasks.tasklists.patch
    TasksTasklistsPatchResource,
    TasksTasklistsPatch (..),
    newTasksTasklistsPatch,

    -- ** tasks.tasklists.update
    TasksTasklistsUpdateResource,
    TasksTasklistsUpdate (..),
    newTasksTasklistsUpdate,

    -- ** tasks.tasks.clear
    TasksTasksClearResource,
    TasksTasksClear (..),
    newTasksTasksClear,

    -- ** tasks.tasks.delete
    TasksTasksDeleteResource,
    TasksTasksDelete (..),
    newTasksTasksDelete,

    -- ** tasks.tasks.get
    TasksTasksGetResource,
    TasksTasksGet (..),
    newTasksTasksGet,

    -- ** tasks.tasks.insert
    TasksTasksInsertResource,
    TasksTasksInsert (..),
    newTasksTasksInsert,

    -- ** tasks.tasks.list
    TasksTasksListResource,
    TasksTasksList (..),
    newTasksTasksList,

    -- ** tasks.tasks.move
    TasksTasksMoveResource,
    TasksTasksMove (..),
    newTasksTasksMove,

    -- ** tasks.tasks.patch
    TasksTasksPatchResource,
    TasksTasksPatch (..),
    newTasksTasksPatch,

    -- ** tasks.tasks.update
    TasksTasksUpdateResource,
    TasksTasksUpdate (..),
    newTasksTasksUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AssignmentInfo
    AssignmentInfo (..),
    newAssignmentInfo,

    -- ** AssignmentInfo_SurfaceType
    AssignmentInfo_SurfaceType (..),

    -- ** DriveResourceInfo
    DriveResourceInfo (..),
    newDriveResourceInfo,

    -- ** SpaceInfo
    SpaceInfo (..),
    newSpaceInfo,

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

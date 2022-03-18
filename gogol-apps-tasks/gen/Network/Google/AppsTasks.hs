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
-- Module      : Network.Google.AppsTasks
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Tasks API lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference>
module Network.Google.AppsTasks
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

import Network.Google.AppsTasks.Tasks.Clear
import Network.Google.AppsTasks.Tasks.Delete
import Network.Google.AppsTasks.Tasks.Get
import Network.Google.AppsTasks.Tasks.Insert
import Network.Google.AppsTasks.Tasks.List
import Network.Google.AppsTasks.Tasks.Move
import Network.Google.AppsTasks.Tasks.Patch
import Network.Google.AppsTasks.Tasks.Tasklists.Delete
import Network.Google.AppsTasks.Tasks.Tasklists.Get
import Network.Google.AppsTasks.Tasks.Tasklists.Insert
import Network.Google.AppsTasks.Tasks.Tasklists.List
import Network.Google.AppsTasks.Tasks.Tasklists.Patch
import Network.Google.AppsTasks.Tasks.Tasklists.Update
import Network.Google.AppsTasks.Tasks.Update
import Network.Google.AppsTasks.Types

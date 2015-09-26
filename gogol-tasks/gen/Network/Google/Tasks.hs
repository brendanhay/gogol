{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Tasks
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference>
module Network.Google.Tasks
    (
    -- * Resources
      Tasks
    , TasksAPI
    , TasksInsert
    , TasksList
    , TasksPatch
    , TasksGet
    , TasksClear
    , TasksDelete
    , TasksUpdate
    , TasksMove
    , TasklistsAPI
    , TasklistsInsert
    , TasklistsList
    , TasklistsPatch
    , TasklistsGet
    , TasklistsDelete
    , TasklistsUpdate

    -- * Types

    -- ** Task
    , Task
    , task
    , tasParent
    , tasStatus
    , tasDue
    , tasEtag
    , tasKind
    , tasSelfLink
    , tasHidden
    , tasCompleted
    , tasId
    , tasDeleted
    , tasUpdated
    , tasTitle
    , tasLinks
    , tasNotes
    , tasPosition

    -- ** TaskItemLinks
    , TaskItemLinks
    , taskItemLinks
    , tilLink
    , tilType
    , tilDescription

    -- ** TaskList
    , TaskList
    , taskList
    , tEtag
    , tKind
    , tSelfLink
    , tId
    , tUpdated
    , tTitle

    -- ** TaskLists
    , TaskLists
    , taskLists
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlItems

    -- ** Tasks
    , Tasks
    , tasks
    , ttEtag
    , ttNextPageToken
    , ttKind
    , ttItems
    ) where

import           Network.Google.Tasks.Types

{- $resources
TODO
-}

type Tasks = TasklistsAPI :<|> TasksAPI

type TasksAPI =
     TasksList :<|>
       TasksPatch :<|>
         TasksGet :<|>
           TasksClear :<|>
             TasksDelete :<|>
               TasksUpdate :<|> TasksMove :<|> TasksInsert

-- | Creates a new task on the specified task list.
type TasksInsert =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> QueryParam "parent" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "previous" Text
       :> QueryParam "alt" Text

-- | Returns all tasks in the specified task list.
type TasksList =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "dueMax" Text
       :> QueryParam "showDeleted" Bool
       :> QueryParam "showCompleted" Bool
       :> QueryParam "dueMin" Text
       :> QueryParam "showHidden" Bool
       :> QueryParam "completedMax" Text
       :> QueryParam "key" Text
       :> QueryParam "updatedMin" Text
       :> QueryParam "completedMin" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the specified task. This method supports patch semantics.
type TasksPatch =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the specified task.
type TasksGet =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
type TasksClear =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "clear"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified task from the task list.
type TasksDelete =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the specified task.
type TasksUpdate =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Moves the specified task to another position in the task list. This can
-- include putting it as a child task under a new parent and\/or move it to
-- a different position among its sibling tasks.
type TasksMove =
     "tasks" :> "v1" :> "lists" :> Capture "tasklist" Text
       :> "tasks"
       :> Capture "task" Text
       :> "move"
       :> QueryParam "parent" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "previous" Text
       :> QueryParam "alt" Text

type TasklistsAPI =
     TasklistsList :<|>
       TasklistsPatch :<|>
         TasklistsGet :<|>
           TasklistsDelete :<|>
             TasklistsUpdate :<|> TasklistsInsert

-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
type TasklistsInsert =
     "tasks" :> "v1" :> "users" :> "@me" :> "lists" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns all the authenticated user\'s task lists.
type TasklistsList =
     "tasks" :> "v1" :> "users" :> "@me" :> "lists" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Int64
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
type TasklistsPatch =
     "tasks" :> "v1" :> "users" :> "@me" :> "lists" :>
       Capture "tasklist" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the authenticated user\'s specified task list.
type TasklistsGet =
     "tasks" :> "v1" :> "users" :> "@me" :> "lists" :>
       Capture "tasklist" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the authenticated user\'s specified task list.
type TasklistsDelete =
     "tasks" :> "v1" :> "users" :> "@me" :> "lists" :>
       Capture "tasklist" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the authenticated user\'s specified task list.
type TasklistsUpdate =
     "tasks" :> "v1" :> "users" :> "@me" :> "lists" :>
       Capture "tasklist" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

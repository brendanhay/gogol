{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppsTasks
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference>
module Network.Google.AppsTasks
    (
    -- * Service Configuration
      appsTasks

    -- * API Declaration
    , AppsTasksAPI

    -- * Resources

    -- ** TasksTaskListsDelete
    , module Network.Google.Resource.Tasks.TaskLists.Delete

    -- ** TasksTaskListsGet
    , module Network.Google.Resource.Tasks.TaskLists.Get

    -- ** TasksTaskListsInsert
    , module Network.Google.Resource.Tasks.TaskLists.Insert

    -- ** TasksTaskListsList
    , module Network.Google.Resource.Tasks.TaskLists.List

    -- ** TasksTaskListsPatch
    , module Network.Google.Resource.Tasks.TaskLists.Patch

    -- ** TasksTaskListsUpdate
    , module Network.Google.Resource.Tasks.TaskLists.Update

    -- ** TasksTasksClear
    , module Network.Google.Resource.Tasks.Tasks.Clear

    -- ** TasksTasksDelete
    , module Network.Google.Resource.Tasks.Tasks.Delete

    -- ** TasksTasksGet
    , module Network.Google.Resource.Tasks.Tasks.Get

    -- ** TasksTasksInsert
    , module Network.Google.Resource.Tasks.Tasks.Insert

    -- ** TasksTasksList
    , module Network.Google.Resource.Tasks.Tasks.List

    -- ** TasksTasksMove
    , module Network.Google.Resource.Tasks.Tasks.Move

    -- ** TasksTasksPatch
    , module Network.Google.Resource.Tasks.Tasks.Patch

    -- ** TasksTasksUpdate
    , module Network.Google.Resource.Tasks.Tasks.Update

    -- * Types

    -- ** TaskLinksItem
    , TaskLinksItem
    , taskLinksItem
    , tliLink
    , tliType
    , tliDescription

    -- ** Tasks
    , Tasks
    , tasks
    , tEtag
    , tNextPageToken
    , tKind
    , tItems

    -- ** TaskLists
    , TaskLists
    , taskLists
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlItems

    -- ** TaskList
    , TaskList
    , taskList
    , tasEtag
    , tasKind
    , tasSelfLink
    , tasId
    , tasUpdated
    , tasTitle

    -- ** Task
    , Task
    , task
    , ttParent
    , ttStatus
    , ttDue
    , ttEtag
    , ttKind
    , ttSelfLink
    , ttHidden
    , ttCompleted
    , ttId
    , ttDeleted
    , ttUpdated
    , ttTitle
    , ttLinks
    , ttNotes
    , ttPosition
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Tasks.TaskLists.Delete
import           Network.Google.Resource.Tasks.TaskLists.Get
import           Network.Google.Resource.Tasks.TaskLists.Insert
import           Network.Google.Resource.Tasks.TaskLists.List
import           Network.Google.Resource.Tasks.TaskLists.Patch
import           Network.Google.Resource.Tasks.TaskLists.Update
import           Network.Google.Resource.Tasks.Tasks.Clear
import           Network.Google.Resource.Tasks.Tasks.Delete
import           Network.Google.Resource.Tasks.Tasks.Get
import           Network.Google.Resource.Tasks.Tasks.Insert
import           Network.Google.Resource.Tasks.Tasks.List
import           Network.Google.Resource.Tasks.Tasks.Move
import           Network.Google.Resource.Tasks.Tasks.Patch
import           Network.Google.Resource.Tasks.Tasks.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Tasks API service.
type AppsTasksAPI =
     TasksInsertResource :<|> TasksListResource :<|>
       TasksPatchResource
       :<|> TasksGetResource
       :<|> TasksClearResource
       :<|> TasksDeleteResource
       :<|> TasksUpdateResource
       :<|> TasksMoveResource
       :<|> TaskListsInsertResource
       :<|> TaskListsListResource
       :<|> TaskListsPatchResource
       :<|> TaskListsGetResource
       :<|> TaskListsDeleteResource
       :<|> TaskListsUpdateResource

{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | Lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference>
module Network.Google.AppsTasks
    (
    -- * API
      AppsTasksAPI
    , appsTasksAPI
    , appsTasksURL

    -- * Service Methods

    -- * REST Resources

    -- ** TasksTasklistsDelete
    , module Tasks.Tasklists.Delete

    -- ** TasksTasklistsGet
    , module Tasks.Tasklists.Get

    -- ** TasksTasklistsInsert
    , module Tasks.Tasklists.Insert

    -- ** TasksTasklistsList
    , module Tasks.Tasklists.List

    -- ** TasksTasklistsPatch
    , module Tasks.Tasklists.Patch

    -- ** TasksTasklistsUpdate
    , module Tasks.Tasklists.Update

    -- ** TasksTasksClear
    , module Tasks.Tasks.Clear

    -- ** TasksTasksDelete
    , module Tasks.Tasks.Delete

    -- ** TasksTasksGet
    , module Tasks.Tasks.Get

    -- ** TasksTasksInsert
    , module Tasks.Tasks.Insert

    -- ** TasksTasksList
    , module Tasks.Tasks.List

    -- ** TasksTasksMove
    , module Tasks.Tasks.Move

    -- ** TasksTasksPatch
    , module Tasks.Tasks.Patch

    -- ** TasksTasksUpdate
    , module Tasks.Tasks.Update

    -- * Types

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
import           Network.Google.Resource.Tasks.Tasklists.Delete
import           Network.Google.Resource.Tasks.Tasklists.Get
import           Network.Google.Resource.Tasks.Tasklists.Insert
import           Network.Google.Resource.Tasks.Tasklists.List
import           Network.Google.Resource.Tasks.Tasklists.Patch
import           Network.Google.Resource.Tasks.Tasklists.Update
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

type AppsTasksAPI = Tasks :<|> Tasklists

appsTasksAPI :: Proxy AppsTasksAPI
appsTasksAPI = Proxy

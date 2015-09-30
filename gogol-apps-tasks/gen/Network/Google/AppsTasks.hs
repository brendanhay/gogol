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
    , module Network.Google.Resource.Tasks.Tasklists.Delete

    -- ** TasksTasklistsGet
    , module Network.Google.Resource.Tasks.Tasklists.Get

    -- ** TasksTasklistsInsert
    , module Network.Google.Resource.Tasks.Tasklists.Insert

    -- ** TasksTasklistsList
    , module Network.Google.Resource.Tasks.Tasklists.List

    -- ** TasksTasklistsPatch
    , module Network.Google.Resource.Tasks.Tasklists.Patch

    -- ** TasksTasklistsUpdate
    , module Network.Google.Resource.Tasks.Tasklists.Update

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

    -- ** Tasks
    , Tasks
    , tasks
    , tEtag
    , tNextPageToken
    , tKind
    , tItems

    -- ** TaskLinks
    , TaskLinks
    , taskLinks
    , tlLink
    , tlType
    , tlDescription

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

    -- ** Alt
    , Alt (..)
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

type AppsTasksAPI =
     TasksInsertResource :<|> TasksListResource :<|>
       TasksPatchResource
       :<|> TasksGetResource
       :<|> TasksClearResource
       :<|> TasksDeleteResource
       :<|> TasksUpdateResource
       :<|> TasksMoveResource
       :<|> TasklistsInsertResource
       :<|> TasklistsListResource
       :<|> TasklistsPatchResource
       :<|> TasklistsGetResource
       :<|> TasklistsDeleteResource
       :<|> TasklistsUpdateResource

appsTasksAPI :: Proxy AppsTasksAPI
appsTasksAPI = Proxy

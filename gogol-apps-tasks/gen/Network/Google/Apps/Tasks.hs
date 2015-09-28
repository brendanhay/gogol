{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Apps.Tasks
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference>
module Network.Google.Apps.Tasks
    (
    -- * REST Resources

    -- ** Tasks API
      AppsTasks
    , appsTasks
    , appsTasksURL

    -- ** tasks.tasklists.delete
    , module Network.Google.API.Tasks.Tasklists.Delete

    -- ** tasks.tasklists.get
    , module Network.Google.API.Tasks.Tasklists.Get

    -- ** tasks.tasklists.insert
    , module Network.Google.API.Tasks.Tasklists.Insert

    -- ** tasks.tasklists.list
    , module Network.Google.API.Tasks.Tasklists.List

    -- ** tasks.tasklists.patch
    , module Network.Google.API.Tasks.Tasklists.Patch

    -- ** tasks.tasklists.update
    , module Network.Google.API.Tasks.Tasklists.Update

    -- ** tasks.tasks.clear
    , module Network.Google.API.Tasks.Tasks.Clear

    -- ** tasks.tasks.delete
    , module Network.Google.API.Tasks.Tasks.Delete

    -- ** tasks.tasks.get
    , module Network.Google.API.Tasks.Tasks.Get

    -- ** tasks.tasks.insert
    , module Network.Google.API.Tasks.Tasks.Insert

    -- ** tasks.tasks.list
    , module Network.Google.API.Tasks.Tasks.List

    -- ** tasks.tasks.move
    , module Network.Google.API.Tasks.Tasks.Move

    -- ** tasks.tasks.patch
    , module Network.Google.API.Tasks.Tasks.Patch

    -- ** tasks.tasks.update
    , module Network.Google.API.Tasks.Tasks.Update

    -- * Types

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
    , tEtag
    , tKind
    , tSelfLink
    , tId
    , tUpdated
    , tTitle

    -- ** Alt
    , Alt (..)

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

    -- ** Tasks
    , Tasks
    , tasks
    , ttEtag
    , ttNextPageToken
    , ttKind
    , ttItems

    -- ** TaskItemLinks
    , TaskItemLinks
    , taskItemLinks
    , tilLink
    , tilType
    , tilDescription
    ) where

import           Network.Google.API.Tasks.Tasklists.Delete
import           Network.Google.API.Tasks.Tasklists.Get
import           Network.Google.API.Tasks.Tasklists.Insert
import           Network.Google.API.Tasks.Tasklists.List
import           Network.Google.API.Tasks.Tasklists.Patch
import           Network.Google.API.Tasks.Tasklists.Update
import           Network.Google.API.Tasks.Tasks.Clear
import           Network.Google.API.Tasks.Tasks.Delete
import           Network.Google.API.Tasks.Tasks.Get
import           Network.Google.API.Tasks.Tasks.Insert
import           Network.Google.API.Tasks.Tasks.List
import           Network.Google.API.Tasks.Tasks.Move
import           Network.Google.API.Tasks.Tasks.Patch
import           Network.Google.API.Tasks.Tasks.Update
import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppsTasks =
     TasklistsPatchAPI :<|> TasksGetAPI :<|> TasksListAPI
       :<|> TasklistsInsertAPI
       :<|> TasksPatchAPI
       :<|> TasklistsDeleteAPI
       :<|> TasksDeleteAPI
       :<|> TasksMoveAPI
       :<|> TasklistsUpdateAPI
       :<|> TasklistsGetAPI
       :<|> TasklistsListAPI
       :<|> TasksUpdateAPI
       :<|> TasksClearAPI
       :<|> TasksInsertAPI

appsTasks :: Proxy AppsTasks
appsTasks = Proxy

-- |
-- Module      : Network.Google.Tasks
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you manage your tasks and task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference>
module Network.Google.Tasks
    (
    -- * API Definition
      Tasks



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

type Tasks = ()

tasks :: Proxy Tasks
tasks = Proxy





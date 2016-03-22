{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.TaskQueue
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you access a Google App Engine Pull Task Queue over REST.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference>
module Network.Google.TaskQueue
    (
    -- * Service Configuration
      taskQueueService

    -- * OAuth Scopes
    , taskQueueConsumerScope
    , taskQueueScope

    -- * API Declaration
    , TaskQueueAPI

    -- * Resources

    -- ** taskqueue.taskqueues.get
    , module Network.Google.Resource.TaskQueue.Taskqueues.Get

    -- ** taskqueue.tasks.delete
    , module Network.Google.Resource.TaskQueue.Tasks.Delete

    -- ** taskqueue.tasks.get
    , module Network.Google.Resource.TaskQueue.Tasks.Get

    -- ** taskqueue.tasks.insert
    , module Network.Google.Resource.TaskQueue.Tasks.Insert

    -- ** taskqueue.tasks.lease
    , module Network.Google.Resource.TaskQueue.Tasks.Lease

    -- ** taskqueue.tasks.list
    , module Network.Google.Resource.TaskQueue.Tasks.List

    -- ** taskqueue.tasks.patch
    , module Network.Google.Resource.TaskQueue.Tasks.Patch

    -- ** taskqueue.tasks.update
    , module Network.Google.Resource.TaskQueue.Tasks.Update

    -- * Types

    -- ** Tasks2
    , Tasks2
    , tasks2
    , tKind
    , tItems

    -- ** TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqACL

    -- ** TaskQueueACL
    , TaskQueueACL
    , taskQueueACL
    , tqaProducerEmails
    , tqaAdminEmails
    , tqaConsumerEmails

    -- ** TaskQueueStats
    , TaskQueueStats
    , taskQueueStats
    , tqsTotalTasks
    , tqsOldestTask
    , tqsLeasedLastHour
    , tqsLeasedLastMinute

    -- ** Tasks
    , Tasks
    , tasks
    , tasKind
    , tasItems

    -- ** Task
    , Task
    , task
    , ttRetryCount
    , ttEnqueueTimestamp
    , ttTag
    , ttKind
    , ttQueueName
    , ttPayloadBase64
    , ttId
    , ttLeaseTimestamp
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.TaskQueue.Taskqueues.Get
import           Network.Google.Resource.TaskQueue.Tasks.Delete
import           Network.Google.Resource.TaskQueue.Tasks.Get
import           Network.Google.Resource.TaskQueue.Tasks.Insert
import           Network.Google.Resource.TaskQueue.Tasks.Lease
import           Network.Google.Resource.TaskQueue.Tasks.List
import           Network.Google.Resource.TaskQueue.Tasks.Patch
import           Network.Google.Resource.TaskQueue.Tasks.Update
import           Network.Google.TaskQueue.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the TaskQueue API service.
type TaskQueueAPI =
     TasksInsertResource :<|> TasksListResource :<|>
       TasksPatchResource
       :<|> TasksGetResource
       :<|> TasksLeaseResource
       :<|> TasksDeleteResource
       :<|> TasksUpdateResource
       :<|> TaskqueuesGetResource

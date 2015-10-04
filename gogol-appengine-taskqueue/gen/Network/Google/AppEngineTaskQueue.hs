{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngineTaskQueue
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you access a Google App Engine Pull Task Queue over REST.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference>
module Network.Google.AppEngineTaskQueue
    (
    -- * API
      AppEngineTaskQueueAPI
    , appEngineTaskQueueAPI
    , appEngineTaskQueueURL

    -- * Service Methods

    -- * REST Resources

    -- ** TaskqueueTaskqueuesGet
    , module Network.Google.Resource.Taskqueue.Taskqueues.Get

    -- ** TaskqueueTasksDelete
    , module Network.Google.Resource.Taskqueue.Tasks.Delete

    -- ** TaskqueueTasksGet
    , module Network.Google.Resource.Taskqueue.Tasks.Get

    -- ** TaskqueueTasksInsert
    , module Network.Google.Resource.Taskqueue.Tasks.Insert

    -- ** TaskqueueTasksLease
    , module Network.Google.Resource.Taskqueue.Tasks.Lease

    -- ** TaskqueueTasksList
    , module Network.Google.Resource.Taskqueue.Tasks.List

    -- ** TaskqueueTasksPatch
    , module Network.Google.Resource.Taskqueue.Tasks.Patch

    -- ** TaskqueueTasksUpdate
    , module Network.Google.Resource.Taskqueue.Tasks.Update

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

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Taskqueue.Taskqueues.Get
import           Network.Google.Resource.Taskqueue.Tasks.Delete
import           Network.Google.Resource.Taskqueue.Tasks.Get
import           Network.Google.Resource.Taskqueue.Tasks.Insert
import           Network.Google.Resource.Taskqueue.Tasks.Lease
import           Network.Google.Resource.Taskqueue.Tasks.List
import           Network.Google.Resource.Taskqueue.Tasks.Patch
import           Network.Google.Resource.Taskqueue.Tasks.Update

{- $resources
TODO
-}

type AppEngineTaskQueueAPI =
     TasksInsertResource :<|> TasksListResource :<|>
       TasksPatchResource
       :<|> TasksGetResource
       :<|> TasksLeaseResource
       :<|> TasksDeleteResource
       :<|> TasksUpdateResource
       :<|> TaskqueuesGetResource

appEngineTaskQueueAPI :: Proxy AppEngineTaskQueueAPI
appEngineTaskQueueAPI = Proxy

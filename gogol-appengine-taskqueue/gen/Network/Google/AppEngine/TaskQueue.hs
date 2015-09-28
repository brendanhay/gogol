{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppEngine.TaskQueue
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you access a Google App Engine Pull Task Queue over REST.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference>
module Network.Google.AppEngine.TaskQueue
    (
    -- * REST Resources

    -- ** TaskQueue API
      AppEngineTaskQueue
    , appEngineTaskQueue
    , appEngineTaskQueueURL

    -- ** taskqueue.taskqueues.get
    , module Network.Google.API.Taskqueue.Taskqueues.Get

    -- ** taskqueue.tasks.delete
    , module Network.Google.API.Taskqueue.Tasks.Delete

    -- ** taskqueue.tasks.get
    , module Network.Google.API.Taskqueue.Tasks.Get

    -- ** taskqueue.tasks.insert
    , module Network.Google.API.Taskqueue.Tasks.Insert

    -- ** taskqueue.tasks.lease
    , module Network.Google.API.Taskqueue.Tasks.Lease

    -- ** taskqueue.tasks.list
    , module Network.Google.API.Taskqueue.Tasks.List

    -- ** taskqueue.tasks.patch
    , module Network.Google.API.Taskqueue.Tasks.Patch

    -- ** taskqueue.tasks.update
    , module Network.Google.API.Taskqueue.Tasks.Update

    -- * Types

    -- ** Alt
    , Alt (..)

    -- ** Task
    , Task
    , task
    , tRetryCount
    , tEnqueueTimestamp
    , tTag
    , tKind
    , tQueueName
    , tPayloadBase64
    , tId
    , tLeaseTimestamp

    -- ** Tasks
    , Tasks
    , tasks
    , tasKind
    , tasItems

    -- ** Tasks2
    , Tasks2
    , tasks2
    , ttKind
    , ttItems

    -- ** TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqAcl

    -- ** TaskQueueStats
    , TaskQueueStats
    , taskQueueStats
    , tqsTotalTasks
    , tqsOldestTask
    , tqsLeasedLastHour
    , tqsLeasedLastMinute

    -- ** TaskQueueAcl
    , TaskQueueAcl
    , taskQueueAcl
    , tqaProducerEmails
    , tqaAdminEmails
    , tqaConsumerEmails
    ) where

import           Network.Google.API.Taskqueue.Taskqueues.Get
import           Network.Google.API.Taskqueue.Tasks.Delete
import           Network.Google.API.Taskqueue.Tasks.Get
import           Network.Google.API.Taskqueue.Tasks.Insert
import           Network.Google.API.Taskqueue.Tasks.Lease
import           Network.Google.API.Taskqueue.Tasks.List
import           Network.Google.API.Taskqueue.Tasks.Patch
import           Network.Google.API.Taskqueue.Tasks.Update
import           Network.Google.AppEngine.TaskQueue.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppEngineTaskQueue =
     TasksGetAPI :<|> TasksListAPI :<|> TasksPatchAPI :<|>
       TaskqueuesGetAPI
       :<|> TasksDeleteAPI
       :<|> TasksLeaseAPI
       :<|> TasksUpdateAPI
       :<|> TasksInsertAPI

appEngineTaskQueue :: Proxy AppEngineTaskQueue
appEngineTaskQueue = Proxy

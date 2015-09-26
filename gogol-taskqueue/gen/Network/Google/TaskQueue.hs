-- |
-- Module      : Network.Google.TaskQueue
-- Copyright   : (c) 2015 Brendan Hay
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
    -- * API Definition
      TaskQueue



    -- * Types

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

    -- ** TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqAcl

    -- ** TaskQueueAcl
    , TaskQueueAcl
    , taskQueueAcl
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

    -- ** Tasks2
    , Tasks2
    , tasks2
    , ttKind
    , ttItems
    ) where

import           Network.Google.TaskQueue.Types

{- $resources
TODO
-}

type TaskQueue = ()

taskQueue :: Proxy TaskQueue
taskQueue = Proxy





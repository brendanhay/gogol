{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.TaskQueue
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you access a Google App Engine Pull Task Queue over REST.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference>
module Network.Google.TaskQueue
    (
    -- * Resources
      TaskQueue
    , TasksAPI
    , TasksInsert
    , TasksList
    , TasksPatch
    , TasksGet
    , TasksLease
    , TasksDelete
    , TasksUpdate
    , TaskqueuesAPI
    , TaskqueuesGet

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

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

{- $resources
TODO
-}

type TaskQueue = TaskqueuesAPI :<|> TasksAPI

type TasksAPI =
     TasksList :<|>
       TasksPatch :<|>
         TasksGet :<|>
           TasksLease :<|>
             TasksDelete :<|> TasksUpdate :<|> TasksInsert

-- | Insert a new task in a TaskQueue
type TasksInsert =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List Tasks in a TaskQueue
type TasksList =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update tasks that are leased out of a TaskQueue. This method supports
-- patch semantics.
type TasksPatch =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "newLeaseSeconds" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a particular task from a TaskQueue.
type TasksGet =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lease 1 or more tasks from a TaskQueue.
type TasksLease =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> "lease"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "tag" Text
       :> QueryParam "userIp" Text
       :> QueryParam "numTasks" Int32
       :> QueryParam "key" Text
       :> QueryParam "leaseSecs" Int32
       :> QueryParam "oauth_token" Text
       :> QueryParam "groupByTag" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a task from a TaskQueue.
type TasksDelete =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update tasks that are leased out of a TaskQueue.
type TasksUpdate =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> "tasks"
       :> Capture "task" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "newLeaseSeconds" Int32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TaskqueuesAPI = TaskqueuesGet

-- | Get detailed information about a TaskQueue.
type TaskqueuesGet =
     "taskqueue" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "taskqueues"
       :> Capture "taskqueue" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "getStats" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

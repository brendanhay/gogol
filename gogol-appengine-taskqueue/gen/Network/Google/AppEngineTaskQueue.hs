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
-- -- | Lets you access a Google App Engine Pull Task Queue over REST.
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
    , module Taskqueue.Taskqueues.Get

    -- ** TaskqueueTasksDelete
    , module Taskqueue.Tasks.Delete

    -- ** TaskqueueTasksGet
    , module Taskqueue.Tasks.Get

    -- ** TaskqueueTasksInsert
    , module Taskqueue.Tasks.Insert

    -- ** TaskqueueTasksLease
    , module Taskqueue.Tasks.Lease

    -- ** TaskqueueTasksList
    , module Taskqueue.Tasks.List

    -- ** TaskqueueTasksPatch
    , module Taskqueue.Tasks.Patch

    -- ** TaskqueueTasksUpdate
    , module Taskqueue.Tasks.Update

    -- * Types

    -- ** TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqAcl

    -- ** Tasks2
    , Tasks2
    , tasks2
    , tKind
    , tItems

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

type AppEngineTaskQueueAPI = Tasks :<|> Taskqueues

appEngineTaskQueueAPI :: Proxy AppEngineTaskQueueAPI
appEngineTaskQueueAPI = Proxy

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TaskQueue.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TaskQueue.Types
    (
    -- * Service Configuration
      taskQueueService

    -- * OAuth Scopes
    , authTaskqueueConsumerScope
    , authTaskqueueScope

    -- * Tasks2
    , Tasks2
    , tasks2
    , tKind
    , tItems

    -- * TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqACL

    -- * TaskQueueACL
    , TaskQueueACL
    , taskQueueACL
    , tqaProducerEmails
    , tqaAdminEmails
    , tqaConsumerEmails

    -- * TaskQueueStats
    , TaskQueueStats
    , taskQueueStats
    , tqsTotalTasks
    , tqsOldestTask
    , tqsLeasedLastHour
    , tqsLeasedLastMinute

    -- * Tasks
    , Tasks
    , tasks
    , tasKind
    , tasItems

    -- * Task
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
import           Network.Google.TaskQueue.Types.Product
import           Network.Google.TaskQueue.Types.Sum

-- | Default request referring to version 'v1beta2' of the TaskQueue API. This contains the host and root path used as a starting point for constructing service requests.
taskQueueService :: ServiceConfig
taskQueueService
  = defaultService (ServiceId "taskqueue:v1beta2")
      "www.googleapis.com"

-- | Consume Tasks from your Taskqueues
authTaskqueueConsumerScope :: OAuthScope
authTaskqueueConsumerScope = "https://www.googleapis.com/auth/taskqueue.consumer";

-- | Manage your Tasks and Taskqueues
authTaskqueueScope :: OAuthScope
authTaskqueueScope = "https://www.googleapis.com/auth/taskqueue";

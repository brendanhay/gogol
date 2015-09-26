{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.TaskQueue.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TaskQueue.Types
    (
    -- * API Definition
      taskqueue


    -- * Task
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

    -- * TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqAcl

    -- * TaskQueueAcl
    , TaskQueueAcl
    , taskQueueAcl
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

    -- * Tasks2
    , Tasks2
    , tasks2
    , ttKind
    , ttItems
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types.Product
import           Network.Google.TaskQueue.Types.Sum

taskqueue :: a
taskqueue = error "taskqueue"

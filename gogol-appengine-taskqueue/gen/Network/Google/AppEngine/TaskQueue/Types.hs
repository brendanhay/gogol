{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.TaskQueue.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.TaskQueue.Types
    (
    -- * Service URL
      appEngineTaskQueueURL

    -- * Alt
    , Alt (..)

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

    -- * TaskQueue
    , TaskQueue
    , taskQueue
    , tqKind
    , tqStats
    , tqMaxLeases
    , tqId
    , tqAcl

    -- * TaskQueueStats
    , TaskQueueStats
    , taskQueueStats
    , tqsTotalTasks
    , tqsOldestTask
    , tqsLeasedLastHour
    , tqsLeasedLastMinute

    -- * TaskQueueAcl
    , TaskQueueAcl
    , taskQueueAcl
    , tqaProducerEmails
    , tqaAdminEmails
    , tqaConsumerEmails
    ) where

import           Network.Google.AppEngine.TaskQueue.Types.Product
import           Network.Google.AppEngine.TaskQueue.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta2' of the TaskQueue API.
appEngineTaskQueueURL :: BaseUrl
appEngineTaskQueueURL
  = BaseUrl Https
      "https://www.googleapis.com/taskqueue/v1beta2/projects/"
      443

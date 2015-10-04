{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngineTaskQueue.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngineTaskQueue.Types
    (
    -- * Service URL
      appEngineTaskQueueURL

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

import           Network.Google.AppEngineTaskQueue.Types.Product
import           Network.Google.AppEngineTaskQueue.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1beta2' of the TaskQueue API.
appEngineTaskQueueURL :: BaseUrl
appEngineTaskQueueURL
  = BaseUrl Https
      "https://www.googleapis.com/taskqueue/v1beta2/projects/"
      443

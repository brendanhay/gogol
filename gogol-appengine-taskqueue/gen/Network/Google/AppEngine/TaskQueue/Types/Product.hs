{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.TaskQueue.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.TaskQueue.Types.Product where

import           Network.Google.AppEngine.TaskQueue.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'task' smart constructor.
data Task = Task
    { _tRetryCount       :: !(Maybe Int32)
    , _tEnqueueTimestamp :: !(Maybe Int64)
    , _tTag              :: !(Maybe Text)
    , _tKind             :: !Text
    , _tQueueName        :: !(Maybe Text)
    , _tPayloadBase64    :: !(Maybe Text)
    , _tId               :: !(Maybe Text)
    , _tLeaseTimestamp   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tRetryCount'
--
-- * 'tEnqueueTimestamp'
--
-- * 'tTag'
--
-- * 'tKind'
--
-- * 'tQueueName'
--
-- * 'tPayloadBase64'
--
-- * 'tId'
--
-- * 'tLeaseTimestamp'
task
    :: Task
task =
    Task
    { _tRetryCount = Nothing
    , _tEnqueueTimestamp = Nothing
    , _tTag = Nothing
    , _tKind = "taskqueues#task"
    , _tQueueName = Nothing
    , _tPayloadBase64 = Nothing
    , _tId = Nothing
    , _tLeaseTimestamp = Nothing
    }

-- | The number of leases applied to this task.
tRetryCount :: Lens' Task (Maybe Int32)
tRetryCount
  = lens _tRetryCount (\ s a -> s{_tRetryCount = a})

-- | Time (in seconds since the epoch) at which the task was enqueued.
tEnqueueTimestamp :: Lens' Task (Maybe Int64)
tEnqueueTimestamp
  = lens _tEnqueueTimestamp
      (\ s a -> s{_tEnqueueTimestamp = a})

-- | Tag for the task, could be used later to lease tasks grouped by a
-- specific tag.
tTag :: Lens' Task (Maybe Text)
tTag = lens _tTag (\ s a -> s{_tTag = a})

-- | The kind of object returned, in this case set to task.
tKind :: Lens' Task Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | Name of the queue that the task is in.
tQueueName :: Lens' Task (Maybe Text)
tQueueName
  = lens _tQueueName (\ s a -> s{_tQueueName = a})

-- | A bag of bytes which is the task payload. The payload on the JSON side
-- is always Base64 encoded.
tPayloadBase64 :: Lens' Task (Maybe Text)
tPayloadBase64
  = lens _tPayloadBase64
      (\ s a -> s{_tPayloadBase64 = a})

-- | Name of the task.
tId :: Lens' Task (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

-- | Time (in seconds since the epoch) at which the task lease will expire.
-- This value is 0 if the task isnt currently leased out to a worker.
tLeaseTimestamp :: Lens' Task (Maybe Int64)
tLeaseTimestamp
  = lens _tLeaseTimestamp
      (\ s a -> s{_tLeaseTimestamp = a})

--
-- /See:/ 'taskQueue' smart constructor.
data TaskQueue = TaskQueue
    { _tqKind      :: !Text
    , _tqStats     :: !(Maybe TaskQueueStats)
    , _tqMaxLeases :: !(Maybe Int32)
    , _tqId        :: !(Maybe Text)
    , _tqAcl       :: !(Maybe TaskQueueAcl)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tqKind'
--
-- * 'tqStats'
--
-- * 'tqMaxLeases'
--
-- * 'tqId'
--
-- * 'tqAcl'
taskQueue
    :: TaskQueue
taskQueue =
    TaskQueue
    { _tqKind = "taskqueues#taskqueue"
    , _tqStats = Nothing
    , _tqMaxLeases = Nothing
    , _tqId = Nothing
    , _tqAcl = Nothing
    }

-- | The kind of REST object returned, in this case taskqueue.
tqKind :: Lens' TaskQueue Text
tqKind = lens _tqKind (\ s a -> s{_tqKind = a})

-- | Statistics for the TaskQueue object in question.
tqStats :: Lens' TaskQueue (Maybe TaskQueueStats)
tqStats = lens _tqStats (\ s a -> s{_tqStats = a})

-- | The number of times we should lease out tasks before giving up on them.
-- If unset we lease them out forever until a worker deletes the task.
tqMaxLeases :: Lens' TaskQueue (Maybe Int32)
tqMaxLeases
  = lens _tqMaxLeases (\ s a -> s{_tqMaxLeases = a})

-- | Name of the taskqueue.
tqId :: Lens' TaskQueue (Maybe Text)
tqId = lens _tqId (\ s a -> s{_tqId = a})

-- | ACLs that are applicable to this TaskQueue object.
tqAcl :: Lens' TaskQueue (Maybe TaskQueueAcl)
tqAcl = lens _tqAcl (\ s a -> s{_tqAcl = a})

-- | ACLs that are applicable to this TaskQueue object.
--
-- /See:/ 'taskQueueAcl' smart constructor.
data TaskQueueAcl = TaskQueueAcl
    { _tqaProducerEmails :: !(Maybe [Text])
    , _tqaAdminEmails    :: !(Maybe [Text])
    , _tqaConsumerEmails :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskQueueAcl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tqaProducerEmails'
--
-- * 'tqaAdminEmails'
--
-- * 'tqaConsumerEmails'
taskQueueAcl
    :: TaskQueueAcl
taskQueueAcl =
    TaskQueueAcl
    { _tqaProducerEmails = Nothing
    , _tqaAdminEmails = Nothing
    , _tqaConsumerEmails = Nothing
    }

-- | Email addresses of users who can \"produce\" tasks into the TaskQueue.
-- This means they can Insert tasks into the queue.
tqaProducerEmails :: Lens' TaskQueueAcl [Text]
tqaProducerEmails
  = lens _tqaProducerEmails
      (\ s a -> s{_tqaProducerEmails = a})
      . _Default
      . _Coerce

-- | Email addresses of users who are \"admins\" of the TaskQueue. This means
-- they can control the queue, eg set ACLs for the queue.
tqaAdminEmails :: Lens' TaskQueueAcl [Text]
tqaAdminEmails
  = lens _tqaAdminEmails
      (\ s a -> s{_tqaAdminEmails = a})
      . _Default
      . _Coerce

-- | Email addresses of users who can \"consume\" tasks from the TaskQueue.
-- This means they can Dequeue and Delete tasks from the queue.
tqaConsumerEmails :: Lens' TaskQueueAcl [Text]
tqaConsumerEmails
  = lens _tqaConsumerEmails
      (\ s a -> s{_tqaConsumerEmails = a})
      . _Default
      . _Coerce

-- | Statistics for the TaskQueue object in question.
--
-- /See:/ 'taskQueueStats' smart constructor.
data TaskQueueStats = TaskQueueStats
    { _tqsTotalTasks       :: !(Maybe Int32)
    , _tqsOldestTask       :: !(Maybe Int64)
    , _tqsLeasedLastHour   :: !(Maybe Int64)
    , _tqsLeasedLastMinute :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskQueueStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tqsTotalTasks'
--
-- * 'tqsOldestTask'
--
-- * 'tqsLeasedLastHour'
--
-- * 'tqsLeasedLastMinute'
taskQueueStats
    :: TaskQueueStats
taskQueueStats =
    TaskQueueStats
    { _tqsTotalTasks = Nothing
    , _tqsOldestTask = Nothing
    , _tqsLeasedLastHour = Nothing
    , _tqsLeasedLastMinute = Nothing
    }

-- | Number of tasks in the queue.
tqsTotalTasks :: Lens' TaskQueueStats (Maybe Int32)
tqsTotalTasks
  = lens _tqsTotalTasks
      (\ s a -> s{_tqsTotalTasks = a})

-- | The timestamp (in seconds since the epoch) of the oldest unfinished
-- task.
tqsOldestTask :: Lens' TaskQueueStats (Maybe Int64)
tqsOldestTask
  = lens _tqsOldestTask
      (\ s a -> s{_tqsOldestTask = a})

-- | Number of tasks leased in the last hour.
tqsLeasedLastHour :: Lens' TaskQueueStats (Maybe Int64)
tqsLeasedLastHour
  = lens _tqsLeasedLastHour
      (\ s a -> s{_tqsLeasedLastHour = a})

-- | Number of tasks leased in the last minute.
tqsLeasedLastMinute :: Lens' TaskQueueStats (Maybe Int64)
tqsLeasedLastMinute
  = lens _tqsLeasedLastMinute
      (\ s a -> s{_tqsLeasedLastMinute = a})

--
-- /See:/ 'tasks' smart constructor.
data Tasks = Tasks
    { _tasKind  :: !Text
    , _tasItems :: !(Maybe [Maybe Task])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasKind'
--
-- * 'tasItems'
tasks
    :: Tasks
tasks =
    Tasks
    { _tasKind = "taskqueue#tasks"
    , _tasItems = Nothing
    }

-- | The kind of object returned, a list of tasks.
tasKind :: Lens' Tasks Text
tasKind = lens _tasKind (\ s a -> s{_tasKind = a})

-- | The actual list of tasks returned as a result of the lease operation.
tasItems :: Lens' Tasks [Maybe Task]
tasItems
  = lens _tasItems (\ s a -> s{_tasItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'tasks2' smart constructor.
data Tasks2 = Tasks2
    { _ttKind  :: !Text
    , _ttItems :: !(Maybe [Maybe Task])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tasks2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttKind'
--
-- * 'ttItems'
tasks2
    :: Tasks2
tasks2 =
    Tasks2
    { _ttKind = "taskqueues#tasks"
    , _ttItems = Nothing
    }

-- | The kind of object returned, a list of tasks.
ttKind :: Lens' Tasks2 Text
ttKind = lens _ttKind (\ s a -> s{_ttKind = a})

-- | The actual list of tasks currently active in the TaskQueue.
ttItems :: Lens' Tasks2 [Maybe Task]
ttItems
  = lens _ttItems (\ s a -> s{_ttItems = a}) . _Default
      . _Coerce

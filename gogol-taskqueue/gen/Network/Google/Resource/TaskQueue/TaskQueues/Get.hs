{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.TaskQueue.TaskQueues.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get detailed information about a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.taskqueues.get@.
module Network.Google.Resource.TaskQueue.TaskQueues.Get
    (
    -- * REST Resource
      TaskQueuesGetResource

    -- * Creating a Request
    , taskQueuesGet
    , TaskQueuesGet

    -- * Request Lenses
    , tqgTaskQueue
    , tqgProject
    , tqgGetStats
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @taskqueue.taskqueues.get@ method which the
-- 'TaskQueuesGet' request conforms to.
type TaskQueuesGetResource =
     "taskqueue" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "taskqueues" :>
               Capture "taskqueue" Text :>
                 QueryParam "getStats" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] TaskQueue

-- | Get detailed information about a TaskQueue.
--
-- /See:/ 'taskQueuesGet' smart constructor.
data TaskQueuesGet = TaskQueuesGet'
    { _tqgTaskQueue :: !Text
    , _tqgProject   :: !Text
    , _tqgGetStats  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskQueuesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tqgTaskQueue'
--
-- * 'tqgProject'
--
-- * 'tqgGetStats'
taskQueuesGet
    :: Text -- ^ 'tqgTaskQueue'
    -> Text -- ^ 'tqgProject'
    -> TaskQueuesGet
taskQueuesGet pTqgTaskQueue_ pTqgProject_ =
    TaskQueuesGet'
    { _tqgTaskQueue = pTqgTaskQueue_
    , _tqgProject = pTqgProject_
    , _tqgGetStats = Nothing
    }

-- | The id of the taskqueue to get the properties of.
tqgTaskQueue :: Lens' TaskQueuesGet Text
tqgTaskQueue
  = lens _tqgTaskQueue (\ s a -> s{_tqgTaskQueue = a})

-- | The project under which the queue lies.
tqgProject :: Lens' TaskQueuesGet Text
tqgProject
  = lens _tqgProject (\ s a -> s{_tqgProject = a})

-- | Whether to get stats. Optional.
tqgGetStats :: Lens' TaskQueuesGet (Maybe Bool)
tqgGetStats
  = lens _tqgGetStats (\ s a -> s{_tqgGetStats = a})

instance GoogleRequest TaskQueuesGet where
        type Rs TaskQueuesGet = TaskQueue
        type Scopes TaskQueuesGet =
             '["https://www.googleapis.com/auth/taskqueue",
               "https://www.googleapis.com/auth/taskqueue.consumer"]
        requestClient TaskQueuesGet'{..}
          = go _tqgProject _tqgTaskQueue _tqgGetStats
              (Just AltJSON)
              taskQueueService
          where go
                  = buildClient (Proxy :: Proxy TaskQueuesGetResource)
                      mempty

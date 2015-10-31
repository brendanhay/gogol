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
-- Module      : Network.Google.Resource.TaskQueue.Tasks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a task from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.tasks.delete@.
module Network.Google.Resource.TaskQueue.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteResource

    -- * Creating a Request
    , tasksDelete
    , TasksDelete

    -- * Request Lenses
    , tdTaskqueue
    , tdProject
    , tdTask
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @taskqueue.tasks.delete@ method which the
-- 'TasksDelete' request conforms to.
type TasksDeleteResource =
     "taskqueue" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "taskqueues" :>
               Capture "taskqueue" Text :>
                 "tasks" :>
                   Capture "task" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a task from a TaskQueue.
--
-- /See:/ 'tasksDelete' smart constructor.
data TasksDelete = TasksDelete
    { _tdTaskqueue :: !Text
    , _tdProject   :: !Text
    , _tdTask      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTaskqueue'
--
-- * 'tdProject'
--
-- * 'tdTask'
tasksDelete
    :: Text -- ^ 'tdTaskqueue'
    -> Text -- ^ 'tdProject'
    -> Text -- ^ 'tdTask'
    -> TasksDelete
tasksDelete pTdTaskqueue_ pTdProject_ pTdTask_ =
    TasksDelete
    { _tdTaskqueue = pTdTaskqueue_
    , _tdProject = pTdProject_
    , _tdTask = pTdTask_
    }

-- | The taskqueue to delete a task from.
tdTaskqueue :: Lens' TasksDelete Text
tdTaskqueue
  = lens _tdTaskqueue (\ s a -> s{_tdTaskqueue = a})

-- | The project under which the queue lies.
tdProject :: Lens' TasksDelete Text
tdProject
  = lens _tdProject (\ s a -> s{_tdProject = a})

-- | The id of the task to delete.
tdTask :: Lens' TasksDelete Text
tdTask = lens _tdTask (\ s a -> s{_tdTask = a})

instance GoogleRequest TasksDelete where
        type Rs TasksDelete = ()
        type Scopes TasksDelete =
             '["https://www.googleapis.com/auth/taskqueue",
               "https://www.googleapis.com/auth/taskqueue.consumer"]
        requestClient TasksDelete{..}
          = go _tdProject _tdTaskqueue _tdTask (Just AltJSON)
              taskQueueService
          where go
                  = buildClient (Proxy :: Proxy TasksDeleteResource)
                      mempty

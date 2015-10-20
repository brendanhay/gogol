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
-- Module      : Network.Google.Resource.TaskQueue.Tasks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a particular task from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.tasks.get@.
module Network.Google.Resource.TaskQueue.Tasks.Get
    (
    -- * REST Resource
      TasksGetResource

    -- * Creating a Request
    , tasksGet
    , TasksGet

    -- * Request Lenses
    , tgTaskqueue
    , tgProject
    , tgTask
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @taskqueue.tasks.get@ method which the
-- 'TasksGet' request conforms to.
type TasksGetResource =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             Capture "task" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Get a particular task from a TaskQueue.
--
-- /See:/ 'tasksGet' smart constructor.
data TasksGet = TasksGet
    { _tgTaskqueue :: !Text
    , _tgProject   :: !Text
    , _tgTask      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgTaskqueue'
--
-- * 'tgProject'
--
-- * 'tgTask'
tasksGet
    :: Text -- ^ 'tgTaskqueue'
    -> Text -- ^ 'tgProject'
    -> Text -- ^ 'tgTask'
    -> TasksGet
tasksGet pTgTaskqueue_ pTgProject_ pTgTask_ =
    TasksGet
    { _tgTaskqueue = pTgTaskqueue_
    , _tgProject = pTgProject_
    , _tgTask = pTgTask_
    }

-- | The taskqueue in which the task belongs.
tgTaskqueue :: Lens' TasksGet Text
tgTaskqueue
  = lens _tgTaskqueue (\ s a -> s{_tgTaskqueue = a})

-- | The project under which the queue lies.
tgProject :: Lens' TasksGet Text
tgProject
  = lens _tgProject (\ s a -> s{_tgProject = a})

-- | The task to get properties of.
tgTask :: Lens' TasksGet Text
tgTask = lens _tgTask (\ s a -> s{_tgTask = a})

instance GoogleRequest TasksGet where
        type Rs TasksGet = Task
        requestClient TasksGet{..}
          = go _tgProject _tgTaskqueue _tgTask (Just AltJSON)
              taskQueueService
          where go
                  = buildClient (Proxy :: Proxy TasksGetResource)
                      mempty

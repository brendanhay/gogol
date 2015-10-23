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
-- Module      : Network.Google.Resource.TaskQueue.Tasks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Tasks in a TaskQueue
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.tasks.list@.
module Network.Google.Resource.TaskQueue.Tasks.List
    (
    -- * REST Resource
      TasksListResource

    -- * Creating a Request
    , tasksList
    , TasksList

    -- * Request Lenses
    , tTaskqueue
    , tProject
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @taskqueue.tasks.list@ method which the
-- 'TasksList' request conforms to.
type TasksListResource =
     "taskqueue" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "taskqueues" :>
               Capture "taskqueue" Text :>
                 "tasks" :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Tasks2

-- | List Tasks in a TaskQueue
--
-- /See:/ 'tasksList' smart constructor.
data TasksList = TasksList
    { _tTaskqueue :: !Text
    , _tProject   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTaskqueue'
--
-- * 'tProject'
tasksList
    :: Text -- ^ 'tTaskqueue'
    -> Text -- ^ 'tProject'
    -> TasksList
tasksList pTTaskqueue_ pTProject_ =
    TasksList
    { _tTaskqueue = pTTaskqueue_
    , _tProject = pTProject_
    }

-- | The id of the taskqueue to list tasks from.
tTaskqueue :: Lens' TasksList Text
tTaskqueue
  = lens _tTaskqueue (\ s a -> s{_tTaskqueue = a})

-- | The project under which the queue lies.
tProject :: Lens' TasksList Text
tProject = lens _tProject (\ s a -> s{_tProject = a})

instance GoogleRequest TasksList where
        type Rs TasksList = Tasks2
        requestClient TasksList{..}
          = go _tProject _tTaskqueue (Just AltJSON)
              taskQueueService
          where go
                  = buildClient (Proxy :: Proxy TasksListResource)
                      mempty

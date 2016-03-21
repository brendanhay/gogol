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
-- Module      : Network.Google.Resource.TaskQueue.Taskqueues.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get detailed information about a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.taskqueues.get@.
module Network.Google.Resource.TaskQueue.Taskqueues.Get
    (
    -- * REST Resource
      TaskqueuesGetResource

    -- * Creating a Request
    , taskqueuesGet
    , TaskqueuesGet

    -- * Request Lenses
    , tasTaskqueue
    , tasProject
    , tasGetStats
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @taskqueue.taskqueues.get@ method which the
-- 'TaskqueuesGet' request conforms to.
type TaskqueuesGetResource =
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
-- /See:/ 'taskqueuesGet' smart constructor.
data TaskqueuesGet = TaskqueuesGet'
    { _tasTaskqueue :: !Text
    , _tasProject   :: !Text
    , _tasGetStats  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskqueuesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasTaskqueue'
--
-- * 'tasProject'
--
-- * 'tasGetStats'
taskqueuesGet
    :: Text -- ^ 'tasTaskqueue'
    -> Text -- ^ 'tasProject'
    -> TaskqueuesGet
taskqueuesGet pTasTaskqueue_ pTasProject_ =
    TaskqueuesGet'
    { _tasTaskqueue = pTasTaskqueue_
    , _tasProject = pTasProject_
    , _tasGetStats = Nothing
    }

-- | The id of the taskqueue to get the properties of.
tasTaskqueue :: Lens' TaskqueuesGet Text
tasTaskqueue
  = lens _tasTaskqueue (\ s a -> s{_tasTaskqueue = a})

-- | The project under which the queue lies.
tasProject :: Lens' TaskqueuesGet Text
tasProject
  = lens _tasProject (\ s a -> s{_tasProject = a})

-- | Whether to get stats. Optional.
tasGetStats :: Lens' TaskqueuesGet (Maybe Bool)
tasGetStats
  = lens _tasGetStats (\ s a -> s{_tasGetStats = a})

instance GoogleRequest TaskqueuesGet where
        type Rs TaskqueuesGet = TaskQueue
        type Scopes TaskqueuesGet =
             '["https://www.googleapis.com/auth/taskqueue",
               "https://www.googleapis.com/auth/taskqueue.consumer"]
        requestClient TaskqueuesGet'{..}
          = go _tasProject _tasTaskqueue _tasGetStats
              (Just AltJSON)
              taskQueueService
          where go
                  = buildClient (Proxy :: Proxy TaskqueuesGetResource)
                      mempty

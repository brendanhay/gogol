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
-- Module      : Network.Google.Resource.Tasks.Tasks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified task from the task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.delete@.
module Network.Google.Resource.Tasks.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteResource

    -- * Creating a Request
    , tasksDelete
    , TasksDelete

    -- * Request Lenses
    , tdTaskList
    , tdTask
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.delete@ method which the
-- 'TasksDelete' request conforms to.
type TasksDeleteResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               Capture "task" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified task from the task list.
--
-- /See:/ 'tasksDelete' smart constructor.
data TasksDelete =
  TasksDelete'
    { _tdTaskList :: !Text
    , _tdTask     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTaskList'
--
-- * 'tdTask'
tasksDelete
    :: Text -- ^ 'tdTaskList'
    -> Text -- ^ 'tdTask'
    -> TasksDelete
tasksDelete pTdTaskList_ pTdTask_ =
  TasksDelete' {_tdTaskList = pTdTaskList_, _tdTask = pTdTask_}


-- | Task list identifier.
tdTaskList :: Lens' TasksDelete Text
tdTaskList
  = lens _tdTaskList (\ s a -> s{_tdTaskList = a})

-- | Task identifier.
tdTask :: Lens' TasksDelete Text
tdTask = lens _tdTask (\ s a -> s{_tdTask = a})

instance GoogleRequest TasksDelete where
        type Rs TasksDelete = ()
        type Scopes TasksDelete =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksDelete'{..}
          = go _tdTaskList _tdTask (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksDeleteResource)
                      mempty

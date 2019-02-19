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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.delete@.
module Network.Google.Resource.Tasks.TaskLists.Delete
    (
    -- * REST Resource
      TaskListsDeleteResource

    -- * Creating a Request
    , taskListsDelete
    , TaskListsDelete

    -- * Request Lenses
    , tldTaskList
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.delete@ method which the
-- 'TaskListsDelete' request conforms to.
type TaskListsDeleteResource =
     "tasks" :>
       "v1" :>
         "users" :>
           "@me" :>
             "lists" :>
               Capture "tasklist" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsDelete' smart constructor.
newtype TaskListsDelete =
  TaskListsDelete'
    { _tldTaskList :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskListsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tldTaskList'
taskListsDelete
    :: Text -- ^ 'tldTaskList'
    -> TaskListsDelete
taskListsDelete pTldTaskList_ = TaskListsDelete' {_tldTaskList = pTldTaskList_}

-- | Task list identifier.
tldTaskList :: Lens' TaskListsDelete Text
tldTaskList
  = lens _tldTaskList (\ s a -> s{_tldTaskList = a})

instance GoogleRequest TaskListsDelete where
        type Rs TaskListsDelete = ()
        type Scopes TaskListsDelete =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TaskListsDelete'{..}
          = go _tldTaskList (Just AltJSON) appsTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy TaskListsDeleteResource)
                      mempty

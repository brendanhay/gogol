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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.get@.
module Network.Google.Resource.Tasks.TaskLists.Get
    (
    -- * REST Resource
      TaskListsGetResource

    -- * Creating a Request
    , taskListsGet
    , TaskListsGet

    -- * Request Lenses
    , tlgTaskList
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.get@ method which the
-- 'TaskListsGet' request conforms to.
type TaskListsGetResource =
     "tasks" :>
       "v1" :>
         "users" :>
           "@me" :>
             "lists" :>
               Capture "tasklist" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] TaskList

-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsGet' smart constructor.
newtype TaskListsGet = TaskListsGet
    { _tlgTaskList :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlgTaskList'
taskListsGet
    :: Text -- ^ 'tlgTaskList'
    -> TaskListsGet
taskListsGet pTlgTaskList_ =
    TaskListsGet
    { _tlgTaskList = pTlgTaskList_
    }

-- | Task list identifier.
tlgTaskList :: Lens' TaskListsGet Text
tlgTaskList
  = lens _tlgTaskList (\ s a -> s{_tlgTaskList = a})

instance GoogleRequest TaskListsGet where
        type Rs TaskListsGet = TaskList
        requestClient TaskListsGet{..}
          = go _tlgTaskList (Just AltJSON) appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TaskListsGetResource)
                      mempty

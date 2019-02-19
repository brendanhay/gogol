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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.update@.
module Network.Google.Resource.Tasks.TaskLists.Update
    (
    -- * REST Resource
      TaskListsUpdateResource

    -- * Creating a Request
    , taskListsUpdate
    , TaskListsUpdate

    -- * Request Lenses
    , tluPayload
    , tluTaskList
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.update@ method which the
-- 'TaskListsUpdate' request conforms to.
type TaskListsUpdateResource =
     "tasks" :>
       "v1" :>
         "users" :>
           "@me" :>
             "lists" :>
               Capture "tasklist" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] TaskList :> Put '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsUpdate' smart constructor.
data TaskListsUpdate =
  TaskListsUpdate'
    { _tluPayload  :: !TaskList
    , _tluTaskList :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskListsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tluPayload'
--
-- * 'tluTaskList'
taskListsUpdate
    :: TaskList -- ^ 'tluPayload'
    -> Text -- ^ 'tluTaskList'
    -> TaskListsUpdate
taskListsUpdate pTluPayload_ pTluTaskList_ =
  TaskListsUpdate' {_tluPayload = pTluPayload_, _tluTaskList = pTluTaskList_}

-- | Multipart request metadata.
tluPayload :: Lens' TaskListsUpdate TaskList
tluPayload
  = lens _tluPayload (\ s a -> s{_tluPayload = a})

-- | Task list identifier.
tluTaskList :: Lens' TaskListsUpdate Text
tluTaskList
  = lens _tluTaskList (\ s a -> s{_tluTaskList = a})

instance GoogleRequest TaskListsUpdate where
        type Rs TaskListsUpdate = TaskList
        type Scopes TaskListsUpdate =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TaskListsUpdate'{..}
          = go _tluTaskList (Just AltJSON) _tluPayload
              appsTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy TaskListsUpdateResource)
                      mempty

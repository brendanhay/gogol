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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.insert@.
module Network.Google.Resource.Tasks.TaskLists.Insert
    (
    -- * REST Resource
      TaskListsInsertResource

    -- * Creating a Request
    , taskListsInsert
    , TaskListsInsert

    -- * Request Lenses
    , tliPayload
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.insert@ method which the
-- 'TaskListsInsert' request conforms to.
type TaskListsInsertResource =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] TaskList :> Post '[JSON] TaskList

-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ 'taskListsInsert' smart constructor.
newtype TaskListsInsert = TaskListsInsert
    { _tliPayload :: TaskList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tliPayload'
taskListsInsert
    :: TaskList -- ^ 'tliPayload'
    -> TaskListsInsert
taskListsInsert pTliPayload_ =
    TaskListsInsert
    { _tliPayload = pTliPayload_
    }

-- | Multipart request metadata.
tliPayload :: Lens' TaskListsInsert TaskList
tliPayload
  = lens _tliPayload (\ s a -> s{_tliPayload = a})

instance GoogleRequest TaskListsInsert where
        type Rs TaskListsInsert = TaskList
        requestClient TaskListsInsert{..}
          = go (Just AltJSON) _tliPayload appsTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy TaskListsInsertResource)
                      mempty

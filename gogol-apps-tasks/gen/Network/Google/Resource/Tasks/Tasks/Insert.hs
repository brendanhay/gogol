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
-- Module      : Network.Google.Resource.Tasks.Tasks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new task on the specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.insert@.
module Network.Google.Resource.Tasks.Tasks.Insert
    (
    -- * REST Resource
      TasksInsertResource

    -- * Creating a Request
    , tasksInsert
    , TasksInsert

    -- * Request Lenses
    , tiParent
    , tiPayload
    , tiTaskList
    , tiPrevious
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.insert@ method which the
-- 'TasksInsert' request conforms to.
type TasksInsertResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               QueryParam "parent" Text :>
                 QueryParam "previous" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Task :> Post '[JSON] Task

-- | Creates a new task on the specified task list.
--
-- /See:/ 'tasksInsert' smart constructor.
data TasksInsert =
  TasksInsert'
    { _tiParent   :: !(Maybe Text)
    , _tiPayload  :: !Task
    , _tiTaskList :: !Text
    , _tiPrevious :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TasksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiParent'
--
-- * 'tiPayload'
--
-- * 'tiTaskList'
--
-- * 'tiPrevious'
tasksInsert
    :: Task -- ^ 'tiPayload'
    -> Text -- ^ 'tiTaskList'
    -> TasksInsert
tasksInsert pTiPayload_ pTiTaskList_ =
  TasksInsert'
    { _tiParent = Nothing
    , _tiPayload = pTiPayload_
    , _tiTaskList = pTiTaskList_
    , _tiPrevious = Nothing
    }

-- | Parent task identifier. If the task is created at the top level, this
-- parameter is omitted. Optional.
tiParent :: Lens' TasksInsert (Maybe Text)
tiParent = lens _tiParent (\ s a -> s{_tiParent = a})

-- | Multipart request metadata.
tiPayload :: Lens' TasksInsert Task
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | Task list identifier.
tiTaskList :: Lens' TasksInsert Text
tiTaskList
  = lens _tiTaskList (\ s a -> s{_tiTaskList = a})

-- | Previous sibling task identifier. If the task is created at the first
-- position among its siblings, this parameter is omitted. Optional.
tiPrevious :: Lens' TasksInsert (Maybe Text)
tiPrevious
  = lens _tiPrevious (\ s a -> s{_tiPrevious = a})

instance GoogleRequest TasksInsert where
        type Rs TasksInsert = Task
        type Scopes TasksInsert =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksInsert'{..}
          = go _tiTaskList _tiParent _tiPrevious (Just AltJSON)
              _tiPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksInsertResource)
                      mempty

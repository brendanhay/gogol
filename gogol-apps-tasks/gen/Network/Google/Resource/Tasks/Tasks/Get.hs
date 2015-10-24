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
-- Module      : Network.Google.Resource.Tasks.Tasks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.get@.
module Network.Google.Resource.Tasks.Tasks.Get
    (
    -- * REST Resource
      TasksGetResource

    -- * Creating a Request
    , tasksGet
    , TasksGet

    -- * Request Lenses
    , tgTaskList
    , tgTask
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.get@ method which the
-- 'TasksGet' request conforms to.
type TasksGetResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               Capture "task" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Returns the specified task.
--
-- /See:/ 'tasksGet' smart constructor.
data TasksGet = TasksGet
    { _tgTaskList :: !Text
    , _tgTask     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgTaskList'
--
-- * 'tgTask'
tasksGet
    :: Text -- ^ 'tgTaskList'
    -> Text -- ^ 'tgTask'
    -> TasksGet
tasksGet pTgTaskList_ pTgTask_ =
    TasksGet
    { _tgTaskList = pTgTaskList_
    , _tgTask = pTgTask_
    }

-- | Task list identifier.
tgTaskList :: Lens' TasksGet Text
tgTaskList
  = lens _tgTaskList (\ s a -> s{_tgTaskList = a})

-- | Task identifier.
tgTask :: Lens' TasksGet Text
tgTask = lens _tgTask (\ s a -> s{_tgTask = a})

instance GoogleRequest TasksGet where
        type Rs TasksGet = Task
        requestClient TasksGet{..}
          = go _tgTaskList _tgTask (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksGetResource)
                      mempty

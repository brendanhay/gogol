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
-- Module      : Network.Google.Resource.Tasks.Tasks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.update@.
module Network.Google.Resource.Tasks.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateResource

    -- * Creating a Request
    , tasksUpdate
    , TasksUpdate

    -- * Request Lenses
    , tuPayload
    , tuTaskList
    , tuTask
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.update@ method which the
-- 'TasksUpdate' request conforms to.
type TasksUpdateResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               Capture "task" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Task :> Put '[JSON] Task

-- | Updates the specified task.
--
-- /See:/ 'tasksUpdate' smart constructor.
data TasksUpdate = TasksUpdate
    { _tuPayload  :: !Task
    , _tuTaskList :: !Text
    , _tuTask     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuPayload'
--
-- * 'tuTaskList'
--
-- * 'tuTask'
tasksUpdate
    :: Task -- ^ 'tuPayload'
    -> Text -- ^ 'tuTaskList'
    -> Text -- ^ 'tuTask'
    -> TasksUpdate
tasksUpdate pTuPayload_ pTuTaskList_ pTuTask_ =
    TasksUpdate
    { _tuPayload = pTuPayload_
    , _tuTaskList = pTuTaskList_
    , _tuTask = pTuTask_
    }

-- | Multipart request metadata.
tuPayload :: Lens' TasksUpdate Task
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | Task list identifier.
tuTaskList :: Lens' TasksUpdate Text
tuTaskList
  = lens _tuTaskList (\ s a -> s{_tuTaskList = a})

-- | Task identifier.
tuTask :: Lens' TasksUpdate Text
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

instance GoogleRequest TasksUpdate where
        type Rs TasksUpdate = Task
        requestClient TasksUpdate{..}
          = go _tuTaskList _tuTask (Just AltJSON) _tuPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksUpdateResource)
                      mempty

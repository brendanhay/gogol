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
-- Module      : Network.Google.Resource.Tasks.Tasks.Clear
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksClear@.
module Network.Google.Resource.Tasks.Tasks.Clear
    (
    -- * REST Resource
      TasksClearResource

    -- * Creating a Request
    , tasksClear'
    , TasksClear'

    -- * Request Lenses
    , tcTaskList
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksClear@ method which the
-- 'TasksClear'' request conforms to.
type TasksClearResource =
     "lists" :>
       Capture "tasklist" Text :>
         "clear" :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ 'tasksClear'' smart constructor.
newtype TasksClear' = TasksClear'
    { _tcTaskList :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcTaskList'
tasksClear'
    :: Text -- ^ 'tasklist'
    -> TasksClear'
tasksClear' pTcTaskList_ =
    TasksClear'
    { _tcTaskList = pTcTaskList_
    }

-- | Task list identifier.
tcTaskList :: Lens' TasksClear' Text
tcTaskList
  = lens _tcTaskList (\ s a -> s{_tcTaskList = a})

instance GoogleRequest TasksClear' where
        type Rs TasksClear' = ()
        requestClient TasksClear'{..}
          = go _tcTaskList (Just AltJSON) appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksClearResource)
                      mempty

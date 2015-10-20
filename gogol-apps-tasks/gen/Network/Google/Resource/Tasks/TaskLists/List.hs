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
-- Module      : Network.Google.Resource.Tasks.TaskLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the authenticated user\'s task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.list@.
module Network.Google.Resource.Tasks.TaskLists.List
    (
    -- * REST Resource
      TaskListsListResource

    -- * Creating a Request
    , taskListsList
    , TaskListsList

    -- * Request Lenses
    , tllPageToken
    , tllMaxResults
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.list@ method which the
-- 'TaskListsList' request conforms to.
type TaskListsListResource =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int64 :>
               QueryParam "alt" AltJSON :> Get '[JSON] TaskLists

-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ 'taskListsList' smart constructor.
data TaskListsList = TaskListsList
    { _tllPageToken  :: !(Maybe Text)
    , _tllMaxResults :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllPageToken'
--
-- * 'tllMaxResults'
taskListsList
    :: TaskListsList
taskListsList =
    TaskListsList
    { _tllPageToken = Nothing
    , _tllMaxResults = Nothing
    }

-- | Token specifying the result page to return. Optional.
tllPageToken :: Lens' TaskListsList (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tllMaxResults :: Lens' TaskListsList (Maybe Int64)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

instance GoogleRequest TaskListsList where
        type Rs TaskListsList = TaskLists
        requestClient TaskListsList{..}
          = go _tllPageToken _tllMaxResults (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TaskListsListResource)
                      mempty

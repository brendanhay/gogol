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
-- Module      : Network.Google.Resource.Tasks.Tasks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tasks in the specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.list@.
module Network.Google.Resource.Tasks.Tasks.List
    (
    -- * REST Resource
      TasksListResource

    -- * Creating a Request
    , tasksList
    , TasksList

    -- * Request Lenses
    , tlDueMax
    , tlShowDeleted
    , tlShowCompleted
    , tlDueMin
    , tlShowHidden
    , tlCompletedMax
    , tlUpdatedMin
    , tlTaskList
    , tlCompletedMin
    , tlPageToken
    , tlMaxResults
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.list@ method which the
-- 'TasksList' request conforms to.
type TasksListResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               QueryParam "dueMax" Text :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "showCompleted" Bool :>
                     QueryParam "dueMin" Text :>
                       QueryParam "showHidden" Bool :>
                         QueryParam "completedMax" Text :>
                           QueryParam "updatedMin" Text :>
                             QueryParam "completedMin" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "maxResults" (Textual Int64) :>
                                   QueryParam "alt" AltJSON :> Get '[JSON] Tasks

-- | Returns all tasks in the specified task list.
--
-- /See:/ 'tasksList' smart constructor.
data TasksList = TasksList
    { _tlDueMax        :: !(Maybe Text)
    , _tlShowDeleted   :: !(Maybe Bool)
    , _tlShowCompleted :: !(Maybe Bool)
    , _tlDueMin        :: !(Maybe Text)
    , _tlShowHidden    :: !(Maybe Bool)
    , _tlCompletedMax  :: !(Maybe Text)
    , _tlUpdatedMin    :: !(Maybe Text)
    , _tlTaskList      :: !Text
    , _tlCompletedMin  :: !(Maybe Text)
    , _tlPageToken     :: !(Maybe Text)
    , _tlMaxResults    :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlDueMax'
--
-- * 'tlShowDeleted'
--
-- * 'tlShowCompleted'
--
-- * 'tlDueMin'
--
-- * 'tlShowHidden'
--
-- * 'tlCompletedMax'
--
-- * 'tlUpdatedMin'
--
-- * 'tlTaskList'
--
-- * 'tlCompletedMin'
--
-- * 'tlPageToken'
--
-- * 'tlMaxResults'
tasksList
    :: Text -- ^ 'tlTaskList'
    -> TasksList
tasksList pTlTaskList_ =
    TasksList
    { _tlDueMax = Nothing
    , _tlShowDeleted = Nothing
    , _tlShowCompleted = Nothing
    , _tlDueMin = Nothing
    , _tlShowHidden = Nothing
    , _tlCompletedMax = Nothing
    , _tlUpdatedMin = Nothing
    , _tlTaskList = pTlTaskList_
    , _tlCompletedMin = Nothing
    , _tlPageToken = Nothing
    , _tlMaxResults = Nothing
    }

-- | Upper bound for a task\'s due date (as a RFC 3339 timestamp) to filter
-- by. Optional. The default is not to filter by due date.
tlDueMax :: Lens' TasksList (Maybe Text)
tlDueMax = lens _tlDueMax (\ s a -> s{_tlDueMax = a})

-- | Flag indicating whether deleted tasks are returned in the result.
-- Optional. The default is False.
tlShowDeleted :: Lens' TasksList (Maybe Bool)
tlShowDeleted
  = lens _tlShowDeleted
      (\ s a -> s{_tlShowDeleted = a})

-- | Flag indicating whether completed tasks are returned in the result.
-- Optional. The default is True.
tlShowCompleted :: Lens' TasksList (Maybe Bool)
tlShowCompleted
  = lens _tlShowCompleted
      (\ s a -> s{_tlShowCompleted = a})

-- | Lower bound for a task\'s due date (as a RFC 3339 timestamp) to filter
-- by. Optional. The default is not to filter by due date.
tlDueMin :: Lens' TasksList (Maybe Text)
tlDueMin = lens _tlDueMin (\ s a -> s{_tlDueMin = a})

-- | Flag indicating whether hidden tasks are returned in the result.
-- Optional. The default is False.
tlShowHidden :: Lens' TasksList (Maybe Bool)
tlShowHidden
  = lens _tlShowHidden (\ s a -> s{_tlShowHidden = a})

-- | Upper bound for a task\'s completion date (as a RFC 3339 timestamp) to
-- filter by. Optional. The default is not to filter by completion date.
tlCompletedMax :: Lens' TasksList (Maybe Text)
tlCompletedMax
  = lens _tlCompletedMax
      (\ s a -> s{_tlCompletedMax = a})

-- | Lower bound for a task\'s last modification time (as a RFC 3339
-- timestamp) to filter by. Optional. The default is not to filter by last
-- modification time.
tlUpdatedMin :: Lens' TasksList (Maybe Text)
tlUpdatedMin
  = lens _tlUpdatedMin (\ s a -> s{_tlUpdatedMin = a})

-- | Task list identifier.
tlTaskList :: Lens' TasksList Text
tlTaskList
  = lens _tlTaskList (\ s a -> s{_tlTaskList = a})

-- | Lower bound for a task\'s completion date (as a RFC 3339 timestamp) to
-- filter by. Optional. The default is not to filter by completion date.
tlCompletedMin :: Lens' TasksList (Maybe Text)
tlCompletedMin
  = lens _tlCompletedMin
      (\ s a -> s{_tlCompletedMin = a})

-- | Token specifying the result page to return. Optional.
tlPageToken :: Lens' TasksList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tlMaxResults :: Lens' TasksList (Maybe Int64)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest TasksList where
        type Rs TasksList = Tasks
        type Scopes TasksList =
             '["https://www.googleapis.com/auth/tasks",
               "https://www.googleapis.com/auth/tasks.readonly"]
        requestClient TasksList{..}
          = go _tlTaskList _tlDueMax _tlShowDeleted
              _tlShowCompleted
              _tlDueMin
              _tlShowHidden
              _tlCompletedMax
              _tlUpdatedMin
              _tlCompletedMin
              _tlPageToken
              _tlMaxResults
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksListResource)
                      mempty

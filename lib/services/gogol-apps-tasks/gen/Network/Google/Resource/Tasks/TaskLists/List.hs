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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the authenticated user\'s task lists.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.list@.
module Network.Google.Resource.Tasks.TaskLists.List
    (
    -- * REST Resource
      TaskListsListResource

    -- * Creating a Request
    , taskListsList
    , TaskListsList

    -- * Request Lenses
    , tllXgafv
    , tllUploadProtocol
    , tllAccessToken
    , tllUploadType
    , tllPageToken
    , tllMaxResults
    , tllCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.list@ method which the
-- 'TaskListsList' request conforms to.
type TaskListsListResource =
     "tasks" :>
       "v1" :>
         "users" :>
           "@me" :>
             "lists" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] TaskLists

-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ 'taskListsList' smart constructor.
data TaskListsList =
  TaskListsList'
    { _tllXgafv :: !(Maybe Xgafv)
    , _tllUploadProtocol :: !(Maybe Text)
    , _tllAccessToken :: !(Maybe Text)
    , _tllUploadType :: !(Maybe Text)
    , _tllPageToken :: !(Maybe Text)
    , _tllMaxResults :: !(Maybe (Textual Int32))
    , _tllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskListsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllXgafv'
--
-- * 'tllUploadProtocol'
--
-- * 'tllAccessToken'
--
-- * 'tllUploadType'
--
-- * 'tllPageToken'
--
-- * 'tllMaxResults'
--
-- * 'tllCallback'
taskListsList
    :: TaskListsList
taskListsList =
  TaskListsList'
    { _tllXgafv = Nothing
    , _tllUploadProtocol = Nothing
    , _tllAccessToken = Nothing
    , _tllUploadType = Nothing
    , _tllPageToken = Nothing
    , _tllMaxResults = Nothing
    , _tllCallback = Nothing
    }


-- | V1 error format.
tllXgafv :: Lens' TaskListsList (Maybe Xgafv)
tllXgafv = lens _tllXgafv (\ s a -> s{_tllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tllUploadProtocol :: Lens' TaskListsList (Maybe Text)
tllUploadProtocol
  = lens _tllUploadProtocol
      (\ s a -> s{_tllUploadProtocol = a})

-- | OAuth access token.
tllAccessToken :: Lens' TaskListsList (Maybe Text)
tllAccessToken
  = lens _tllAccessToken
      (\ s a -> s{_tllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tllUploadType :: Lens' TaskListsList (Maybe Text)
tllUploadType
  = lens _tllUploadType
      (\ s a -> s{_tllUploadType = a})

-- | Token specifying the result page to return. Optional.
tllPageToken :: Lens' TaskListsList (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 20 (max allowed: 100).
tllMaxResults :: Lens' TaskListsList (Maybe Int32)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})
      . mapping _Coerce

-- | JSONP
tllCallback :: Lens' TaskListsList (Maybe Text)
tllCallback
  = lens _tllCallback (\ s a -> s{_tllCallback = a})

instance GoogleRequest TaskListsList where
        type Rs TaskListsList = TaskLists
        type Scopes TaskListsList =
             '["https://www.googleapis.com/auth/tasks",
               "https://www.googleapis.com/auth/tasks.readonly"]
        requestClient TaskListsList'{..}
          = go _tllXgafv _tllUploadProtocol _tllAccessToken
              _tllUploadType
              _tllPageToken
              _tllMaxResults
              _tllCallback
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TaskListsListResource)
                      mempty

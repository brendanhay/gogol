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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.get@.
module Network.Google.Resource.Tasks.TaskLists.Get
    (
    -- * REST Resource
      TaskListsGetResource

    -- * Creating a Request
    , taskListsGet
    , TaskListsGet

    -- * Request Lenses
    , tlgXgafv
    , tlgUploadProtocol
    , tlgAccessToken
    , tlgUploadType
    , tlgTaskList
    , tlgCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.get@ method which the
-- 'TaskListsGet' request conforms to.
type TaskListsGetResource =
     "tasks" :>
       "v1" :>
         "users" :>
           "@me" :>
             "lists" :>
               Capture "tasklist" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] TaskList

-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsGet' smart constructor.
data TaskListsGet =
  TaskListsGet'
    { _tlgXgafv :: !(Maybe Xgafv)
    , _tlgUploadProtocol :: !(Maybe Text)
    , _tlgAccessToken :: !(Maybe Text)
    , _tlgUploadType :: !(Maybe Text)
    , _tlgTaskList :: !Text
    , _tlgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskListsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlgXgafv'
--
-- * 'tlgUploadProtocol'
--
-- * 'tlgAccessToken'
--
-- * 'tlgUploadType'
--
-- * 'tlgTaskList'
--
-- * 'tlgCallback'
taskListsGet
    :: Text -- ^ 'tlgTaskList'
    -> TaskListsGet
taskListsGet pTlgTaskList_ =
  TaskListsGet'
    { _tlgXgafv = Nothing
    , _tlgUploadProtocol = Nothing
    , _tlgAccessToken = Nothing
    , _tlgUploadType = Nothing
    , _tlgTaskList = pTlgTaskList_
    , _tlgCallback = Nothing
    }


-- | V1 error format.
tlgXgafv :: Lens' TaskListsGet (Maybe Xgafv)
tlgXgafv = lens _tlgXgafv (\ s a -> s{_tlgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlgUploadProtocol :: Lens' TaskListsGet (Maybe Text)
tlgUploadProtocol
  = lens _tlgUploadProtocol
      (\ s a -> s{_tlgUploadProtocol = a})

-- | OAuth access token.
tlgAccessToken :: Lens' TaskListsGet (Maybe Text)
tlgAccessToken
  = lens _tlgAccessToken
      (\ s a -> s{_tlgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlgUploadType :: Lens' TaskListsGet (Maybe Text)
tlgUploadType
  = lens _tlgUploadType
      (\ s a -> s{_tlgUploadType = a})

-- | Task list identifier.
tlgTaskList :: Lens' TaskListsGet Text
tlgTaskList
  = lens _tlgTaskList (\ s a -> s{_tlgTaskList = a})

-- | JSONP
tlgCallback :: Lens' TaskListsGet (Maybe Text)
tlgCallback
  = lens _tlgCallback (\ s a -> s{_tlgCallback = a})

instance GoogleRequest TaskListsGet where
        type Rs TaskListsGet = TaskList
        type Scopes TaskListsGet =
             '["https://www.googleapis.com/auth/tasks",
               "https://www.googleapis.com/auth/tasks.readonly"]
        requestClient TaskListsGet'{..}
          = go _tlgTaskList _tlgXgafv _tlgUploadProtocol
              _tlgAccessToken
              _tlgUploadType
              _tlgCallback
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TaskListsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.delete@.
module Network.Google.Resource.Tasks.TaskLists.Delete
    (
    -- * REST Resource
      TaskListsDeleteResource

    -- * Creating a Request
    , taskListsDelete
    , TaskListsDelete

    -- * Request Lenses
    , tldXgafv
    , tldUploadProtocol
    , tldAccessToken
    , tldUploadType
    , tldTaskList
    , tldCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.delete@ method which the
-- 'TaskListsDelete' request conforms to.
type TaskListsDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsDelete' smart constructor.
data TaskListsDelete =
  TaskListsDelete'
    { _tldXgafv :: !(Maybe Xgafv)
    , _tldUploadProtocol :: !(Maybe Text)
    , _tldAccessToken :: !(Maybe Text)
    , _tldUploadType :: !(Maybe Text)
    , _tldTaskList :: !Text
    , _tldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskListsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tldXgafv'
--
-- * 'tldUploadProtocol'
--
-- * 'tldAccessToken'
--
-- * 'tldUploadType'
--
-- * 'tldTaskList'
--
-- * 'tldCallback'
taskListsDelete
    :: Text -- ^ 'tldTaskList'
    -> TaskListsDelete
taskListsDelete pTldTaskList_ =
  TaskListsDelete'
    { _tldXgafv = Nothing
    , _tldUploadProtocol = Nothing
    , _tldAccessToken = Nothing
    , _tldUploadType = Nothing
    , _tldTaskList = pTldTaskList_
    , _tldCallback = Nothing
    }


-- | V1 error format.
tldXgafv :: Lens' TaskListsDelete (Maybe Xgafv)
tldXgafv = lens _tldXgafv (\ s a -> s{_tldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tldUploadProtocol :: Lens' TaskListsDelete (Maybe Text)
tldUploadProtocol
  = lens _tldUploadProtocol
      (\ s a -> s{_tldUploadProtocol = a})

-- | OAuth access token.
tldAccessToken :: Lens' TaskListsDelete (Maybe Text)
tldAccessToken
  = lens _tldAccessToken
      (\ s a -> s{_tldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tldUploadType :: Lens' TaskListsDelete (Maybe Text)
tldUploadType
  = lens _tldUploadType
      (\ s a -> s{_tldUploadType = a})

-- | Task list identifier.
tldTaskList :: Lens' TaskListsDelete Text
tldTaskList
  = lens _tldTaskList (\ s a -> s{_tldTaskList = a})

-- | JSONP
tldCallback :: Lens' TaskListsDelete (Maybe Text)
tldCallback
  = lens _tldCallback (\ s a -> s{_tldCallback = a})

instance GoogleRequest TaskListsDelete where
        type Rs TaskListsDelete = ()
        type Scopes TaskListsDelete =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TaskListsDelete'{..}
          = go _tldTaskList _tldXgafv _tldUploadProtocol
              _tldAccessToken
              _tldUploadType
              _tldCallback
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy TaskListsDeleteResource)
                      mempty

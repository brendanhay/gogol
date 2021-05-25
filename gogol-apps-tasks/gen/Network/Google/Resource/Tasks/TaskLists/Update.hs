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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.update@.
module Network.Google.Resource.Tasks.TaskLists.Update
    (
    -- * REST Resource
      TaskListsUpdateResource

    -- * Creating a Request
    , taskListsUpdate
    , TaskListsUpdate

    -- * Request Lenses
    , tluXgafv
    , tluUploadProtocol
    , tluAccessToken
    , tluUploadType
    , tluPayload
    , tluTaskList
    , tluCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.update@ method which the
-- 'TaskListsUpdate' request conforms to.
type TaskListsUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] TaskList :> Put '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsUpdate' smart constructor.
data TaskListsUpdate =
  TaskListsUpdate'
    { _tluXgafv :: !(Maybe Xgafv)
    , _tluUploadProtocol :: !(Maybe Text)
    , _tluAccessToken :: !(Maybe Text)
    , _tluUploadType :: !(Maybe Text)
    , _tluPayload :: !TaskList
    , _tluTaskList :: !Text
    , _tluCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskListsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tluXgafv'
--
-- * 'tluUploadProtocol'
--
-- * 'tluAccessToken'
--
-- * 'tluUploadType'
--
-- * 'tluPayload'
--
-- * 'tluTaskList'
--
-- * 'tluCallback'
taskListsUpdate
    :: TaskList -- ^ 'tluPayload'
    -> Text -- ^ 'tluTaskList'
    -> TaskListsUpdate
taskListsUpdate pTluPayload_ pTluTaskList_ =
  TaskListsUpdate'
    { _tluXgafv = Nothing
    , _tluUploadProtocol = Nothing
    , _tluAccessToken = Nothing
    , _tluUploadType = Nothing
    , _tluPayload = pTluPayload_
    , _tluTaskList = pTluTaskList_
    , _tluCallback = Nothing
    }


-- | V1 error format.
tluXgafv :: Lens' TaskListsUpdate (Maybe Xgafv)
tluXgafv = lens _tluXgafv (\ s a -> s{_tluXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tluUploadProtocol :: Lens' TaskListsUpdate (Maybe Text)
tluUploadProtocol
  = lens _tluUploadProtocol
      (\ s a -> s{_tluUploadProtocol = a})

-- | OAuth access token.
tluAccessToken :: Lens' TaskListsUpdate (Maybe Text)
tluAccessToken
  = lens _tluAccessToken
      (\ s a -> s{_tluAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tluUploadType :: Lens' TaskListsUpdate (Maybe Text)
tluUploadType
  = lens _tluUploadType
      (\ s a -> s{_tluUploadType = a})

-- | Multipart request metadata.
tluPayload :: Lens' TaskListsUpdate TaskList
tluPayload
  = lens _tluPayload (\ s a -> s{_tluPayload = a})

-- | Task list identifier.
tluTaskList :: Lens' TaskListsUpdate Text
tluTaskList
  = lens _tluTaskList (\ s a -> s{_tluTaskList = a})

-- | JSONP
tluCallback :: Lens' TaskListsUpdate (Maybe Text)
tluCallback
  = lens _tluCallback (\ s a -> s{_tluCallback = a})

instance GoogleRequest TaskListsUpdate where
        type Rs TaskListsUpdate = TaskList
        type Scopes TaskListsUpdate =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TaskListsUpdate'{..}
          = go _tluTaskList _tluXgafv _tluUploadProtocol
              _tluAccessToken
              _tluUploadType
              _tluCallback
              (Just AltJSON)
              _tluPayload
              appsTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy TaskListsUpdateResource)
                      mempty

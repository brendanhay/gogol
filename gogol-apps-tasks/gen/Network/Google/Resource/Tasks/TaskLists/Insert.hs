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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.insert@.
module Network.Google.Resource.Tasks.TaskLists.Insert
    (
    -- * REST Resource
      TaskListsInsertResource

    -- * Creating a Request
    , taskListsInsert
    , TaskListsInsert

    -- * Request Lenses
    , tliXgafv
    , tliUploadProtocol
    , tliAccessToken
    , tliUploadType
    , tliPayload
    , tliCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.insert@ method which the
-- 'TaskListsInsert' request conforms to.
type TaskListsInsertResource =
     "tasks" :>
       "v1" :>
         "users" :>
           "@me" :>
             "lists" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TaskList :> Post '[JSON] TaskList

-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ 'taskListsInsert' smart constructor.
data TaskListsInsert =
  TaskListsInsert'
    { _tliXgafv :: !(Maybe Xgafv)
    , _tliUploadProtocol :: !(Maybe Text)
    , _tliAccessToken :: !(Maybe Text)
    , _tliUploadType :: !(Maybe Text)
    , _tliPayload :: !TaskList
    , _tliCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskListsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tliXgafv'
--
-- * 'tliUploadProtocol'
--
-- * 'tliAccessToken'
--
-- * 'tliUploadType'
--
-- * 'tliPayload'
--
-- * 'tliCallback'
taskListsInsert
    :: TaskList -- ^ 'tliPayload'
    -> TaskListsInsert
taskListsInsert pTliPayload_ =
  TaskListsInsert'
    { _tliXgafv = Nothing
    , _tliUploadProtocol = Nothing
    , _tliAccessToken = Nothing
    , _tliUploadType = Nothing
    , _tliPayload = pTliPayload_
    , _tliCallback = Nothing
    }


-- | V1 error format.
tliXgafv :: Lens' TaskListsInsert (Maybe Xgafv)
tliXgafv = lens _tliXgafv (\ s a -> s{_tliXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tliUploadProtocol :: Lens' TaskListsInsert (Maybe Text)
tliUploadProtocol
  = lens _tliUploadProtocol
      (\ s a -> s{_tliUploadProtocol = a})

-- | OAuth access token.
tliAccessToken :: Lens' TaskListsInsert (Maybe Text)
tliAccessToken
  = lens _tliAccessToken
      (\ s a -> s{_tliAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tliUploadType :: Lens' TaskListsInsert (Maybe Text)
tliUploadType
  = lens _tliUploadType
      (\ s a -> s{_tliUploadType = a})

-- | Multipart request metadata.
tliPayload :: Lens' TaskListsInsert TaskList
tliPayload
  = lens _tliPayload (\ s a -> s{_tliPayload = a})

-- | JSONP
tliCallback :: Lens' TaskListsInsert (Maybe Text)
tliCallback
  = lens _tliCallback (\ s a -> s{_tliCallback = a})

instance GoogleRequest TaskListsInsert where
        type Rs TaskListsInsert = TaskList
        type Scopes TaskListsInsert =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TaskListsInsert'{..}
          = go _tliXgafv _tliUploadProtocol _tliAccessToken
              _tliUploadType
              _tliCallback
              (Just AltJSON)
              _tliPayload
              appsTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy TaskListsInsertResource)
                      mempty

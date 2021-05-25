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
-- Module      : Network.Google.Resource.Tasks.Tasks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new task on the specified task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.insert@.
module Network.Google.Resource.Tasks.Tasks.Insert
    (
    -- * REST Resource
      TasksInsertResource

    -- * Creating a Request
    , tasksInsert
    , TasksInsert

    -- * Request Lenses
    , tiParent
    , tiXgafv
    , tiUploadProtocol
    , tiAccessToken
    , tiUploadType
    , tiPayload
    , tiTaskList
    , tiCallback
    , tiPrevious
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasks.insert@ method which the
-- 'TasksInsert' request conforms to.
type TasksInsertResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               QueryParam "parent" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "previous" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Task :> Post '[JSON] Task

-- | Creates a new task on the specified task list.
--
-- /See:/ 'tasksInsert' smart constructor.
data TasksInsert =
  TasksInsert'
    { _tiParent :: !(Maybe Text)
    , _tiXgafv :: !(Maybe Xgafv)
    , _tiUploadProtocol :: !(Maybe Text)
    , _tiAccessToken :: !(Maybe Text)
    , _tiUploadType :: !(Maybe Text)
    , _tiPayload :: !Task
    , _tiTaskList :: !Text
    , _tiCallback :: !(Maybe Text)
    , _tiPrevious :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiParent'
--
-- * 'tiXgafv'
--
-- * 'tiUploadProtocol'
--
-- * 'tiAccessToken'
--
-- * 'tiUploadType'
--
-- * 'tiPayload'
--
-- * 'tiTaskList'
--
-- * 'tiCallback'
--
-- * 'tiPrevious'
tasksInsert
    :: Task -- ^ 'tiPayload'
    -> Text -- ^ 'tiTaskList'
    -> TasksInsert
tasksInsert pTiPayload_ pTiTaskList_ =
  TasksInsert'
    { _tiParent = Nothing
    , _tiXgafv = Nothing
    , _tiUploadProtocol = Nothing
    , _tiAccessToken = Nothing
    , _tiUploadType = Nothing
    , _tiPayload = pTiPayload_
    , _tiTaskList = pTiTaskList_
    , _tiCallback = Nothing
    , _tiPrevious = Nothing
    }


-- | Parent task identifier. If the task is created at the top level, this
-- parameter is omitted. Optional.
tiParent :: Lens' TasksInsert (Maybe Text)
tiParent = lens _tiParent (\ s a -> s{_tiParent = a})

-- | V1 error format.
tiXgafv :: Lens' TasksInsert (Maybe Xgafv)
tiXgafv = lens _tiXgafv (\ s a -> s{_tiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tiUploadProtocol :: Lens' TasksInsert (Maybe Text)
tiUploadProtocol
  = lens _tiUploadProtocol
      (\ s a -> s{_tiUploadProtocol = a})

-- | OAuth access token.
tiAccessToken :: Lens' TasksInsert (Maybe Text)
tiAccessToken
  = lens _tiAccessToken
      (\ s a -> s{_tiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tiUploadType :: Lens' TasksInsert (Maybe Text)
tiUploadType
  = lens _tiUploadType (\ s a -> s{_tiUploadType = a})

-- | Multipart request metadata.
tiPayload :: Lens' TasksInsert Task
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | Task list identifier.
tiTaskList :: Lens' TasksInsert Text
tiTaskList
  = lens _tiTaskList (\ s a -> s{_tiTaskList = a})

-- | JSONP
tiCallback :: Lens' TasksInsert (Maybe Text)
tiCallback
  = lens _tiCallback (\ s a -> s{_tiCallback = a})

-- | Previous sibling task identifier. If the task is created at the first
-- position among its siblings, this parameter is omitted. Optional.
tiPrevious :: Lens' TasksInsert (Maybe Text)
tiPrevious
  = lens _tiPrevious (\ s a -> s{_tiPrevious = a})

instance GoogleRequest TasksInsert where
        type Rs TasksInsert = Task
        type Scopes TasksInsert =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksInsert'{..}
          = go _tiTaskList _tiParent _tiXgafv _tiUploadProtocol
              _tiAccessToken
              _tiUploadType
              _tiCallback
              _tiPrevious
              (Just AltJSON)
              _tiPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksInsertResource)
                      mempty

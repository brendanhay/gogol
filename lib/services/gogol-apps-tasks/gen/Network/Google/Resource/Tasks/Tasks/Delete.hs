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
-- Module      : Network.Google.Resource.Tasks.Tasks.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified task from the task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.delete@.
module Network.Google.Resource.Tasks.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteResource

    -- * Creating a Request
    , tasksDelete
    , TasksDelete

    -- * Request Lenses
    , tdXgafv
    , tdUploadProtocol
    , tdAccessToken
    , tdUploadType
    , tdTaskList
    , tdTask
    , tdCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasks.delete@ method which the
-- 'TasksDelete' request conforms to.
type TasksDeleteResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               Capture "task" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified task from the task list.
--
-- /See:/ 'tasksDelete' smart constructor.
data TasksDelete =
  TasksDelete'
    { _tdXgafv :: !(Maybe Xgafv)
    , _tdUploadProtocol :: !(Maybe Text)
    , _tdAccessToken :: !(Maybe Text)
    , _tdUploadType :: !(Maybe Text)
    , _tdTaskList :: !Text
    , _tdTask :: !Text
    , _tdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdXgafv'
--
-- * 'tdUploadProtocol'
--
-- * 'tdAccessToken'
--
-- * 'tdUploadType'
--
-- * 'tdTaskList'
--
-- * 'tdTask'
--
-- * 'tdCallback'
tasksDelete
    :: Text -- ^ 'tdTaskList'
    -> Text -- ^ 'tdTask'
    -> TasksDelete
tasksDelete pTdTaskList_ pTdTask_ =
  TasksDelete'
    { _tdXgafv = Nothing
    , _tdUploadProtocol = Nothing
    , _tdAccessToken = Nothing
    , _tdUploadType = Nothing
    , _tdTaskList = pTdTaskList_
    , _tdTask = pTdTask_
    , _tdCallback = Nothing
    }


-- | V1 error format.
tdXgafv :: Lens' TasksDelete (Maybe Xgafv)
tdXgafv = lens _tdXgafv (\ s a -> s{_tdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tdUploadProtocol :: Lens' TasksDelete (Maybe Text)
tdUploadProtocol
  = lens _tdUploadProtocol
      (\ s a -> s{_tdUploadProtocol = a})

-- | OAuth access token.
tdAccessToken :: Lens' TasksDelete (Maybe Text)
tdAccessToken
  = lens _tdAccessToken
      (\ s a -> s{_tdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tdUploadType :: Lens' TasksDelete (Maybe Text)
tdUploadType
  = lens _tdUploadType (\ s a -> s{_tdUploadType = a})

-- | Task list identifier.
tdTaskList :: Lens' TasksDelete Text
tdTaskList
  = lens _tdTaskList (\ s a -> s{_tdTaskList = a})

-- | Task identifier.
tdTask :: Lens' TasksDelete Text
tdTask = lens _tdTask (\ s a -> s{_tdTask = a})

-- | JSONP
tdCallback :: Lens' TasksDelete (Maybe Text)
tdCallback
  = lens _tdCallback (\ s a -> s{_tdCallback = a})

instance GoogleRequest TasksDelete where
        type Rs TasksDelete = ()
        type Scopes TasksDelete =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksDelete'{..}
          = go _tdTaskList _tdTask _tdXgafv _tdUploadProtocol
              _tdAccessToken
              _tdUploadType
              _tdCallback
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksDeleteResource)
                      mempty

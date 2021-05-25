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
-- Module      : Network.Google.Resource.Tasks.Tasks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified task.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.get@.
module Network.Google.Resource.Tasks.Tasks.Get
    (
    -- * REST Resource
      TasksGetResource

    -- * Creating a Request
    , tasksGet
    , TasksGet

    -- * Request Lenses
    , tgXgafv
    , tgUploadProtocol
    , tgAccessToken
    , tgUploadType
    , tgTaskList
    , tgTask
    , tgCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasks.get@ method which the
-- 'TasksGet' request conforms to.
type TasksGetResource =
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
                           QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Returns the specified task.
--
-- /See:/ 'tasksGet' smart constructor.
data TasksGet =
  TasksGet'
    { _tgXgafv :: !(Maybe Xgafv)
    , _tgUploadProtocol :: !(Maybe Text)
    , _tgAccessToken :: !(Maybe Text)
    , _tgUploadType :: !(Maybe Text)
    , _tgTaskList :: !Text
    , _tgTask :: !Text
    , _tgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgXgafv'
--
-- * 'tgUploadProtocol'
--
-- * 'tgAccessToken'
--
-- * 'tgUploadType'
--
-- * 'tgTaskList'
--
-- * 'tgTask'
--
-- * 'tgCallback'
tasksGet
    :: Text -- ^ 'tgTaskList'
    -> Text -- ^ 'tgTask'
    -> TasksGet
tasksGet pTgTaskList_ pTgTask_ =
  TasksGet'
    { _tgXgafv = Nothing
    , _tgUploadProtocol = Nothing
    , _tgAccessToken = Nothing
    , _tgUploadType = Nothing
    , _tgTaskList = pTgTaskList_
    , _tgTask = pTgTask_
    , _tgCallback = Nothing
    }


-- | V1 error format.
tgXgafv :: Lens' TasksGet (Maybe Xgafv)
tgXgafv = lens _tgXgafv (\ s a -> s{_tgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tgUploadProtocol :: Lens' TasksGet (Maybe Text)
tgUploadProtocol
  = lens _tgUploadProtocol
      (\ s a -> s{_tgUploadProtocol = a})

-- | OAuth access token.
tgAccessToken :: Lens' TasksGet (Maybe Text)
tgAccessToken
  = lens _tgAccessToken
      (\ s a -> s{_tgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tgUploadType :: Lens' TasksGet (Maybe Text)
tgUploadType
  = lens _tgUploadType (\ s a -> s{_tgUploadType = a})

-- | Task list identifier.
tgTaskList :: Lens' TasksGet Text
tgTaskList
  = lens _tgTaskList (\ s a -> s{_tgTaskList = a})

-- | Task identifier.
tgTask :: Lens' TasksGet Text
tgTask = lens _tgTask (\ s a -> s{_tgTask = a})

-- | JSONP
tgCallback :: Lens' TasksGet (Maybe Text)
tgCallback
  = lens _tgCallback (\ s a -> s{_tgCallback = a})

instance GoogleRequest TasksGet where
        type Rs TasksGet = Task
        type Scopes TasksGet =
             '["https://www.googleapis.com/auth/tasks",
               "https://www.googleapis.com/auth/tasks.readonly"]
        requestClient TasksGet'{..}
          = go _tgTaskList _tgTask _tgXgafv _tgUploadProtocol
              _tgAccessToken
              _tgUploadType
              _tgCallback
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksGetResource)
                      mempty

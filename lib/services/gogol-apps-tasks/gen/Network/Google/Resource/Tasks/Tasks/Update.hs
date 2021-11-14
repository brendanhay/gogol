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
-- Module      : Network.Google.Resource.Tasks.Tasks.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified task.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.update@.
module Network.Google.Resource.Tasks.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateResource

    -- * Creating a Request
    , tasksUpdate
    , TasksUpdate

    -- * Request Lenses
    , tuXgafv
    , tuUploadProtocol
    , tuAccessToken
    , tuUploadType
    , tuPayload
    , tuTaskList
    , tuTask
    , tuCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasks.update@ method which the
-- 'TasksUpdate' request conforms to.
type TasksUpdateResource =
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
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Task :> Put '[JSON] Task

-- | Updates the specified task.
--
-- /See:/ 'tasksUpdate' smart constructor.
data TasksUpdate =
  TasksUpdate'
    { _tuXgafv :: !(Maybe Xgafv)
    , _tuUploadProtocol :: !(Maybe Text)
    , _tuAccessToken :: !(Maybe Text)
    , _tuUploadType :: !(Maybe Text)
    , _tuPayload :: !Task
    , _tuTaskList :: !Text
    , _tuTask :: !Text
    , _tuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuXgafv'
--
-- * 'tuUploadProtocol'
--
-- * 'tuAccessToken'
--
-- * 'tuUploadType'
--
-- * 'tuPayload'
--
-- * 'tuTaskList'
--
-- * 'tuTask'
--
-- * 'tuCallback'
tasksUpdate
    :: Task -- ^ 'tuPayload'
    -> Text -- ^ 'tuTaskList'
    -> Text -- ^ 'tuTask'
    -> TasksUpdate
tasksUpdate pTuPayload_ pTuTaskList_ pTuTask_ =
  TasksUpdate'
    { _tuXgafv = Nothing
    , _tuUploadProtocol = Nothing
    , _tuAccessToken = Nothing
    , _tuUploadType = Nothing
    , _tuPayload = pTuPayload_
    , _tuTaskList = pTuTaskList_
    , _tuTask = pTuTask_
    , _tuCallback = Nothing
    }


-- | V1 error format.
tuXgafv :: Lens' TasksUpdate (Maybe Xgafv)
tuXgafv = lens _tuXgafv (\ s a -> s{_tuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tuUploadProtocol :: Lens' TasksUpdate (Maybe Text)
tuUploadProtocol
  = lens _tuUploadProtocol
      (\ s a -> s{_tuUploadProtocol = a})

-- | OAuth access token.
tuAccessToken :: Lens' TasksUpdate (Maybe Text)
tuAccessToken
  = lens _tuAccessToken
      (\ s a -> s{_tuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tuUploadType :: Lens' TasksUpdate (Maybe Text)
tuUploadType
  = lens _tuUploadType (\ s a -> s{_tuUploadType = a})

-- | Multipart request metadata.
tuPayload :: Lens' TasksUpdate Task
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | Task list identifier.
tuTaskList :: Lens' TasksUpdate Text
tuTaskList
  = lens _tuTaskList (\ s a -> s{_tuTaskList = a})

-- | Task identifier.
tuTask :: Lens' TasksUpdate Text
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

-- | JSONP
tuCallback :: Lens' TasksUpdate (Maybe Text)
tuCallback
  = lens _tuCallback (\ s a -> s{_tuCallback = a})

instance GoogleRequest TasksUpdate where
        type Rs TasksUpdate = Task
        type Scopes TasksUpdate =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksUpdate'{..}
          = go _tuTaskList _tuTask _tuXgafv _tuUploadProtocol
              _tuAccessToken
              _tuUploadType
              _tuCallback
              (Just AltJSON)
              _tuPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksUpdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasklists.patch@.
module Network.Google.Resource.Tasks.TaskLists.Patch
    (
    -- * REST Resource
      TaskListsPatchResource

    -- * Creating a Request
    , taskListsPatch
    , TaskListsPatch

    -- * Request Lenses
    , tlpXgafv
    , tlpUploadProtocol
    , tlpAccessToken
    , tlpUploadType
    , tlpPayload
    , tlpTaskList
    , tlpCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.patch@ method which the
-- 'TaskListsPatch' request conforms to.
type TaskListsPatchResource =
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
                             ReqBody '[JSON] TaskList :> Patch '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ 'taskListsPatch' smart constructor.
data TaskListsPatch =
  TaskListsPatch'
    { _tlpXgafv :: !(Maybe Xgafv)
    , _tlpUploadProtocol :: !(Maybe Text)
    , _tlpAccessToken :: !(Maybe Text)
    , _tlpUploadType :: !(Maybe Text)
    , _tlpPayload :: !TaskList
    , _tlpTaskList :: !Text
    , _tlpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskListsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlpXgafv'
--
-- * 'tlpUploadProtocol'
--
-- * 'tlpAccessToken'
--
-- * 'tlpUploadType'
--
-- * 'tlpPayload'
--
-- * 'tlpTaskList'
--
-- * 'tlpCallback'
taskListsPatch
    :: TaskList -- ^ 'tlpPayload'
    -> Text -- ^ 'tlpTaskList'
    -> TaskListsPatch
taskListsPatch pTlpPayload_ pTlpTaskList_ =
  TaskListsPatch'
    { _tlpXgafv = Nothing
    , _tlpUploadProtocol = Nothing
    , _tlpAccessToken = Nothing
    , _tlpUploadType = Nothing
    , _tlpPayload = pTlpPayload_
    , _tlpTaskList = pTlpTaskList_
    , _tlpCallback = Nothing
    }


-- | V1 error format.
tlpXgafv :: Lens' TaskListsPatch (Maybe Xgafv)
tlpXgafv = lens _tlpXgafv (\ s a -> s{_tlpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlpUploadProtocol :: Lens' TaskListsPatch (Maybe Text)
tlpUploadProtocol
  = lens _tlpUploadProtocol
      (\ s a -> s{_tlpUploadProtocol = a})

-- | OAuth access token.
tlpAccessToken :: Lens' TaskListsPatch (Maybe Text)
tlpAccessToken
  = lens _tlpAccessToken
      (\ s a -> s{_tlpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlpUploadType :: Lens' TaskListsPatch (Maybe Text)
tlpUploadType
  = lens _tlpUploadType
      (\ s a -> s{_tlpUploadType = a})

-- | Multipart request metadata.
tlpPayload :: Lens' TaskListsPatch TaskList
tlpPayload
  = lens _tlpPayload (\ s a -> s{_tlpPayload = a})

-- | Task list identifier.
tlpTaskList :: Lens' TaskListsPatch Text
tlpTaskList
  = lens _tlpTaskList (\ s a -> s{_tlpTaskList = a})

-- | JSONP
tlpCallback :: Lens' TaskListsPatch (Maybe Text)
tlpCallback
  = lens _tlpCallback (\ s a -> s{_tlpCallback = a})

instance GoogleRequest TaskListsPatch where
        type Rs TaskListsPatch = TaskList
        type Scopes TaskListsPatch =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TaskListsPatch'{..}
          = go _tlpTaskList _tlpXgafv _tlpUploadProtocol
              _tlpAccessToken
              _tlpUploadType
              _tlpCallback
              (Just AltJSON)
              _tlpPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TaskListsPatchResource)
                      mempty

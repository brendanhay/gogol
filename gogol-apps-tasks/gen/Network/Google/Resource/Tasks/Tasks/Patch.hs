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
-- Module      : Network.Google.Resource.Tasks.Tasks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified task. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.patch@.
module Network.Google.Resource.Tasks.Tasks.Patch
    (
    -- * REST Resource
      TasksPatchResource

    -- * Creating a Request
    , tasksPatch
    , TasksPatch

    -- * Request Lenses
    , tpXgafv
    , tpUploadProtocol
    , tpAccessToken
    , tpUploadType
    , tpPayload
    , tpTaskList
    , tpTask
    , tpCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasks.patch@ method which the
-- 'TasksPatch' request conforms to.
type TasksPatchResource =
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
                             ReqBody '[JSON] Task :> Patch '[JSON] Task

-- | Updates the specified task. This method supports patch semantics.
--
-- /See:/ 'tasksPatch' smart constructor.
data TasksPatch =
  TasksPatch'
    { _tpXgafv :: !(Maybe Xgafv)
    , _tpUploadProtocol :: !(Maybe Text)
    , _tpAccessToken :: !(Maybe Text)
    , _tpUploadType :: !(Maybe Text)
    , _tpPayload :: !Task
    , _tpTaskList :: !Text
    , _tpTask :: !Text
    , _tpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpXgafv'
--
-- * 'tpUploadProtocol'
--
-- * 'tpAccessToken'
--
-- * 'tpUploadType'
--
-- * 'tpPayload'
--
-- * 'tpTaskList'
--
-- * 'tpTask'
--
-- * 'tpCallback'
tasksPatch
    :: Task -- ^ 'tpPayload'
    -> Text -- ^ 'tpTaskList'
    -> Text -- ^ 'tpTask'
    -> TasksPatch
tasksPatch pTpPayload_ pTpTaskList_ pTpTask_ =
  TasksPatch'
    { _tpXgafv = Nothing
    , _tpUploadProtocol = Nothing
    , _tpAccessToken = Nothing
    , _tpUploadType = Nothing
    , _tpPayload = pTpPayload_
    , _tpTaskList = pTpTaskList_
    , _tpTask = pTpTask_
    , _tpCallback = Nothing
    }


-- | V1 error format.
tpXgafv :: Lens' TasksPatch (Maybe Xgafv)
tpXgafv = lens _tpXgafv (\ s a -> s{_tpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tpUploadProtocol :: Lens' TasksPatch (Maybe Text)
tpUploadProtocol
  = lens _tpUploadProtocol
      (\ s a -> s{_tpUploadProtocol = a})

-- | OAuth access token.
tpAccessToken :: Lens' TasksPatch (Maybe Text)
tpAccessToken
  = lens _tpAccessToken
      (\ s a -> s{_tpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tpUploadType :: Lens' TasksPatch (Maybe Text)
tpUploadType
  = lens _tpUploadType (\ s a -> s{_tpUploadType = a})

-- | Multipart request metadata.
tpPayload :: Lens' TasksPatch Task
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | Task list identifier.
tpTaskList :: Lens' TasksPatch Text
tpTaskList
  = lens _tpTaskList (\ s a -> s{_tpTaskList = a})

-- | Task identifier.
tpTask :: Lens' TasksPatch Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | JSONP
tpCallback :: Lens' TasksPatch (Maybe Text)
tpCallback
  = lens _tpCallback (\ s a -> s{_tpCallback = a})

instance GoogleRequest TasksPatch where
        type Rs TasksPatch = Task
        type Scopes TasksPatch =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksPatch'{..}
          = go _tpTaskList _tpTask _tpXgafv _tpUploadProtocol
              _tpAccessToken
              _tpUploadType
              _tpCallback
              (Just AltJSON)
              _tpPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksPatchResource)
                      mempty

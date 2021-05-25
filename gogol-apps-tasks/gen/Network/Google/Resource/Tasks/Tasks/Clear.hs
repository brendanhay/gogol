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
-- Module      : Network.Google.Resource.Tasks.Tasks.Clear
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ <https://developers.google.com/tasks/ Tasks API Reference> for @tasks.tasks.clear@.
module Network.Google.Resource.Tasks.Tasks.Clear
    (
    -- * REST Resource
      TasksClearResource

    -- * Creating a Request
    , tasksClear
    , TasksClear

    -- * Request Lenses
    , tcXgafv
    , tcUploadProtocol
    , tcAccessToken
    , tcUploadType
    , tcTaskList
    , tcCallback
    ) where

import Network.Google.AppsTasks.Types
import Network.Google.Prelude

-- | A resource alias for @tasks.tasks.clear@ method which the
-- 'TasksClear' request conforms to.
type TasksClearResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "clear" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ 'tasksClear' smart constructor.
data TasksClear =
  TasksClear'
    { _tcXgafv :: !(Maybe Xgafv)
    , _tcUploadProtocol :: !(Maybe Text)
    , _tcAccessToken :: !(Maybe Text)
    , _tcUploadType :: !(Maybe Text)
    , _tcTaskList :: !Text
    , _tcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksClear' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcXgafv'
--
-- * 'tcUploadProtocol'
--
-- * 'tcAccessToken'
--
-- * 'tcUploadType'
--
-- * 'tcTaskList'
--
-- * 'tcCallback'
tasksClear
    :: Text -- ^ 'tcTaskList'
    -> TasksClear
tasksClear pTcTaskList_ =
  TasksClear'
    { _tcXgafv = Nothing
    , _tcUploadProtocol = Nothing
    , _tcAccessToken = Nothing
    , _tcUploadType = Nothing
    , _tcTaskList = pTcTaskList_
    , _tcCallback = Nothing
    }


-- | V1 error format.
tcXgafv :: Lens' TasksClear (Maybe Xgafv)
tcXgafv = lens _tcXgafv (\ s a -> s{_tcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tcUploadProtocol :: Lens' TasksClear (Maybe Text)
tcUploadProtocol
  = lens _tcUploadProtocol
      (\ s a -> s{_tcUploadProtocol = a})

-- | OAuth access token.
tcAccessToken :: Lens' TasksClear (Maybe Text)
tcAccessToken
  = lens _tcAccessToken
      (\ s a -> s{_tcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tcUploadType :: Lens' TasksClear (Maybe Text)
tcUploadType
  = lens _tcUploadType (\ s a -> s{_tcUploadType = a})

-- | Task list identifier.
tcTaskList :: Lens' TasksClear Text
tcTaskList
  = lens _tcTaskList (\ s a -> s{_tcTaskList = a})

-- | JSONP
tcCallback :: Lens' TasksClear (Maybe Text)
tcCallback
  = lens _tcCallback (\ s a -> s{_tcCallback = a})

instance GoogleRequest TasksClear where
        type Rs TasksClear = ()
        type Scopes TasksClear =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksClear'{..}
          = go _tcTaskList _tcXgafv _tcUploadProtocol
              _tcAccessToken
              _tcUploadType
              _tcCallback
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksClearResource)
                      mempty

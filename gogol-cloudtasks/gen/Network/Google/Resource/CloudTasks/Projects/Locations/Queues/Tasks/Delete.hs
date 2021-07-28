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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a task. A task can be deleted if it is scheduled or dispatched.
-- A task cannot be deleted if it has executed successfully or permanently
-- failed.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.delete@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Delete
    (
    -- * REST Resource
      ProjectsLocationsQueuesTasksDeleteResource

    -- * Creating a Request
    , projectsLocationsQueuesTasksDelete
    , ProjectsLocationsQueuesTasksDelete

    -- * Request Lenses
    , plqtdXgafv
    , plqtdUploadProtocol
    , plqtdAccessToken
    , plqtdUploadType
    , plqtdName
    , plqtdCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.delete@ method which the
-- 'ProjectsLocationsQueuesTasksDelete' request conforms to.
type ProjectsLocationsQueuesTasksDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a task. A task can be deleted if it is scheduled or dispatched.
-- A task cannot be deleted if it has executed successfully or permanently
-- failed.
--
-- /See:/ 'projectsLocationsQueuesTasksDelete' smart constructor.
data ProjectsLocationsQueuesTasksDelete =
  ProjectsLocationsQueuesTasksDelete'
    { _plqtdXgafv :: !(Maybe Xgafv)
    , _plqtdUploadProtocol :: !(Maybe Text)
    , _plqtdAccessToken :: !(Maybe Text)
    , _plqtdUploadType :: !(Maybe Text)
    , _plqtdName :: !Text
    , _plqtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesTasksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqtdXgafv'
--
-- * 'plqtdUploadProtocol'
--
-- * 'plqtdAccessToken'
--
-- * 'plqtdUploadType'
--
-- * 'plqtdName'
--
-- * 'plqtdCallback'
projectsLocationsQueuesTasksDelete
    :: Text -- ^ 'plqtdName'
    -> ProjectsLocationsQueuesTasksDelete
projectsLocationsQueuesTasksDelete pPlqtdName_ =
  ProjectsLocationsQueuesTasksDelete'
    { _plqtdXgafv = Nothing
    , _plqtdUploadProtocol = Nothing
    , _plqtdAccessToken = Nothing
    , _plqtdUploadType = Nothing
    , _plqtdName = pPlqtdName_
    , _plqtdCallback = Nothing
    }


-- | V1 error format.
plqtdXgafv :: Lens' ProjectsLocationsQueuesTasksDelete (Maybe Xgafv)
plqtdXgafv
  = lens _plqtdXgafv (\ s a -> s{_plqtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqtdUploadProtocol :: Lens' ProjectsLocationsQueuesTasksDelete (Maybe Text)
plqtdUploadProtocol
  = lens _plqtdUploadProtocol
      (\ s a -> s{_plqtdUploadProtocol = a})

-- | OAuth access token.
plqtdAccessToken :: Lens' ProjectsLocationsQueuesTasksDelete (Maybe Text)
plqtdAccessToken
  = lens _plqtdAccessToken
      (\ s a -> s{_plqtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqtdUploadType :: Lens' ProjectsLocationsQueuesTasksDelete (Maybe Text)
plqtdUploadType
  = lens _plqtdUploadType
      (\ s a -> s{_plqtdUploadType = a})

-- | Required. The task name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID\`
plqtdName :: Lens' ProjectsLocationsQueuesTasksDelete Text
plqtdName
  = lens _plqtdName (\ s a -> s{_plqtdName = a})

-- | JSONP
plqtdCallback :: Lens' ProjectsLocationsQueuesTasksDelete (Maybe Text)
plqtdCallback
  = lens _plqtdCallback
      (\ s a -> s{_plqtdCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesTasksDelete
         where
        type Rs ProjectsLocationsQueuesTasksDelete = Empty
        type Scopes ProjectsLocationsQueuesTasksDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesTasksDelete'{..}
          = go _plqtdName _plqtdXgafv _plqtdUploadProtocol
              _plqtdAccessToken
              _plqtdUploadType
              _plqtdCallback
              (Just AltJSON)
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesTasksDeleteResource)
                      mempty

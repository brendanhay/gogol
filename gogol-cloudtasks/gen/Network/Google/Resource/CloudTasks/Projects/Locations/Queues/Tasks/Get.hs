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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a task.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.get@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.Get
    (
    -- * REST Resource
      ProjectsLocationsQueuesTasksGetResource

    -- * Creating a Request
    , projectsLocationsQueuesTasksGet
    , ProjectsLocationsQueuesTasksGet

    -- * Request Lenses
    , plqtgXgafv
    , plqtgUploadProtocol
    , plqtgAccessToken
    , plqtgUploadType
    , plqtgResponseView
    , plqtgName
    , plqtgCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.get@ method which the
-- 'ProjectsLocationsQueuesTasksGet' request conforms to.
type ProjectsLocationsQueuesTasksGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "responseView" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Gets a task.
--
-- /See:/ 'projectsLocationsQueuesTasksGet' smart constructor.
data ProjectsLocationsQueuesTasksGet =
  ProjectsLocationsQueuesTasksGet'
    { _plqtgXgafv :: !(Maybe Xgafv)
    , _plqtgUploadProtocol :: !(Maybe Text)
    , _plqtgAccessToken :: !(Maybe Text)
    , _plqtgUploadType :: !(Maybe Text)
    , _plqtgResponseView :: !(Maybe Text)
    , _plqtgName :: !Text
    , _plqtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesTasksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqtgXgafv'
--
-- * 'plqtgUploadProtocol'
--
-- * 'plqtgAccessToken'
--
-- * 'plqtgUploadType'
--
-- * 'plqtgResponseView'
--
-- * 'plqtgName'
--
-- * 'plqtgCallback'
projectsLocationsQueuesTasksGet
    :: Text -- ^ 'plqtgName'
    -> ProjectsLocationsQueuesTasksGet
projectsLocationsQueuesTasksGet pPlqtgName_ =
  ProjectsLocationsQueuesTasksGet'
    { _plqtgXgafv = Nothing
    , _plqtgUploadProtocol = Nothing
    , _plqtgAccessToken = Nothing
    , _plqtgUploadType = Nothing
    , _plqtgResponseView = Nothing
    , _plqtgName = pPlqtgName_
    , _plqtgCallback = Nothing
    }


-- | V1 error format.
plqtgXgafv :: Lens' ProjectsLocationsQueuesTasksGet (Maybe Xgafv)
plqtgXgafv
  = lens _plqtgXgafv (\ s a -> s{_plqtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqtgUploadProtocol :: Lens' ProjectsLocationsQueuesTasksGet (Maybe Text)
plqtgUploadProtocol
  = lens _plqtgUploadProtocol
      (\ s a -> s{_plqtgUploadProtocol = a})

-- | OAuth access token.
plqtgAccessToken :: Lens' ProjectsLocationsQueuesTasksGet (Maybe Text)
plqtgAccessToken
  = lens _plqtgAccessToken
      (\ s a -> s{_plqtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqtgUploadType :: Lens' ProjectsLocationsQueuesTasksGet (Maybe Text)
plqtgUploadType
  = lens _plqtgUploadType
      (\ s a -> s{_plqtgUploadType = a})

-- | The response_view specifies which subset of the Task will be returned.
-- By default response_view is BASIC; not all information is retrieved by
-- default because some data, such as payloads, might be desirable to
-- return only when needed because of its large size or because of the
-- sensitivity of data that it contains. Authorization for FULL requires
-- \`cloudtasks.tasks.fullView\` [Google
-- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Task resource.
plqtgResponseView :: Lens' ProjectsLocationsQueuesTasksGet (Maybe Text)
plqtgResponseView
  = lens _plqtgResponseView
      (\ s a -> s{_plqtgResponseView = a})

-- | Required. The task name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\/tasks\/TASK_ID\`
plqtgName :: Lens' ProjectsLocationsQueuesTasksGet Text
plqtgName
  = lens _plqtgName (\ s a -> s{_plqtgName = a})

-- | JSONP
plqtgCallback :: Lens' ProjectsLocationsQueuesTasksGet (Maybe Text)
plqtgCallback
  = lens _plqtgCallback
      (\ s a -> s{_plqtgCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesTasksGet
         where
        type Rs ProjectsLocationsQueuesTasksGet = Task
        type Scopes ProjectsLocationsQueuesTasksGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesTasksGet'{..}
          = go _plqtgName _plqtgXgafv _plqtgUploadProtocol
              _plqtgAccessToken
              _plqtgUploadType
              _plqtgResponseView
              _plqtgCallback
              (Just AltJSON)
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesTasksGetResource)
                      mempty

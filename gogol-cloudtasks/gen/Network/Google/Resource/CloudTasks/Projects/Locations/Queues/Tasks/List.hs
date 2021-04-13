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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tasks in a queue. By default, only the BASIC view is retrieved
-- due to performance considerations; response_view controls the subset of
-- information which is returned. The tasks may be returned in any order.
-- The ordering may change at any time.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.list@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.Tasks.List
    (
    -- * REST Resource
      ProjectsLocationsQueuesTasksListResource

    -- * Creating a Request
    , projectsLocationsQueuesTasksList
    , ProjectsLocationsQueuesTasksList

    -- * Request Lenses
    , plqtlParent
    , plqtlXgafv
    , plqtlUploadProtocol
    , plqtlAccessToken
    , plqtlUploadType
    , plqtlResponseView
    , plqtlPageToken
    , plqtlPageSize
    , plqtlCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.list@ method which the
-- 'ProjectsLocationsQueuesTasksList' request conforms to.
type ProjectsLocationsQueuesTasksListResource =
     "v2" :>
       Capture "parent" Text :>
         "tasks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "responseView" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTasksResponse

-- | Lists the tasks in a queue. By default, only the BASIC view is retrieved
-- due to performance considerations; response_view controls the subset of
-- information which is returned. The tasks may be returned in any order.
-- The ordering may change at any time.
--
-- /See:/ 'projectsLocationsQueuesTasksList' smart constructor.
data ProjectsLocationsQueuesTasksList =
  ProjectsLocationsQueuesTasksList'
    { _plqtlParent :: !Text
    , _plqtlXgafv :: !(Maybe Xgafv)
    , _plqtlUploadProtocol :: !(Maybe Text)
    , _plqtlAccessToken :: !(Maybe Text)
    , _plqtlUploadType :: !(Maybe Text)
    , _plqtlResponseView :: !(Maybe Text)
    , _plqtlPageToken :: !(Maybe Text)
    , _plqtlPageSize :: !(Maybe (Textual Int32))
    , _plqtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesTasksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqtlParent'
--
-- * 'plqtlXgafv'
--
-- * 'plqtlUploadProtocol'
--
-- * 'plqtlAccessToken'
--
-- * 'plqtlUploadType'
--
-- * 'plqtlResponseView'
--
-- * 'plqtlPageToken'
--
-- * 'plqtlPageSize'
--
-- * 'plqtlCallback'
projectsLocationsQueuesTasksList
    :: Text -- ^ 'plqtlParent'
    -> ProjectsLocationsQueuesTasksList
projectsLocationsQueuesTasksList pPlqtlParent_ =
  ProjectsLocationsQueuesTasksList'
    { _plqtlParent = pPlqtlParent_
    , _plqtlXgafv = Nothing
    , _plqtlUploadProtocol = Nothing
    , _plqtlAccessToken = Nothing
    , _plqtlUploadType = Nothing
    , _plqtlResponseView = Nothing
    , _plqtlPageToken = Nothing
    , _plqtlPageSize = Nothing
    , _plqtlCallback = Nothing
    }


-- | Required. The queue name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID\`
plqtlParent :: Lens' ProjectsLocationsQueuesTasksList Text
plqtlParent
  = lens _plqtlParent (\ s a -> s{_plqtlParent = a})

-- | V1 error format.
plqtlXgafv :: Lens' ProjectsLocationsQueuesTasksList (Maybe Xgafv)
plqtlXgafv
  = lens _plqtlXgafv (\ s a -> s{_plqtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqtlUploadProtocol :: Lens' ProjectsLocationsQueuesTasksList (Maybe Text)
plqtlUploadProtocol
  = lens _plqtlUploadProtocol
      (\ s a -> s{_plqtlUploadProtocol = a})

-- | OAuth access token.
plqtlAccessToken :: Lens' ProjectsLocationsQueuesTasksList (Maybe Text)
plqtlAccessToken
  = lens _plqtlAccessToken
      (\ s a -> s{_plqtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqtlUploadType :: Lens' ProjectsLocationsQueuesTasksList (Maybe Text)
plqtlUploadType
  = lens _plqtlUploadType
      (\ s a -> s{_plqtlUploadType = a})

-- | The response_view specifies which subset of the Task will be returned.
-- By default response_view is BASIC; not all information is retrieved by
-- default because some data, such as payloads, might be desirable to
-- return only when needed because of its large size or because of the
-- sensitivity of data that it contains. Authorization for FULL requires
-- \`cloudtasks.tasks.fullView\` [Google
-- IAM](https:\/\/cloud.google.com\/iam\/) permission on the Task resource.
plqtlResponseView :: Lens' ProjectsLocationsQueuesTasksList (Maybe Text)
plqtlResponseView
  = lens _plqtlResponseView
      (\ s a -> s{_plqtlResponseView = a})

-- | A token identifying the page of results to return. To request the first
-- page results, page_token must be empty. To request the next page of
-- results, page_token must be the value of next_page_token returned from
-- the previous call to ListTasks method. The page token is valid for only
-- 2 hours.
plqtlPageToken :: Lens' ProjectsLocationsQueuesTasksList (Maybe Text)
plqtlPageToken
  = lens _plqtlPageToken
      (\ s a -> s{_plqtlPageToken = a})

-- | Maximum page size. Fewer tasks than requested might be returned, even if
-- more tasks exist; use next_page_token in the response to determine if
-- more tasks exist. The maximum page size is 1000. If unspecified, the
-- page size will be the maximum.
plqtlPageSize :: Lens' ProjectsLocationsQueuesTasksList (Maybe Int32)
plqtlPageSize
  = lens _plqtlPageSize
      (\ s a -> s{_plqtlPageSize = a})
      . mapping _Coerce

-- | JSONP
plqtlCallback :: Lens' ProjectsLocationsQueuesTasksList (Maybe Text)
plqtlCallback
  = lens _plqtlCallback
      (\ s a -> s{_plqtlCallback = a})

instance GoogleRequest
           ProjectsLocationsQueuesTasksList
         where
        type Rs ProjectsLocationsQueuesTasksList =
             ListTasksResponse
        type Scopes ProjectsLocationsQueuesTasksList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesTasksList'{..}
          = go _plqtlParent _plqtlXgafv _plqtlUploadProtocol
              _plqtlAccessToken
              _plqtlUploadType
              _plqtlResponseView
              _plqtlPageToken
              _plqtlPageSize
              _plqtlCallback
              (Just AltJSON)
              cloudTasksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsQueuesTasksListResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudTasks.Projects.Locations.Queues.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists queues. Queues are returned in lexicographical order.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.list@.
module Network.Google.Resource.CloudTasks.Projects.Locations.Queues.List
    (
    -- * REST Resource
      ProjectsLocationsQueuesListResource

    -- * Creating a Request
    , projectsLocationsQueuesList
    , ProjectsLocationsQueuesList

    -- * Request Lenses
    , plqlParent
    , plqlXgafv
    , plqlUploadProtocol
    , plqlAccessToken
    , plqlUploadType
    , plqlFilter
    , plqlPageToken
    , plqlPageSize
    , plqlCallback
    ) where

import Network.Google.CloudTasks.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtasks.projects.locations.queues.list@ method which the
-- 'ProjectsLocationsQueuesList' request conforms to.
type ProjectsLocationsQueuesListResource =
     "v2" :>
       Capture "parent" Text :>
         "queues" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListQueuesResponse

-- | Lists queues. Queues are returned in lexicographical order.
--
-- /See:/ 'projectsLocationsQueuesList' smart constructor.
data ProjectsLocationsQueuesList =
  ProjectsLocationsQueuesList'
    { _plqlParent :: !Text
    , _plqlXgafv :: !(Maybe Xgafv)
    , _plqlUploadProtocol :: !(Maybe Text)
    , _plqlAccessToken :: !(Maybe Text)
    , _plqlUploadType :: !(Maybe Text)
    , _plqlFilter :: !(Maybe Text)
    , _plqlPageToken :: !(Maybe Text)
    , _plqlPageSize :: !(Maybe (Textual Int32))
    , _plqlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsQueuesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plqlParent'
--
-- * 'plqlXgafv'
--
-- * 'plqlUploadProtocol'
--
-- * 'plqlAccessToken'
--
-- * 'plqlUploadType'
--
-- * 'plqlFilter'
--
-- * 'plqlPageToken'
--
-- * 'plqlPageSize'
--
-- * 'plqlCallback'
projectsLocationsQueuesList
    :: Text -- ^ 'plqlParent'
    -> ProjectsLocationsQueuesList
projectsLocationsQueuesList pPlqlParent_ =
  ProjectsLocationsQueuesList'
    { _plqlParent = pPlqlParent_
    , _plqlXgafv = Nothing
    , _plqlUploadProtocol = Nothing
    , _plqlAccessToken = Nothing
    , _plqlUploadType = Nothing
    , _plqlFilter = Nothing
    , _plqlPageToken = Nothing
    , _plqlPageSize = Nothing
    , _plqlCallback = Nothing
    }


-- | Required. The location name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\`
plqlParent :: Lens' ProjectsLocationsQueuesList Text
plqlParent
  = lens _plqlParent (\ s a -> s{_plqlParent = a})

-- | V1 error format.
plqlXgafv :: Lens' ProjectsLocationsQueuesList (Maybe Xgafv)
plqlXgafv
  = lens _plqlXgafv (\ s a -> s{_plqlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plqlUploadProtocol :: Lens' ProjectsLocationsQueuesList (Maybe Text)
plqlUploadProtocol
  = lens _plqlUploadProtocol
      (\ s a -> s{_plqlUploadProtocol = a})

-- | OAuth access token.
plqlAccessToken :: Lens' ProjectsLocationsQueuesList (Maybe Text)
plqlAccessToken
  = lens _plqlAccessToken
      (\ s a -> s{_plqlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plqlUploadType :: Lens' ProjectsLocationsQueuesList (Maybe Text)
plqlUploadType
  = lens _plqlUploadType
      (\ s a -> s{_plqlUploadType = a})

-- | \`filter\` can be used to specify a subset of queues. Any Queue field
-- can be used as a filter and several operators as supported. For example:
-- \`\<=, \<, >=, >, !=, =, :\`. The filter syntax is the same as described
-- in [Stackdriver\'s Advanced Logs
-- Filters](https:\/\/cloud.google.com\/logging\/docs\/view\/advanced_filters).
-- Sample filter \"state: PAUSED\". Note that using filters might cause
-- fewer queues than the requested page_size to be returned.
plqlFilter :: Lens' ProjectsLocationsQueuesList (Maybe Text)
plqlFilter
  = lens _plqlFilter (\ s a -> s{_plqlFilter = a})

-- | A token identifying the page of results to return. To request the first
-- page results, page_token must be empty. To request the next page of
-- results, page_token must be the value of next_page_token returned from
-- the previous call to ListQueues method. It is an error to switch the
-- value of the filter while iterating through pages.
plqlPageToken :: Lens' ProjectsLocationsQueuesList (Maybe Text)
plqlPageToken
  = lens _plqlPageToken
      (\ s a -> s{_plqlPageToken = a})

-- | Requested page size. The maximum page size is 9800. If unspecified, the
-- page size will be the maximum. Fewer queues than requested might be
-- returned, even if more queues exist; use the next_page_token in the
-- response to determine if more queues exist.
plqlPageSize :: Lens' ProjectsLocationsQueuesList (Maybe Int32)
plqlPageSize
  = lens _plqlPageSize (\ s a -> s{_plqlPageSize = a})
      . mapping _Coerce

-- | JSONP
plqlCallback :: Lens' ProjectsLocationsQueuesList (Maybe Text)
plqlCallback
  = lens _plqlCallback (\ s a -> s{_plqlCallback = a})

instance GoogleRequest ProjectsLocationsQueuesList
         where
        type Rs ProjectsLocationsQueuesList =
             ListQueuesResponse
        type Scopes ProjectsLocationsQueuesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsQueuesList'{..}
          = go _plqlParent _plqlXgafv _plqlUploadProtocol
              _plqlAccessToken
              _plqlUploadType
              _plqlFilter
              _plqlPageToken
              _plqlPageSize
              _plqlCallback
              (Just AltJSON)
              cloudTasksService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsQueuesListResource)
                      mempty

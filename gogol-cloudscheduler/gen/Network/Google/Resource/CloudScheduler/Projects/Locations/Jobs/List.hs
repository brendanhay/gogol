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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.list@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.List
    (
    -- * REST Resource
      ProjectsLocationsJobsListResource

    -- * Creating a Request
    , projectsLocationsJobsList
    , ProjectsLocationsJobsList

    -- * Request Lenses
    , pljlParent
    , pljlXgafv
    , pljlUploadProtocol
    , pljlAccessToken
    , pljlUploadType
    , pljlPageToken
    , pljlPageSize
    , pljlCallback
    ) where

import Network.Google.CloudScheduler.Types
import Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.list@ method which the
-- 'ProjectsLocationsJobsList' request conforms to.
type ProjectsLocationsJobsListResource =
     "v1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListJobsResponse

-- | Lists jobs.
--
-- /See:/ 'projectsLocationsJobsList' smart constructor.
data ProjectsLocationsJobsList =
  ProjectsLocationsJobsList'
    { _pljlParent :: !Text
    , _pljlXgafv :: !(Maybe Xgafv)
    , _pljlUploadProtocol :: !(Maybe Text)
    , _pljlAccessToken :: !(Maybe Text)
    , _pljlUploadType :: !(Maybe Text)
    , _pljlPageToken :: !(Maybe Text)
    , _pljlPageSize :: !(Maybe (Textual Int32))
    , _pljlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljlParent'
--
-- * 'pljlXgafv'
--
-- * 'pljlUploadProtocol'
--
-- * 'pljlAccessToken'
--
-- * 'pljlUploadType'
--
-- * 'pljlPageToken'
--
-- * 'pljlPageSize'
--
-- * 'pljlCallback'
projectsLocationsJobsList
    :: Text -- ^ 'pljlParent'
    -> ProjectsLocationsJobsList
projectsLocationsJobsList pPljlParent_ =
  ProjectsLocationsJobsList'
    { _pljlParent = pPljlParent_
    , _pljlXgafv = Nothing
    , _pljlUploadProtocol = Nothing
    , _pljlAccessToken = Nothing
    , _pljlUploadType = Nothing
    , _pljlPageToken = Nothing
    , _pljlPageSize = Nothing
    , _pljlCallback = Nothing
    }


-- | Required. The location name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\`.
pljlParent :: Lens' ProjectsLocationsJobsList Text
pljlParent
  = lens _pljlParent (\ s a -> s{_pljlParent = a})

-- | V1 error format.
pljlXgafv :: Lens' ProjectsLocationsJobsList (Maybe Xgafv)
pljlXgafv
  = lens _pljlXgafv (\ s a -> s{_pljlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljlUploadProtocol :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlUploadProtocol
  = lens _pljlUploadProtocol
      (\ s a -> s{_pljlUploadProtocol = a})

-- | OAuth access token.
pljlAccessToken :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlAccessToken
  = lens _pljlAccessToken
      (\ s a -> s{_pljlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljlUploadType :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlUploadType
  = lens _pljlUploadType
      (\ s a -> s{_pljlUploadType = a})

-- | A token identifying a page of results the server will return. To request
-- the first page results, page_token must be empty. To request the next
-- page of results, page_token must be the value of next_page_token
-- returned from the previous call to ListJobs. It is an error to switch
-- the value of filter or order_by while iterating through pages.
pljlPageToken :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlPageToken
  = lens _pljlPageToken
      (\ s a -> s{_pljlPageToken = a})

-- | Requested page size. The maximum page size is 500. If unspecified, the
-- page size will be the maximum. Fewer jobs than requested might be
-- returned, even if more jobs exist; use next_page_token to determine if
-- more jobs exist.
pljlPageSize :: Lens' ProjectsLocationsJobsList (Maybe Int32)
pljlPageSize
  = lens _pljlPageSize (\ s a -> s{_pljlPageSize = a})
      . mapping _Coerce

-- | JSONP
pljlCallback :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlCallback
  = lens _pljlCallback (\ s a -> s{_pljlCallback = a})

instance GoogleRequest ProjectsLocationsJobsList
         where
        type Rs ProjectsLocationsJobsList = ListJobsResponse
        type Scopes ProjectsLocationsJobsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsList'{..}
          = go _pljlParent _pljlXgafv _pljlUploadProtocol
              _pljlAccessToken
              _pljlUploadType
              _pljlPageToken
              _pljlPageSize
              _pljlCallback
              (Just AltJSON)
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsListResource)
                      mempty

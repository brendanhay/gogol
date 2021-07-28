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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the jobs of a project. To list the jobs of a project in a region,
-- we recommend using \`projects.locations.jobs.list\` with a [regional
-- endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- To list the all jobs across all regions, use
-- \`projects.jobs.aggregated\`. Using \`projects.jobs.list\` is not
-- recommended, as you can only get the list of jobs that are running in
-- \`us-central1\`.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.list@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.List
    (
    -- * REST Resource
      ProjectsLocationsJobsListResource

    -- * Creating a Request
    , projectsLocationsJobsList
    , ProjectsLocationsJobsList

    -- * Request Lenses
    , pljlXgafv
    , pljlUploadProtocol
    , pljlLocation
    , pljlAccessToken
    , pljlUploadType
    , pljlView
    , pljlFilter
    , pljlPageToken
    , pljlProjectId
    , pljlPageSize
    , pljlCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.list@ method which the
-- 'ProjectsLocationsJobsList' request conforms to.
type ProjectsLocationsJobsListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "view" ProjectsLocationsJobsListView :>
                           QueryParam "filter" ProjectsLocationsJobsListFilter
                             :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListJobsResponse

-- | List the jobs of a project. To list the jobs of a project in a region,
-- we recommend using \`projects.locations.jobs.list\` with a [regional
-- endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- To list the all jobs across all regions, use
-- \`projects.jobs.aggregated\`. Using \`projects.jobs.list\` is not
-- recommended, as you can only get the list of jobs that are running in
-- \`us-central1\`.
--
-- /See:/ 'projectsLocationsJobsList' smart constructor.
data ProjectsLocationsJobsList =
  ProjectsLocationsJobsList'
    { _pljlXgafv :: !(Maybe Xgafv)
    , _pljlUploadProtocol :: !(Maybe Text)
    , _pljlLocation :: !Text
    , _pljlAccessToken :: !(Maybe Text)
    , _pljlUploadType :: !(Maybe Text)
    , _pljlView :: !(Maybe ProjectsLocationsJobsListView)
    , _pljlFilter :: !(Maybe ProjectsLocationsJobsListFilter)
    , _pljlPageToken :: !(Maybe Text)
    , _pljlProjectId :: !Text
    , _pljlPageSize :: !(Maybe (Textual Int32))
    , _pljlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljlXgafv'
--
-- * 'pljlUploadProtocol'
--
-- * 'pljlLocation'
--
-- * 'pljlAccessToken'
--
-- * 'pljlUploadType'
--
-- * 'pljlView'
--
-- * 'pljlFilter'
--
-- * 'pljlPageToken'
--
-- * 'pljlProjectId'
--
-- * 'pljlPageSize'
--
-- * 'pljlCallback'
projectsLocationsJobsList
    :: Text -- ^ 'pljlLocation'
    -> Text -- ^ 'pljlProjectId'
    -> ProjectsLocationsJobsList
projectsLocationsJobsList pPljlLocation_ pPljlProjectId_ =
  ProjectsLocationsJobsList'
    { _pljlXgafv = Nothing
    , _pljlUploadProtocol = Nothing
    , _pljlLocation = pPljlLocation_
    , _pljlAccessToken = Nothing
    , _pljlUploadType = Nothing
    , _pljlView = Nothing
    , _pljlFilter = Nothing
    , _pljlPageToken = Nothing
    , _pljlProjectId = pPljlProjectId_
    , _pljlPageSize = Nothing
    , _pljlCallback = Nothing
    }


-- | V1 error format.
pljlXgafv :: Lens' ProjectsLocationsJobsList (Maybe Xgafv)
pljlXgafv
  = lens _pljlXgafv (\ s a -> s{_pljlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljlUploadProtocol :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlUploadProtocol
  = lens _pljlUploadProtocol
      (\ s a -> s{_pljlUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains this job.
pljlLocation :: Lens' ProjectsLocationsJobsList Text
pljlLocation
  = lens _pljlLocation (\ s a -> s{_pljlLocation = a})

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

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other
-- JobViews.
pljlView :: Lens' ProjectsLocationsJobsList (Maybe ProjectsLocationsJobsListView)
pljlView = lens _pljlView (\ s a -> s{_pljlView = a})

-- | The kind of filter to use.
pljlFilter :: Lens' ProjectsLocationsJobsList (Maybe ProjectsLocationsJobsListFilter)
pljlFilter
  = lens _pljlFilter (\ s a -> s{_pljlFilter = a})

-- | Set this to the \'next_page_token\' field of a previous response to
-- request additional results in a long list.
pljlPageToken :: Lens' ProjectsLocationsJobsList (Maybe Text)
pljlPageToken
  = lens _pljlPageToken
      (\ s a -> s{_pljlPageToken = a})

-- | The project which owns the jobs.
pljlProjectId :: Lens' ProjectsLocationsJobsList Text
pljlProjectId
  = lens _pljlProjectId
      (\ s a -> s{_pljlProjectId = a})

-- | If there are many jobs, limit response to at most this many. The actual
-- number of jobs returned will be the lesser of max_responses and an
-- unspecified server-defined limit.
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
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsList'{..}
          = go _pljlProjectId _pljlLocation _pljlXgafv
              _pljlUploadProtocol
              _pljlAccessToken
              _pljlUploadType
              _pljlView
              _pljlFilter
              _pljlPageToken
              _pljlPageSize
              _pljlCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsListResource)
                      mempty

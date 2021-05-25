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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.List
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
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.list@.
module Network.Google.Resource.Dataflow.Projects.Jobs.List
    (
    -- * REST Resource
      ProjectsJobsListResource

    -- * Creating a Request
    , projectsJobsList
    , ProjectsJobsList

    -- * Request Lenses
    , pjlXgafv
    , pjlUploadProtocol
    , pjlLocation
    , pjlAccessToken
    , pjlUploadType
    , pjlView
    , pjlFilter
    , pjlPageToken
    , pjlProjectId
    , pjlPageSize
    , pjlCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.list@ method which the
-- 'ProjectsJobsList' request conforms to.
type ProjectsJobsListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "location" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" ProjectsJobsListView :>
                         QueryParam "filter" ProjectsJobsListFilter :>
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
-- /See:/ 'projectsJobsList' smart constructor.
data ProjectsJobsList =
  ProjectsJobsList'
    { _pjlXgafv :: !(Maybe Xgafv)
    , _pjlUploadProtocol :: !(Maybe Text)
    , _pjlLocation :: !(Maybe Text)
    , _pjlAccessToken :: !(Maybe Text)
    , _pjlUploadType :: !(Maybe Text)
    , _pjlView :: !(Maybe ProjectsJobsListView)
    , _pjlFilter :: !(Maybe ProjectsJobsListFilter)
    , _pjlPageToken :: !(Maybe Text)
    , _pjlProjectId :: !Text
    , _pjlPageSize :: !(Maybe (Textual Int32))
    , _pjlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjlXgafv'
--
-- * 'pjlUploadProtocol'
--
-- * 'pjlLocation'
--
-- * 'pjlAccessToken'
--
-- * 'pjlUploadType'
--
-- * 'pjlView'
--
-- * 'pjlFilter'
--
-- * 'pjlPageToken'
--
-- * 'pjlProjectId'
--
-- * 'pjlPageSize'
--
-- * 'pjlCallback'
projectsJobsList
    :: Text -- ^ 'pjlProjectId'
    -> ProjectsJobsList
projectsJobsList pPjlProjectId_ =
  ProjectsJobsList'
    { _pjlXgafv = Nothing
    , _pjlUploadProtocol = Nothing
    , _pjlLocation = Nothing
    , _pjlAccessToken = Nothing
    , _pjlUploadType = Nothing
    , _pjlView = Nothing
    , _pjlFilter = Nothing
    , _pjlPageToken = Nothing
    , _pjlProjectId = pPjlProjectId_
    , _pjlPageSize = Nothing
    , _pjlCallback = Nothing
    }


-- | V1 error format.
pjlXgafv :: Lens' ProjectsJobsList (Maybe Xgafv)
pjlXgafv = lens _pjlXgafv (\ s a -> s{_pjlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjlUploadProtocol :: Lens' ProjectsJobsList (Maybe Text)
pjlUploadProtocol
  = lens _pjlUploadProtocol
      (\ s a -> s{_pjlUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains this job.
pjlLocation :: Lens' ProjectsJobsList (Maybe Text)
pjlLocation
  = lens _pjlLocation (\ s a -> s{_pjlLocation = a})

-- | OAuth access token.
pjlAccessToken :: Lens' ProjectsJobsList (Maybe Text)
pjlAccessToken
  = lens _pjlAccessToken
      (\ s a -> s{_pjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjlUploadType :: Lens' ProjectsJobsList (Maybe Text)
pjlUploadType
  = lens _pjlUploadType
      (\ s a -> s{_pjlUploadType = a})

-- | Deprecated. ListJobs always returns summaries now. Use GetJob for other
-- JobViews.
pjlView :: Lens' ProjectsJobsList (Maybe ProjectsJobsListView)
pjlView = lens _pjlView (\ s a -> s{_pjlView = a})

-- | The kind of filter to use.
pjlFilter :: Lens' ProjectsJobsList (Maybe ProjectsJobsListFilter)
pjlFilter
  = lens _pjlFilter (\ s a -> s{_pjlFilter = a})

-- | Set this to the \'next_page_token\' field of a previous response to
-- request additional results in a long list.
pjlPageToken :: Lens' ProjectsJobsList (Maybe Text)
pjlPageToken
  = lens _pjlPageToken (\ s a -> s{_pjlPageToken = a})

-- | The project which owns the jobs.
pjlProjectId :: Lens' ProjectsJobsList Text
pjlProjectId
  = lens _pjlProjectId (\ s a -> s{_pjlProjectId = a})

-- | If there are many jobs, limit response to at most this many. The actual
-- number of jobs returned will be the lesser of max_responses and an
-- unspecified server-defined limit.
pjlPageSize :: Lens' ProjectsJobsList (Maybe Int32)
pjlPageSize
  = lens _pjlPageSize (\ s a -> s{_pjlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pjlCallback :: Lens' ProjectsJobsList (Maybe Text)
pjlCallback
  = lens _pjlCallback (\ s a -> s{_pjlCallback = a})

instance GoogleRequest ProjectsJobsList where
        type Rs ProjectsJobsList = ListJobsResponse
        type Scopes ProjectsJobsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsList'{..}
          = go _pjlProjectId _pjlXgafv _pjlUploadProtocol
              _pjlLocation
              _pjlAccessToken
              _pjlUploadType
              _pjlView
              _pjlFilter
              _pjlPageToken
              _pjlPageSize
              _pjlCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsListResource)
                      mempty

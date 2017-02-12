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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request the job status.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @dataflow.projects.locations.jobs.getMetrics@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetMetrics
    (
    -- * REST Resource
      ProjectsLocationsJobsGetMetricsResource

    -- * Creating a Request
    , projectsLocationsJobsGetMetrics
    , ProjectsLocationsJobsGetMetrics

    -- * Request Lenses
    , pljgmXgafv
    , pljgmJobId
    , pljgmUploadProtocol
    , pljgmLocation
    , pljgmStartTime
    , pljgmPp
    , pljgmAccessToken
    , pljgmUploadType
    , pljgmBearerToken
    , pljgmProjectId
    , pljgmCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.getMetrics@ method which the
-- 'ProjectsLocationsJobsGetMetrics' request conforms to.
type ProjectsLocationsJobsGetMetricsResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "metrics" :>
                     QueryParam "$.xgafv" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "startTime" Text :>
                           QueryParam "pp" Bool :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] JobMetrics

-- | Request the job status.
--
-- /See:/ 'projectsLocationsJobsGetMetrics' smart constructor.
data ProjectsLocationsJobsGetMetrics = ProjectsLocationsJobsGetMetrics'
    { _pljgmXgafv          :: !(Maybe Text)
    , _pljgmJobId          :: !Text
    , _pljgmUploadProtocol :: !(Maybe Text)
    , _pljgmLocation       :: !Text
    , _pljgmStartTime      :: !(Maybe Text)
    , _pljgmPp             :: !Bool
    , _pljgmAccessToken    :: !(Maybe Text)
    , _pljgmUploadType     :: !(Maybe Text)
    , _pljgmBearerToken    :: !(Maybe Text)
    , _pljgmProjectId      :: !Text
    , _pljgmCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsJobsGetMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljgmXgafv'
--
-- * 'pljgmJobId'
--
-- * 'pljgmUploadProtocol'
--
-- * 'pljgmLocation'
--
-- * 'pljgmStartTime'
--
-- * 'pljgmPp'
--
-- * 'pljgmAccessToken'
--
-- * 'pljgmUploadType'
--
-- * 'pljgmBearerToken'
--
-- * 'pljgmProjectId'
--
-- * 'pljgmCallback'
projectsLocationsJobsGetMetrics
    :: Text -- ^ 'pljgmJobId'
    -> Text -- ^ 'pljgmLocation'
    -> Text -- ^ 'pljgmProjectId'
    -> ProjectsLocationsJobsGetMetrics
projectsLocationsJobsGetMetrics pPljgmJobId_ pPljgmLocation_ pPljgmProjectId_ =
    ProjectsLocationsJobsGetMetrics'
    { _pljgmXgafv = Nothing
    , _pljgmJobId = pPljgmJobId_
    , _pljgmUploadProtocol = Nothing
    , _pljgmLocation = pPljgmLocation_
    , _pljgmStartTime = Nothing
    , _pljgmPp = True
    , _pljgmAccessToken = Nothing
    , _pljgmUploadType = Nothing
    , _pljgmBearerToken = Nothing
    , _pljgmProjectId = pPljgmProjectId_
    , _pljgmCallback = Nothing
    }

-- | V1 error format.
pljgmXgafv :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmXgafv
  = lens _pljgmXgafv (\ s a -> s{_pljgmXgafv = a})

-- | The job to get messages for.
pljgmJobId :: Lens' ProjectsLocationsJobsGetMetrics Text
pljgmJobId
  = lens _pljgmJobId (\ s a -> s{_pljgmJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljgmUploadProtocol :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmUploadProtocol
  = lens _pljgmUploadProtocol
      (\ s a -> s{_pljgmUploadProtocol = a})

-- | The location which contains the job specified by job_id.
pljgmLocation :: Lens' ProjectsLocationsJobsGetMetrics Text
pljgmLocation
  = lens _pljgmLocation
      (\ s a -> s{_pljgmLocation = a})

-- | Return only metric data that has changed since this time. Default is to
-- return all information about all metrics for the job.
pljgmStartTime :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmStartTime
  = lens _pljgmStartTime
      (\ s a -> s{_pljgmStartTime = a})

-- | Pretty-print response.
pljgmPp :: Lens' ProjectsLocationsJobsGetMetrics Bool
pljgmPp = lens _pljgmPp (\ s a -> s{_pljgmPp = a})

-- | OAuth access token.
pljgmAccessToken :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmAccessToken
  = lens _pljgmAccessToken
      (\ s a -> s{_pljgmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljgmUploadType :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmUploadType
  = lens _pljgmUploadType
      (\ s a -> s{_pljgmUploadType = a})

-- | OAuth bearer token.
pljgmBearerToken :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmBearerToken
  = lens _pljgmBearerToken
      (\ s a -> s{_pljgmBearerToken = a})

-- | A project id.
pljgmProjectId :: Lens' ProjectsLocationsJobsGetMetrics Text
pljgmProjectId
  = lens _pljgmProjectId
      (\ s a -> s{_pljgmProjectId = a})

-- | JSONP
pljgmCallback :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Text)
pljgmCallback
  = lens _pljgmCallback
      (\ s a -> s{_pljgmCallback = a})

instance GoogleRequest
         ProjectsLocationsJobsGetMetrics where
        type Rs ProjectsLocationsJobsGetMetrics = JobMetrics
        type Scopes ProjectsLocationsJobsGetMetrics =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsGetMetrics'{..}
          = go _pljgmProjectId _pljgmLocation _pljgmJobId
              _pljgmXgafv
              _pljgmUploadProtocol
              _pljgmStartTime
              (Just _pljgmPp)
              _pljgmAccessToken
              _pljgmUploadType
              _pljgmBearerToken
              _pljgmCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsGetMetricsResource)
                      mempty

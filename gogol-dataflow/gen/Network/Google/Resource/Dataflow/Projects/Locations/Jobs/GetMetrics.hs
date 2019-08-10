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
-- Request the job status. To request the status of a job, we recommend
-- using \`projects.locations.jobs.getMetrics\` with a [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.getMetrics\` is not recommended, as you can only
-- request the status of jobs that are running in \`us-central1\`.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.getMetrics@.
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
    , pljgmAccessToken
    , pljgmUploadType
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
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "startTime" DateTime' :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] JobMetrics

-- | Request the job status. To request the status of a job, we recommend
-- using \`projects.locations.jobs.getMetrics\` with a [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.getMetrics\` is not recommended, as you can only
-- request the status of jobs that are running in \`us-central1\`.
--
-- /See:/ 'projectsLocationsJobsGetMetrics' smart constructor.
data ProjectsLocationsJobsGetMetrics =
  ProjectsLocationsJobsGetMetrics'
    { _pljgmXgafv          :: !(Maybe Xgafv)
    , _pljgmJobId          :: !Text
    , _pljgmUploadProtocol :: !(Maybe Text)
    , _pljgmLocation       :: !Text
    , _pljgmStartTime      :: !(Maybe DateTime')
    , _pljgmAccessToken    :: !(Maybe Text)
    , _pljgmUploadType     :: !(Maybe Text)
    , _pljgmProjectId      :: !Text
    , _pljgmCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'pljgmAccessToken'
--
-- * 'pljgmUploadType'
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
    , _pljgmAccessToken = Nothing
    , _pljgmUploadType = Nothing
    , _pljgmProjectId = pPljgmProjectId_
    , _pljgmCallback = Nothing
    }


-- | V1 error format.
pljgmXgafv :: Lens' ProjectsLocationsJobsGetMetrics (Maybe Xgafv)
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

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains the job specified by job_id.
pljgmLocation :: Lens' ProjectsLocationsJobsGetMetrics Text
pljgmLocation
  = lens _pljgmLocation
      (\ s a -> s{_pljgmLocation = a})

-- | Return only metric data that has changed since this time. Default is to
-- return all information about all metrics for the job.
pljgmStartTime :: Lens' ProjectsLocationsJobsGetMetrics (Maybe UTCTime)
pljgmStartTime
  = lens _pljgmStartTime
      (\ s a -> s{_pljgmStartTime = a})
      . mapping _DateTime

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
           ProjectsLocationsJobsGetMetrics
         where
        type Rs ProjectsLocationsJobsGetMetrics = JobMetrics
        type Scopes ProjectsLocationsJobsGetMetrics =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsGetMetrics'{..}
          = go _pljgmProjectId _pljgmLocation _pljgmJobId
              _pljgmXgafv
              _pljgmUploadProtocol
              _pljgmStartTime
              _pljgmAccessToken
              _pljgmUploadType
              _pljgmCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsGetMetricsResource)
                      mempty

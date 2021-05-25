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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetExecutionDetails
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request detailed information about the execution status of the job.
-- EXPERIMENTAL. This API is subject to change or removal without notice.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.getExecutionDetails@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.GetExecutionDetails
    (
    -- * REST Resource
      ProjectsLocationsJobsGetExecutionDetailsResource

    -- * Creating a Request
    , projectsLocationsJobsGetExecutionDetails
    , ProjectsLocationsJobsGetExecutionDetails

    -- * Request Lenses
    , pljgedXgafv
    , pljgedJobId
    , pljgedUploadProtocol
    , pljgedLocation
    , pljgedAccessToken
    , pljgedUploadType
    , pljgedPageToken
    , pljgedProjectId
    , pljgedPageSize
    , pljgedCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.getExecutionDetails@ method which the
-- 'ProjectsLocationsJobsGetExecutionDetails' request conforms to.
type ProjectsLocationsJobsGetExecutionDetailsResource
     =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "executionDetails" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] JobExecutionDetails

-- | Request detailed information about the execution status of the job.
-- EXPERIMENTAL. This API is subject to change or removal without notice.
--
-- /See:/ 'projectsLocationsJobsGetExecutionDetails' smart constructor.
data ProjectsLocationsJobsGetExecutionDetails =
  ProjectsLocationsJobsGetExecutionDetails'
    { _pljgedXgafv :: !(Maybe Xgafv)
    , _pljgedJobId :: !Text
    , _pljgedUploadProtocol :: !(Maybe Text)
    , _pljgedLocation :: !Text
    , _pljgedAccessToken :: !(Maybe Text)
    , _pljgedUploadType :: !(Maybe Text)
    , _pljgedPageToken :: !(Maybe Text)
    , _pljgedProjectId :: !Text
    , _pljgedPageSize :: !(Maybe (Textual Int32))
    , _pljgedCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsGetExecutionDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljgedXgafv'
--
-- * 'pljgedJobId'
--
-- * 'pljgedUploadProtocol'
--
-- * 'pljgedLocation'
--
-- * 'pljgedAccessToken'
--
-- * 'pljgedUploadType'
--
-- * 'pljgedPageToken'
--
-- * 'pljgedProjectId'
--
-- * 'pljgedPageSize'
--
-- * 'pljgedCallback'
projectsLocationsJobsGetExecutionDetails
    :: Text -- ^ 'pljgedJobId'
    -> Text -- ^ 'pljgedLocation'
    -> Text -- ^ 'pljgedProjectId'
    -> ProjectsLocationsJobsGetExecutionDetails
projectsLocationsJobsGetExecutionDetails pPljgedJobId_ pPljgedLocation_ pPljgedProjectId_ =
  ProjectsLocationsJobsGetExecutionDetails'
    { _pljgedXgafv = Nothing
    , _pljgedJobId = pPljgedJobId_
    , _pljgedUploadProtocol = Nothing
    , _pljgedLocation = pPljgedLocation_
    , _pljgedAccessToken = Nothing
    , _pljgedUploadType = Nothing
    , _pljgedPageToken = Nothing
    , _pljgedProjectId = pPljgedProjectId_
    , _pljgedPageSize = Nothing
    , _pljgedCallback = Nothing
    }


-- | V1 error format.
pljgedXgafv :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Xgafv)
pljgedXgafv
  = lens _pljgedXgafv (\ s a -> s{_pljgedXgafv = a})

-- | The job to get execution details for.
pljgedJobId :: Lens' ProjectsLocationsJobsGetExecutionDetails Text
pljgedJobId
  = lens _pljgedJobId (\ s a -> s{_pljgedJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljgedUploadProtocol :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Text)
pljgedUploadProtocol
  = lens _pljgedUploadProtocol
      (\ s a -> s{_pljgedUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains the job specified by job_id.
pljgedLocation :: Lens' ProjectsLocationsJobsGetExecutionDetails Text
pljgedLocation
  = lens _pljgedLocation
      (\ s a -> s{_pljgedLocation = a})

-- | OAuth access token.
pljgedAccessToken :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Text)
pljgedAccessToken
  = lens _pljgedAccessToken
      (\ s a -> s{_pljgedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljgedUploadType :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Text)
pljgedUploadType
  = lens _pljgedUploadType
      (\ s a -> s{_pljgedUploadType = a})

-- | If supplied, this should be the value of next_page_token returned by an
-- earlier call. This will cause the next page of results to be returned.
pljgedPageToken :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Text)
pljgedPageToken
  = lens _pljgedPageToken
      (\ s a -> s{_pljgedPageToken = a})

-- | A project id.
pljgedProjectId :: Lens' ProjectsLocationsJobsGetExecutionDetails Text
pljgedProjectId
  = lens _pljgedProjectId
      (\ s a -> s{_pljgedProjectId = a})

-- | If specified, determines the maximum number of stages to return. If
-- unspecified, the service may choose an appropriate default, or may
-- return an arbitrarily large number of results.
pljgedPageSize :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Int32)
pljgedPageSize
  = lens _pljgedPageSize
      (\ s a -> s{_pljgedPageSize = a})
      . mapping _Coerce

-- | JSONP
pljgedCallback :: Lens' ProjectsLocationsJobsGetExecutionDetails (Maybe Text)
pljgedCallback
  = lens _pljgedCallback
      (\ s a -> s{_pljgedCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsGetExecutionDetails
         where
        type Rs ProjectsLocationsJobsGetExecutionDetails =
             JobExecutionDetails
        type Scopes ProjectsLocationsJobsGetExecutionDetails
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsLocationsJobsGetExecutionDetails'{..}
          = go _pljgedProjectId _pljgedLocation _pljgedJobId
              _pljgedXgafv
              _pljgedUploadProtocol
              _pljgedAccessToken
              _pljgedUploadType
              _pljgedPageToken
              _pljgedPageSize
              _pljgedCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsJobsGetExecutionDetailsResource)
                      mempty

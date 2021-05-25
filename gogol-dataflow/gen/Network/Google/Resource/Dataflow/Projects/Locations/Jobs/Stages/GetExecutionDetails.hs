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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request detailed information about the execution status of a stage of
-- the job. EXPERIMENTAL. This API is subject to change or removal without
-- notice.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.stages.getExecutionDetails@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Stages.GetExecutionDetails
    (
    -- * REST Resource
      ProjectsLocationsJobsStagesGetExecutionDetailsResource

    -- * Creating a Request
    , projectsLocationsJobsStagesGetExecutionDetails
    , ProjectsLocationsJobsStagesGetExecutionDetails

    -- * Request Lenses
    , pljsgedXgafv
    , pljsgedJobId
    , pljsgedUploadProtocol
    , pljsgedLocation
    , pljsgedStartTime
    , pljsgedAccessToken
    , pljsgedUploadType
    , pljsgedEndTime
    , pljsgedPageToken
    , pljsgedProjectId
    , pljsgedPageSize
    , pljsgedStageId
    , pljsgedCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.stages.getExecutionDetails@ method which the
-- 'ProjectsLocationsJobsStagesGetExecutionDetails' request conforms to.
type ProjectsLocationsJobsStagesGetExecutionDetailsResource
     =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "stages" :>
                     Capture "stageId" Text :>
                       "executionDetails" :>
                         QueryParam "$.xgafv" Xgafv :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "startTime" DateTime' :>
                               QueryParam "access_token" Text :>
                                 QueryParam "uploadType" Text :>
                                   QueryParam "endTime" DateTime' :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "pageSize" (Textual Int32) :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] StageExecutionDetails

-- | Request detailed information about the execution status of a stage of
-- the job. EXPERIMENTAL. This API is subject to change or removal without
-- notice.
--
-- /See:/ 'projectsLocationsJobsStagesGetExecutionDetails' smart constructor.
data ProjectsLocationsJobsStagesGetExecutionDetails =
  ProjectsLocationsJobsStagesGetExecutionDetails'
    { _pljsgedXgafv :: !(Maybe Xgafv)
    , _pljsgedJobId :: !Text
    , _pljsgedUploadProtocol :: !(Maybe Text)
    , _pljsgedLocation :: !Text
    , _pljsgedStartTime :: !(Maybe DateTime')
    , _pljsgedAccessToken :: !(Maybe Text)
    , _pljsgedUploadType :: !(Maybe Text)
    , _pljsgedEndTime :: !(Maybe DateTime')
    , _pljsgedPageToken :: !(Maybe Text)
    , _pljsgedProjectId :: !Text
    , _pljsgedPageSize :: !(Maybe (Textual Int32))
    , _pljsgedStageId :: !Text
    , _pljsgedCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsStagesGetExecutionDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljsgedXgafv'
--
-- * 'pljsgedJobId'
--
-- * 'pljsgedUploadProtocol'
--
-- * 'pljsgedLocation'
--
-- * 'pljsgedStartTime'
--
-- * 'pljsgedAccessToken'
--
-- * 'pljsgedUploadType'
--
-- * 'pljsgedEndTime'
--
-- * 'pljsgedPageToken'
--
-- * 'pljsgedProjectId'
--
-- * 'pljsgedPageSize'
--
-- * 'pljsgedStageId'
--
-- * 'pljsgedCallback'
projectsLocationsJobsStagesGetExecutionDetails
    :: Text -- ^ 'pljsgedJobId'
    -> Text -- ^ 'pljsgedLocation'
    -> Text -- ^ 'pljsgedProjectId'
    -> Text -- ^ 'pljsgedStageId'
    -> ProjectsLocationsJobsStagesGetExecutionDetails
projectsLocationsJobsStagesGetExecutionDetails pPljsgedJobId_ pPljsgedLocation_ pPljsgedProjectId_ pPljsgedStageId_ =
  ProjectsLocationsJobsStagesGetExecutionDetails'
    { _pljsgedXgafv = Nothing
    , _pljsgedJobId = pPljsgedJobId_
    , _pljsgedUploadProtocol = Nothing
    , _pljsgedLocation = pPljsgedLocation_
    , _pljsgedStartTime = Nothing
    , _pljsgedAccessToken = Nothing
    , _pljsgedUploadType = Nothing
    , _pljsgedEndTime = Nothing
    , _pljsgedPageToken = Nothing
    , _pljsgedProjectId = pPljsgedProjectId_
    , _pljsgedPageSize = Nothing
    , _pljsgedStageId = pPljsgedStageId_
    , _pljsgedCallback = Nothing
    }


-- | V1 error format.
pljsgedXgafv :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Xgafv)
pljsgedXgafv
  = lens _pljsgedXgafv (\ s a -> s{_pljsgedXgafv = a})

-- | The job to get execution details for.
pljsgedJobId :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails Text
pljsgedJobId
  = lens _pljsgedJobId (\ s a -> s{_pljsgedJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljsgedUploadProtocol :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Text)
pljsgedUploadProtocol
  = lens _pljsgedUploadProtocol
      (\ s a -> s{_pljsgedUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains the job specified by job_id.
pljsgedLocation :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails Text
pljsgedLocation
  = lens _pljsgedLocation
      (\ s a -> s{_pljsgedLocation = a})

-- | Lower time bound of work items to include, by start time.
pljsgedStartTime :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe UTCTime)
pljsgedStartTime
  = lens _pljsgedStartTime
      (\ s a -> s{_pljsgedStartTime = a})
      . mapping _DateTime

-- | OAuth access token.
pljsgedAccessToken :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Text)
pljsgedAccessToken
  = lens _pljsgedAccessToken
      (\ s a -> s{_pljsgedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljsgedUploadType :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Text)
pljsgedUploadType
  = lens _pljsgedUploadType
      (\ s a -> s{_pljsgedUploadType = a})

-- | Upper time bound of work items to include, by start time.
pljsgedEndTime :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe UTCTime)
pljsgedEndTime
  = lens _pljsgedEndTime
      (\ s a -> s{_pljsgedEndTime = a})
      . mapping _DateTime

-- | If supplied, this should be the value of next_page_token returned by an
-- earlier call. This will cause the next page of results to be returned.
pljsgedPageToken :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Text)
pljsgedPageToken
  = lens _pljsgedPageToken
      (\ s a -> s{_pljsgedPageToken = a})

-- | A project id.
pljsgedProjectId :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails Text
pljsgedProjectId
  = lens _pljsgedProjectId
      (\ s a -> s{_pljsgedProjectId = a})

-- | If specified, determines the maximum number of work items to return. If
-- unspecified, the service may choose an appropriate default, or may
-- return an arbitrarily large number of results.
pljsgedPageSize :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Int32)
pljsgedPageSize
  = lens _pljsgedPageSize
      (\ s a -> s{_pljsgedPageSize = a})
      . mapping _Coerce

-- | The stage for which to fetch information.
pljsgedStageId :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails Text
pljsgedStageId
  = lens _pljsgedStageId
      (\ s a -> s{_pljsgedStageId = a})

-- | JSONP
pljsgedCallback :: Lens' ProjectsLocationsJobsStagesGetExecutionDetails (Maybe Text)
pljsgedCallback
  = lens _pljsgedCallback
      (\ s a -> s{_pljsgedCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsStagesGetExecutionDetails
         where
        type Rs
               ProjectsLocationsJobsStagesGetExecutionDetails
             = StageExecutionDetails
        type Scopes
               ProjectsLocationsJobsStagesGetExecutionDetails
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsLocationsJobsStagesGetExecutionDetails'{..}
          = go _pljsgedProjectId _pljsgedLocation _pljsgedJobId
              _pljsgedStageId
              _pljsgedXgafv
              _pljsgedUploadProtocol
              _pljsgedStartTime
              _pljsgedAccessToken
              _pljsgedUploadType
              _pljsgedEndTime
              _pljsgedPageToken
              _pljsgedPageSize
              _pljsgedCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsJobsStagesGetExecutionDetailsResource)
                      mempty

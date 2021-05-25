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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request the job status. To request the status of a job, we recommend
-- using \`projects.locations.jobs.messages.list\` with a [regional
-- endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.messages.list\` is not recommended, as you can
-- only request the status of jobs that are running in \`us-central1\`.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.messages.list@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Messages.List
    (
    -- * REST Resource
      ProjectsLocationsJobsMessagesListResource

    -- * Creating a Request
    , projectsLocationsJobsMessagesList
    , ProjectsLocationsJobsMessagesList

    -- * Request Lenses
    , pljmlXgafv
    , pljmlJobId
    , pljmlUploadProtocol
    , pljmlLocation
    , pljmlStartTime
    , pljmlAccessToken
    , pljmlUploadType
    , pljmlEndTime
    , pljmlMinimumImportance
    , pljmlPageToken
    , pljmlProjectId
    , pljmlPageSize
    , pljmlCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.messages.list@ method which the
-- 'ProjectsLocationsJobsMessagesList' request conforms to.
type ProjectsLocationsJobsMessagesListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "messages" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "startTime" DateTime' :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "endTime" DateTime' :>
                                 QueryParam "minimumImportance"
                                   ProjectsLocationsJobsMessagesListMinimumImportance
                                   :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "pageSize" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListJobMessagesResponse

-- | Request the job status. To request the status of a job, we recommend
-- using \`projects.locations.jobs.messages.list\` with a [regional
-- endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.messages.list\` is not recommended, as you can
-- only request the status of jobs that are running in \`us-central1\`.
--
-- /See:/ 'projectsLocationsJobsMessagesList' smart constructor.
data ProjectsLocationsJobsMessagesList =
  ProjectsLocationsJobsMessagesList'
    { _pljmlXgafv :: !(Maybe Xgafv)
    , _pljmlJobId :: !Text
    , _pljmlUploadProtocol :: !(Maybe Text)
    , _pljmlLocation :: !Text
    , _pljmlStartTime :: !(Maybe DateTime')
    , _pljmlAccessToken :: !(Maybe Text)
    , _pljmlUploadType :: !(Maybe Text)
    , _pljmlEndTime :: !(Maybe DateTime')
    , _pljmlMinimumImportance :: !(Maybe ProjectsLocationsJobsMessagesListMinimumImportance)
    , _pljmlPageToken :: !(Maybe Text)
    , _pljmlProjectId :: !Text
    , _pljmlPageSize :: !(Maybe (Textual Int32))
    , _pljmlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsMessagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljmlXgafv'
--
-- * 'pljmlJobId'
--
-- * 'pljmlUploadProtocol'
--
-- * 'pljmlLocation'
--
-- * 'pljmlStartTime'
--
-- * 'pljmlAccessToken'
--
-- * 'pljmlUploadType'
--
-- * 'pljmlEndTime'
--
-- * 'pljmlMinimumImportance'
--
-- * 'pljmlPageToken'
--
-- * 'pljmlProjectId'
--
-- * 'pljmlPageSize'
--
-- * 'pljmlCallback'
projectsLocationsJobsMessagesList
    :: Text -- ^ 'pljmlJobId'
    -> Text -- ^ 'pljmlLocation'
    -> Text -- ^ 'pljmlProjectId'
    -> ProjectsLocationsJobsMessagesList
projectsLocationsJobsMessagesList pPljmlJobId_ pPljmlLocation_ pPljmlProjectId_ =
  ProjectsLocationsJobsMessagesList'
    { _pljmlXgafv = Nothing
    , _pljmlJobId = pPljmlJobId_
    , _pljmlUploadProtocol = Nothing
    , _pljmlLocation = pPljmlLocation_
    , _pljmlStartTime = Nothing
    , _pljmlAccessToken = Nothing
    , _pljmlUploadType = Nothing
    , _pljmlEndTime = Nothing
    , _pljmlMinimumImportance = Nothing
    , _pljmlPageToken = Nothing
    , _pljmlProjectId = pPljmlProjectId_
    , _pljmlPageSize = Nothing
    , _pljmlCallback = Nothing
    }


-- | V1 error format.
pljmlXgafv :: Lens' ProjectsLocationsJobsMessagesList (Maybe Xgafv)
pljmlXgafv
  = lens _pljmlXgafv (\ s a -> s{_pljmlXgafv = a})

-- | The job to get messages about.
pljmlJobId :: Lens' ProjectsLocationsJobsMessagesList Text
pljmlJobId
  = lens _pljmlJobId (\ s a -> s{_pljmlJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljmlUploadProtocol :: Lens' ProjectsLocationsJobsMessagesList (Maybe Text)
pljmlUploadProtocol
  = lens _pljmlUploadProtocol
      (\ s a -> s{_pljmlUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains the job specified by job_id.
pljmlLocation :: Lens' ProjectsLocationsJobsMessagesList Text
pljmlLocation
  = lens _pljmlLocation
      (\ s a -> s{_pljmlLocation = a})

-- | If specified, return only messages with timestamps >= start_time. The
-- default is the job creation time (i.e. beginning of messages).
pljmlStartTime :: Lens' ProjectsLocationsJobsMessagesList (Maybe UTCTime)
pljmlStartTime
  = lens _pljmlStartTime
      (\ s a -> s{_pljmlStartTime = a})
      . mapping _DateTime

-- | OAuth access token.
pljmlAccessToken :: Lens' ProjectsLocationsJobsMessagesList (Maybe Text)
pljmlAccessToken
  = lens _pljmlAccessToken
      (\ s a -> s{_pljmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljmlUploadType :: Lens' ProjectsLocationsJobsMessagesList (Maybe Text)
pljmlUploadType
  = lens _pljmlUploadType
      (\ s a -> s{_pljmlUploadType = a})

-- | Return only messages with timestamps \< end_time. The default is now
-- (i.e. return up to the latest messages available).
pljmlEndTime :: Lens' ProjectsLocationsJobsMessagesList (Maybe UTCTime)
pljmlEndTime
  = lens _pljmlEndTime (\ s a -> s{_pljmlEndTime = a})
      . mapping _DateTime

-- | Filter to only get messages with importance >= level
pljmlMinimumImportance :: Lens' ProjectsLocationsJobsMessagesList (Maybe ProjectsLocationsJobsMessagesListMinimumImportance)
pljmlMinimumImportance
  = lens _pljmlMinimumImportance
      (\ s a -> s{_pljmlMinimumImportance = a})

-- | If supplied, this should be the value of next_page_token returned by an
-- earlier call. This will cause the next page of results to be returned.
pljmlPageToken :: Lens' ProjectsLocationsJobsMessagesList (Maybe Text)
pljmlPageToken
  = lens _pljmlPageToken
      (\ s a -> s{_pljmlPageToken = a})

-- | A project id.
pljmlProjectId :: Lens' ProjectsLocationsJobsMessagesList Text
pljmlProjectId
  = lens _pljmlProjectId
      (\ s a -> s{_pljmlProjectId = a})

-- | If specified, determines the maximum number of messages to return. If
-- unspecified, the service may choose an appropriate default, or may
-- return an arbitrarily large number of results.
pljmlPageSize :: Lens' ProjectsLocationsJobsMessagesList (Maybe Int32)
pljmlPageSize
  = lens _pljmlPageSize
      (\ s a -> s{_pljmlPageSize = a})
      . mapping _Coerce

-- | JSONP
pljmlCallback :: Lens' ProjectsLocationsJobsMessagesList (Maybe Text)
pljmlCallback
  = lens _pljmlCallback
      (\ s a -> s{_pljmlCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsMessagesList
         where
        type Rs ProjectsLocationsJobsMessagesList =
             ListJobMessagesResponse
        type Scopes ProjectsLocationsJobsMessagesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsMessagesList'{..}
          = go _pljmlProjectId _pljmlLocation _pljmlJobId
              _pljmlXgafv
              _pljmlUploadProtocol
              _pljmlStartTime
              _pljmlAccessToken
              _pljmlUploadType
              _pljmlEndTime
              _pljmlMinimumImportance
              _pljmlPageToken
              _pljmlPageSize
              _pljmlCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsMessagesListResource)
                      mempty

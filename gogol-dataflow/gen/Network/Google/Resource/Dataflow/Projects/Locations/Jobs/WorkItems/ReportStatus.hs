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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.workItems.reportStatus@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.WorkItems.ReportStatus
    (
    -- * REST Resource
      ProjectsLocationsJobsWorkItemsReportStatusResource

    -- * Creating a Request
    , projectsLocationsJobsWorkItemsReportStatus
    , ProjectsLocationsJobsWorkItemsReportStatus

    -- * Request Lenses
    , pljwirsXgafv
    , pljwirsJobId
    , pljwirsUploadProtocol
    , pljwirsLocation
    , pljwirsAccessToken
    , pljwirsUploadType
    , pljwirsPayload
    , pljwirsProjectId
    , pljwirsCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.workItems.reportStatus@ method which the
-- 'ProjectsLocationsJobsWorkItemsReportStatus' request conforms to.
type ProjectsLocationsJobsWorkItemsReportStatusResource
     =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "workItems:reportStatus" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ReportWorkItemStatusRequest :>
                                   Post '[JSON] ReportWorkItemStatusResponse

-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ 'projectsLocationsJobsWorkItemsReportStatus' smart constructor.
data ProjectsLocationsJobsWorkItemsReportStatus =
  ProjectsLocationsJobsWorkItemsReportStatus'
    { _pljwirsXgafv          :: !(Maybe Xgafv)
    , _pljwirsJobId          :: !Text
    , _pljwirsUploadProtocol :: !(Maybe Text)
    , _pljwirsLocation       :: !Text
    , _pljwirsAccessToken    :: !(Maybe Text)
    , _pljwirsUploadType     :: !(Maybe Text)
    , _pljwirsPayload        :: !ReportWorkItemStatusRequest
    , _pljwirsProjectId      :: !Text
    , _pljwirsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsWorkItemsReportStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljwirsXgafv'
--
-- * 'pljwirsJobId'
--
-- * 'pljwirsUploadProtocol'
--
-- * 'pljwirsLocation'
--
-- * 'pljwirsAccessToken'
--
-- * 'pljwirsUploadType'
--
-- * 'pljwirsPayload'
--
-- * 'pljwirsProjectId'
--
-- * 'pljwirsCallback'
projectsLocationsJobsWorkItemsReportStatus
    :: Text -- ^ 'pljwirsJobId'
    -> Text -- ^ 'pljwirsLocation'
    -> ReportWorkItemStatusRequest -- ^ 'pljwirsPayload'
    -> Text -- ^ 'pljwirsProjectId'
    -> ProjectsLocationsJobsWorkItemsReportStatus
projectsLocationsJobsWorkItemsReportStatus pPljwirsJobId_ pPljwirsLocation_ pPljwirsPayload_ pPljwirsProjectId_ =
  ProjectsLocationsJobsWorkItemsReportStatus'
    { _pljwirsXgafv = Nothing
    , _pljwirsJobId = pPljwirsJobId_
    , _pljwirsUploadProtocol = Nothing
    , _pljwirsLocation = pPljwirsLocation_
    , _pljwirsAccessToken = Nothing
    , _pljwirsUploadType = Nothing
    , _pljwirsPayload = pPljwirsPayload_
    , _pljwirsProjectId = pPljwirsProjectId_
    , _pljwirsCallback = Nothing
    }


-- | V1 error format.
pljwirsXgafv :: Lens' ProjectsLocationsJobsWorkItemsReportStatus (Maybe Xgafv)
pljwirsXgafv
  = lens _pljwirsXgafv (\ s a -> s{_pljwirsXgafv = a})

-- | The job which the WorkItem is part of.
pljwirsJobId :: Lens' ProjectsLocationsJobsWorkItemsReportStatus Text
pljwirsJobId
  = lens _pljwirsJobId (\ s a -> s{_pljwirsJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljwirsUploadProtocol :: Lens' ProjectsLocationsJobsWorkItemsReportStatus (Maybe Text)
pljwirsUploadProtocol
  = lens _pljwirsUploadProtocol
      (\ s a -> s{_pljwirsUploadProtocol = a})

-- | The location which contains the WorkItem\'s job.
pljwirsLocation :: Lens' ProjectsLocationsJobsWorkItemsReportStatus Text
pljwirsLocation
  = lens _pljwirsLocation
      (\ s a -> s{_pljwirsLocation = a})

-- | OAuth access token.
pljwirsAccessToken :: Lens' ProjectsLocationsJobsWorkItemsReportStatus (Maybe Text)
pljwirsAccessToken
  = lens _pljwirsAccessToken
      (\ s a -> s{_pljwirsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljwirsUploadType :: Lens' ProjectsLocationsJobsWorkItemsReportStatus (Maybe Text)
pljwirsUploadType
  = lens _pljwirsUploadType
      (\ s a -> s{_pljwirsUploadType = a})

-- | Multipart request metadata.
pljwirsPayload :: Lens' ProjectsLocationsJobsWorkItemsReportStatus ReportWorkItemStatusRequest
pljwirsPayload
  = lens _pljwirsPayload
      (\ s a -> s{_pljwirsPayload = a})

-- | The project which owns the WorkItem\'s job.
pljwirsProjectId :: Lens' ProjectsLocationsJobsWorkItemsReportStatus Text
pljwirsProjectId
  = lens _pljwirsProjectId
      (\ s a -> s{_pljwirsProjectId = a})

-- | JSONP
pljwirsCallback :: Lens' ProjectsLocationsJobsWorkItemsReportStatus (Maybe Text)
pljwirsCallback
  = lens _pljwirsCallback
      (\ s a -> s{_pljwirsCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsWorkItemsReportStatus
         where
        type Rs ProjectsLocationsJobsWorkItemsReportStatus =
             ReportWorkItemStatusResponse
        type Scopes
               ProjectsLocationsJobsWorkItemsReportStatus
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsLocationsJobsWorkItemsReportStatus'{..}
          = go _pljwirsProjectId _pljwirsLocation _pljwirsJobId
              _pljwirsXgafv
              _pljwirsUploadProtocol
              _pljwirsAccessToken
              _pljwirsUploadType
              _pljwirsCallback
              (Just AltJSON)
              _pljwirsPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsJobsWorkItemsReportStatusResource)
                      mempty

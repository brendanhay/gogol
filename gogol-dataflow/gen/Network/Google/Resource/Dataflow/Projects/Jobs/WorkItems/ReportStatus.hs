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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @dataflow.projects.jobs.workItems.reportStatus@.
module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
    (
    -- * REST Resource
      ProjectsJobsWorkItemsReportStatusResource

    -- * Creating a Request
    , projectsJobsWorkItemsReportStatus
    , ProjectsJobsWorkItemsReportStatus

    -- * Request Lenses
    , pjwirsXgafv
    , pjwirsJobId
    , pjwirsUploadProtocol
    , pjwirsPp
    , pjwirsAccessToken
    , pjwirsUploadType
    , pjwirsPayload
    , pjwirsBearerToken
    , pjwirsProjectId
    , pjwirsCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.workItems.reportStatus@ method which the
-- 'ProjectsJobsWorkItemsReportStatus' request conforms to.
type ProjectsJobsWorkItemsReportStatusResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "workItems:reportStatus" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ReportWorkItemStatusRequest :>
                                   Post '[JSON] ReportWorkItemStatusResponse

-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ 'projectsJobsWorkItemsReportStatus' smart constructor.
data ProjectsJobsWorkItemsReportStatus = ProjectsJobsWorkItemsReportStatus
    { _pjwirsXgafv          :: !(Maybe Text)
    , _pjwirsJobId          :: !Text
    , _pjwirsUploadProtocol :: !(Maybe Text)
    , _pjwirsPp             :: !Bool
    , _pjwirsAccessToken    :: !(Maybe Text)
    , _pjwirsUploadType     :: !(Maybe Text)
    , _pjwirsPayload        :: !ReportWorkItemStatusRequest
    , _pjwirsBearerToken    :: !(Maybe Text)
    , _pjwirsProjectId      :: !Text
    , _pjwirsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsWorkItemsReportStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjwirsXgafv'
--
-- * 'pjwirsJobId'
--
-- * 'pjwirsUploadProtocol'
--
-- * 'pjwirsPp'
--
-- * 'pjwirsAccessToken'
--
-- * 'pjwirsUploadType'
--
-- * 'pjwirsPayload'
--
-- * 'pjwirsBearerToken'
--
-- * 'pjwirsProjectId'
--
-- * 'pjwirsCallback'
projectsJobsWorkItemsReportStatus
    :: Text -- ^ 'pjwirsJobId'
    -> ReportWorkItemStatusRequest -- ^ 'pjwirsPayload'
    -> Text -- ^ 'pjwirsProjectId'
    -> ProjectsJobsWorkItemsReportStatus
projectsJobsWorkItemsReportStatus pPjwirsJobId_ pPjwirsPayload_ pPjwirsProjectId_ =
    ProjectsJobsWorkItemsReportStatus
    { _pjwirsXgafv = Nothing
    , _pjwirsJobId = pPjwirsJobId_
    , _pjwirsUploadProtocol = Nothing
    , _pjwirsPp = True
    , _pjwirsAccessToken = Nothing
    , _pjwirsUploadType = Nothing
    , _pjwirsPayload = pPjwirsPayload_
    , _pjwirsBearerToken = Nothing
    , _pjwirsProjectId = pPjwirsProjectId_
    , _pjwirsCallback = Nothing
    }

-- | V1 error format.
pjwirsXgafv :: Lens' ProjectsJobsWorkItemsReportStatus (Maybe Text)
pjwirsXgafv
  = lens _pjwirsXgafv (\ s a -> s{_pjwirsXgafv = a})

-- | The job which the WorkItem is part of.
pjwirsJobId :: Lens' ProjectsJobsWorkItemsReportStatus Text
pjwirsJobId
  = lens _pjwirsJobId (\ s a -> s{_pjwirsJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjwirsUploadProtocol :: Lens' ProjectsJobsWorkItemsReportStatus (Maybe Text)
pjwirsUploadProtocol
  = lens _pjwirsUploadProtocol
      (\ s a -> s{_pjwirsUploadProtocol = a})

-- | Pretty-print response.
pjwirsPp :: Lens' ProjectsJobsWorkItemsReportStatus Bool
pjwirsPp = lens _pjwirsPp (\ s a -> s{_pjwirsPp = a})

-- | OAuth access token.
pjwirsAccessToken :: Lens' ProjectsJobsWorkItemsReportStatus (Maybe Text)
pjwirsAccessToken
  = lens _pjwirsAccessToken
      (\ s a -> s{_pjwirsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjwirsUploadType :: Lens' ProjectsJobsWorkItemsReportStatus (Maybe Text)
pjwirsUploadType
  = lens _pjwirsUploadType
      (\ s a -> s{_pjwirsUploadType = a})

-- | Multipart request metadata.
pjwirsPayload :: Lens' ProjectsJobsWorkItemsReportStatus ReportWorkItemStatusRequest
pjwirsPayload
  = lens _pjwirsPayload
      (\ s a -> s{_pjwirsPayload = a})

-- | OAuth bearer token.
pjwirsBearerToken :: Lens' ProjectsJobsWorkItemsReportStatus (Maybe Text)
pjwirsBearerToken
  = lens _pjwirsBearerToken
      (\ s a -> s{_pjwirsBearerToken = a})

-- | The project which owns the WorkItem\'s job.
pjwirsProjectId :: Lens' ProjectsJobsWorkItemsReportStatus Text
pjwirsProjectId
  = lens _pjwirsProjectId
      (\ s a -> s{_pjwirsProjectId = a})

-- | JSONP
pjwirsCallback :: Lens' ProjectsJobsWorkItemsReportStatus (Maybe Text)
pjwirsCallback
  = lens _pjwirsCallback
      (\ s a -> s{_pjwirsCallback = a})

instance GoogleRequest
         ProjectsJobsWorkItemsReportStatus where
        type Rs ProjectsJobsWorkItemsReportStatus =
             ReportWorkItemStatusResponse
        requestClient ProjectsJobsWorkItemsReportStatus{..}
          = go _pjwirsProjectId _pjwirsJobId _pjwirsXgafv
              _pjwirsUploadProtocol
              (Just _pjwirsPp)
              _pjwirsAccessToken
              _pjwirsUploadType
              _pjwirsBearerToken
              _pjwirsCallback
              (Just AltJSON)
              _pjwirsPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsJobsWorkItemsReportStatusResource)
                      mempty

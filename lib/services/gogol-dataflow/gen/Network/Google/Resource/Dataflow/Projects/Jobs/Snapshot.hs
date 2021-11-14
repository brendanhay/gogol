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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Snapshot
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Snapshot the state of a streaming job.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.snapshot@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Snapshot
    (
    -- * REST Resource
      ProjectsJobsSnapshotResource

    -- * Creating a Request
    , projectsJobsSnapshot
    , ProjectsJobsSnapshot

    -- * Request Lenses
    , pjsXgafv
    , pjsJobId
    , pjsUploadProtocol
    , pjsAccessToken
    , pjsUploadType
    , pjsPayload
    , pjsProjectId
    , pjsCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.snapshot@ method which the
-- 'ProjectsJobsSnapshot' request conforms to.
type ProjectsJobsSnapshotResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             CaptureMode "jobId" "snapshot" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SnapshotJobRequest :>
                             Post '[JSON] Snapshot

-- | Snapshot the state of a streaming job.
--
-- /See:/ 'projectsJobsSnapshot' smart constructor.
data ProjectsJobsSnapshot =
  ProjectsJobsSnapshot'
    { _pjsXgafv :: !(Maybe Xgafv)
    , _pjsJobId :: !Text
    , _pjsUploadProtocol :: !(Maybe Text)
    , _pjsAccessToken :: !(Maybe Text)
    , _pjsUploadType :: !(Maybe Text)
    , _pjsPayload :: !SnapshotJobRequest
    , _pjsProjectId :: !Text
    , _pjsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjsXgafv'
--
-- * 'pjsJobId'
--
-- * 'pjsUploadProtocol'
--
-- * 'pjsAccessToken'
--
-- * 'pjsUploadType'
--
-- * 'pjsPayload'
--
-- * 'pjsProjectId'
--
-- * 'pjsCallback'
projectsJobsSnapshot
    :: Text -- ^ 'pjsJobId'
    -> SnapshotJobRequest -- ^ 'pjsPayload'
    -> Text -- ^ 'pjsProjectId'
    -> ProjectsJobsSnapshot
projectsJobsSnapshot pPjsJobId_ pPjsPayload_ pPjsProjectId_ =
  ProjectsJobsSnapshot'
    { _pjsXgafv = Nothing
    , _pjsJobId = pPjsJobId_
    , _pjsUploadProtocol = Nothing
    , _pjsAccessToken = Nothing
    , _pjsUploadType = Nothing
    , _pjsPayload = pPjsPayload_
    , _pjsProjectId = pPjsProjectId_
    , _pjsCallback = Nothing
    }


-- | V1 error format.
pjsXgafv :: Lens' ProjectsJobsSnapshot (Maybe Xgafv)
pjsXgafv = lens _pjsXgafv (\ s a -> s{_pjsXgafv = a})

-- | The job to be snapshotted.
pjsJobId :: Lens' ProjectsJobsSnapshot Text
pjsJobId = lens _pjsJobId (\ s a -> s{_pjsJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjsUploadProtocol :: Lens' ProjectsJobsSnapshot (Maybe Text)
pjsUploadProtocol
  = lens _pjsUploadProtocol
      (\ s a -> s{_pjsUploadProtocol = a})

-- | OAuth access token.
pjsAccessToken :: Lens' ProjectsJobsSnapshot (Maybe Text)
pjsAccessToken
  = lens _pjsAccessToken
      (\ s a -> s{_pjsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjsUploadType :: Lens' ProjectsJobsSnapshot (Maybe Text)
pjsUploadType
  = lens _pjsUploadType
      (\ s a -> s{_pjsUploadType = a})

-- | Multipart request metadata.
pjsPayload :: Lens' ProjectsJobsSnapshot SnapshotJobRequest
pjsPayload
  = lens _pjsPayload (\ s a -> s{_pjsPayload = a})

-- | The project which owns the job to be snapshotted.
pjsProjectId :: Lens' ProjectsJobsSnapshot Text
pjsProjectId
  = lens _pjsProjectId (\ s a -> s{_pjsProjectId = a})

-- | JSONP
pjsCallback :: Lens' ProjectsJobsSnapshot (Maybe Text)
pjsCallback
  = lens _pjsCallback (\ s a -> s{_pjsCallback = a})

instance GoogleRequest ProjectsJobsSnapshot where
        type Rs ProjectsJobsSnapshot = Snapshot
        type Scopes ProjectsJobsSnapshot =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsSnapshot'{..}
          = go _pjsProjectId _pjsJobId _pjsXgafv
              _pjsUploadProtocol
              _pjsAccessToken
              _pjsUploadType
              _pjsCallback
              (Just AltJSON)
              _pjsPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsSnapshotResource)
                      mempty

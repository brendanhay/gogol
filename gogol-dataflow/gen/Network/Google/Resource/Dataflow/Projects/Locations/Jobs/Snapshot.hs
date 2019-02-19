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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshot
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Snapshot the state of a streaming job.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.snapshot@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshot
    (
    -- * REST Resource
      ProjectsLocationsJobsSnapshotResource

    -- * Creating a Request
    , projectsLocationsJobsSnapshot
    , ProjectsLocationsJobsSnapshot

    -- * Request Lenses
    , pljsXgafv
    , pljsJobId
    , pljsUploadProtocol
    , pljsLocation
    , pljsAccessToken
    , pljsUploadType
    , pljsPayload
    , pljsProjectId
    , pljsCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.snapshot@ method which the
-- 'ProjectsLocationsJobsSnapshot' request conforms to.
type ProjectsLocationsJobsSnapshotResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
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
-- /See:/ 'projectsLocationsJobsSnapshot' smart constructor.
data ProjectsLocationsJobsSnapshot =
  ProjectsLocationsJobsSnapshot'
    { _pljsXgafv          :: !(Maybe Xgafv)
    , _pljsJobId          :: !Text
    , _pljsUploadProtocol :: !(Maybe Text)
    , _pljsLocation       :: !Text
    , _pljsAccessToken    :: !(Maybe Text)
    , _pljsUploadType     :: !(Maybe Text)
    , _pljsPayload        :: !SnapshotJobRequest
    , _pljsProjectId      :: !Text
    , _pljsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsJobsSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljsXgafv'
--
-- * 'pljsJobId'
--
-- * 'pljsUploadProtocol'
--
-- * 'pljsLocation'
--
-- * 'pljsAccessToken'
--
-- * 'pljsUploadType'
--
-- * 'pljsPayload'
--
-- * 'pljsProjectId'
--
-- * 'pljsCallback'
projectsLocationsJobsSnapshot
    :: Text -- ^ 'pljsJobId'
    -> Text -- ^ 'pljsLocation'
    -> SnapshotJobRequest -- ^ 'pljsPayload'
    -> Text -- ^ 'pljsProjectId'
    -> ProjectsLocationsJobsSnapshot
projectsLocationsJobsSnapshot pPljsJobId_ pPljsLocation_ pPljsPayload_ pPljsProjectId_ =
  ProjectsLocationsJobsSnapshot'
    { _pljsXgafv = Nothing
    , _pljsJobId = pPljsJobId_
    , _pljsUploadProtocol = Nothing
    , _pljsLocation = pPljsLocation_
    , _pljsAccessToken = Nothing
    , _pljsUploadType = Nothing
    , _pljsPayload = pPljsPayload_
    , _pljsProjectId = pPljsProjectId_
    , _pljsCallback = Nothing
    }

-- | V1 error format.
pljsXgafv :: Lens' ProjectsLocationsJobsSnapshot (Maybe Xgafv)
pljsXgafv
  = lens _pljsXgafv (\ s a -> s{_pljsXgafv = a})

-- | The job to be snapshotted.
pljsJobId :: Lens' ProjectsLocationsJobsSnapshot Text
pljsJobId
  = lens _pljsJobId (\ s a -> s{_pljsJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljsUploadProtocol :: Lens' ProjectsLocationsJobsSnapshot (Maybe Text)
pljsUploadProtocol
  = lens _pljsUploadProtocol
      (\ s a -> s{_pljsUploadProtocol = a})

-- | The location that contains this job.
pljsLocation :: Lens' ProjectsLocationsJobsSnapshot Text
pljsLocation
  = lens _pljsLocation (\ s a -> s{_pljsLocation = a})

-- | OAuth access token.
pljsAccessToken :: Lens' ProjectsLocationsJobsSnapshot (Maybe Text)
pljsAccessToken
  = lens _pljsAccessToken
      (\ s a -> s{_pljsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljsUploadType :: Lens' ProjectsLocationsJobsSnapshot (Maybe Text)
pljsUploadType
  = lens _pljsUploadType
      (\ s a -> s{_pljsUploadType = a})

-- | Multipart request metadata.
pljsPayload :: Lens' ProjectsLocationsJobsSnapshot SnapshotJobRequest
pljsPayload
  = lens _pljsPayload (\ s a -> s{_pljsPayload = a})

-- | The project which owns the job to be snapshotted.
pljsProjectId :: Lens' ProjectsLocationsJobsSnapshot Text
pljsProjectId
  = lens _pljsProjectId
      (\ s a -> s{_pljsProjectId = a})

-- | JSONP
pljsCallback :: Lens' ProjectsLocationsJobsSnapshot (Maybe Text)
pljsCallback
  = lens _pljsCallback (\ s a -> s{_pljsCallback = a})

instance GoogleRequest ProjectsLocationsJobsSnapshot
         where
        type Rs ProjectsLocationsJobsSnapshot = Snapshot
        type Scopes ProjectsLocationsJobsSnapshot =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsSnapshot'{..}
          = go _pljsProjectId _pljsLocation _pljsJobId
              _pljsXgafv
              _pljsUploadProtocol
              _pljsAccessToken
              _pljsUploadType
              _pljsCallback
              (Just AltJSON)
              _pljsPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsSnapshotResource)
                      mempty

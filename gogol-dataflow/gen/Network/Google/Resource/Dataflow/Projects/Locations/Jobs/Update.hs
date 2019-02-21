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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of an existing Cloud Dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.update@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Update
    (
    -- * REST Resource
      ProjectsLocationsJobsUpdateResource

    -- * Creating a Request
    , projectsLocationsJobsUpdate
    , ProjectsLocationsJobsUpdate

    -- * Request Lenses
    , pljuXgafv
    , pljuJobId
    , pljuUploadProtocol
    , pljuLocation
    , pljuAccessToken
    , pljuUploadType
    , pljuPayload
    , pljuProjectId
    , pljuCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.update@ method which the
-- 'ProjectsLocationsJobsUpdate' request conforms to.
type ProjectsLocationsJobsUpdateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Job :> Put '[JSON] Job

-- | Updates the state of an existing Cloud Dataflow job.
--
-- /See:/ 'projectsLocationsJobsUpdate' smart constructor.
data ProjectsLocationsJobsUpdate =
  ProjectsLocationsJobsUpdate'
    { _pljuXgafv          :: !(Maybe Xgafv)
    , _pljuJobId          :: !Text
    , _pljuUploadProtocol :: !(Maybe Text)
    , _pljuLocation       :: !Text
    , _pljuAccessToken    :: !(Maybe Text)
    , _pljuUploadType     :: !(Maybe Text)
    , _pljuPayload        :: !Job
    , _pljuProjectId      :: !Text
    , _pljuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljuXgafv'
--
-- * 'pljuJobId'
--
-- * 'pljuUploadProtocol'
--
-- * 'pljuLocation'
--
-- * 'pljuAccessToken'
--
-- * 'pljuUploadType'
--
-- * 'pljuPayload'
--
-- * 'pljuProjectId'
--
-- * 'pljuCallback'
projectsLocationsJobsUpdate
    :: Text -- ^ 'pljuJobId'
    -> Text -- ^ 'pljuLocation'
    -> Job -- ^ 'pljuPayload'
    -> Text -- ^ 'pljuProjectId'
    -> ProjectsLocationsJobsUpdate
projectsLocationsJobsUpdate pPljuJobId_ pPljuLocation_ pPljuPayload_ pPljuProjectId_ =
  ProjectsLocationsJobsUpdate'
    { _pljuXgafv = Nothing
    , _pljuJobId = pPljuJobId_
    , _pljuUploadProtocol = Nothing
    , _pljuLocation = pPljuLocation_
    , _pljuAccessToken = Nothing
    , _pljuUploadType = Nothing
    , _pljuPayload = pPljuPayload_
    , _pljuProjectId = pPljuProjectId_
    , _pljuCallback = Nothing
    }


-- | V1 error format.
pljuXgafv :: Lens' ProjectsLocationsJobsUpdate (Maybe Xgafv)
pljuXgafv
  = lens _pljuXgafv (\ s a -> s{_pljuXgafv = a})

-- | The job ID.
pljuJobId :: Lens' ProjectsLocationsJobsUpdate Text
pljuJobId
  = lens _pljuJobId (\ s a -> s{_pljuJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljuUploadProtocol :: Lens' ProjectsLocationsJobsUpdate (Maybe Text)
pljuUploadProtocol
  = lens _pljuUploadProtocol
      (\ s a -> s{_pljuUploadProtocol = a})

-- | The location that contains this job.
pljuLocation :: Lens' ProjectsLocationsJobsUpdate Text
pljuLocation
  = lens _pljuLocation (\ s a -> s{_pljuLocation = a})

-- | OAuth access token.
pljuAccessToken :: Lens' ProjectsLocationsJobsUpdate (Maybe Text)
pljuAccessToken
  = lens _pljuAccessToken
      (\ s a -> s{_pljuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljuUploadType :: Lens' ProjectsLocationsJobsUpdate (Maybe Text)
pljuUploadType
  = lens _pljuUploadType
      (\ s a -> s{_pljuUploadType = a})

-- | Multipart request metadata.
pljuPayload :: Lens' ProjectsLocationsJobsUpdate Job
pljuPayload
  = lens _pljuPayload (\ s a -> s{_pljuPayload = a})

-- | The ID of the Cloud Platform project that the job belongs to.
pljuProjectId :: Lens' ProjectsLocationsJobsUpdate Text
pljuProjectId
  = lens _pljuProjectId
      (\ s a -> s{_pljuProjectId = a})

-- | JSONP
pljuCallback :: Lens' ProjectsLocationsJobsUpdate (Maybe Text)
pljuCallback
  = lens _pljuCallback (\ s a -> s{_pljuCallback = a})

instance GoogleRequest ProjectsLocationsJobsUpdate
         where
        type Rs ProjectsLocationsJobsUpdate = Job
        type Scopes ProjectsLocationsJobsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsUpdate'{..}
          = go _pljuProjectId _pljuLocation _pljuJobId
              _pljuXgafv
              _pljuUploadProtocol
              _pljuAccessToken
              _pljuUploadType
              _pljuCallback
              (Just AltJSON)
              _pljuPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsUpdateResource)
                      mempty

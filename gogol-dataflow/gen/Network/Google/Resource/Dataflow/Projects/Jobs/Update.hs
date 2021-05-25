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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of an existing Cloud Dataflow job. To update the state
-- of an existing job, we recommend using
-- \`projects.locations.jobs.update\` with a [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.update\` is not recommended, as you can only
-- update the state of jobs that are running in \`us-central1\`.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.update@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Update
    (
    -- * REST Resource
      ProjectsJobsUpdateResource

    -- * Creating a Request
    , projectsJobsUpdate
    , ProjectsJobsUpdate

    -- * Request Lenses
    , pjuXgafv
    , pjuJobId
    , pjuUploadProtocol
    , pjuLocation
    , pjuAccessToken
    , pjuUploadType
    , pjuPayload
    , pjuProjectId
    , pjuCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.update@ method which the
-- 'ProjectsJobsUpdate' request conforms to.
type ProjectsJobsUpdateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "location" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Job :> Put '[JSON] Job

-- | Updates the state of an existing Cloud Dataflow job. To update the state
-- of an existing job, we recommend using
-- \`projects.locations.jobs.update\` with a [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints).
-- Using \`projects.jobs.update\` is not recommended, as you can only
-- update the state of jobs that are running in \`us-central1\`.
--
-- /See:/ 'projectsJobsUpdate' smart constructor.
data ProjectsJobsUpdate =
  ProjectsJobsUpdate'
    { _pjuXgafv :: !(Maybe Xgafv)
    , _pjuJobId :: !Text
    , _pjuUploadProtocol :: !(Maybe Text)
    , _pjuLocation :: !(Maybe Text)
    , _pjuAccessToken :: !(Maybe Text)
    , _pjuUploadType :: !(Maybe Text)
    , _pjuPayload :: !Job
    , _pjuProjectId :: !Text
    , _pjuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjuXgafv'
--
-- * 'pjuJobId'
--
-- * 'pjuUploadProtocol'
--
-- * 'pjuLocation'
--
-- * 'pjuAccessToken'
--
-- * 'pjuUploadType'
--
-- * 'pjuPayload'
--
-- * 'pjuProjectId'
--
-- * 'pjuCallback'
projectsJobsUpdate
    :: Text -- ^ 'pjuJobId'
    -> Job -- ^ 'pjuPayload'
    -> Text -- ^ 'pjuProjectId'
    -> ProjectsJobsUpdate
projectsJobsUpdate pPjuJobId_ pPjuPayload_ pPjuProjectId_ =
  ProjectsJobsUpdate'
    { _pjuXgafv = Nothing
    , _pjuJobId = pPjuJobId_
    , _pjuUploadProtocol = Nothing
    , _pjuLocation = Nothing
    , _pjuAccessToken = Nothing
    , _pjuUploadType = Nothing
    , _pjuPayload = pPjuPayload_
    , _pjuProjectId = pPjuProjectId_
    , _pjuCallback = Nothing
    }


-- | V1 error format.
pjuXgafv :: Lens' ProjectsJobsUpdate (Maybe Xgafv)
pjuXgafv = lens _pjuXgafv (\ s a -> s{_pjuXgafv = a})

-- | The job ID.
pjuJobId :: Lens' ProjectsJobsUpdate Text
pjuJobId = lens _pjuJobId (\ s a -> s{_pjuJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjuUploadProtocol :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuUploadProtocol
  = lens _pjuUploadProtocol
      (\ s a -> s{_pjuUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains this job.
pjuLocation :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuLocation
  = lens _pjuLocation (\ s a -> s{_pjuLocation = a})

-- | OAuth access token.
pjuAccessToken :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuAccessToken
  = lens _pjuAccessToken
      (\ s a -> s{_pjuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjuUploadType :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuUploadType
  = lens _pjuUploadType
      (\ s a -> s{_pjuUploadType = a})

-- | Multipart request metadata.
pjuPayload :: Lens' ProjectsJobsUpdate Job
pjuPayload
  = lens _pjuPayload (\ s a -> s{_pjuPayload = a})

-- | The ID of the Cloud Platform project that the job belongs to.
pjuProjectId :: Lens' ProjectsJobsUpdate Text
pjuProjectId
  = lens _pjuProjectId (\ s a -> s{_pjuProjectId = a})

-- | JSONP
pjuCallback :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuCallback
  = lens _pjuCallback (\ s a -> s{_pjuCallback = a})

instance GoogleRequest ProjectsJobsUpdate where
        type Rs ProjectsJobsUpdate = Job
        type Scopes ProjectsJobsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsUpdate'{..}
          = go _pjuProjectId _pjuJobId _pjuXgafv
              _pjuUploadProtocol
              _pjuLocation
              _pjuAccessToken
              _pjuUploadType
              _pjuCallback
              (Just AltJSON)
              _pjuPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsUpdateResource)
                      mempty

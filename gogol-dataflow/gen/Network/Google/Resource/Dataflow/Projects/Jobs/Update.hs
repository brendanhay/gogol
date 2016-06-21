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
-- Updates the state of an existing dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @dataflow.projects.jobs.update@.
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
    , pjuPp
    , pjuAccessToken
    , pjuUploadType
    , pjuPayload
    , pjuBearerToken
    , pjuProjectId
    , pjuCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.update@ method which the
-- 'ProjectsJobsUpdate' request conforms to.
type ProjectsJobsUpdateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Job :> Put '[JSON] Job

-- | Updates the state of an existing dataflow job.
--
-- /See:/ 'projectsJobsUpdate' smart constructor.
data ProjectsJobsUpdate = ProjectsJobsUpdate'
    { _pjuXgafv          :: !(Maybe Text)
    , _pjuJobId          :: !Text
    , _pjuUploadProtocol :: !(Maybe Text)
    , _pjuPp             :: !Bool
    , _pjuAccessToken    :: !(Maybe Text)
    , _pjuUploadType     :: !(Maybe Text)
    , _pjuPayload        :: !Job
    , _pjuBearerToken    :: !(Maybe Text)
    , _pjuProjectId      :: !Text
    , _pjuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pjuPp'
--
-- * 'pjuAccessToken'
--
-- * 'pjuUploadType'
--
-- * 'pjuPayload'
--
-- * 'pjuBearerToken'
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
    , _pjuPp = True
    , _pjuAccessToken = Nothing
    , _pjuUploadType = Nothing
    , _pjuPayload = pPjuPayload_
    , _pjuBearerToken = Nothing
    , _pjuProjectId = pPjuProjectId_
    , _pjuCallback = Nothing
    }

-- | V1 error format.
pjuXgafv :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuXgafv = lens _pjuXgafv (\ s a -> s{_pjuXgafv = a})

-- | Identifies a single job.
pjuJobId :: Lens' ProjectsJobsUpdate Text
pjuJobId = lens _pjuJobId (\ s a -> s{_pjuJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjuUploadProtocol :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuUploadProtocol
  = lens _pjuUploadProtocol
      (\ s a -> s{_pjuUploadProtocol = a})

-- | Pretty-print response.
pjuPp :: Lens' ProjectsJobsUpdate Bool
pjuPp = lens _pjuPp (\ s a -> s{_pjuPp = a})

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

-- | OAuth bearer token.
pjuBearerToken :: Lens' ProjectsJobsUpdate (Maybe Text)
pjuBearerToken
  = lens _pjuBearerToken
      (\ s a -> s{_pjuBearerToken = a})

-- | The project which owns the job.
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
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsUpdate'{..}
          = go _pjuProjectId _pjuJobId _pjuXgafv
              _pjuUploadProtocol
              (Just _pjuPp)
              _pjuAccessToken
              _pjuUploadType
              _pjuBearerToken
              _pjuCallback
              (Just AltJSON)
              _pjuPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsUpdateResource)
                      mempty

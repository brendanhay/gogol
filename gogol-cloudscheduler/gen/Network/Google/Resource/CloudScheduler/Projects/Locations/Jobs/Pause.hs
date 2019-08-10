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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Pause
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses a job. If a job is paused then the system will stop executing the
-- job until it is re-enabled via ResumeJob. The state of the job is stored
-- in state; if paused it will be set to Job.State.PAUSED. A job must be in
-- Job.State.ENABLED to be paused.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.pause@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Pause
    (
    -- * REST Resource
      ProjectsLocationsJobsPauseResource

    -- * Creating a Request
    , projectsLocationsJobsPause
    , ProjectsLocationsJobsPause

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proName
    , proCallback
    ) where

import           Network.Google.CloudScheduler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.pause@ method which the
-- 'ProjectsLocationsJobsPause' request conforms to.
type ProjectsLocationsJobsPauseResource =
     "v1" :>
       CaptureMode "name" "pause" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PauseJobRequest :> Post '[JSON] Job

-- | Pauses a job. If a job is paused then the system will stop executing the
-- job until it is re-enabled via ResumeJob. The state of the job is stored
-- in state; if paused it will be set to Job.State.PAUSED. A job must be in
-- Job.State.ENABLED to be paused.
--
-- /See:/ 'projectsLocationsJobsPause' smart constructor.
data ProjectsLocationsJobsPause =
  ProjectsLocationsJobsPause'
    { _proXgafv          :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proPayload        :: !PauseJobRequest
    , _proName           :: !Text
    , _proCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proName'
--
-- * 'proCallback'
projectsLocationsJobsPause
    :: PauseJobRequest -- ^ 'proPayload'
    -> Text -- ^ 'proName'
    -> ProjectsLocationsJobsPause
projectsLocationsJobsPause pProPayload_ pProName_ =
  ProjectsLocationsJobsPause'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proName = pProName_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsJobsPause (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsJobsPause (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsJobsPause (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsJobsPause (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsLocationsJobsPause PauseJobRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | Required. The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`.
proName :: Lens' ProjectsLocationsJobsPause Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsJobsPause (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsLocationsJobsPause
         where
        type Rs ProjectsLocationsJobsPause = Job
        type Scopes ProjectsLocationsJobsPause =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsPause'{..}
          = go _proName _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsPauseResource)
                      mempty

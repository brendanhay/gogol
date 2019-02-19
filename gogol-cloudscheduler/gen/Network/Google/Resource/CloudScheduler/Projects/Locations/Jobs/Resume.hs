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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Resume
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resume a job. This method reenables a job after it has been
-- Job.State.PAUSED. The state of a job is stored in Job.state; after
-- calling this method it will be set to Job.State.ENABLED. A job must be
-- in Job.State.PAUSED to be resumed.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.resume@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Resume
    (
    -- * REST Resource
      ProjectsLocationsJobsResumeResource

    -- * Creating a Request
    , projectsLocationsJobsResume
    , ProjectsLocationsJobsResume

    -- * Request Lenses
    , pljrXgafv
    , pljrUploadProtocol
    , pljrAccessToken
    , pljrUploadType
    , pljrPayload
    , pljrName
    , pljrCallback
    ) where

import           Network.Google.CloudScheduler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.resume@ method which the
-- 'ProjectsLocationsJobsResume' request conforms to.
type ProjectsLocationsJobsResumeResource =
     "v1beta1" :>
       CaptureMode "name" "resume" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ResumeJobRequest :> Post '[JSON] Job

-- | Resume a job. This method reenables a job after it has been
-- Job.State.PAUSED. The state of a job is stored in Job.state; after
-- calling this method it will be set to Job.State.ENABLED. A job must be
-- in Job.State.PAUSED to be resumed.
--
-- /See:/ 'projectsLocationsJobsResume' smart constructor.
data ProjectsLocationsJobsResume =
  ProjectsLocationsJobsResume'
    { _pljrXgafv          :: !(Maybe Xgafv)
    , _pljrUploadProtocol :: !(Maybe Text)
    , _pljrAccessToken    :: !(Maybe Text)
    , _pljrUploadType     :: !(Maybe Text)
    , _pljrPayload        :: !ResumeJobRequest
    , _pljrName           :: !Text
    , _pljrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsResume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljrXgafv'
--
-- * 'pljrUploadProtocol'
--
-- * 'pljrAccessToken'
--
-- * 'pljrUploadType'
--
-- * 'pljrPayload'
--
-- * 'pljrName'
--
-- * 'pljrCallback'
projectsLocationsJobsResume
    :: ResumeJobRequest -- ^ 'pljrPayload'
    -> Text -- ^ 'pljrName'
    -> ProjectsLocationsJobsResume
projectsLocationsJobsResume pPljrPayload_ pPljrName_ =
  ProjectsLocationsJobsResume'
    { _pljrXgafv = Nothing
    , _pljrUploadProtocol = Nothing
    , _pljrAccessToken = Nothing
    , _pljrUploadType = Nothing
    , _pljrPayload = pPljrPayload_
    , _pljrName = pPljrName_
    , _pljrCallback = Nothing
    }


-- | V1 error format.
pljrXgafv :: Lens' ProjectsLocationsJobsResume (Maybe Xgafv)
pljrXgafv
  = lens _pljrXgafv (\ s a -> s{_pljrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljrUploadProtocol :: Lens' ProjectsLocationsJobsResume (Maybe Text)
pljrUploadProtocol
  = lens _pljrUploadProtocol
      (\ s a -> s{_pljrUploadProtocol = a})

-- | OAuth access token.
pljrAccessToken :: Lens' ProjectsLocationsJobsResume (Maybe Text)
pljrAccessToken
  = lens _pljrAccessToken
      (\ s a -> s{_pljrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljrUploadType :: Lens' ProjectsLocationsJobsResume (Maybe Text)
pljrUploadType
  = lens _pljrUploadType
      (\ s a -> s{_pljrUploadType = a})

-- | Multipart request metadata.
pljrPayload :: Lens' ProjectsLocationsJobsResume ResumeJobRequest
pljrPayload
  = lens _pljrPayload (\ s a -> s{_pljrPayload = a})

-- | Required. The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`.
pljrName :: Lens' ProjectsLocationsJobsResume Text
pljrName = lens _pljrName (\ s a -> s{_pljrName = a})

-- | JSONP
pljrCallback :: Lens' ProjectsLocationsJobsResume (Maybe Text)
pljrCallback
  = lens _pljrCallback (\ s a -> s{_pljrCallback = a})

instance GoogleRequest ProjectsLocationsJobsResume
         where
        type Rs ProjectsLocationsJobsResume = Job
        type Scopes ProjectsLocationsJobsResume =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsResume'{..}
          = go _pljrName _pljrXgafv _pljrUploadProtocol
              _pljrAccessToken
              _pljrUploadType
              _pljrCallback
              (Just AltJSON)
              _pljrPayload
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsResumeResource)
                      mempty

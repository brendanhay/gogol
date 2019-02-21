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
-- Module      : Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forces a job to run now. When this method is called, Cloud Scheduler
-- will dispatch the job, even if the job is already running.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.jobs.run@.
module Network.Google.Resource.CloudScheduler.Projects.Locations.Jobs.Run
    (
    -- * REST Resource
      ProjectsLocationsJobsRunResource

    -- * Creating a Request
    , projectsLocationsJobsRun
    , ProjectsLocationsJobsRun

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pName
    , pCallback
    ) where

import           Network.Google.CloudScheduler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudscheduler.projects.locations.jobs.run@ method which the
-- 'ProjectsLocationsJobsRun' request conforms to.
type ProjectsLocationsJobsRunResource =
     "v1beta1" :>
       CaptureMode "name" "run" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RunJobRequest :> Post '[JSON] Job

-- | Forces a job to run now. When this method is called, Cloud Scheduler
-- will dispatch the job, even if the job is already running.
--
-- /See:/ 'projectsLocationsJobsRun' smart constructor.
data ProjectsLocationsJobsRun =
  ProjectsLocationsJobsRun'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !RunJobRequest
    , _pName           :: !Text
    , _pCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pName'
--
-- * 'pCallback'
projectsLocationsJobsRun
    :: RunJobRequest -- ^ 'pPayload'
    -> Text -- ^ 'pName'
    -> ProjectsLocationsJobsRun
projectsLocationsJobsRun pPPayload_ pPName_ =
  ProjectsLocationsJobsRun'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsJobsRun (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsJobsRun (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsJobsRun (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsJobsRun (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsLocationsJobsRun RunJobRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Required. The job name. For example:
-- \`projects\/PROJECT_ID\/locations\/LOCATION_ID\/jobs\/JOB_ID\`.
pName :: Lens' ProjectsLocationsJobsRun Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsLocationsJobsRun (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLocationsJobsRun where
        type Rs ProjectsLocationsJobsRun = Job
        type Scopes ProjectsLocationsJobsRun =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobsRun'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              cloudSchedulerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsJobsRunResource)
                      mempty

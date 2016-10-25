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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Debug.SendCapture
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send encoded debug capture data for component.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @dataflow.projects.jobs.debug.sendCapture@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Debug.SendCapture
    (
    -- * REST Resource
      ProjectsJobsDebugSendCaptureResource

    -- * Creating a Request
    , projectsJobsDebugSendCapture
    , ProjectsJobsDebugSendCapture

    -- * Request Lenses
    , pjdscXgafv
    , pjdscJobId
    , pjdscUploadProtocol
    , pjdscPp
    , pjdscAccessToken
    , pjdscUploadType
    , pjdscPayload
    , pjdscBearerToken
    , pjdscProjectId
    , pjdscCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.debug.sendCapture@ method which the
-- 'ProjectsJobsDebugSendCapture' request conforms to.
type ProjectsJobsDebugSendCaptureResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "debug" :>
                 "sendCapture" :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] SendDebugCaptureRequest :>
                                     Post '[JSON] SendDebugCaptureResponse

-- | Send encoded debug capture data for component.
--
-- /See:/ 'projectsJobsDebugSendCapture' smart constructor.
data ProjectsJobsDebugSendCapture = ProjectsJobsDebugSendCapture'
    { _pjdscXgafv          :: !(Maybe Text)
    , _pjdscJobId          :: !Text
    , _pjdscUploadProtocol :: !(Maybe Text)
    , _pjdscPp             :: !Bool
    , _pjdscAccessToken    :: !(Maybe Text)
    , _pjdscUploadType     :: !(Maybe Text)
    , _pjdscPayload        :: !SendDebugCaptureRequest
    , _pjdscBearerToken    :: !(Maybe Text)
    , _pjdscProjectId      :: !Text
    , _pjdscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsDebugSendCapture' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjdscXgafv'
--
-- * 'pjdscJobId'
--
-- * 'pjdscUploadProtocol'
--
-- * 'pjdscPp'
--
-- * 'pjdscAccessToken'
--
-- * 'pjdscUploadType'
--
-- * 'pjdscPayload'
--
-- * 'pjdscBearerToken'
--
-- * 'pjdscProjectId'
--
-- * 'pjdscCallback'
projectsJobsDebugSendCapture
    :: Text -- ^ 'pjdscJobId'
    -> SendDebugCaptureRequest -- ^ 'pjdscPayload'
    -> Text -- ^ 'pjdscProjectId'
    -> ProjectsJobsDebugSendCapture
projectsJobsDebugSendCapture pPjdscJobId_ pPjdscPayload_ pPjdscProjectId_ =
    ProjectsJobsDebugSendCapture'
    { _pjdscXgafv = Nothing
    , _pjdscJobId = pPjdscJobId_
    , _pjdscUploadProtocol = Nothing
    , _pjdscPp = True
    , _pjdscAccessToken = Nothing
    , _pjdscUploadType = Nothing
    , _pjdscPayload = pPjdscPayload_
    , _pjdscBearerToken = Nothing
    , _pjdscProjectId = pPjdscProjectId_
    , _pjdscCallback = Nothing
    }

-- | V1 error format.
pjdscXgafv :: Lens' ProjectsJobsDebugSendCapture (Maybe Text)
pjdscXgafv
  = lens _pjdscXgafv (\ s a -> s{_pjdscXgafv = a})

-- | The job id.
pjdscJobId :: Lens' ProjectsJobsDebugSendCapture Text
pjdscJobId
  = lens _pjdscJobId (\ s a -> s{_pjdscJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjdscUploadProtocol :: Lens' ProjectsJobsDebugSendCapture (Maybe Text)
pjdscUploadProtocol
  = lens _pjdscUploadProtocol
      (\ s a -> s{_pjdscUploadProtocol = a})

-- | Pretty-print response.
pjdscPp :: Lens' ProjectsJobsDebugSendCapture Bool
pjdscPp = lens _pjdscPp (\ s a -> s{_pjdscPp = a})

-- | OAuth access token.
pjdscAccessToken :: Lens' ProjectsJobsDebugSendCapture (Maybe Text)
pjdscAccessToken
  = lens _pjdscAccessToken
      (\ s a -> s{_pjdscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjdscUploadType :: Lens' ProjectsJobsDebugSendCapture (Maybe Text)
pjdscUploadType
  = lens _pjdscUploadType
      (\ s a -> s{_pjdscUploadType = a})

-- | Multipart request metadata.
pjdscPayload :: Lens' ProjectsJobsDebugSendCapture SendDebugCaptureRequest
pjdscPayload
  = lens _pjdscPayload (\ s a -> s{_pjdscPayload = a})

-- | OAuth bearer token.
pjdscBearerToken :: Lens' ProjectsJobsDebugSendCapture (Maybe Text)
pjdscBearerToken
  = lens _pjdscBearerToken
      (\ s a -> s{_pjdscBearerToken = a})

-- | The project id.
pjdscProjectId :: Lens' ProjectsJobsDebugSendCapture Text
pjdscProjectId
  = lens _pjdscProjectId
      (\ s a -> s{_pjdscProjectId = a})

-- | JSONP
pjdscCallback :: Lens' ProjectsJobsDebugSendCapture (Maybe Text)
pjdscCallback
  = lens _pjdscCallback
      (\ s a -> s{_pjdscCallback = a})

instance GoogleRequest ProjectsJobsDebugSendCapture
         where
        type Rs ProjectsJobsDebugSendCapture =
             SendDebugCaptureResponse
        type Scopes ProjectsJobsDebugSendCapture =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsDebugSendCapture'{..}
          = go _pjdscProjectId _pjdscJobId _pjdscXgafv
              _pjdscUploadProtocol
              (Just _pjdscPp)
              _pjdscAccessToken
              _pjdscUploadType
              _pjdscBearerToken
              _pjdscCallback
              (Just AltJSON)
              _pjdscPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsDebugSendCaptureResource)
                      mempty

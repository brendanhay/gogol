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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Debug.GetConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get encoded debug configuration for component. Not cacheable.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.jobs.debug.getConfig@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Debug.GetConfig
    (
    -- * REST Resource
      ProjectsJobsDebugGetConfigResource

    -- * Creating a Request
    , projectsJobsDebugGetConfig
    , ProjectsJobsDebugGetConfig

    -- * Request Lenses
    , pjdgcXgafv
    , pjdgcJobId
    , pjdgcUploadProtocol
    , pjdgcAccessToken
    , pjdgcUploadType
    , pjdgcPayload
    , pjdgcProjectId
    , pjdgcCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.jobs.debug.getConfig@ method which the
-- 'ProjectsJobsDebugGetConfig' request conforms to.
type ProjectsJobsDebugGetConfigResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "debug" :>
                 "getConfig" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] GetDebugConfigRequest :>
                                 Post '[JSON] GetDebugConfigResponse

-- | Get encoded debug configuration for component. Not cacheable.
--
-- /See:/ 'projectsJobsDebugGetConfig' smart constructor.
data ProjectsJobsDebugGetConfig =
  ProjectsJobsDebugGetConfig'
    { _pjdgcXgafv          :: !(Maybe Xgafv)
    , _pjdgcJobId          :: !Text
    , _pjdgcUploadProtocol :: !(Maybe Text)
    , _pjdgcAccessToken    :: !(Maybe Text)
    , _pjdgcUploadType     :: !(Maybe Text)
    , _pjdgcPayload        :: !GetDebugConfigRequest
    , _pjdgcProjectId      :: !Text
    , _pjdgcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsDebugGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjdgcXgafv'
--
-- * 'pjdgcJobId'
--
-- * 'pjdgcUploadProtocol'
--
-- * 'pjdgcAccessToken'
--
-- * 'pjdgcUploadType'
--
-- * 'pjdgcPayload'
--
-- * 'pjdgcProjectId'
--
-- * 'pjdgcCallback'
projectsJobsDebugGetConfig
    :: Text -- ^ 'pjdgcJobId'
    -> GetDebugConfigRequest -- ^ 'pjdgcPayload'
    -> Text -- ^ 'pjdgcProjectId'
    -> ProjectsJobsDebugGetConfig
projectsJobsDebugGetConfig pPjdgcJobId_ pPjdgcPayload_ pPjdgcProjectId_ =
  ProjectsJobsDebugGetConfig'
    { _pjdgcXgafv = Nothing
    , _pjdgcJobId = pPjdgcJobId_
    , _pjdgcUploadProtocol = Nothing
    , _pjdgcAccessToken = Nothing
    , _pjdgcUploadType = Nothing
    , _pjdgcPayload = pPjdgcPayload_
    , _pjdgcProjectId = pPjdgcProjectId_
    , _pjdgcCallback = Nothing
    }


-- | V1 error format.
pjdgcXgafv :: Lens' ProjectsJobsDebugGetConfig (Maybe Xgafv)
pjdgcXgafv
  = lens _pjdgcXgafv (\ s a -> s{_pjdgcXgafv = a})

-- | The job id.
pjdgcJobId :: Lens' ProjectsJobsDebugGetConfig Text
pjdgcJobId
  = lens _pjdgcJobId (\ s a -> s{_pjdgcJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjdgcUploadProtocol :: Lens' ProjectsJobsDebugGetConfig (Maybe Text)
pjdgcUploadProtocol
  = lens _pjdgcUploadProtocol
      (\ s a -> s{_pjdgcUploadProtocol = a})

-- | OAuth access token.
pjdgcAccessToken :: Lens' ProjectsJobsDebugGetConfig (Maybe Text)
pjdgcAccessToken
  = lens _pjdgcAccessToken
      (\ s a -> s{_pjdgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjdgcUploadType :: Lens' ProjectsJobsDebugGetConfig (Maybe Text)
pjdgcUploadType
  = lens _pjdgcUploadType
      (\ s a -> s{_pjdgcUploadType = a})

-- | Multipart request metadata.
pjdgcPayload :: Lens' ProjectsJobsDebugGetConfig GetDebugConfigRequest
pjdgcPayload
  = lens _pjdgcPayload (\ s a -> s{_pjdgcPayload = a})

-- | The project id.
pjdgcProjectId :: Lens' ProjectsJobsDebugGetConfig Text
pjdgcProjectId
  = lens _pjdgcProjectId
      (\ s a -> s{_pjdgcProjectId = a})

-- | JSONP
pjdgcCallback :: Lens' ProjectsJobsDebugGetConfig (Maybe Text)
pjdgcCallback
  = lens _pjdgcCallback
      (\ s a -> s{_pjdgcCallback = a})

instance GoogleRequest ProjectsJobsDebugGetConfig
         where
        type Rs ProjectsJobsDebugGetConfig =
             GetDebugConfigResponse
        type Scopes ProjectsJobsDebugGetConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsJobsDebugGetConfig'{..}
          = go _pjdgcProjectId _pjdgcJobId _pjdgcXgafv
              _pjdgcUploadProtocol
              _pjdgcAccessToken
              _pjdgcUploadType
              _pjdgcCallback
              (Just AltJSON)
              _pjdgcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsDebugGetConfigResource)
                      mempty

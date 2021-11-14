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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get encoded debug configuration for component. Not cacheable.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.debug.getConfig@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Debug.GetConfig
    (
    -- * REST Resource
      ProjectsLocationsJobsDebugGetConfigResource

    -- * Creating a Request
    , projectsLocationsJobsDebugGetConfig
    , ProjectsLocationsJobsDebugGetConfig

    -- * Request Lenses
    , pljdgcXgafv
    , pljdgcJobId
    , pljdgcUploadProtocol
    , pljdgcLocation
    , pljdgcAccessToken
    , pljdgcUploadType
    , pljdgcPayload
    , pljdgcProjectId
    , pljdgcCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.debug.getConfig@ method which the
-- 'ProjectsLocationsJobsDebugGetConfig' request conforms to.
type ProjectsLocationsJobsDebugGetConfigResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
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
-- /See:/ 'projectsLocationsJobsDebugGetConfig' smart constructor.
data ProjectsLocationsJobsDebugGetConfig =
  ProjectsLocationsJobsDebugGetConfig'
    { _pljdgcXgafv :: !(Maybe Xgafv)
    , _pljdgcJobId :: !Text
    , _pljdgcUploadProtocol :: !(Maybe Text)
    , _pljdgcLocation :: !Text
    , _pljdgcAccessToken :: !(Maybe Text)
    , _pljdgcUploadType :: !(Maybe Text)
    , _pljdgcPayload :: !GetDebugConfigRequest
    , _pljdgcProjectId :: !Text
    , _pljdgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsDebugGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljdgcXgafv'
--
-- * 'pljdgcJobId'
--
-- * 'pljdgcUploadProtocol'
--
-- * 'pljdgcLocation'
--
-- * 'pljdgcAccessToken'
--
-- * 'pljdgcUploadType'
--
-- * 'pljdgcPayload'
--
-- * 'pljdgcProjectId'
--
-- * 'pljdgcCallback'
projectsLocationsJobsDebugGetConfig
    :: Text -- ^ 'pljdgcJobId'
    -> Text -- ^ 'pljdgcLocation'
    -> GetDebugConfigRequest -- ^ 'pljdgcPayload'
    -> Text -- ^ 'pljdgcProjectId'
    -> ProjectsLocationsJobsDebugGetConfig
projectsLocationsJobsDebugGetConfig pPljdgcJobId_ pPljdgcLocation_ pPljdgcPayload_ pPljdgcProjectId_ =
  ProjectsLocationsJobsDebugGetConfig'
    { _pljdgcXgafv = Nothing
    , _pljdgcJobId = pPljdgcJobId_
    , _pljdgcUploadProtocol = Nothing
    , _pljdgcLocation = pPljdgcLocation_
    , _pljdgcAccessToken = Nothing
    , _pljdgcUploadType = Nothing
    , _pljdgcPayload = pPljdgcPayload_
    , _pljdgcProjectId = pPljdgcProjectId_
    , _pljdgcCallback = Nothing
    }


-- | V1 error format.
pljdgcXgafv :: Lens' ProjectsLocationsJobsDebugGetConfig (Maybe Xgafv)
pljdgcXgafv
  = lens _pljdgcXgafv (\ s a -> s{_pljdgcXgafv = a})

-- | The job id.
pljdgcJobId :: Lens' ProjectsLocationsJobsDebugGetConfig Text
pljdgcJobId
  = lens _pljdgcJobId (\ s a -> s{_pljdgcJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljdgcUploadProtocol :: Lens' ProjectsLocationsJobsDebugGetConfig (Maybe Text)
pljdgcUploadProtocol
  = lens _pljdgcUploadProtocol
      (\ s a -> s{_pljdgcUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- that contains the job specified by job_id.
pljdgcLocation :: Lens' ProjectsLocationsJobsDebugGetConfig Text
pljdgcLocation
  = lens _pljdgcLocation
      (\ s a -> s{_pljdgcLocation = a})

-- | OAuth access token.
pljdgcAccessToken :: Lens' ProjectsLocationsJobsDebugGetConfig (Maybe Text)
pljdgcAccessToken
  = lens _pljdgcAccessToken
      (\ s a -> s{_pljdgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljdgcUploadType :: Lens' ProjectsLocationsJobsDebugGetConfig (Maybe Text)
pljdgcUploadType
  = lens _pljdgcUploadType
      (\ s a -> s{_pljdgcUploadType = a})

-- | Multipart request metadata.
pljdgcPayload :: Lens' ProjectsLocationsJobsDebugGetConfig GetDebugConfigRequest
pljdgcPayload
  = lens _pljdgcPayload
      (\ s a -> s{_pljdgcPayload = a})

-- | The project id.
pljdgcProjectId :: Lens' ProjectsLocationsJobsDebugGetConfig Text
pljdgcProjectId
  = lens _pljdgcProjectId
      (\ s a -> s{_pljdgcProjectId = a})

-- | JSONP
pljdgcCallback :: Lens' ProjectsLocationsJobsDebugGetConfig (Maybe Text)
pljdgcCallback
  = lens _pljdgcCallback
      (\ s a -> s{_pljdgcCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsDebugGetConfig
         where
        type Rs ProjectsLocationsJobsDebugGetConfig =
             GetDebugConfigResponse
        type Scopes ProjectsLocationsJobsDebugGetConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsLocationsJobsDebugGetConfig'{..}
          = go _pljdgcProjectId _pljdgcLocation _pljdgcJobId
              _pljdgcXgafv
              _pljdgcUploadProtocol
              _pljdgcAccessToken
              _pljdgcUploadType
              _pljdgcCallback
              (Just AltJSON)
              _pljdgcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsDebugGetConfigResource)
                      mempty

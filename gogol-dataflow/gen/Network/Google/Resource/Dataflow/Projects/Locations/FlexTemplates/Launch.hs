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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.FlexTemplates.Launch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launch a job with a FlexTemplate.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.flexTemplates.launch@.
module Network.Google.Resource.Dataflow.Projects.Locations.FlexTemplates.Launch
    (
    -- * REST Resource
      ProjectsLocationsFlexTemplatesLaunchResource

    -- * Creating a Request
    , projectsLocationsFlexTemplatesLaunch
    , ProjectsLocationsFlexTemplatesLaunch

    -- * Request Lenses
    , plftlXgafv
    , plftlUploadProtocol
    , plftlLocation
    , plftlAccessToken
    , plftlUploadType
    , plftlPayload
    , plftlProjectId
    , plftlCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.flexTemplates.launch@ method which the
-- 'ProjectsLocationsFlexTemplatesLaunch' request conforms to.
type ProjectsLocationsFlexTemplatesLaunchResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "flexTemplates:launch" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LaunchFlexTemplateRequest :>
                               Post '[JSON] LaunchFlexTemplateResponse

-- | Launch a job with a FlexTemplate.
--
-- /See:/ 'projectsLocationsFlexTemplatesLaunch' smart constructor.
data ProjectsLocationsFlexTemplatesLaunch =
  ProjectsLocationsFlexTemplatesLaunch'
    { _plftlXgafv :: !(Maybe Xgafv)
    , _plftlUploadProtocol :: !(Maybe Text)
    , _plftlLocation :: !Text
    , _plftlAccessToken :: !(Maybe Text)
    , _plftlUploadType :: !(Maybe Text)
    , _plftlPayload :: !LaunchFlexTemplateRequest
    , _plftlProjectId :: !Text
    , _plftlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFlexTemplatesLaunch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plftlXgafv'
--
-- * 'plftlUploadProtocol'
--
-- * 'plftlLocation'
--
-- * 'plftlAccessToken'
--
-- * 'plftlUploadType'
--
-- * 'plftlPayload'
--
-- * 'plftlProjectId'
--
-- * 'plftlCallback'
projectsLocationsFlexTemplatesLaunch
    :: Text -- ^ 'plftlLocation'
    -> LaunchFlexTemplateRequest -- ^ 'plftlPayload'
    -> Text -- ^ 'plftlProjectId'
    -> ProjectsLocationsFlexTemplatesLaunch
projectsLocationsFlexTemplatesLaunch pPlftlLocation_ pPlftlPayload_ pPlftlProjectId_ =
  ProjectsLocationsFlexTemplatesLaunch'
    { _plftlXgafv = Nothing
    , _plftlUploadProtocol = Nothing
    , _plftlLocation = pPlftlLocation_
    , _plftlAccessToken = Nothing
    , _plftlUploadType = Nothing
    , _plftlPayload = pPlftlPayload_
    , _plftlProjectId = pPlftlProjectId_
    , _plftlCallback = Nothing
    }


-- | V1 error format.
plftlXgafv :: Lens' ProjectsLocationsFlexTemplatesLaunch (Maybe Xgafv)
plftlXgafv
  = lens _plftlXgafv (\ s a -> s{_plftlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plftlUploadProtocol :: Lens' ProjectsLocationsFlexTemplatesLaunch (Maybe Text)
plftlUploadProtocol
  = lens _plftlUploadProtocol
      (\ s a -> s{_plftlUploadProtocol = a})

-- | Required. The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- to which to direct the request. E.g., us-central1, us-west1.
plftlLocation :: Lens' ProjectsLocationsFlexTemplatesLaunch Text
plftlLocation
  = lens _plftlLocation
      (\ s a -> s{_plftlLocation = a})

-- | OAuth access token.
plftlAccessToken :: Lens' ProjectsLocationsFlexTemplatesLaunch (Maybe Text)
plftlAccessToken
  = lens _plftlAccessToken
      (\ s a -> s{_plftlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plftlUploadType :: Lens' ProjectsLocationsFlexTemplatesLaunch (Maybe Text)
plftlUploadType
  = lens _plftlUploadType
      (\ s a -> s{_plftlUploadType = a})

-- | Multipart request metadata.
plftlPayload :: Lens' ProjectsLocationsFlexTemplatesLaunch LaunchFlexTemplateRequest
plftlPayload
  = lens _plftlPayload (\ s a -> s{_plftlPayload = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
plftlProjectId :: Lens' ProjectsLocationsFlexTemplatesLaunch Text
plftlProjectId
  = lens _plftlProjectId
      (\ s a -> s{_plftlProjectId = a})

-- | JSONP
plftlCallback :: Lens' ProjectsLocationsFlexTemplatesLaunch (Maybe Text)
plftlCallback
  = lens _plftlCallback
      (\ s a -> s{_plftlCallback = a})

instance GoogleRequest
           ProjectsLocationsFlexTemplatesLaunch
         where
        type Rs ProjectsLocationsFlexTemplatesLaunch =
             LaunchFlexTemplateResponse
        type Scopes ProjectsLocationsFlexTemplatesLaunch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          ProjectsLocationsFlexTemplatesLaunch'{..}
          = go _plftlProjectId _plftlLocation _plftlXgafv
              _plftlUploadProtocol
              _plftlAccessToken
              _plftlUploadType
              _plftlCallback
              (Just AltJSON)
              _plftlPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFlexTemplatesLaunchResource)
                      mempty

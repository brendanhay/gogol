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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Templates.Launch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launch a template.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.templates.launch@.
module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Launch
    (
    -- * REST Resource
      ProjectsLocationsTemplatesLaunchResource

    -- * Creating a Request
    , projectsLocationsTemplatesLaunch
    , ProjectsLocationsTemplatesLaunch

    -- * Request Lenses
    , pltlXgafv
    , pltlValidateOnly
    , pltlUploadProtocol
    , pltlLocation
    , pltlAccessToken
    , pltlUploadType
    , pltlPayload
    , pltlDynamicTemplateStagingLocation
    , pltlGcsPath
    , pltlProjectId
    , pltlCallback
    , pltlDynamicTemplateGcsPath
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.templates.launch@ method which the
-- 'ProjectsLocationsTemplatesLaunch' request conforms to.
type ProjectsLocationsTemplatesLaunchResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "templates:launch" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "validateOnly" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "dynamicTemplate.stagingLocation" Text :>
                             QueryParam "gcsPath" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "dynamicTemplate.gcsPath" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] LaunchTemplateParameters :>
                                       Post '[JSON] LaunchTemplateResponse

-- | Launch a template.
--
-- /See:/ 'projectsLocationsTemplatesLaunch' smart constructor.
data ProjectsLocationsTemplatesLaunch =
  ProjectsLocationsTemplatesLaunch'
    { _pltlXgafv :: !(Maybe Xgafv)
    , _pltlValidateOnly :: !(Maybe Bool)
    , _pltlUploadProtocol :: !(Maybe Text)
    , _pltlLocation :: !Text
    , _pltlAccessToken :: !(Maybe Text)
    , _pltlUploadType :: !(Maybe Text)
    , _pltlPayload :: !LaunchTemplateParameters
    , _pltlDynamicTemplateStagingLocation :: !(Maybe Text)
    , _pltlGcsPath :: !(Maybe Text)
    , _pltlProjectId :: !Text
    , _pltlCallback :: !(Maybe Text)
    , _pltlDynamicTemplateGcsPath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTemplatesLaunch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltlXgafv'
--
-- * 'pltlValidateOnly'
--
-- * 'pltlUploadProtocol'
--
-- * 'pltlLocation'
--
-- * 'pltlAccessToken'
--
-- * 'pltlUploadType'
--
-- * 'pltlPayload'
--
-- * 'pltlDynamicTemplateStagingLocation'
--
-- * 'pltlGcsPath'
--
-- * 'pltlProjectId'
--
-- * 'pltlCallback'
--
-- * 'pltlDynamicTemplateGcsPath'
projectsLocationsTemplatesLaunch
    :: Text -- ^ 'pltlLocation'
    -> LaunchTemplateParameters -- ^ 'pltlPayload'
    -> Text -- ^ 'pltlProjectId'
    -> ProjectsLocationsTemplatesLaunch
projectsLocationsTemplatesLaunch pPltlLocation_ pPltlPayload_ pPltlProjectId_ =
  ProjectsLocationsTemplatesLaunch'
    { _pltlXgafv = Nothing
    , _pltlValidateOnly = Nothing
    , _pltlUploadProtocol = Nothing
    , _pltlLocation = pPltlLocation_
    , _pltlAccessToken = Nothing
    , _pltlUploadType = Nothing
    , _pltlPayload = pPltlPayload_
    , _pltlDynamicTemplateStagingLocation = Nothing
    , _pltlGcsPath = Nothing
    , _pltlProjectId = pPltlProjectId_
    , _pltlCallback = Nothing
    , _pltlDynamicTemplateGcsPath = Nothing
    }


-- | V1 error format.
pltlXgafv :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Xgafv)
pltlXgafv
  = lens _pltlXgafv (\ s a -> s{_pltlXgafv = a})

-- | If true, the request is validated but not actually executed. Defaults to
-- false.
pltlValidateOnly :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Bool)
pltlValidateOnly
  = lens _pltlValidateOnly
      (\ s a -> s{_pltlValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltlUploadProtocol :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlUploadProtocol
  = lens _pltlUploadProtocol
      (\ s a -> s{_pltlUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- to which to direct the request.
pltlLocation :: Lens' ProjectsLocationsTemplatesLaunch Text
pltlLocation
  = lens _pltlLocation (\ s a -> s{_pltlLocation = a})

-- | OAuth access token.
pltlAccessToken :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlAccessToken
  = lens _pltlAccessToken
      (\ s a -> s{_pltlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltlUploadType :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlUploadType
  = lens _pltlUploadType
      (\ s a -> s{_pltlUploadType = a})

-- | Multipart request metadata.
pltlPayload :: Lens' ProjectsLocationsTemplatesLaunch LaunchTemplateParameters
pltlPayload
  = lens _pltlPayload (\ s a -> s{_pltlPayload = a})

-- | Cloud Storage path for staging dependencies. Must be a valid Cloud
-- Storage URL, beginning with \`gs:\/\/\`.
pltlDynamicTemplateStagingLocation :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlDynamicTemplateStagingLocation
  = lens _pltlDynamicTemplateStagingLocation
      (\ s a -> s{_pltlDynamicTemplateStagingLocation = a})

-- | A Cloud Storage path to the template from which to create the job. Must
-- be valid Cloud Storage URL, beginning with \'gs:\/\/\'.
pltlGcsPath :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlGcsPath
  = lens _pltlGcsPath (\ s a -> s{_pltlGcsPath = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
pltlProjectId :: Lens' ProjectsLocationsTemplatesLaunch Text
pltlProjectId
  = lens _pltlProjectId
      (\ s a -> s{_pltlProjectId = a})

-- | JSONP
pltlCallback :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlCallback
  = lens _pltlCallback (\ s a -> s{_pltlCallback = a})

-- | Path to dynamic template spec file on Cloud Storage. The file must be a
-- Json serialized DynamicTemplateFieSpec object.
pltlDynamicTemplateGcsPath :: Lens' ProjectsLocationsTemplatesLaunch (Maybe Text)
pltlDynamicTemplateGcsPath
  = lens _pltlDynamicTemplateGcsPath
      (\ s a -> s{_pltlDynamicTemplateGcsPath = a})

instance GoogleRequest
           ProjectsLocationsTemplatesLaunch
         where
        type Rs ProjectsLocationsTemplatesLaunch =
             LaunchTemplateResponse
        type Scopes ProjectsLocationsTemplatesLaunch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsTemplatesLaunch'{..}
          = go _pltlProjectId _pltlLocation _pltlXgafv
              _pltlValidateOnly
              _pltlUploadProtocol
              _pltlAccessToken
              _pltlUploadType
              _pltlDynamicTemplateStagingLocation
              _pltlGcsPath
              _pltlCallback
              _pltlDynamicTemplateGcsPath
              (Just AltJSON)
              _pltlPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTemplatesLaunchResource)
                      mempty

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
-- Module      : Network.Google.Resource.Dataflow.Projects.Templates.Launch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launch a template.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.templates.launch@.
module Network.Google.Resource.Dataflow.Projects.Templates.Launch
    (
    -- * REST Resource
      ProjectsTemplatesLaunchResource

    -- * Creating a Request
    , projectsTemplatesLaunch
    , ProjectsTemplatesLaunch

    -- * Request Lenses
    , ptlXgafv
    , ptlValidateOnly
    , ptlUploadProtocol
    , ptlLocation
    , ptlAccessToken
    , ptlUploadType
    , ptlPayload
    , ptlDynamicTemplateStagingLocation
    , ptlGcsPath
    , ptlProjectId
    , ptlCallback
    , ptlDynamicTemplateGcsPath
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.templates.launch@ method which the
-- 'ProjectsTemplatesLaunch' request conforms to.
type ProjectsTemplatesLaunchResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "templates:launch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "validateOnly" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "location" Text :>
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
-- /See:/ 'projectsTemplatesLaunch' smart constructor.
data ProjectsTemplatesLaunch =
  ProjectsTemplatesLaunch'
    { _ptlXgafv                          :: !(Maybe Xgafv)
    , _ptlValidateOnly                   :: !(Maybe Bool)
    , _ptlUploadProtocol                 :: !(Maybe Text)
    , _ptlLocation                       :: !(Maybe Text)
    , _ptlAccessToken                    :: !(Maybe Text)
    , _ptlUploadType                     :: !(Maybe Text)
    , _ptlPayload                        :: !LaunchTemplateParameters
    , _ptlDynamicTemplateStagingLocation :: !(Maybe Text)
    , _ptlGcsPath                        :: !(Maybe Text)
    , _ptlProjectId                      :: !Text
    , _ptlCallback                       :: !(Maybe Text)
    , _ptlDynamicTemplateGcsPath         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTemplatesLaunch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlXgafv'
--
-- * 'ptlValidateOnly'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlLocation'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlPayload'
--
-- * 'ptlDynamicTemplateStagingLocation'
--
-- * 'ptlGcsPath'
--
-- * 'ptlProjectId'
--
-- * 'ptlCallback'
--
-- * 'ptlDynamicTemplateGcsPath'
projectsTemplatesLaunch
    :: LaunchTemplateParameters -- ^ 'ptlPayload'
    -> Text -- ^ 'ptlProjectId'
    -> ProjectsTemplatesLaunch
projectsTemplatesLaunch pPtlPayload_ pPtlProjectId_ =
  ProjectsTemplatesLaunch'
    { _ptlXgafv = Nothing
    , _ptlValidateOnly = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlLocation = Nothing
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlPayload = pPtlPayload_
    , _ptlDynamicTemplateStagingLocation = Nothing
    , _ptlGcsPath = Nothing
    , _ptlProjectId = pPtlProjectId_
    , _ptlCallback = Nothing
    , _ptlDynamicTemplateGcsPath = Nothing
    }


-- | V1 error format.
ptlXgafv :: Lens' ProjectsTemplatesLaunch (Maybe Xgafv)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | If true, the request is validated but not actually executed. Defaults to
-- false.
ptlValidateOnly :: Lens' ProjectsTemplatesLaunch (Maybe Bool)
ptlValidateOnly
  = lens _ptlValidateOnly
      (\ s a -> s{_ptlValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | The location to which to direct the request.
ptlLocation :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlLocation
  = lens _ptlLocation (\ s a -> s{_ptlLocation = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | Multipart request metadata.
ptlPayload :: Lens' ProjectsTemplatesLaunch LaunchTemplateParameters
ptlPayload
  = lens _ptlPayload (\ s a -> s{_ptlPayload = a})

-- | Cloud Storage path for staging dependencies. Must be a valid Cloud
-- Storage URL, beginning with \`gs:\/\/\`.
ptlDynamicTemplateStagingLocation :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlDynamicTemplateStagingLocation
  = lens _ptlDynamicTemplateStagingLocation
      (\ s a -> s{_ptlDynamicTemplateStagingLocation = a})

-- | A Cloud Storage path to the template from which to create the job. Must
-- be valid Cloud Storage URL, beginning with \'gs:\/\/\'.
ptlGcsPath :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlGcsPath
  = lens _ptlGcsPath (\ s a -> s{_ptlGcsPath = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
ptlProjectId :: Lens' ProjectsTemplatesLaunch Text
ptlProjectId
  = lens _ptlProjectId (\ s a -> s{_ptlProjectId = a})

-- | JSONP
ptlCallback :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

-- | Path to dynamic template spec file on GCS. The file must be a Json
-- serialized DynamicTemplateFieSpec object.
ptlDynamicTemplateGcsPath :: Lens' ProjectsTemplatesLaunch (Maybe Text)
ptlDynamicTemplateGcsPath
  = lens _ptlDynamicTemplateGcsPath
      (\ s a -> s{_ptlDynamicTemplateGcsPath = a})

instance GoogleRequest ProjectsTemplatesLaunch where
        type Rs ProjectsTemplatesLaunch =
             LaunchTemplateResponse
        type Scopes ProjectsTemplatesLaunch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsTemplatesLaunch'{..}
          = go _ptlProjectId _ptlXgafv _ptlValidateOnly
              _ptlUploadProtocol
              _ptlLocation
              _ptlAccessToken
              _ptlUploadType
              _ptlDynamicTemplateStagingLocation
              _ptlGcsPath
              _ptlCallback
              _ptlDynamicTemplateGcsPath
              (Just AltJSON)
              _ptlPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTemplatesLaunchResource)
                      mempty

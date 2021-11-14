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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a build in progress.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.cancel@.
module Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel
    (
    -- * REST Resource
      ProjectsBuildsCancelResource

    -- * Creating a Request
    , projectsBuildsCancel
    , ProjectsBuildsCancel

    -- * Request Lenses
    , pbcXgafv
    , pbcUploadProtocol
    , pbcAccessToken
    , pbcUploadType
    , pbcPayload
    , pbcId
    , pbcProjectId
    , pbcCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.builds.cancel@ method which the
-- 'ProjectsBuildsCancel' request conforms to.
type ProjectsBuildsCancelResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "builds" :>
             CaptureMode "id" "cancel" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CancelBuildRequest :>
                             Post '[JSON] Build

-- | Cancels a build in progress.
--
-- /See:/ 'projectsBuildsCancel' smart constructor.
data ProjectsBuildsCancel =
  ProjectsBuildsCancel'
    { _pbcXgafv :: !(Maybe Xgafv)
    , _pbcUploadProtocol :: !(Maybe Text)
    , _pbcAccessToken :: !(Maybe Text)
    , _pbcUploadType :: !(Maybe Text)
    , _pbcPayload :: !CancelBuildRequest
    , _pbcId :: !Text
    , _pbcProjectId :: !Text
    , _pbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBuildsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbcXgafv'
--
-- * 'pbcUploadProtocol'
--
-- * 'pbcAccessToken'
--
-- * 'pbcUploadType'
--
-- * 'pbcPayload'
--
-- * 'pbcId'
--
-- * 'pbcProjectId'
--
-- * 'pbcCallback'
projectsBuildsCancel
    :: CancelBuildRequest -- ^ 'pbcPayload'
    -> Text -- ^ 'pbcId'
    -> Text -- ^ 'pbcProjectId'
    -> ProjectsBuildsCancel
projectsBuildsCancel pPbcPayload_ pPbcId_ pPbcProjectId_ =
  ProjectsBuildsCancel'
    { _pbcXgafv = Nothing
    , _pbcUploadProtocol = Nothing
    , _pbcAccessToken = Nothing
    , _pbcUploadType = Nothing
    , _pbcPayload = pPbcPayload_
    , _pbcId = pPbcId_
    , _pbcProjectId = pPbcProjectId_
    , _pbcCallback = Nothing
    }


-- | V1 error format.
pbcXgafv :: Lens' ProjectsBuildsCancel (Maybe Xgafv)
pbcXgafv = lens _pbcXgafv (\ s a -> s{_pbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbcUploadProtocol :: Lens' ProjectsBuildsCancel (Maybe Text)
pbcUploadProtocol
  = lens _pbcUploadProtocol
      (\ s a -> s{_pbcUploadProtocol = a})

-- | OAuth access token.
pbcAccessToken :: Lens' ProjectsBuildsCancel (Maybe Text)
pbcAccessToken
  = lens _pbcAccessToken
      (\ s a -> s{_pbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbcUploadType :: Lens' ProjectsBuildsCancel (Maybe Text)
pbcUploadType
  = lens _pbcUploadType
      (\ s a -> s{_pbcUploadType = a})

-- | Multipart request metadata.
pbcPayload :: Lens' ProjectsBuildsCancel CancelBuildRequest
pbcPayload
  = lens _pbcPayload (\ s a -> s{_pbcPayload = a})

-- | Required. ID of the build.
pbcId :: Lens' ProjectsBuildsCancel Text
pbcId = lens _pbcId (\ s a -> s{_pbcId = a})

-- | Required. ID of the project.
pbcProjectId :: Lens' ProjectsBuildsCancel Text
pbcProjectId
  = lens _pbcProjectId (\ s a -> s{_pbcProjectId = a})

-- | JSONP
pbcCallback :: Lens' ProjectsBuildsCancel (Maybe Text)
pbcCallback
  = lens _pbcCallback (\ s a -> s{_pbcCallback = a})

instance GoogleRequest ProjectsBuildsCancel where
        type Rs ProjectsBuildsCancel = Build
        type Scopes ProjectsBuildsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBuildsCancel'{..}
          = go _pbcProjectId _pbcId _pbcXgafv
              _pbcUploadProtocol
              _pbcAccessToken
              _pbcUploadType
              _pbcCallback
              (Just AltJSON)
              _pbcPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBuildsCancelResource)
                      mempty

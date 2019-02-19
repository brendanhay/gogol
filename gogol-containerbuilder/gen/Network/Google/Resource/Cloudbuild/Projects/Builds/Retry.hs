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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Builds.Retry
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new build based on the specified build. This method creates a
-- new build using the original build request, which may or may not result
-- in an identical build. For triggered builds: * Triggered builds resolve
-- to a precise revision; therefore a retry of a triggered build will
-- result in a build that uses the same revision. For non-triggered builds
-- that specify \`RepoSource\`: * If the original build built from the tip
-- of a branch, the retried build will build from the tip of that branch,
-- which may not be the same revision as the original build. * If the
-- original build specified a commit sha or revision ID, the retried build
-- will use the identical source. For builds that specify
-- \`StorageSource\`: * If the original build pulled source from Google
-- Cloud Storage without specifying the generation of the object, the new
-- build will use the current object, which may be different from the
-- original build source. * If the original build pulled source from Cloud
-- Storage and specified the generation of the object, the new build will
-- attempt to use the same object, which may or may not be available
-- depending on the bucket\'s lifecycle management settings.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.retry@.
module Network.Google.Resource.Cloudbuild.Projects.Builds.Retry
    (
    -- * REST Resource
      ProjectsBuildsRetryResource

    -- * Creating a Request
    , projectsBuildsRetry
    , ProjectsBuildsRetry

    -- * Request Lenses
    , pbrXgafv
    , pbrUploadProtocol
    , pbrAccessToken
    , pbrUploadType
    , pbrPayload
    , pbrId
    , pbrProjectId
    , pbrCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.builds.retry@ method which the
-- 'ProjectsBuildsRetry' request conforms to.
type ProjectsBuildsRetryResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "builds" :>
             CaptureMode "id" "retry" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RetryBuildRequest :>
                             Post '[JSON] Operation

-- | Creates a new build based on the specified build. This method creates a
-- new build using the original build request, which may or may not result
-- in an identical build. For triggered builds: * Triggered builds resolve
-- to a precise revision; therefore a retry of a triggered build will
-- result in a build that uses the same revision. For non-triggered builds
-- that specify \`RepoSource\`: * If the original build built from the tip
-- of a branch, the retried build will build from the tip of that branch,
-- which may not be the same revision as the original build. * If the
-- original build specified a commit sha or revision ID, the retried build
-- will use the identical source. For builds that specify
-- \`StorageSource\`: * If the original build pulled source from Google
-- Cloud Storage without specifying the generation of the object, the new
-- build will use the current object, which may be different from the
-- original build source. * If the original build pulled source from Cloud
-- Storage and specified the generation of the object, the new build will
-- attempt to use the same object, which may or may not be available
-- depending on the bucket\'s lifecycle management settings.
--
-- /See:/ 'projectsBuildsRetry' smart constructor.
data ProjectsBuildsRetry =
  ProjectsBuildsRetry'
    { _pbrXgafv          :: !(Maybe Xgafv)
    , _pbrUploadProtocol :: !(Maybe Text)
    , _pbrAccessToken    :: !(Maybe Text)
    , _pbrUploadType     :: !(Maybe Text)
    , _pbrPayload        :: !RetryBuildRequest
    , _pbrId             :: !Text
    , _pbrProjectId      :: !Text
    , _pbrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsBuildsRetry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbrXgafv'
--
-- * 'pbrUploadProtocol'
--
-- * 'pbrAccessToken'
--
-- * 'pbrUploadType'
--
-- * 'pbrPayload'
--
-- * 'pbrId'
--
-- * 'pbrProjectId'
--
-- * 'pbrCallback'
projectsBuildsRetry
    :: RetryBuildRequest -- ^ 'pbrPayload'
    -> Text -- ^ 'pbrId'
    -> Text -- ^ 'pbrProjectId'
    -> ProjectsBuildsRetry
projectsBuildsRetry pPbrPayload_ pPbrId_ pPbrProjectId_ =
  ProjectsBuildsRetry'
    { _pbrXgafv = Nothing
    , _pbrUploadProtocol = Nothing
    , _pbrAccessToken = Nothing
    , _pbrUploadType = Nothing
    , _pbrPayload = pPbrPayload_
    , _pbrId = pPbrId_
    , _pbrProjectId = pPbrProjectId_
    , _pbrCallback = Nothing
    }

-- | V1 error format.
pbrXgafv :: Lens' ProjectsBuildsRetry (Maybe Xgafv)
pbrXgafv = lens _pbrXgafv (\ s a -> s{_pbrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbrUploadProtocol :: Lens' ProjectsBuildsRetry (Maybe Text)
pbrUploadProtocol
  = lens _pbrUploadProtocol
      (\ s a -> s{_pbrUploadProtocol = a})

-- | OAuth access token.
pbrAccessToken :: Lens' ProjectsBuildsRetry (Maybe Text)
pbrAccessToken
  = lens _pbrAccessToken
      (\ s a -> s{_pbrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbrUploadType :: Lens' ProjectsBuildsRetry (Maybe Text)
pbrUploadType
  = lens _pbrUploadType
      (\ s a -> s{_pbrUploadType = a})

-- | Multipart request metadata.
pbrPayload :: Lens' ProjectsBuildsRetry RetryBuildRequest
pbrPayload
  = lens _pbrPayload (\ s a -> s{_pbrPayload = a})

-- | Build ID of the original build.
pbrId :: Lens' ProjectsBuildsRetry Text
pbrId = lens _pbrId (\ s a -> s{_pbrId = a})

-- | ID of the project.
pbrProjectId :: Lens' ProjectsBuildsRetry Text
pbrProjectId
  = lens _pbrProjectId (\ s a -> s{_pbrProjectId = a})

-- | JSONP
pbrCallback :: Lens' ProjectsBuildsRetry (Maybe Text)
pbrCallback
  = lens _pbrCallback (\ s a -> s{_pbrCallback = a})

instance GoogleRequest ProjectsBuildsRetry where
        type Rs ProjectsBuildsRetry = Operation
        type Scopes ProjectsBuildsRetry =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBuildsRetry'{..}
          = go _pbrProjectId _pbrId _pbrXgafv
              _pbrUploadProtocol
              _pbrAccessToken
              _pbrUploadType
              _pbrCallback
              (Just AltJSON)
              _pbrPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBuildsRetryResource)
                      mempty

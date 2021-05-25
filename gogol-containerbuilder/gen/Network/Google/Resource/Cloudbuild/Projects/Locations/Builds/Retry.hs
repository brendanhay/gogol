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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Retry
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
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.retry@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Retry
    (
    -- * REST Resource
      ProjectsLocationsBuildsRetryResource

    -- * Creating a Request
    , projectsLocationsBuildsRetry
    , ProjectsLocationsBuildsRetry

    -- * Request Lenses
    , plbrXgafv
    , plbrUploadProtocol
    , plbrAccessToken
    , plbrUploadType
    , plbrPayload
    , plbrName
    , plbrCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.builds.retry@ method which the
-- 'ProjectsLocationsBuildsRetry' request conforms to.
type ProjectsLocationsBuildsRetryResource =
     "v1" :>
       CaptureMode "name" "retry" Text :>
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
-- /See:/ 'projectsLocationsBuildsRetry' smart constructor.
data ProjectsLocationsBuildsRetry =
  ProjectsLocationsBuildsRetry'
    { _plbrXgafv :: !(Maybe Xgafv)
    , _plbrUploadProtocol :: !(Maybe Text)
    , _plbrAccessToken :: !(Maybe Text)
    , _plbrUploadType :: !(Maybe Text)
    , _plbrPayload :: !RetryBuildRequest
    , _plbrName :: !Text
    , _plbrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBuildsRetry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbrXgafv'
--
-- * 'plbrUploadProtocol'
--
-- * 'plbrAccessToken'
--
-- * 'plbrUploadType'
--
-- * 'plbrPayload'
--
-- * 'plbrName'
--
-- * 'plbrCallback'
projectsLocationsBuildsRetry
    :: RetryBuildRequest -- ^ 'plbrPayload'
    -> Text -- ^ 'plbrName'
    -> ProjectsLocationsBuildsRetry
projectsLocationsBuildsRetry pPlbrPayload_ pPlbrName_ =
  ProjectsLocationsBuildsRetry'
    { _plbrXgafv = Nothing
    , _plbrUploadProtocol = Nothing
    , _plbrAccessToken = Nothing
    , _plbrUploadType = Nothing
    , _plbrPayload = pPlbrPayload_
    , _plbrName = pPlbrName_
    , _plbrCallback = Nothing
    }


-- | V1 error format.
plbrXgafv :: Lens' ProjectsLocationsBuildsRetry (Maybe Xgafv)
plbrXgafv
  = lens _plbrXgafv (\ s a -> s{_plbrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbrUploadProtocol :: Lens' ProjectsLocationsBuildsRetry (Maybe Text)
plbrUploadProtocol
  = lens _plbrUploadProtocol
      (\ s a -> s{_plbrUploadProtocol = a})

-- | OAuth access token.
plbrAccessToken :: Lens' ProjectsLocationsBuildsRetry (Maybe Text)
plbrAccessToken
  = lens _plbrAccessToken
      (\ s a -> s{_plbrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbrUploadType :: Lens' ProjectsLocationsBuildsRetry (Maybe Text)
plbrUploadType
  = lens _plbrUploadType
      (\ s a -> s{_plbrUploadType = a})

-- | Multipart request metadata.
plbrPayload :: Lens' ProjectsLocationsBuildsRetry RetryBuildRequest
plbrPayload
  = lens _plbrPayload (\ s a -> s{_plbrPayload = a})

-- | The name of the \`Build\` to retry. Format:
-- \`projects\/{project}\/locations\/{location}\/builds\/{build}\`
plbrName :: Lens' ProjectsLocationsBuildsRetry Text
plbrName = lens _plbrName (\ s a -> s{_plbrName = a})

-- | JSONP
plbrCallback :: Lens' ProjectsLocationsBuildsRetry (Maybe Text)
plbrCallback
  = lens _plbrCallback (\ s a -> s{_plbrCallback = a})

instance GoogleRequest ProjectsLocationsBuildsRetry
         where
        type Rs ProjectsLocationsBuildsRetry = Operation
        type Scopes ProjectsLocationsBuildsRetry =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBuildsRetry'{..}
          = go _plbrName _plbrXgafv _plbrUploadProtocol
              _plbrAccessToken
              _plbrUploadType
              _plbrCallback
              (Just AltJSON)
              _plbrPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBuildsRetryResource)
                      mempty

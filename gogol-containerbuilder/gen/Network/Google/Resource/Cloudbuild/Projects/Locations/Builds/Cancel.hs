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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a build in progress.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.cancel@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Cancel
    (
    -- * REST Resource
      ProjectsLocationsBuildsCancelResource

    -- * Creating a Request
    , projectsLocationsBuildsCancel
    , ProjectsLocationsBuildsCancel

    -- * Request Lenses
    , plbcXgafv
    , plbcUploadProtocol
    , plbcAccessToken
    , plbcUploadType
    , plbcPayload
    , plbcName
    , plbcCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.builds.cancel@ method which the
-- 'ProjectsLocationsBuildsCancel' request conforms to.
type ProjectsLocationsBuildsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
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
-- /See:/ 'projectsLocationsBuildsCancel' smart constructor.
data ProjectsLocationsBuildsCancel =
  ProjectsLocationsBuildsCancel'
    { _plbcXgafv :: !(Maybe Xgafv)
    , _plbcUploadProtocol :: !(Maybe Text)
    , _plbcAccessToken :: !(Maybe Text)
    , _plbcUploadType :: !(Maybe Text)
    , _plbcPayload :: !CancelBuildRequest
    , _plbcName :: !Text
    , _plbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBuildsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbcXgafv'
--
-- * 'plbcUploadProtocol'
--
-- * 'plbcAccessToken'
--
-- * 'plbcUploadType'
--
-- * 'plbcPayload'
--
-- * 'plbcName'
--
-- * 'plbcCallback'
projectsLocationsBuildsCancel
    :: CancelBuildRequest -- ^ 'plbcPayload'
    -> Text -- ^ 'plbcName'
    -> ProjectsLocationsBuildsCancel
projectsLocationsBuildsCancel pPlbcPayload_ pPlbcName_ =
  ProjectsLocationsBuildsCancel'
    { _plbcXgafv = Nothing
    , _plbcUploadProtocol = Nothing
    , _plbcAccessToken = Nothing
    , _plbcUploadType = Nothing
    , _plbcPayload = pPlbcPayload_
    , _plbcName = pPlbcName_
    , _plbcCallback = Nothing
    }


-- | V1 error format.
plbcXgafv :: Lens' ProjectsLocationsBuildsCancel (Maybe Xgafv)
plbcXgafv
  = lens _plbcXgafv (\ s a -> s{_plbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbcUploadProtocol :: Lens' ProjectsLocationsBuildsCancel (Maybe Text)
plbcUploadProtocol
  = lens _plbcUploadProtocol
      (\ s a -> s{_plbcUploadProtocol = a})

-- | OAuth access token.
plbcAccessToken :: Lens' ProjectsLocationsBuildsCancel (Maybe Text)
plbcAccessToken
  = lens _plbcAccessToken
      (\ s a -> s{_plbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbcUploadType :: Lens' ProjectsLocationsBuildsCancel (Maybe Text)
plbcUploadType
  = lens _plbcUploadType
      (\ s a -> s{_plbcUploadType = a})

-- | Multipart request metadata.
plbcPayload :: Lens' ProjectsLocationsBuildsCancel CancelBuildRequest
plbcPayload
  = lens _plbcPayload (\ s a -> s{_plbcPayload = a})

-- | The name of the \`Build\` to cancel. Format:
-- \`projects\/{project}\/locations\/{location}\/builds\/{build}\`
plbcName :: Lens' ProjectsLocationsBuildsCancel Text
plbcName = lens _plbcName (\ s a -> s{_plbcName = a})

-- | JSONP
plbcCallback :: Lens' ProjectsLocationsBuildsCancel (Maybe Text)
plbcCallback
  = lens _plbcCallback (\ s a -> s{_plbcCallback = a})

instance GoogleRequest ProjectsLocationsBuildsCancel
         where
        type Rs ProjectsLocationsBuildsCancel = Build
        type Scopes ProjectsLocationsBuildsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBuildsCancel'{..}
          = go _plbcName _plbcXgafv _plbcUploadProtocol
              _plbcAccessToken
              _plbcUploadType
              _plbcCallback
              (Just AltJSON)
              _plbcPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBuildsCancelResource)
                      mempty

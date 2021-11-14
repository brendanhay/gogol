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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a previously requested build. The \`Build\`
-- that is returned includes its status (such as \`SUCCESS\`, \`FAILURE\`,
-- or \`WORKING\`), and timing information.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.get@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Get
    (
    -- * REST Resource
      ProjectsLocationsBuildsGetResource

    -- * Creating a Request
    , projectsLocationsBuildsGet
    , ProjectsLocationsBuildsGet

    -- * Request Lenses
    , plbgXgafv
    , plbgUploadProtocol
    , plbgAccessToken
    , plbgUploadType
    , plbgName
    , plbgId
    , plbgProjectId
    , plbgCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.builds.get@ method which the
-- 'ProjectsLocationsBuildsGet' request conforms to.
type ProjectsLocationsBuildsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "id" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Build

-- | Returns information about a previously requested build. The \`Build\`
-- that is returned includes its status (such as \`SUCCESS\`, \`FAILURE\`,
-- or \`WORKING\`), and timing information.
--
-- /See:/ 'projectsLocationsBuildsGet' smart constructor.
data ProjectsLocationsBuildsGet =
  ProjectsLocationsBuildsGet'
    { _plbgXgafv :: !(Maybe Xgafv)
    , _plbgUploadProtocol :: !(Maybe Text)
    , _plbgAccessToken :: !(Maybe Text)
    , _plbgUploadType :: !(Maybe Text)
    , _plbgName :: !Text
    , _plbgId :: !(Maybe Text)
    , _plbgProjectId :: !(Maybe Text)
    , _plbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBuildsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbgXgafv'
--
-- * 'plbgUploadProtocol'
--
-- * 'plbgAccessToken'
--
-- * 'plbgUploadType'
--
-- * 'plbgName'
--
-- * 'plbgId'
--
-- * 'plbgProjectId'
--
-- * 'plbgCallback'
projectsLocationsBuildsGet
    :: Text -- ^ 'plbgName'
    -> ProjectsLocationsBuildsGet
projectsLocationsBuildsGet pPlbgName_ =
  ProjectsLocationsBuildsGet'
    { _plbgXgafv = Nothing
    , _plbgUploadProtocol = Nothing
    , _plbgAccessToken = Nothing
    , _plbgUploadType = Nothing
    , _plbgName = pPlbgName_
    , _plbgId = Nothing
    , _plbgProjectId = Nothing
    , _plbgCallback = Nothing
    }


-- | V1 error format.
plbgXgafv :: Lens' ProjectsLocationsBuildsGet (Maybe Xgafv)
plbgXgafv
  = lens _plbgXgafv (\ s a -> s{_plbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbgUploadProtocol :: Lens' ProjectsLocationsBuildsGet (Maybe Text)
plbgUploadProtocol
  = lens _plbgUploadProtocol
      (\ s a -> s{_plbgUploadProtocol = a})

-- | OAuth access token.
plbgAccessToken :: Lens' ProjectsLocationsBuildsGet (Maybe Text)
plbgAccessToken
  = lens _plbgAccessToken
      (\ s a -> s{_plbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbgUploadType :: Lens' ProjectsLocationsBuildsGet (Maybe Text)
plbgUploadType
  = lens _plbgUploadType
      (\ s a -> s{_plbgUploadType = a})

-- | The name of the \`Build\` to retrieve. Format:
-- \`projects\/{project}\/locations\/{location}\/builds\/{build}\`
plbgName :: Lens' ProjectsLocationsBuildsGet Text
plbgName = lens _plbgName (\ s a -> s{_plbgName = a})

-- | Required. ID of the build.
plbgId :: Lens' ProjectsLocationsBuildsGet (Maybe Text)
plbgId = lens _plbgId (\ s a -> s{_plbgId = a})

-- | Required. ID of the project.
plbgProjectId :: Lens' ProjectsLocationsBuildsGet (Maybe Text)
plbgProjectId
  = lens _plbgProjectId
      (\ s a -> s{_plbgProjectId = a})

-- | JSONP
plbgCallback :: Lens' ProjectsLocationsBuildsGet (Maybe Text)
plbgCallback
  = lens _plbgCallback (\ s a -> s{_plbgCallback = a})

instance GoogleRequest ProjectsLocationsBuildsGet
         where
        type Rs ProjectsLocationsBuildsGet = Build
        type Scopes ProjectsLocationsBuildsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBuildsGet'{..}
          = go _plbgName _plbgXgafv _plbgUploadProtocol
              _plbgAccessToken
              _plbgUploadType
              _plbgId
              _plbgProjectId
              _plbgCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBuildsGetResource)
                      mempty

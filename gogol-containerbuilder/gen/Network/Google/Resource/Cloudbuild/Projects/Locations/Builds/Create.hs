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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a build with the specified configuration. This method returns a
-- long-running \`Operation\`, which includes the build ID. Pass the build
-- ID to \`GetBuild\` to determine the build status (such as \`SUCCESS\` or
-- \`FAILURE\`).
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.create@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Create
    (
    -- * REST Resource
      ProjectsLocationsBuildsCreateResource

    -- * Creating a Request
    , projectsLocationsBuildsCreate
    , ProjectsLocationsBuildsCreate

    -- * Request Lenses
    , proParent
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proProjectId
    , proCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.builds.create@ method which the
-- 'ProjectsLocationsBuildsCreate' request conforms to.
type ProjectsLocationsBuildsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "builds" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Build :> Post '[JSON] Operation

-- | Starts a build with the specified configuration. This method returns a
-- long-running \`Operation\`, which includes the build ID. Pass the build
-- ID to \`GetBuild\` to determine the build status (such as \`SUCCESS\` or
-- \`FAILURE\`).
--
-- /See:/ 'projectsLocationsBuildsCreate' smart constructor.
data ProjectsLocationsBuildsCreate =
  ProjectsLocationsBuildsCreate'
    { _proParent :: !Text
    , _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !Build
    , _proProjectId :: !(Maybe Text)
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBuildsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proParent'
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proProjectId'
--
-- * 'proCallback'
projectsLocationsBuildsCreate
    :: Text -- ^ 'proParent'
    -> Build -- ^ 'proPayload'
    -> ProjectsLocationsBuildsCreate
projectsLocationsBuildsCreate pProParent_ pProPayload_ =
  ProjectsLocationsBuildsCreate'
    { _proParent = pProParent_
    , _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proProjectId = Nothing
    , _proCallback = Nothing
    }


-- | The parent resource where this build will be created. Format:
-- \`projects\/{project}\/locations\/{location}\`
proParent :: Lens' ProjectsLocationsBuildsCreate Text
proParent
  = lens _proParent (\ s a -> s{_proParent = a})

-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsBuildsCreate (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsBuildsCreate (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsBuildsCreate (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsBuildsCreate (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsLocationsBuildsCreate Build
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | Required. ID of the project.
proProjectId :: Lens' ProjectsLocationsBuildsCreate (Maybe Text)
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsBuildsCreate (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsLocationsBuildsCreate
         where
        type Rs ProjectsLocationsBuildsCreate = Operation
        type Scopes ProjectsLocationsBuildsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBuildsCreate'{..}
          = go _proParent _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proProjectId
              _proCallback
              (Just AltJSON)
              _proPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBuildsCreateResource)
                      mempty

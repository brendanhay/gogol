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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Builds.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a build with the specified configuration. The long-running
-- Operation returned by this method will include the ID of the build,
-- which can be passed to GetBuild to determine its status (e.g., success
-- or failure).
--
-- /See:/ <https://cloud.google.com/container-builder/docs/ Google Cloud Container Builder API Reference> for @cloudbuild.projects.builds.create@.
module Network.Google.Resource.Cloudbuild.Projects.Builds.Create
    (
    -- * REST Resource
      ProjectsBuildsCreateResource

    -- * Creating a Request
    , projectsBuildsCreate
    , ProjectsBuildsCreate

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pPp
    , pAccessToken
    , pUploadType
    , pPayload
    , pBearerToken
    , pProjectId
    , pCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.builds.create@ method which the
-- 'ProjectsBuildsCreate' request conforms to.
type ProjectsBuildsCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "builds" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Build :> Post '[JSON] Operation

-- | Starts a build with the specified configuration. The long-running
-- Operation returned by this method will include the ID of the build,
-- which can be passed to GetBuild to determine its status (e.g., success
-- or failure).
--
-- /See:/ 'projectsBuildsCreate' smart constructor.
data ProjectsBuildsCreate = ProjectsBuildsCreate'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pPp             :: !Bool
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !Build
    , _pBearerToken    :: !(Maybe Text)
    , _pProjectId      :: !Text
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsBuildsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pPp'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pBearerToken'
--
-- * 'pProjectId'
--
-- * 'pCallback'
projectsBuildsCreate
    :: Build -- ^ 'pPayload'
    -> Text -- ^ 'pProjectId'
    -> ProjectsBuildsCreate
projectsBuildsCreate pPPayload_ pPProjectId_ =
    ProjectsBuildsCreate'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pPp = True
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pBearerToken = Nothing
    , _pProjectId = pPProjectId_
    , _pCallback = Nothing
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsBuildsCreate (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsBuildsCreate (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Pretty-print response.
pPp :: Lens' ProjectsBuildsCreate Bool
pPp = lens _pPp (\ s a -> s{_pPp = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsBuildsCreate (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsBuildsCreate (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsBuildsCreate Build
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | OAuth bearer token.
pBearerToken :: Lens' ProjectsBuildsCreate (Maybe Text)
pBearerToken
  = lens _pBearerToken (\ s a -> s{_pBearerToken = a})

-- | ID of the project.
pProjectId :: Lens' ProjectsBuildsCreate Text
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | JSONP
pCallback :: Lens' ProjectsBuildsCreate (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsBuildsCreate where
        type Rs ProjectsBuildsCreate = Operation
        type Scopes ProjectsBuildsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBuildsCreate'{..}
          = go _pProjectId _pXgafv _pUploadProtocol (Just _pPp)
              _pAccessToken
              _pUploadType
              _pBearerToken
              _pCallback
              (Just AltJSON)
              _pPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBuildsCreateResource)
                      mempty

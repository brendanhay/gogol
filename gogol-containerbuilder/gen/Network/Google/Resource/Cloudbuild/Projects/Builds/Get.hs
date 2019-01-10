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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Builds.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a previously requested build. The \`Build\`
-- that is returned includes its status (such as \`SUCCESS\`, \`FAILURE\`,
-- or \`WORKING\`), and timing information.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.get@.
module Network.Google.Resource.Cloudbuild.Projects.Builds.Get
    (
    -- * REST Resource
      ProjectsBuildsGetResource

    -- * Creating a Request
    , projectsBuildsGet
    , ProjectsBuildsGet

    -- * Request Lenses
    , pbgXgafv
    , pbgUploadProtocol
    , pbgAccessToken
    , pbgUploadType
    , pbgId
    , pbgProjectId
    , pbgCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.builds.get@ method which the
-- 'ProjectsBuildsGet' request conforms to.
type ProjectsBuildsGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "builds" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Build

-- | Returns information about a previously requested build. The \`Build\`
-- that is returned includes its status (such as \`SUCCESS\`, \`FAILURE\`,
-- or \`WORKING\`), and timing information.
--
-- /See:/ 'projectsBuildsGet' smart constructor.
data ProjectsBuildsGet = ProjectsBuildsGet'
    { _pbgXgafv          :: !(Maybe Xgafv)
    , _pbgUploadProtocol :: !(Maybe Text)
    , _pbgAccessToken    :: !(Maybe Text)
    , _pbgUploadType     :: !(Maybe Text)
    , _pbgId             :: !Text
    , _pbgProjectId      :: !Text
    , _pbgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsBuildsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbgXgafv'
--
-- * 'pbgUploadProtocol'
--
-- * 'pbgAccessToken'
--
-- * 'pbgUploadType'
--
-- * 'pbgId'
--
-- * 'pbgProjectId'
--
-- * 'pbgCallback'
projectsBuildsGet
    :: Text -- ^ 'pbgId'
    -> Text -- ^ 'pbgProjectId'
    -> ProjectsBuildsGet
projectsBuildsGet pPbgId_ pPbgProjectId_ =
    ProjectsBuildsGet'
    { _pbgXgafv = Nothing
    , _pbgUploadProtocol = Nothing
    , _pbgAccessToken = Nothing
    , _pbgUploadType = Nothing
    , _pbgId = pPbgId_
    , _pbgProjectId = pPbgProjectId_
    , _pbgCallback = Nothing
    }

-- | V1 error format.
pbgXgafv :: Lens' ProjectsBuildsGet (Maybe Xgafv)
pbgXgafv = lens _pbgXgafv (\ s a -> s{_pbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbgUploadProtocol :: Lens' ProjectsBuildsGet (Maybe Text)
pbgUploadProtocol
  = lens _pbgUploadProtocol
      (\ s a -> s{_pbgUploadProtocol = a})

-- | OAuth access token.
pbgAccessToken :: Lens' ProjectsBuildsGet (Maybe Text)
pbgAccessToken
  = lens _pbgAccessToken
      (\ s a -> s{_pbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbgUploadType :: Lens' ProjectsBuildsGet (Maybe Text)
pbgUploadType
  = lens _pbgUploadType
      (\ s a -> s{_pbgUploadType = a})

-- | ID of the build.
pbgId :: Lens' ProjectsBuildsGet Text
pbgId = lens _pbgId (\ s a -> s{_pbgId = a})

-- | ID of the project.
pbgProjectId :: Lens' ProjectsBuildsGet Text
pbgProjectId
  = lens _pbgProjectId (\ s a -> s{_pbgProjectId = a})

-- | JSONP
pbgCallback :: Lens' ProjectsBuildsGet (Maybe Text)
pbgCallback
  = lens _pbgCallback (\ s a -> s{_pbgCallback = a})

instance GoogleRequest ProjectsBuildsGet where
        type Rs ProjectsBuildsGet = Build
        type Scopes ProjectsBuildsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBuildsGet'{..}
          = go _pbgProjectId _pbgId _pbgXgafv
              _pbgUploadProtocol
              _pbgAccessToken
              _pbgUploadType
              _pbgCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBuildsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsUpdate@.
module Network.Google.Resource.CloudResourceManager.Projects.Update
    (
    -- * REST Resource
      ProjectsUpdateResource

    -- * Creating a Request
    , projectsUpdate'
    , ProjectsUpdate'

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puPp
    , puAccessToken
    , puUploadType
    , puPayload
    , puBearerToken
    , puProjectId
    , puCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsUpdate@ method which the
-- 'ProjectsUpdate'' request conforms to.
type ProjectsUpdateResource =
     "v1beta1" :>
       "projects" :>
         Capture "projectId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Project :> Put '[JSON] Project

-- | Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
--
-- /See:/ 'projectsUpdate'' smart constructor.
data ProjectsUpdate' = ProjectsUpdate'
    { _puXgafv          :: !(Maybe Text)
    , _puUploadProtocol :: !(Maybe Text)
    , _puPp             :: !Bool
    , _puAccessToken    :: !(Maybe Text)
    , _puUploadType     :: !(Maybe Text)
    , _puPayload        :: !Project
    , _puBearerToken    :: !(Maybe Text)
    , _puProjectId      :: !Text
    , _puCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puPp'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puPayload'
--
-- * 'puBearerToken'
--
-- * 'puProjectId'
--
-- * 'puCallback'
projectsUpdate'
    :: Project -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> ProjectsUpdate'
projectsUpdate' pPuPayload_ pPuProjectId_ =
    ProjectsUpdate'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puPp = True
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puPayload = pPuPayload_
    , _puBearerToken = Nothing
    , _puProjectId = pPuProjectId_
    , _puCallback = Nothing
    }

-- | V1 error format.
puXgafv :: Lens' ProjectsUpdate' (Maybe Text)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' ProjectsUpdate' (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | Pretty-print response.
puPp :: Lens' ProjectsUpdate' Bool
puPp = lens _puPp (\ s a -> s{_puPp = a})

-- | OAuth access token.
puAccessToken :: Lens' ProjectsUpdate' (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' ProjectsUpdate' (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | Multipart request metadata.
puPayload :: Lens' ProjectsUpdate' Project
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | OAuth bearer token.
puBearerToken :: Lens' ProjectsUpdate' (Maybe Text)
puBearerToken
  = lens _puBearerToken
      (\ s a -> s{_puBearerToken = a})

-- | The project ID (for example, \`my-project-123\`). Required.
puProjectId :: Lens' ProjectsUpdate' Text
puProjectId
  = lens _puProjectId (\ s a -> s{_puProjectId = a})

-- | JSONP
puCallback :: Lens' ProjectsUpdate' (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest ProjectsUpdate' where
        type Rs ProjectsUpdate' = Project
        requestClient ProjectsUpdate'{..}
          = go _puProjectId _puXgafv _puUploadProtocol
              (Just _puPp)
              _puAccessToken
              _puUploadType
              _puBearerToken
              _puCallback
              (Just AltJSON)
              _puPayload
              resourceManager
          where go
                  = buildClient (Proxy :: Proxy ProjectsUpdateResource)
                      mempty

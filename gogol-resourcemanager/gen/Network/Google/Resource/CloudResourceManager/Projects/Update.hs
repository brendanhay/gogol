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
-- Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.update@.
module Network.Google.Resource.CloudResourceManager.Projects.Update
    (
    -- * REST Resource
      ProjectsUpdateResource

    -- * Creating a Request
    , projectsUpdate
    , ProjectsUpdate

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proPp
    , proAccessToken
    , proUploadType
    , proPayload
    , proBearerToken
    , proProjectId
    , proCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.update@ method which the
-- 'ProjectsUpdate' request conforms to.
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
-- /See:/ 'projectsUpdate' smart constructor.
data ProjectsUpdate = ProjectsUpdate
    { _proXgafv          :: !(Maybe Text)
    , _proUploadProtocol :: !(Maybe Text)
    , _proPp             :: !Bool
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proPayload        :: !Project
    , _proBearerToken    :: !(Maybe Text)
    , _proProjectId      :: !Text
    , _proCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proPp'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proBearerToken'
--
-- * 'proProjectId'
--
-- * 'proCallback'
projectsUpdate
    :: Project -- ^ 'proPayload'
    -> Text -- ^ 'proProjectId'
    -> ProjectsUpdate
projectsUpdate pProPayload_ pProProjectId_ =
    ProjectsUpdate
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proPp = True
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proBearerToken = Nothing
    , _proProjectId = pProProjectId_
    , _proCallback = Nothing
    }

-- | V1 error format.
proXgafv :: Lens' ProjectsUpdate (Maybe Text)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsUpdate (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | Pretty-print response.
proPp :: Lens' ProjectsUpdate Bool
proPp = lens _proPp (\ s a -> s{_proPp = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsUpdate (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsUpdate (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsUpdate Project
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | OAuth bearer token.
proBearerToken :: Lens' ProjectsUpdate (Maybe Text)
proBearerToken
  = lens _proBearerToken
      (\ s a -> s{_proBearerToken = a})

-- | The project ID (for example, \`my-project-123\`). Required.
proProjectId :: Lens' ProjectsUpdate Text
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | JSONP
proCallback :: Lens' ProjectsUpdate (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsUpdate where
        type Rs ProjectsUpdate = Project
        requestClient ProjectsUpdate{..}
          = go _proProjectId _proXgafv _proUploadProtocol
              (Just _proPp)
              _proAccessToken
              _proUploadType
              _proBearerToken
              _proCallback
              (Just AltJSON)
              _proPayload
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsUpdateResource)
                      mempty

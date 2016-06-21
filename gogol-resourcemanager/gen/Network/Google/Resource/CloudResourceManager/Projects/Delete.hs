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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks the Project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`) for deletion. This method will only affect
-- the Project if the following criteria are met: + The Project does not
-- have a billing account associated with it. + The Project has a lifecycle
-- state of ACTIVE. This method changes the Project\'s lifecycle state from
-- ACTIVE to DELETE_REQUESTED. The deletion starts at an unspecified time,
-- at which point the lifecycle state changes to DELETE_IN_PROGRESS. Until
-- the deletion completes, you can check the lifecycle state checked by
-- retrieving the Project with GetProject, and the Project remains visible
-- to ListProjects. However, you cannot update the project. After the
-- deletion completes, the Project is not retrievable by the GetProject and
-- ListProjects methods. The caller must have modify permissions for this
-- Project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.delete@.
module Network.Google.Resource.CloudResourceManager.Projects.Delete
    (
    -- * REST Resource
      ProjectsDeleteResource

    -- * Creating a Request
    , projectsDelete
    , ProjectsDelete

    -- * Request Lenses
    , pdXgafv
    , pdUploadProtocol
    , pdPp
    , pdAccessToken
    , pdUploadType
    , pdBearerToken
    , pdProjectId
    , pdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.delete@ method which the
-- 'ProjectsDelete' request conforms to.
type ProjectsDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Marks the Project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`) for deletion. This method will only affect
-- the Project if the following criteria are met: + The Project does not
-- have a billing account associated with it. + The Project has a lifecycle
-- state of ACTIVE. This method changes the Project\'s lifecycle state from
-- ACTIVE to DELETE_REQUESTED. The deletion starts at an unspecified time,
-- at which point the lifecycle state changes to DELETE_IN_PROGRESS. Until
-- the deletion completes, you can check the lifecycle state checked by
-- retrieving the Project with GetProject, and the Project remains visible
-- to ListProjects. However, you cannot update the project. After the
-- deletion completes, the Project is not retrievable by the GetProject and
-- ListProjects methods. The caller must have modify permissions for this
-- Project.
--
-- /See:/ 'projectsDelete' smart constructor.
data ProjectsDelete = ProjectsDelete'
    { _pdXgafv          :: !(Maybe Text)
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdPp             :: !Bool
    , _pdAccessToken    :: !(Maybe Text)
    , _pdUploadType     :: !(Maybe Text)
    , _pdBearerToken    :: !(Maybe Text)
    , _pdProjectId      :: !Text
    , _pdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdUploadProtocol'
--
-- * 'pdPp'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdBearerToken'
--
-- * 'pdProjectId'
--
-- * 'pdCallback'
projectsDelete
    :: Text -- ^ 'pdProjectId'
    -> ProjectsDelete
projectsDelete pPdProjectId_ =
    ProjectsDelete'
    { _pdXgafv = Nothing
    , _pdUploadProtocol = Nothing
    , _pdPp = True
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdBearerToken = Nothing
    , _pdProjectId = pPdProjectId_
    , _pdCallback = Nothing
    }

-- | V1 error format.
pdXgafv :: Lens' ProjectsDelete (Maybe Text)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' ProjectsDelete (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | Pretty-print response.
pdPp :: Lens' ProjectsDelete Bool
pdPp = lens _pdPp (\ s a -> s{_pdPp = a})

-- | OAuth access token.
pdAccessToken :: Lens' ProjectsDelete (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' ProjectsDelete (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

-- | OAuth bearer token.
pdBearerToken :: Lens' ProjectsDelete (Maybe Text)
pdBearerToken
  = lens _pdBearerToken
      (\ s a -> s{_pdBearerToken = a})

-- | The Project ID (for example, \`foo-bar-123\`). Required.
pdProjectId :: Lens' ProjectsDelete Text
pdProjectId
  = lens _pdProjectId (\ s a -> s{_pdProjectId = a})

-- | JSONP
pdCallback :: Lens' ProjectsDelete (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

instance GoogleRequest ProjectsDelete where
        type Rs ProjectsDelete = Empty
        type Scopes ProjectsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDelete'{..}
          = go _pdProjectId _pdXgafv _pdUploadProtocol
              (Just _pdPp)
              _pdAccessToken
              _pdUploadType
              _pdBearerToken
              _pdCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsDeleteResource)
                      mempty

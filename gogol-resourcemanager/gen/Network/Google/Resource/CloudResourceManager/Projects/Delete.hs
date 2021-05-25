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
-- Marks the project identified by the specified \`name\` (for example,
-- \`projects\/415104041262\`) for deletion. This method will only affect
-- the project if it has a lifecycle state of ACTIVE. This method changes
-- the Project\'s lifecycle state from ACTIVE to DELETE_REQUESTED. The
-- deletion starts at an unspecified time, at which point the Project is no
-- longer accessible. Until the deletion completes, you can check the
-- lifecycle state checked by retrieving the project with GetProject, and
-- the project remains visible to ListProjects. However, you cannot update
-- the project. After the deletion completes, the project is not
-- retrievable by the GetProject, ListProjects, and SearchProjects methods.
-- This method behaves idempotently, such that deleting a
-- \`DELETE_REQUESTED\` project will not cause an error, but also won\'t do
-- anything. The caller must have \`resourcemanager.projects.delete\`
-- permissions for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.delete@.
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
    , pdAccessToken
    , pdUploadType
    , pdName
    , pdCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.delete@ method which the
-- 'ProjectsDelete' request conforms to.
type ProjectsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Marks the project identified by the specified \`name\` (for example,
-- \`projects\/415104041262\`) for deletion. This method will only affect
-- the project if it has a lifecycle state of ACTIVE. This method changes
-- the Project\'s lifecycle state from ACTIVE to DELETE_REQUESTED. The
-- deletion starts at an unspecified time, at which point the Project is no
-- longer accessible. Until the deletion completes, you can check the
-- lifecycle state checked by retrieving the project with GetProject, and
-- the project remains visible to ListProjects. However, you cannot update
-- the project. After the deletion completes, the project is not
-- retrievable by the GetProject, ListProjects, and SearchProjects methods.
-- This method behaves idempotently, such that deleting a
-- \`DELETE_REQUESTED\` project will not cause an error, but also won\'t do
-- anything. The caller must have \`resourcemanager.projects.delete\`
-- permissions for this project.
--
-- /See:/ 'projectsDelete' smart constructor.
data ProjectsDelete =
  ProjectsDelete'
    { _pdXgafv :: !(Maybe Xgafv)
    , _pdUploadProtocol :: !(Maybe Text)
    , _pdAccessToken :: !(Maybe Text)
    , _pdUploadType :: !(Maybe Text)
    , _pdName :: !Text
    , _pdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdXgafv'
--
-- * 'pdUploadProtocol'
--
-- * 'pdAccessToken'
--
-- * 'pdUploadType'
--
-- * 'pdName'
--
-- * 'pdCallback'
projectsDelete
    :: Text -- ^ 'pdName'
    -> ProjectsDelete
projectsDelete pPdName_ =
  ProjectsDelete'
    { _pdXgafv = Nothing
    , _pdUploadProtocol = Nothing
    , _pdAccessToken = Nothing
    , _pdUploadType = Nothing
    , _pdName = pPdName_
    , _pdCallback = Nothing
    }


-- | V1 error format.
pdXgafv :: Lens' ProjectsDelete (Maybe Xgafv)
pdXgafv = lens _pdXgafv (\ s a -> s{_pdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdUploadProtocol :: Lens' ProjectsDelete (Maybe Text)
pdUploadProtocol
  = lens _pdUploadProtocol
      (\ s a -> s{_pdUploadProtocol = a})

-- | OAuth access token.
pdAccessToken :: Lens' ProjectsDelete (Maybe Text)
pdAccessToken
  = lens _pdAccessToken
      (\ s a -> s{_pdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdUploadType :: Lens' ProjectsDelete (Maybe Text)
pdUploadType
  = lens _pdUploadType (\ s a -> s{_pdUploadType = a})

-- | Required. The name of the Project (for example,
-- \`projects\/415104041262\`).
pdName :: Lens' ProjectsDelete Text
pdName = lens _pdName (\ s a -> s{_pdName = a})

-- | JSONP
pdCallback :: Lens' ProjectsDelete (Maybe Text)
pdCallback
  = lens _pdCallback (\ s a -> s{_pdCallback = a})

instance GoogleRequest ProjectsDelete where
        type Rs ProjectsDelete = Operation
        type Scopes ProjectsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDelete'{..}
          = go _pdName _pdXgafv _pdUploadProtocol
              _pdAccessToken
              _pdUploadType
              _pdCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsDeleteResource)
                      mempty

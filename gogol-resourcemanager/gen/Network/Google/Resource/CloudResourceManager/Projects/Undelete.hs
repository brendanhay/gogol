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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsUndelete@.
module Network.Google.Resource.CloudResourceManager.Projects.Undelete
    (
    -- * REST Resource
      ProjectsUndeleteResource

    -- * Creating a Request
    , projectsUndelete'
    , ProjectsUndelete'

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proPp
    , proAccessToken
    , proUploadType
    , proBearerToken
    , proProjectId
    , proCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsUndelete@ method which the
-- 'ProjectsUndelete'' request conforms to.
type ProjectsUndeleteResource =
     "v1beta1" :>
       "projects" :>
         CaptureMode "projectId" "undelete" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
--
-- /See:/ 'projectsUndelete'' smart constructor.
data ProjectsUndelete' = ProjectsUndelete'
    { _proXgafv          :: !(Maybe Text)
    , _proUploadProtocol :: !(Maybe Text)
    , _proPp             :: !Bool
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proBearerToken    :: !(Maybe Text)
    , _proProjectId      :: !Text
    , _proCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUndelete'' with the minimum fields required to make a request.
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
-- * 'proBearerToken'
--
-- * 'proProjectId'
--
-- * 'proCallback'
projectsUndelete'
    :: Text -- ^ 'projectId'
    -> ProjectsUndelete'
projectsUndelete' pProProjectId_ =
    ProjectsUndelete'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proPp = True
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proBearerToken = Nothing
    , _proProjectId = pProProjectId_
    , _proCallback = Nothing
    }

-- | V1 error format.
proXgafv :: Lens' ProjectsUndelete' (Maybe Text)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsUndelete' (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | Pretty-print response.
proPp :: Lens' ProjectsUndelete' Bool
proPp = lens _proPp (\ s a -> s{_proPp = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsUndelete' (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsUndelete' (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | OAuth bearer token.
proBearerToken :: Lens' ProjectsUndelete' (Maybe Text)
proBearerToken
  = lens _proBearerToken
      (\ s a -> s{_proBearerToken = a})

-- | The project ID (for example, \`foo-bar-123\`). Required.
proProjectId :: Lens' ProjectsUndelete' Text
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | JSONP
proCallback :: Lens' ProjectsUndelete' (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsUndelete' where
        type Rs ProjectsUndelete' = Empty
        requestClient ProjectsUndelete'{..}
          = go _proProjectId _proXgafv _proUploadProtocol
              (Just _proPp)
              _proAccessToken
              _proUploadType
              _proBearerToken
              _proCallback
              (Just AltJSON)
              resourceManager
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUndeleteResource)
                      mempty

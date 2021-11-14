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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores the project identified by the specified \`name\` (for example,
-- \`projects\/415104041262\`). You can only use this method for a project
-- that has a lifecycle state of DELETE_REQUESTED. After deletion starts,
-- the project cannot be restored. The caller must have
-- \`resourcemanager.projects.undelete\` permission for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.undelete@.
module Network.Google.Resource.CloudResourceManager.Projects.Undelete
    (
    -- * REST Resource
      ProjectsUndeleteResource

    -- * Creating a Request
    , projectsUndelete
    , ProjectsUndelete

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puAccessToken
    , puUploadType
    , puPayload
    , puName
    , puCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.undelete@ method which the
-- 'ProjectsUndelete' request conforms to.
type ProjectsUndeleteResource =
     "v3" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteProjectRequest :>
                       Post '[JSON] Operation

-- | Restores the project identified by the specified \`name\` (for example,
-- \`projects\/415104041262\`). You can only use this method for a project
-- that has a lifecycle state of DELETE_REQUESTED. After deletion starts,
-- the project cannot be restored. The caller must have
-- \`resourcemanager.projects.undelete\` permission for this project.
--
-- /See:/ 'projectsUndelete' smart constructor.
data ProjectsUndelete =
  ProjectsUndelete'
    { _puXgafv :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puAccessToken :: !(Maybe Text)
    , _puUploadType :: !(Maybe Text)
    , _puPayload :: !UndeleteProjectRequest
    , _puName :: !Text
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puPayload'
--
-- * 'puName'
--
-- * 'puCallback'
projectsUndelete
    :: UndeleteProjectRequest -- ^ 'puPayload'
    -> Text -- ^ 'puName'
    -> ProjectsUndelete
projectsUndelete pPuPayload_ pPuName_ =
  ProjectsUndelete'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puPayload = pPuPayload_
    , _puName = pPuName_
    , _puCallback = Nothing
    }


-- | V1 error format.
puXgafv :: Lens' ProjectsUndelete (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' ProjectsUndelete (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | OAuth access token.
puAccessToken :: Lens' ProjectsUndelete (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' ProjectsUndelete (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | Multipart request metadata.
puPayload :: Lens' ProjectsUndelete UndeleteProjectRequest
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | Required. The name of the project (for example,
-- \`projects\/415104041262\`). Required.
puName :: Lens' ProjectsUndelete Text
puName = lens _puName (\ s a -> s{_puName = a})

-- | JSONP
puCallback :: Lens' ProjectsUndelete (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest ProjectsUndelete where
        type Rs ProjectsUndelete = Operation
        type Scopes ProjectsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsUndelete'{..}
          = go _puName _puXgafv _puUploadProtocol
              _puAccessToken
              _puUploadType
              _puCallback
              (Just AltJSON)
              _puPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUndeleteResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified Project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.testIamPermissions@.
module Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsTestIAMPermissions
    , ProjectsTestIAMPermissions

    -- * Request Lenses
    , ptipXgafv
    , ptipUploadProtocol
    , ptipPp
    , ptipAccessToken
    , ptipUploadType
    , ptipPayload
    , ptipBearerToken
    , ptipResource
    , ptipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.testIamPermissions@ method which the
-- 'ProjectsTestIAMPermissions' request conforms to.
type ProjectsTestIAMPermissionsResource =
     "v1" :>
       "projects" :>
         CaptureMode "resource" "testIamPermissions" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TestIAMPermissionsRequest :>
                             Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified Project.
--
-- /See:/ 'projectsTestIAMPermissions' smart constructor.
data ProjectsTestIAMPermissions = ProjectsTestIAMPermissions'
    { _ptipXgafv          :: !(Maybe Text)
    , _ptipUploadProtocol :: !(Maybe Text)
    , _ptipPp             :: !Bool
    , _ptipAccessToken    :: !(Maybe Text)
    , _ptipUploadType     :: !(Maybe Text)
    , _ptipPayload        :: !TestIAMPermissionsRequest
    , _ptipBearerToken    :: !(Maybe Text)
    , _ptipResource       :: !Text
    , _ptipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptipXgafv'
--
-- * 'ptipUploadProtocol'
--
-- * 'ptipPp'
--
-- * 'ptipAccessToken'
--
-- * 'ptipUploadType'
--
-- * 'ptipPayload'
--
-- * 'ptipBearerToken'
--
-- * 'ptipResource'
--
-- * 'ptipCallback'
projectsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'ptipPayload'
    -> Text -- ^ 'ptipResource'
    -> ProjectsTestIAMPermissions
projectsTestIAMPermissions pPtipPayload_ pPtipResource_ =
    ProjectsTestIAMPermissions'
    { _ptipXgafv = Nothing
    , _ptipUploadProtocol = Nothing
    , _ptipPp = True
    , _ptipAccessToken = Nothing
    , _ptipUploadType = Nothing
    , _ptipPayload = pPtipPayload_
    , _ptipBearerToken = Nothing
    , _ptipResource = pPtipResource_
    , _ptipCallback = Nothing
    }

-- | V1 error format.
ptipXgafv :: Lens' ProjectsTestIAMPermissions (Maybe Text)
ptipXgafv
  = lens _ptipXgafv (\ s a -> s{_ptipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptipUploadProtocol :: Lens' ProjectsTestIAMPermissions (Maybe Text)
ptipUploadProtocol
  = lens _ptipUploadProtocol
      (\ s a -> s{_ptipUploadProtocol = a})

-- | Pretty-print response.
ptipPp :: Lens' ProjectsTestIAMPermissions Bool
ptipPp = lens _ptipPp (\ s a -> s{_ptipPp = a})

-- | OAuth access token.
ptipAccessToken :: Lens' ProjectsTestIAMPermissions (Maybe Text)
ptipAccessToken
  = lens _ptipAccessToken
      (\ s a -> s{_ptipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptipUploadType :: Lens' ProjectsTestIAMPermissions (Maybe Text)
ptipUploadType
  = lens _ptipUploadType
      (\ s a -> s{_ptipUploadType = a})

-- | Multipart request metadata.
ptipPayload :: Lens' ProjectsTestIAMPermissions TestIAMPermissionsRequest
ptipPayload
  = lens _ptipPayload (\ s a -> s{_ptipPayload = a})

-- | OAuth bearer token.
ptipBearerToken :: Lens' ProjectsTestIAMPermissions (Maybe Text)
ptipBearerToken
  = lens _ptipBearerToken
      (\ s a -> s{_ptipBearerToken = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- \`resource\` is usually specified as a path, such as
-- \`projects\/*project*\/zones\/*zone*\/disks\/*disk*\`. The format for
-- the path specified in this value is resource specific and is specified
-- in the \`testIamPermissions\` documentation.
ptipResource :: Lens' ProjectsTestIAMPermissions Text
ptipResource
  = lens _ptipResource (\ s a -> s{_ptipResource = a})

-- | JSONP
ptipCallback :: Lens' ProjectsTestIAMPermissions (Maybe Text)
ptipCallback
  = lens _ptipCallback (\ s a -> s{_ptipCallback = a})

instance GoogleRequest ProjectsTestIAMPermissions
         where
        type Rs ProjectsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsTestIAMPermissions'{..}
          = go _ptipResource _ptipXgafv _ptipUploadProtocol
              (Just _ptipPp)
              _ptipAccessToken
              _ptipUploadType
              _ptipBearerToken
              _ptipCallback
              (Just AltJSON)
              _ptipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTestIAMPermissionsResource)
                      mempty

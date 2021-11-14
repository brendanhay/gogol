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
-- Module      : Network.Google.Resource.SourceRepo.Projects.Repos.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.testIamPermissions@.
module Network.Google.Resource.SourceRepo.Projects.Repos.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsReposTestIAMPermissionsResource

    -- * Creating a Request
    , projectsReposTestIAMPermissions
    , ProjectsReposTestIAMPermissions

    -- * Request Lenses
    , prtipXgafv
    , prtipUploadProtocol
    , prtipAccessToken
    , prtipUploadType
    , prtipPayload
    , prtipResource
    , prtipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.testIamPermissions@ method which the
-- 'ProjectsReposTestIAMPermissions' request conforms to.
type ProjectsReposTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.
--
-- /See:/ 'projectsReposTestIAMPermissions' smart constructor.
data ProjectsReposTestIAMPermissions =
  ProjectsReposTestIAMPermissions'
    { _prtipXgafv :: !(Maybe Xgafv)
    , _prtipUploadProtocol :: !(Maybe Text)
    , _prtipAccessToken :: !(Maybe Text)
    , _prtipUploadType :: !(Maybe Text)
    , _prtipPayload :: !TestIAMPermissionsRequest
    , _prtipResource :: !Text
    , _prtipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReposTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prtipXgafv'
--
-- * 'prtipUploadProtocol'
--
-- * 'prtipAccessToken'
--
-- * 'prtipUploadType'
--
-- * 'prtipPayload'
--
-- * 'prtipResource'
--
-- * 'prtipCallback'
projectsReposTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'prtipPayload'
    -> Text -- ^ 'prtipResource'
    -> ProjectsReposTestIAMPermissions
projectsReposTestIAMPermissions pPrtipPayload_ pPrtipResource_ =
  ProjectsReposTestIAMPermissions'
    { _prtipXgafv = Nothing
    , _prtipUploadProtocol = Nothing
    , _prtipAccessToken = Nothing
    , _prtipUploadType = Nothing
    , _prtipPayload = pPrtipPayload_
    , _prtipResource = pPrtipResource_
    , _prtipCallback = Nothing
    }


-- | V1 error format.
prtipXgafv :: Lens' ProjectsReposTestIAMPermissions (Maybe Xgafv)
prtipXgafv
  = lens _prtipXgafv (\ s a -> s{_prtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prtipUploadProtocol :: Lens' ProjectsReposTestIAMPermissions (Maybe Text)
prtipUploadProtocol
  = lens _prtipUploadProtocol
      (\ s a -> s{_prtipUploadProtocol = a})

-- | OAuth access token.
prtipAccessToken :: Lens' ProjectsReposTestIAMPermissions (Maybe Text)
prtipAccessToken
  = lens _prtipAccessToken
      (\ s a -> s{_prtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prtipUploadType :: Lens' ProjectsReposTestIAMPermissions (Maybe Text)
prtipUploadType
  = lens _prtipUploadType
      (\ s a -> s{_prtipUploadType = a})

-- | Multipart request metadata.
prtipPayload :: Lens' ProjectsReposTestIAMPermissions TestIAMPermissionsRequest
prtipPayload
  = lens _prtipPayload (\ s a -> s{_prtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
prtipResource :: Lens' ProjectsReposTestIAMPermissions Text
prtipResource
  = lens _prtipResource
      (\ s a -> s{_prtipResource = a})

-- | JSONP
prtipCallback :: Lens' ProjectsReposTestIAMPermissions (Maybe Text)
prtipCallback
  = lens _prtipCallback
      (\ s a -> s{_prtipCallback = a})

instance GoogleRequest
           ProjectsReposTestIAMPermissions
         where
        type Rs ProjectsReposTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes ProjectsReposTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/source.full_control",
               "https://www.googleapis.com/auth/source.read_only",
               "https://www.googleapis.com/auth/source.read_write"]
        requestClient ProjectsReposTestIAMPermissions'{..}
          = go _prtipResource _prtipXgafv _prtipUploadProtocol
              _prtipAccessToken
              _prtipUploadType
              _prtipCallback
              (Just AltJSON)
              _prtipPayload
              sourceRepoService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsReposTestIAMPermissionsResource)
                      mempty

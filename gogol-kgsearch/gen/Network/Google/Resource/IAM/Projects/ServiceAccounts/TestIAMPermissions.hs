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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the specified permissions against the IAM access control policy
-- for the specified IAM resource.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference> for @iam.projects.serviceAccounts.testIamPermissions@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsServiceAccountsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsServiceAccountsTestIAMPermissions
    , ProjectsServiceAccountsTestIAMPermissions

    -- * Request Lenses
    , psatipXgafv
    , psatipUploadProtocol
    , psatipPp
    , psatipAccessToken
    , psatipUploadType
    , psatipPayload
    , psatipBearerToken
    , psatipResource
    , psatipCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.testIamPermissions@ method which the
-- 'ProjectsServiceAccountsTestIAMPermissions' request conforms to.
type ProjectsServiceAccountsTestIAMPermissionsResource
     =
     "v1" :>
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

-- | Tests the specified permissions against the IAM access control policy
-- for the specified IAM resource.
--
-- /See:/ 'projectsServiceAccountsTestIAMPermissions' smart constructor.
data ProjectsServiceAccountsTestIAMPermissions = ProjectsServiceAccountsTestIAMPermissions
    { _psatipXgafv          :: !(Maybe Text)
    , _psatipUploadProtocol :: !(Maybe Text)
    , _psatipPp             :: !Bool
    , _psatipAccessToken    :: !(Maybe Text)
    , _psatipUploadType     :: !(Maybe Text)
    , _psatipPayload        :: !TestIAMPermissionsRequest
    , _psatipBearerToken    :: !(Maybe Text)
    , _psatipResource       :: !Text
    , _psatipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psatipXgafv'
--
-- * 'psatipUploadProtocol'
--
-- * 'psatipPp'
--
-- * 'psatipAccessToken'
--
-- * 'psatipUploadType'
--
-- * 'psatipPayload'
--
-- * 'psatipBearerToken'
--
-- * 'psatipResource'
--
-- * 'psatipCallback'
projectsServiceAccountsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'psatipPayload'
    -> Text -- ^ 'psatipResource'
    -> ProjectsServiceAccountsTestIAMPermissions
projectsServiceAccountsTestIAMPermissions pPsatipPayload_ pPsatipResource_ =
    ProjectsServiceAccountsTestIAMPermissions
    { _psatipXgafv = Nothing
    , _psatipUploadProtocol = Nothing
    , _psatipPp = True
    , _psatipAccessToken = Nothing
    , _psatipUploadType = Nothing
    , _psatipPayload = pPsatipPayload_
    , _psatipBearerToken = Nothing
    , _psatipResource = pPsatipResource_
    , _psatipCallback = Nothing
    }

-- | V1 error format.
psatipXgafv :: Lens' ProjectsServiceAccountsTestIAMPermissions (Maybe Text)
psatipXgafv
  = lens _psatipXgafv (\ s a -> s{_psatipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psatipUploadProtocol :: Lens' ProjectsServiceAccountsTestIAMPermissions (Maybe Text)
psatipUploadProtocol
  = lens _psatipUploadProtocol
      (\ s a -> s{_psatipUploadProtocol = a})

-- | Pretty-print response.
psatipPp :: Lens' ProjectsServiceAccountsTestIAMPermissions Bool
psatipPp = lens _psatipPp (\ s a -> s{_psatipPp = a})

-- | OAuth access token.
psatipAccessToken :: Lens' ProjectsServiceAccountsTestIAMPermissions (Maybe Text)
psatipAccessToken
  = lens _psatipAccessToken
      (\ s a -> s{_psatipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psatipUploadType :: Lens' ProjectsServiceAccountsTestIAMPermissions (Maybe Text)
psatipUploadType
  = lens _psatipUploadType
      (\ s a -> s{_psatipUploadType = a})

-- | Multipart request metadata.
psatipPayload :: Lens' ProjectsServiceAccountsTestIAMPermissions TestIAMPermissionsRequest
psatipPayload
  = lens _psatipPayload
      (\ s a -> s{_psatipPayload = a})

-- | OAuth bearer token.
psatipBearerToken :: Lens' ProjectsServiceAccountsTestIAMPermissions (Maybe Text)
psatipBearerToken
  = lens _psatipBearerToken
      (\ s a -> s{_psatipBearerToken = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- \`resource\` is usually specified as a path, such as
-- \`projects\/*project*\/zones\/*zone*\/disks\/*disk*\`. The format for
-- the path specified in this value is resource specific and is specified
-- in the \`testIamPermissions\` documentation.
psatipResource :: Lens' ProjectsServiceAccountsTestIAMPermissions Text
psatipResource
  = lens _psatipResource
      (\ s a -> s{_psatipResource = a})

-- | JSONP
psatipCallback :: Lens' ProjectsServiceAccountsTestIAMPermissions (Maybe Text)
psatipCallback
  = lens _psatipCallback
      (\ s a -> s{_psatipCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsTestIAMPermissions where
        type Rs ProjectsServiceAccountsTestIAMPermissions =
             TestIAMPermissionsResponse
        requestClient
          ProjectsServiceAccountsTestIAMPermissions{..}
          = go _psatipResource _psatipXgafv
              _psatipUploadProtocol
              (Just _psatipPp)
              _psatipAccessToken
              _psatipUploadType
              _psatipBearerToken
              _psatipCallback
              (Just AltJSON)
              _psatipPayload
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsServiceAccountsTestIAMPermissionsResource)
                      mempty

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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the IAM access control policy for a ServiceAccount.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.getIamPolicy@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsServiceAccountsGetIAMPolicyResource

    -- * Creating a Request
    , projectsServiceAccountsGetIAMPolicy
    , ProjectsServiceAccountsGetIAMPolicy

    -- * Request Lenses
    , psagipXgafv
    , psagipUploadProtocol
    , psagipPp
    , psagipAccessToken
    , psagipUploadType
    , psagipBearerToken
    , psagipResource
    , psagipCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.getIamPolicy@ method which the
-- 'ProjectsServiceAccountsGetIAMPolicy' request conforms to.
type ProjectsServiceAccountsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Policy

-- | Returns the IAM access control policy for a ServiceAccount.
--
-- /See:/ 'projectsServiceAccountsGetIAMPolicy' smart constructor.
data ProjectsServiceAccountsGetIAMPolicy = ProjectsServiceAccountsGetIAMPolicy'
    { _psagipXgafv          :: !(Maybe Text)
    , _psagipUploadProtocol :: !(Maybe Text)
    , _psagipPp             :: !Bool
    , _psagipAccessToken    :: !(Maybe Text)
    , _psagipUploadType     :: !(Maybe Text)
    , _psagipBearerToken    :: !(Maybe Text)
    , _psagipResource       :: !Text
    , _psagipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagipXgafv'
--
-- * 'psagipUploadProtocol'
--
-- * 'psagipPp'
--
-- * 'psagipAccessToken'
--
-- * 'psagipUploadType'
--
-- * 'psagipBearerToken'
--
-- * 'psagipResource'
--
-- * 'psagipCallback'
projectsServiceAccountsGetIAMPolicy
    :: Text -- ^ 'psagipResource'
    -> ProjectsServiceAccountsGetIAMPolicy
projectsServiceAccountsGetIAMPolicy pPsagipResource_ =
    ProjectsServiceAccountsGetIAMPolicy'
    { _psagipXgafv = Nothing
    , _psagipUploadProtocol = Nothing
    , _psagipPp = True
    , _psagipAccessToken = Nothing
    , _psagipUploadType = Nothing
    , _psagipBearerToken = Nothing
    , _psagipResource = pPsagipResource_
    , _psagipCallback = Nothing
    }

-- | V1 error format.
psagipXgafv :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipXgafv
  = lens _psagipXgafv (\ s a -> s{_psagipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psagipUploadProtocol :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipUploadProtocol
  = lens _psagipUploadProtocol
      (\ s a -> s{_psagipUploadProtocol = a})

-- | Pretty-print response.
psagipPp :: Lens' ProjectsServiceAccountsGetIAMPolicy Bool
psagipPp = lens _psagipPp (\ s a -> s{_psagipPp = a})

-- | OAuth access token.
psagipAccessToken :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipAccessToken
  = lens _psagipAccessToken
      (\ s a -> s{_psagipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psagipUploadType :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipUploadType
  = lens _psagipUploadType
      (\ s a -> s{_psagipUploadType = a})

-- | OAuth bearer token.
psagipBearerToken :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipBearerToken
  = lens _psagipBearerToken
      (\ s a -> s{_psagipBearerToken = a})

-- | REQUIRED: The resource for which the policy is being requested.
-- \`resource\` is usually specified as a path. For example, a Project
-- resource is specified as \`projects\/{project}\`.
psagipResource :: Lens' ProjectsServiceAccountsGetIAMPolicy Text
psagipResource
  = lens _psagipResource
      (\ s a -> s{_psagipResource = a})

-- | JSONP
psagipCallback :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipCallback
  = lens _psagipCallback
      (\ s a -> s{_psagipCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsGetIAMPolicy where
        type Rs ProjectsServiceAccountsGetIAMPolicy = Policy
        type Scopes ProjectsServiceAccountsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsServiceAccountsGetIAMPolicy'{..}
          = go _psagipResource _psagipXgafv
              _psagipUploadProtocol
              (Just _psagipPp)
              _psagipAccessToken
              _psagipUploadType
              _psagipBearerToken
              _psagipCallback
              (Just AltJSON)
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsGetIAMPolicyResource)
                      mempty

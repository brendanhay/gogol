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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM access control policy for the specified IAM resource.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference> for @iam.projects.serviceAccounts.setIamPolicy@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsServiceAccountsSetIAMPolicyResource

    -- * Creating a Request
    , projectsServiceAccountsSetIAMPolicy
    , ProjectsServiceAccountsSetIAMPolicy

    -- * Request Lenses
    , psasipXgafv
    , psasipUploadProtocol
    , psasipPp
    , psasipAccessToken
    , psasipUploadType
    , psasipPayload
    , psasipBearerToken
    , psasipResource
    , psasipCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.setIamPolicy@ method which the
-- 'ProjectsServiceAccountsSetIAMPolicy' request conforms to.
type ProjectsServiceAccountsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the IAM access control policy for the specified IAM resource.
--
-- /See:/ 'projectsServiceAccountsSetIAMPolicy' smart constructor.
data ProjectsServiceAccountsSetIAMPolicy = ProjectsServiceAccountsSetIAMPolicy
    { _psasipXgafv          :: !(Maybe Text)
    , _psasipUploadProtocol :: !(Maybe Text)
    , _psasipPp             :: !Bool
    , _psasipAccessToken    :: !(Maybe Text)
    , _psasipUploadType     :: !(Maybe Text)
    , _psasipPayload        :: !SetIAMPolicyRequest
    , _psasipBearerToken    :: !(Maybe Text)
    , _psasipResource       :: !Text
    , _psasipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psasipXgafv'
--
-- * 'psasipUploadProtocol'
--
-- * 'psasipPp'
--
-- * 'psasipAccessToken'
--
-- * 'psasipUploadType'
--
-- * 'psasipPayload'
--
-- * 'psasipBearerToken'
--
-- * 'psasipResource'
--
-- * 'psasipCallback'
projectsServiceAccountsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'psasipPayload'
    -> Text -- ^ 'psasipResource'
    -> ProjectsServiceAccountsSetIAMPolicy
projectsServiceAccountsSetIAMPolicy pPsasipPayload_ pPsasipResource_ =
    ProjectsServiceAccountsSetIAMPolicy
    { _psasipXgafv = Nothing
    , _psasipUploadProtocol = Nothing
    , _psasipPp = True
    , _psasipAccessToken = Nothing
    , _psasipUploadType = Nothing
    , _psasipPayload = pPsasipPayload_
    , _psasipBearerToken = Nothing
    , _psasipResource = pPsasipResource_
    , _psasipCallback = Nothing
    }

-- | V1 error format.
psasipXgafv :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipXgafv
  = lens _psasipXgafv (\ s a -> s{_psasipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psasipUploadProtocol :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipUploadProtocol
  = lens _psasipUploadProtocol
      (\ s a -> s{_psasipUploadProtocol = a})

-- | Pretty-print response.
psasipPp :: Lens' ProjectsServiceAccountsSetIAMPolicy Bool
psasipPp = lens _psasipPp (\ s a -> s{_psasipPp = a})

-- | OAuth access token.
psasipAccessToken :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipAccessToken
  = lens _psasipAccessToken
      (\ s a -> s{_psasipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psasipUploadType :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipUploadType
  = lens _psasipUploadType
      (\ s a -> s{_psasipUploadType = a})

-- | Multipart request metadata.
psasipPayload :: Lens' ProjectsServiceAccountsSetIAMPolicy SetIAMPolicyRequest
psasipPayload
  = lens _psasipPayload
      (\ s a -> s{_psasipPayload = a})

-- | OAuth bearer token.
psasipBearerToken :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipBearerToken
  = lens _psasipBearerToken
      (\ s a -> s{_psasipBearerToken = a})

-- | REQUIRED: The resource for which the policy is being specified.
-- \`resource\` is usually specified as a path, such as
-- \`projects\/*project*\/zones\/*zone*\/disks\/*disk*\`. The format for
-- the path specified in this value is resource specific and is specified
-- in the \`setIamPolicy\` documentation.
psasipResource :: Lens' ProjectsServiceAccountsSetIAMPolicy Text
psasipResource
  = lens _psasipResource
      (\ s a -> s{_psasipResource = a})

-- | JSONP
psasipCallback :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipCallback
  = lens _psasipCallback
      (\ s a -> s{_psasipCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsSetIAMPolicy where
        type Rs ProjectsServiceAccountsSetIAMPolicy = Policy
        requestClient ProjectsServiceAccountsSetIAMPolicy{..}
          = go _psasipResource _psasipXgafv
              _psasipUploadProtocol
              (Just _psasipPp)
              _psasipAccessToken
              _psasipUploadType
              _psasipBearerToken
              _psasipCallback
              (Just AltJSON)
              _psasipPayload
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsSetIAMPolicyResource)
                      mempty

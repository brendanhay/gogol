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
-- Sets the IAM policy that is attached to a ServiceAccount. Use this
-- method to grant or revoke access to the service account. For example,
-- you could grant a member the ability to impersonate the service account.
-- This method does not enable the service account to access other
-- resources. To grant roles to a service account on a resource, follow
-- these steps: 1. Call the resource\'s \`getIamPolicy\` method to get its
-- current IAM policy. 2. Edit the policy so that it binds the service
-- account to an IAM role for the resource. 3. Call the resource\'s
-- \`setIamPolicy\` method to update its IAM policy. For detailed
-- instructions, see [Granting roles to a service account for specific
-- resources](https:\/\/cloud.google.com\/iam\/help\/service-accounts\/granting-access-to-service-accounts).
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.setIamPolicy@.
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
    , psasipAccessToken
    , psasipUploadType
    , psasipPayload
    , psasipResource
    , psasipCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.setIamPolicy@ method which the
-- 'ProjectsServiceAccountsSetIAMPolicy' request conforms to.
type ProjectsServiceAccountsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the IAM policy that is attached to a ServiceAccount. Use this
-- method to grant or revoke access to the service account. For example,
-- you could grant a member the ability to impersonate the service account.
-- This method does not enable the service account to access other
-- resources. To grant roles to a service account on a resource, follow
-- these steps: 1. Call the resource\'s \`getIamPolicy\` method to get its
-- current IAM policy. 2. Edit the policy so that it binds the service
-- account to an IAM role for the resource. 3. Call the resource\'s
-- \`setIamPolicy\` method to update its IAM policy. For detailed
-- instructions, see [Granting roles to a service account for specific
-- resources](https:\/\/cloud.google.com\/iam\/help\/service-accounts\/granting-access-to-service-accounts).
--
-- /See:/ 'projectsServiceAccountsSetIAMPolicy' smart constructor.
data ProjectsServiceAccountsSetIAMPolicy =
  ProjectsServiceAccountsSetIAMPolicy'
    { _psasipXgafv :: !(Maybe Xgafv)
    , _psasipUploadProtocol :: !(Maybe Text)
    , _psasipAccessToken :: !(Maybe Text)
    , _psasipUploadType :: !(Maybe Text)
    , _psasipPayload :: !SetIAMPolicyRequest
    , _psasipResource :: !Text
    , _psasipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psasipXgafv'
--
-- * 'psasipUploadProtocol'
--
-- * 'psasipAccessToken'
--
-- * 'psasipUploadType'
--
-- * 'psasipPayload'
--
-- * 'psasipResource'
--
-- * 'psasipCallback'
projectsServiceAccountsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'psasipPayload'
    -> Text -- ^ 'psasipResource'
    -> ProjectsServiceAccountsSetIAMPolicy
projectsServiceAccountsSetIAMPolicy pPsasipPayload_ pPsasipResource_ =
  ProjectsServiceAccountsSetIAMPolicy'
    { _psasipXgafv = Nothing
    , _psasipUploadProtocol = Nothing
    , _psasipAccessToken = Nothing
    , _psasipUploadType = Nothing
    , _psasipPayload = pPsasipPayload_
    , _psasipResource = pPsasipResource_
    , _psasipCallback = Nothing
    }


-- | V1 error format.
psasipXgafv :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Xgafv)
psasipXgafv
  = lens _psasipXgafv (\ s a -> s{_psasipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psasipUploadProtocol :: Lens' ProjectsServiceAccountsSetIAMPolicy (Maybe Text)
psasipUploadProtocol
  = lens _psasipUploadProtocol
      (\ s a -> s{_psasipUploadProtocol = a})

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

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
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
           ProjectsServiceAccountsSetIAMPolicy
         where
        type Rs ProjectsServiceAccountsSetIAMPolicy = Policy
        type Scopes ProjectsServiceAccountsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsServiceAccountsSetIAMPolicy'{..}
          = go _psasipResource _psasipXgafv
              _psasipUploadProtocol
              _psasipAccessToken
              _psasipUploadType
              _psasipCallback
              (Just AltJSON)
              _psasipPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsSetIAMPolicyResource)
                      mempty

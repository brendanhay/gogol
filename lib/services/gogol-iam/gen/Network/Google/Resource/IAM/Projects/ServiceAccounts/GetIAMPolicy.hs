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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the IAM policy that is attached to a ServiceAccount. This IAM
-- policy specifies which members have access to the service account. This
-- method does not tell you whether the service account has been granted
-- any roles on other resources. To check whether a service account has
-- role grants on a resource, use the \`getIamPolicy\` method for that
-- resource. For example, to view the role grants for a project, call the
-- Resource Manager API\'s
-- [\`projects.getIamPolicy\`](https:\/\/cloud.google.com\/resource-manager\/reference\/rest\/v1\/projects\/getIamPolicy)
-- method.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.getIamPolicy@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsServiceAccountsGetIAMPolicyResource

    -- * Creating a Request
    , projectsServiceAccountsGetIAMPolicy
    , ProjectsServiceAccountsGetIAMPolicy

    -- * Request Lenses
    , psagipOptionsRequestedPolicyVersion
    , psagipXgafv
    , psagipUploadProtocol
    , psagipAccessToken
    , psagipUploadType
    , psagipResource
    , psagipCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.getIamPolicy@ method which the
-- 'ProjectsServiceAccountsGetIAMPolicy' request conforms to.
type ProjectsServiceAccountsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Policy

-- | Gets the IAM policy that is attached to a ServiceAccount. This IAM
-- policy specifies which members have access to the service account. This
-- method does not tell you whether the service account has been granted
-- any roles on other resources. To check whether a service account has
-- role grants on a resource, use the \`getIamPolicy\` method for that
-- resource. For example, to view the role grants for a project, call the
-- Resource Manager API\'s
-- [\`projects.getIamPolicy\`](https:\/\/cloud.google.com\/resource-manager\/reference\/rest\/v1\/projects\/getIamPolicy)
-- method.
--
-- /See:/ 'projectsServiceAccountsGetIAMPolicy' smart constructor.
data ProjectsServiceAccountsGetIAMPolicy =
  ProjectsServiceAccountsGetIAMPolicy'
    { _psagipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _psagipXgafv :: !(Maybe Xgafv)
    , _psagipUploadProtocol :: !(Maybe Text)
    , _psagipAccessToken :: !(Maybe Text)
    , _psagipUploadType :: !(Maybe Text)
    , _psagipResource :: !Text
    , _psagipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagipOptionsRequestedPolicyVersion'
--
-- * 'psagipXgafv'
--
-- * 'psagipUploadProtocol'
--
-- * 'psagipAccessToken'
--
-- * 'psagipUploadType'
--
-- * 'psagipResource'
--
-- * 'psagipCallback'
projectsServiceAccountsGetIAMPolicy
    :: Text -- ^ 'psagipResource'
    -> ProjectsServiceAccountsGetIAMPolicy
projectsServiceAccountsGetIAMPolicy pPsagipResource_ =
  ProjectsServiceAccountsGetIAMPolicy'
    { _psagipOptionsRequestedPolicyVersion = Nothing
    , _psagipXgafv = Nothing
    , _psagipUploadProtocol = Nothing
    , _psagipAccessToken = Nothing
    , _psagipUploadType = Nothing
    , _psagipResource = pPsagipResource_
    , _psagipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
psagipOptionsRequestedPolicyVersion :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Int32)
psagipOptionsRequestedPolicyVersion
  = lens _psagipOptionsRequestedPolicyVersion
      (\ s a ->
         s{_psagipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
psagipXgafv :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Xgafv)
psagipXgafv
  = lens _psagipXgafv (\ s a -> s{_psagipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psagipUploadProtocol :: Lens' ProjectsServiceAccountsGetIAMPolicy (Maybe Text)
psagipUploadProtocol
  = lens _psagipUploadProtocol
      (\ s a -> s{_psagipUploadProtocol = a})

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

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
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
           ProjectsServiceAccountsGetIAMPolicy
         where
        type Rs ProjectsServiceAccountsGetIAMPolicy = Policy
        type Scopes ProjectsServiceAccountsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsServiceAccountsGetIAMPolicy'{..}
          = go _psagipResource
              _psagipOptionsRequestedPolicyVersion
              _psagipXgafv
              _psagipUploadProtocol
              _psagipAccessToken
              _psagipUploadType
              _psagipCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsGetIAMPolicyResource)
                      mempty

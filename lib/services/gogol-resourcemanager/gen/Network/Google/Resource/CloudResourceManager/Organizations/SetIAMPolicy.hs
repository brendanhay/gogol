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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on an organization resource. Replaces any
-- existing policy. The \`resource\` field should be the organization\'s
-- resource name, for example: \"organizations\/123\". Authorization
-- requires the IAM permission
-- \`resourcemanager.organizations.setIamPolicy\` on the specified
-- organization.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.setIamPolicy@.
module Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
    (
    -- * REST Resource
      OrganizationsSetIAMPolicyResource

    -- * Creating a Request
    , organizationsSetIAMPolicy
    , OrganizationsSetIAMPolicy

    -- * Request Lenses
    , osipXgafv
    , osipUploadProtocol
    , osipAccessToken
    , osipUploadType
    , osipPayload
    , osipResource
    , osipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.setIamPolicy@ method which the
-- 'OrganizationsSetIAMPolicy' request conforms to.
type OrganizationsSetIAMPolicyResource =
     "v3" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on an organization resource. Replaces any
-- existing policy. The \`resource\` field should be the organization\'s
-- resource name, for example: \"organizations\/123\". Authorization
-- requires the IAM permission
-- \`resourcemanager.organizations.setIamPolicy\` on the specified
-- organization.
--
-- /See:/ 'organizationsSetIAMPolicy' smart constructor.
data OrganizationsSetIAMPolicy =
  OrganizationsSetIAMPolicy'
    { _osipXgafv :: !(Maybe Xgafv)
    , _osipUploadProtocol :: !(Maybe Text)
    , _osipAccessToken :: !(Maybe Text)
    , _osipUploadType :: !(Maybe Text)
    , _osipPayload :: !SetIAMPolicyRequest
    , _osipResource :: !Text
    , _osipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osipXgafv'
--
-- * 'osipUploadProtocol'
--
-- * 'osipAccessToken'
--
-- * 'osipUploadType'
--
-- * 'osipPayload'
--
-- * 'osipResource'
--
-- * 'osipCallback'
organizationsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'osipPayload'
    -> Text -- ^ 'osipResource'
    -> OrganizationsSetIAMPolicy
organizationsSetIAMPolicy pOsipPayload_ pOsipResource_ =
  OrganizationsSetIAMPolicy'
    { _osipXgafv = Nothing
    , _osipUploadProtocol = Nothing
    , _osipAccessToken = Nothing
    , _osipUploadType = Nothing
    , _osipPayload = pOsipPayload_
    , _osipResource = pOsipResource_
    , _osipCallback = Nothing
    }


-- | V1 error format.
osipXgafv :: Lens' OrganizationsSetIAMPolicy (Maybe Xgafv)
osipXgafv
  = lens _osipXgafv (\ s a -> s{_osipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osipUploadProtocol :: Lens' OrganizationsSetIAMPolicy (Maybe Text)
osipUploadProtocol
  = lens _osipUploadProtocol
      (\ s a -> s{_osipUploadProtocol = a})

-- | OAuth access token.
osipAccessToken :: Lens' OrganizationsSetIAMPolicy (Maybe Text)
osipAccessToken
  = lens _osipAccessToken
      (\ s a -> s{_osipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osipUploadType :: Lens' OrganizationsSetIAMPolicy (Maybe Text)
osipUploadType
  = lens _osipUploadType
      (\ s a -> s{_osipUploadType = a})

-- | Multipart request metadata.
osipPayload :: Lens' OrganizationsSetIAMPolicy SetIAMPolicyRequest
osipPayload
  = lens _osipPayload (\ s a -> s{_osipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
osipResource :: Lens' OrganizationsSetIAMPolicy Text
osipResource
  = lens _osipResource (\ s a -> s{_osipResource = a})

-- | JSONP
osipCallback :: Lens' OrganizationsSetIAMPolicy (Maybe Text)
osipCallback
  = lens _osipCallback (\ s a -> s{_osipCallback = a})

instance GoogleRequest OrganizationsSetIAMPolicy
         where
        type Rs OrganizationsSetIAMPolicy = Policy
        type Scopes OrganizationsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSetIAMPolicy'{..}
          = go _osipResource _osipXgafv _osipUploadProtocol
              _osipAccessToken
              _osipUploadType
              _osipCallback
              (Just AltJSON)
              _osipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSetIAMPolicyResource)
                      mempty

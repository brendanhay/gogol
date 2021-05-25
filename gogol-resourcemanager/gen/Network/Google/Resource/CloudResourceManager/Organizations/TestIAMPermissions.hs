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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the permissions that a caller has on the specified organization.
-- The \`resource\` field should be the organization\'s resource name, for
-- example: \"organizations\/123\". There are no permissions required for
-- making this API call.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.testIamPermissions@.
module Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
    (
    -- * REST Resource
      OrganizationsTestIAMPermissionsResource

    -- * Creating a Request
    , organizationsTestIAMPermissions
    , OrganizationsTestIAMPermissions

    -- * Request Lenses
    , otipXgafv
    , otipUploadProtocol
    , otipAccessToken
    , otipUploadType
    , otipPayload
    , otipResource
    , otipCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.testIamPermissions@ method which the
-- 'OrganizationsTestIAMPermissions' request conforms to.
type OrganizationsTestIAMPermissionsResource =
     "v3" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns the permissions that a caller has on the specified organization.
-- The \`resource\` field should be the organization\'s resource name, for
-- example: \"organizations\/123\". There are no permissions required for
-- making this API call.
--
-- /See:/ 'organizationsTestIAMPermissions' smart constructor.
data OrganizationsTestIAMPermissions =
  OrganizationsTestIAMPermissions'
    { _otipXgafv :: !(Maybe Xgafv)
    , _otipUploadProtocol :: !(Maybe Text)
    , _otipAccessToken :: !(Maybe Text)
    , _otipUploadType :: !(Maybe Text)
    , _otipPayload :: !TestIAMPermissionsRequest
    , _otipResource :: !Text
    , _otipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otipXgafv'
--
-- * 'otipUploadProtocol'
--
-- * 'otipAccessToken'
--
-- * 'otipUploadType'
--
-- * 'otipPayload'
--
-- * 'otipResource'
--
-- * 'otipCallback'
organizationsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'otipPayload'
    -> Text -- ^ 'otipResource'
    -> OrganizationsTestIAMPermissions
organizationsTestIAMPermissions pOtipPayload_ pOtipResource_ =
  OrganizationsTestIAMPermissions'
    { _otipXgafv = Nothing
    , _otipUploadProtocol = Nothing
    , _otipAccessToken = Nothing
    , _otipUploadType = Nothing
    , _otipPayload = pOtipPayload_
    , _otipResource = pOtipResource_
    , _otipCallback = Nothing
    }


-- | V1 error format.
otipXgafv :: Lens' OrganizationsTestIAMPermissions (Maybe Xgafv)
otipXgafv
  = lens _otipXgafv (\ s a -> s{_otipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
otipUploadProtocol :: Lens' OrganizationsTestIAMPermissions (Maybe Text)
otipUploadProtocol
  = lens _otipUploadProtocol
      (\ s a -> s{_otipUploadProtocol = a})

-- | OAuth access token.
otipAccessToken :: Lens' OrganizationsTestIAMPermissions (Maybe Text)
otipAccessToken
  = lens _otipAccessToken
      (\ s a -> s{_otipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
otipUploadType :: Lens' OrganizationsTestIAMPermissions (Maybe Text)
otipUploadType
  = lens _otipUploadType
      (\ s a -> s{_otipUploadType = a})

-- | Multipart request metadata.
otipPayload :: Lens' OrganizationsTestIAMPermissions TestIAMPermissionsRequest
otipPayload
  = lens _otipPayload (\ s a -> s{_otipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
otipResource :: Lens' OrganizationsTestIAMPermissions Text
otipResource
  = lens _otipResource (\ s a -> s{_otipResource = a})

-- | JSONP
otipCallback :: Lens' OrganizationsTestIAMPermissions (Maybe Text)
otipCallback
  = lens _otipCallback (\ s a -> s{_otipCallback = a})

instance GoogleRequest
           OrganizationsTestIAMPermissions
         where
        type Rs OrganizationsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes OrganizationsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient OrganizationsTestIAMPermissions'{..}
          = go _otipResource _otipXgafv _otipUploadProtocol
              _otipAccessToken
              _otipUploadType
              _otipCallback
              (Just AltJSON)
              _otipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsTestIAMPermissionsResource)
                      mempty

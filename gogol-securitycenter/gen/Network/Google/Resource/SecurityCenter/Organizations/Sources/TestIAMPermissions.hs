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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the permissions that a caller has on the specified source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.testIamPermissions@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.TestIAMPermissions
    (
    -- * REST Resource
      OrganizationsSourcesTestIAMPermissionsResource

    -- * Creating a Request
    , organizationsSourcesTestIAMPermissions
    , OrganizationsSourcesTestIAMPermissions

    -- * Request Lenses
    , ostipXgafv
    , ostipUploadProtocol
    , ostipAccessToken
    , ostipUploadType
    , ostipPayload
    , ostipResource
    , ostipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.testIamPermissions@ method which the
-- 'OrganizationsSourcesTestIAMPermissions' request conforms to.
type OrganizationsSourcesTestIAMPermissionsResource =
     "v1p1beta1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns the permissions that a caller has on the specified source.
--
-- /See:/ 'organizationsSourcesTestIAMPermissions' smart constructor.
data OrganizationsSourcesTestIAMPermissions =
  OrganizationsSourcesTestIAMPermissions'
    { _ostipXgafv :: !(Maybe Xgafv)
    , _ostipUploadProtocol :: !(Maybe Text)
    , _ostipAccessToken :: !(Maybe Text)
    , _ostipUploadType :: !(Maybe Text)
    , _ostipPayload :: !TestIAMPermissionsRequest
    , _ostipResource :: !Text
    , _ostipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ostipXgafv'
--
-- * 'ostipUploadProtocol'
--
-- * 'ostipAccessToken'
--
-- * 'ostipUploadType'
--
-- * 'ostipPayload'
--
-- * 'ostipResource'
--
-- * 'ostipCallback'
organizationsSourcesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'ostipPayload'
    -> Text -- ^ 'ostipResource'
    -> OrganizationsSourcesTestIAMPermissions
organizationsSourcesTestIAMPermissions pOstipPayload_ pOstipResource_ =
  OrganizationsSourcesTestIAMPermissions'
    { _ostipXgafv = Nothing
    , _ostipUploadProtocol = Nothing
    , _ostipAccessToken = Nothing
    , _ostipUploadType = Nothing
    , _ostipPayload = pOstipPayload_
    , _ostipResource = pOstipResource_
    , _ostipCallback = Nothing
    }


-- | V1 error format.
ostipXgafv :: Lens' OrganizationsSourcesTestIAMPermissions (Maybe Xgafv)
ostipXgafv
  = lens _ostipXgafv (\ s a -> s{_ostipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ostipUploadProtocol :: Lens' OrganizationsSourcesTestIAMPermissions (Maybe Text)
ostipUploadProtocol
  = lens _ostipUploadProtocol
      (\ s a -> s{_ostipUploadProtocol = a})

-- | OAuth access token.
ostipAccessToken :: Lens' OrganizationsSourcesTestIAMPermissions (Maybe Text)
ostipAccessToken
  = lens _ostipAccessToken
      (\ s a -> s{_ostipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ostipUploadType :: Lens' OrganizationsSourcesTestIAMPermissions (Maybe Text)
ostipUploadType
  = lens _ostipUploadType
      (\ s a -> s{_ostipUploadType = a})

-- | Multipart request metadata.
ostipPayload :: Lens' OrganizationsSourcesTestIAMPermissions TestIAMPermissionsRequest
ostipPayload
  = lens _ostipPayload (\ s a -> s{_ostipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
ostipResource :: Lens' OrganizationsSourcesTestIAMPermissions Text
ostipResource
  = lens _ostipResource
      (\ s a -> s{_ostipResource = a})

-- | JSONP
ostipCallback :: Lens' OrganizationsSourcesTestIAMPermissions (Maybe Text)
ostipCallback
  = lens _ostipCallback
      (\ s a -> s{_ostipCallback = a})

instance GoogleRequest
           OrganizationsSourcesTestIAMPermissions
         where
        type Rs OrganizationsSourcesTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes OrganizationsSourcesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsSourcesTestIAMPermissions'{..}
          = go _ostipResource _ostipXgafv _ostipUploadProtocol
              _ostipAccessToken
              _ostipUploadType
              _ostipCallback
              (Just AltJSON)
              _ostipPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesTestIAMPermissionsResource)
                      mempty

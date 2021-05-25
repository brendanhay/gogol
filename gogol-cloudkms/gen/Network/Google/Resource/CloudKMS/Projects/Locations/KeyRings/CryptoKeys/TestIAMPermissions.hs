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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysTestIAMPermissions
    , ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions

    -- * Request Lenses
    , plkrcktipXgafv
    , plkrcktipUploadProtocol
    , plkrcktipAccessToken
    , plkrcktipUploadType
    , plkrcktipPayload
    , plkrcktipResource
    , plkrcktipCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissionsResource
     =
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
-- not a \`NOT_FOUND\` error. Note: This operation is designed to be used
-- for building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysTestIAMPermissions' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions =
  ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions'
    { _plkrcktipXgafv :: !(Maybe Xgafv)
    , _plkrcktipUploadProtocol :: !(Maybe Text)
    , _plkrcktipAccessToken :: !(Maybe Text)
    , _plkrcktipUploadType :: !(Maybe Text)
    , _plkrcktipPayload :: !TestIAMPermissionsRequest
    , _plkrcktipResource :: !Text
    , _plkrcktipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrcktipXgafv'
--
-- * 'plkrcktipUploadProtocol'
--
-- * 'plkrcktipAccessToken'
--
-- * 'plkrcktipUploadType'
--
-- * 'plkrcktipPayload'
--
-- * 'plkrcktipResource'
--
-- * 'plkrcktipCallback'
projectsLocationsKeyRingsCryptoKeysTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plkrcktipPayload'
    -> Text -- ^ 'plkrcktipResource'
    -> ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions
projectsLocationsKeyRingsCryptoKeysTestIAMPermissions pPlkrcktipPayload_ pPlkrcktipResource_ =
  ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions'
    { _plkrcktipXgafv = Nothing
    , _plkrcktipUploadProtocol = Nothing
    , _plkrcktipAccessToken = Nothing
    , _plkrcktipUploadType = Nothing
    , _plkrcktipPayload = pPlkrcktipPayload_
    , _plkrcktipResource = pPlkrcktipResource_
    , _plkrcktipCallback = Nothing
    }


-- | V1 error format.
plkrcktipXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions (Maybe Xgafv)
plkrcktipXgafv
  = lens _plkrcktipXgafv
      (\ s a -> s{_plkrcktipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrcktipUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions (Maybe Text)
plkrcktipUploadProtocol
  = lens _plkrcktipUploadProtocol
      (\ s a -> s{_plkrcktipUploadProtocol = a})

-- | OAuth access token.
plkrcktipAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions (Maybe Text)
plkrcktipAccessToken
  = lens _plkrcktipAccessToken
      (\ s a -> s{_plkrcktipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrcktipUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions (Maybe Text)
plkrcktipUploadType
  = lens _plkrcktipUploadType
      (\ s a -> s{_plkrcktipUploadType = a})

-- | Multipart request metadata.
plkrcktipPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions TestIAMPermissionsRequest
plkrcktipPayload
  = lens _plkrcktipPayload
      (\ s a -> s{_plkrcktipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plkrcktipResource :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions Text
plkrcktipResource
  = lens _plkrcktipResource
      (\ s a -> s{_plkrcktipResource = a})

-- | JSONP
plkrcktipCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions (Maybe Text)
plkrcktipCallback
  = lens _plkrcktipCallback
      (\ s a -> s{_plkrcktipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissions'{..}
          = go _plkrcktipResource _plkrcktipXgafv
              _plkrcktipUploadProtocol
              _plkrcktipAccessToken
              _plkrcktipUploadType
              _plkrcktipCallback
              (Just AltJSON)
              _plkrcktipPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysTestIAMPermissionsResource)
                      mempty

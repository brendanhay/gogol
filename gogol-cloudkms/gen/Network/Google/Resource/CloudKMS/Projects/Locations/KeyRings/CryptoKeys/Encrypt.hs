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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Encrypt
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Encrypts data, so that it can only be recovered by a call to Decrypt.
-- The CryptoKey.purpose must be ENCRYPT_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.encrypt@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Encrypt
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysEncryptResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysEncrypt
    , ProjectsLocationsKeyRingsCryptoKeysEncrypt

    -- * Request Lenses
    , plkrckeXgafv
    , plkrckeUploadProtocol
    , plkrckeAccessToken
    , plkrckeUploadType
    , plkrckePayload
    , plkrckeName
    , plkrckeCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.encrypt@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysEncrypt' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysEncryptResource
     =
     "v1" :>
       CaptureMode "name" "encrypt" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EncryptRequest :>
                       Post '[JSON] EncryptResponse

-- | Encrypts data, so that it can only be recovered by a call to Decrypt.
-- The CryptoKey.purpose must be ENCRYPT_DECRYPT.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysEncrypt' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysEncrypt =
  ProjectsLocationsKeyRingsCryptoKeysEncrypt'
    { _plkrckeXgafv :: !(Maybe Xgafv)
    , _plkrckeUploadProtocol :: !(Maybe Text)
    , _plkrckeAccessToken :: !(Maybe Text)
    , _plkrckeUploadType :: !(Maybe Text)
    , _plkrckePayload :: !EncryptRequest
    , _plkrckeName :: !Text
    , _plkrckeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysEncrypt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckeXgafv'
--
-- * 'plkrckeUploadProtocol'
--
-- * 'plkrckeAccessToken'
--
-- * 'plkrckeUploadType'
--
-- * 'plkrckePayload'
--
-- * 'plkrckeName'
--
-- * 'plkrckeCallback'
projectsLocationsKeyRingsCryptoKeysEncrypt
    :: EncryptRequest -- ^ 'plkrckePayload'
    -> Text -- ^ 'plkrckeName'
    -> ProjectsLocationsKeyRingsCryptoKeysEncrypt
projectsLocationsKeyRingsCryptoKeysEncrypt pPlkrckePayload_ pPlkrckeName_ =
  ProjectsLocationsKeyRingsCryptoKeysEncrypt'
    { _plkrckeXgafv = Nothing
    , _plkrckeUploadProtocol = Nothing
    , _plkrckeAccessToken = Nothing
    , _plkrckeUploadType = Nothing
    , _plkrckePayload = pPlkrckePayload_
    , _plkrckeName = pPlkrckeName_
    , _plkrckeCallback = Nothing
    }


-- | V1 error format.
plkrckeXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt (Maybe Xgafv)
plkrckeXgafv
  = lens _plkrckeXgafv (\ s a -> s{_plkrckeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckeUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt (Maybe Text)
plkrckeUploadProtocol
  = lens _plkrckeUploadProtocol
      (\ s a -> s{_plkrckeUploadProtocol = a})

-- | OAuth access token.
plkrckeAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt (Maybe Text)
plkrckeAccessToken
  = lens _plkrckeAccessToken
      (\ s a -> s{_plkrckeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckeUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt (Maybe Text)
plkrckeUploadType
  = lens _plkrckeUploadType
      (\ s a -> s{_plkrckeUploadType = a})

-- | Multipart request metadata.
plkrckePayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt EncryptRequest
plkrckePayload
  = lens _plkrckePayload
      (\ s a -> s{_plkrckePayload = a})

-- | Required. The resource name of the CryptoKey or CryptoKeyVersion to use
-- for encryption. If a CryptoKey is specified, the server will use its
-- primary version.
plkrckeName :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt Text
plkrckeName
  = lens _plkrckeName (\ s a -> s{_plkrckeName = a})

-- | JSONP
plkrckeCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysEncrypt (Maybe Text)
plkrckeCallback
  = lens _plkrckeCallback
      (\ s a -> s{_plkrckeCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysEncrypt
         where
        type Rs ProjectsLocationsKeyRingsCryptoKeysEncrypt =
             EncryptResponse
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysEncrypt
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysEncrypt'{..}
          = go _plkrckeName _plkrckeXgafv
              _plkrckeUploadProtocol
              _plkrckeAccessToken
              _plkrckeUploadType
              _plkrckeCallback
              (Just AltJSON)
              _plkrckePayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysEncryptResource)
                      mempty

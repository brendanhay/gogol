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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts data that was protected by Encrypt. The CryptoKey.purpose must
-- be ENCRYPT_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.decrypt@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Decrypt
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysDecryptResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysDecrypt
    , ProjectsLocationsKeyRingsCryptoKeysDecrypt

    -- * Request Lenses
    , plkrckdXgafv
    , plkrckdUploadProtocol
    , plkrckdAccessToken
    , plkrckdUploadType
    , plkrckdPayload
    , plkrckdName
    , plkrckdCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.decrypt@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysDecrypt' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysDecryptResource
     =
     "v1" :>
       CaptureMode "name" "decrypt" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DecryptRequest :>
                       Post '[JSON] DecryptResponse

-- | Decrypts data that was protected by Encrypt. The CryptoKey.purpose must
-- be ENCRYPT_DECRYPT.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysDecrypt' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysDecrypt =
  ProjectsLocationsKeyRingsCryptoKeysDecrypt'
    { _plkrckdXgafv :: !(Maybe Xgafv)
    , _plkrckdUploadProtocol :: !(Maybe Text)
    , _plkrckdAccessToken :: !(Maybe Text)
    , _plkrckdUploadType :: !(Maybe Text)
    , _plkrckdPayload :: !DecryptRequest
    , _plkrckdName :: !Text
    , _plkrckdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysDecrypt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckdXgafv'
--
-- * 'plkrckdUploadProtocol'
--
-- * 'plkrckdAccessToken'
--
-- * 'plkrckdUploadType'
--
-- * 'plkrckdPayload'
--
-- * 'plkrckdName'
--
-- * 'plkrckdCallback'
projectsLocationsKeyRingsCryptoKeysDecrypt
    :: DecryptRequest -- ^ 'plkrckdPayload'
    -> Text -- ^ 'plkrckdName'
    -> ProjectsLocationsKeyRingsCryptoKeysDecrypt
projectsLocationsKeyRingsCryptoKeysDecrypt pPlkrckdPayload_ pPlkrckdName_ =
  ProjectsLocationsKeyRingsCryptoKeysDecrypt'
    { _plkrckdXgafv = Nothing
    , _plkrckdUploadProtocol = Nothing
    , _plkrckdAccessToken = Nothing
    , _plkrckdUploadType = Nothing
    , _plkrckdPayload = pPlkrckdPayload_
    , _plkrckdName = pPlkrckdName_
    , _plkrckdCallback = Nothing
    }


-- | V1 error format.
plkrckdXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt (Maybe Xgafv)
plkrckdXgafv
  = lens _plkrckdXgafv (\ s a -> s{_plkrckdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckdUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt (Maybe Text)
plkrckdUploadProtocol
  = lens _plkrckdUploadProtocol
      (\ s a -> s{_plkrckdUploadProtocol = a})

-- | OAuth access token.
plkrckdAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt (Maybe Text)
plkrckdAccessToken
  = lens _plkrckdAccessToken
      (\ s a -> s{_plkrckdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckdUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt (Maybe Text)
plkrckdUploadType
  = lens _plkrckdUploadType
      (\ s a -> s{_plkrckdUploadType = a})

-- | Multipart request metadata.
plkrckdPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt DecryptRequest
plkrckdPayload
  = lens _plkrckdPayload
      (\ s a -> s{_plkrckdPayload = a})

-- | Required. The resource name of the CryptoKey to use for decryption. The
-- server will choose the appropriate version.
plkrckdName :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt Text
plkrckdName
  = lens _plkrckdName (\ s a -> s{_plkrckdName = a})

-- | JSONP
plkrckdCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysDecrypt (Maybe Text)
plkrckdCallback
  = lens _plkrckdCallback
      (\ s a -> s{_plkrckdCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysDecrypt
         where
        type Rs ProjectsLocationsKeyRingsCryptoKeysDecrypt =
             DecryptResponse
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysDecrypt
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysDecrypt'{..}
          = go _plkrckdName _plkrckdXgafv
              _plkrckdUploadProtocol
              _plkrckdAccessToken
              _plkrckdUploadType
              _plkrckdCallback
              (Just AltJSON)
              _plkrckdPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysDecryptResource)
                      mempty

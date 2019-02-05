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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts data that was encrypted with a public key retrieved from
-- GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose
-- ASYMMETRIC_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricDecrypt
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt

    -- * Request Lenses
    , plkrckckvadXgafv
    , plkrckckvadUploadProtocol
    , plkrckckvadAccessToken
    , plkrckckvadUploadType
    , plkrckckvadPayload
    , plkrckckvadName
    , plkrckckvadCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource
     =
     "v1" :>
       CaptureMode "name" "asymmetricDecrypt" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AsymmetricDecryptRequest :>
                       Post '[JSON] AsymmetricDecryptResponse

-- | Decrypts data that was encrypted with a public key retrieved from
-- GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose
-- ASYMMETRIC_DECRYPT.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt'
    { _plkrckckvadXgafv          :: !(Maybe Xgafv)
    , _plkrckckvadUploadProtocol :: !(Maybe Text)
    , _plkrckckvadAccessToken    :: !(Maybe Text)
    , _plkrckckvadUploadType     :: !(Maybe Text)
    , _plkrckckvadPayload        :: !AsymmetricDecryptRequest
    , _plkrckckvadName           :: !Text
    , _plkrckckvadCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvadXgafv'
--
-- * 'plkrckckvadUploadProtocol'
--
-- * 'plkrckckvadAccessToken'
--
-- * 'plkrckckvadUploadType'
--
-- * 'plkrckckvadPayload'
--
-- * 'plkrckckvadName'
--
-- * 'plkrckckvadCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
    :: AsymmetricDecryptRequest -- ^ 'plkrckckvadPayload'
    -> Text -- ^ 'plkrckckvadName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt pPlkrckckvadPayload_ pPlkrckckvadName_ =
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt'
    { _plkrckckvadXgafv = Nothing
    , _plkrckckvadUploadProtocol = Nothing
    , _plkrckckvadAccessToken = Nothing
    , _plkrckckvadUploadType = Nothing
    , _plkrckckvadPayload = pPlkrckckvadPayload_
    , _plkrckckvadName = pPlkrckckvadName_
    , _plkrckckvadCallback = Nothing
    }

-- | V1 error format.
plkrckckvadXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt (Maybe Xgafv)
plkrckckvadXgafv
  = lens _plkrckckvadXgafv
      (\ s a -> s{_plkrckckvadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvadUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt (Maybe Text)
plkrckckvadUploadProtocol
  = lens _plkrckckvadUploadProtocol
      (\ s a -> s{_plkrckckvadUploadProtocol = a})

-- | OAuth access token.
plkrckckvadAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt (Maybe Text)
plkrckckvadAccessToken
  = lens _plkrckckvadAccessToken
      (\ s a -> s{_plkrckckvadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvadUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt (Maybe Text)
plkrckckvadUploadType
  = lens _plkrckckvadUploadType
      (\ s a -> s{_plkrckckvadUploadType = a})

-- | Multipart request metadata.
plkrckckvadPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt AsymmetricDecryptRequest
plkrckckvadPayload
  = lens _plkrckckvadPayload
      (\ s a -> s{_plkrckckvadPayload = a})

-- | Required. The resource name of the CryptoKeyVersion to use for
-- decryption.
plkrckckvadName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt Text
plkrckckvadName
  = lens _plkrckckvadName
      (\ s a -> s{_plkrckckvadName = a})

-- | JSONP
plkrckckvadCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt (Maybe Text)
plkrckckvadCallback
  = lens _plkrckckvadCallback
      (\ s a -> s{_plkrckckvadCallback = a})

instance GoogleRequest
         ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
             = AsymmetricDecryptResponse
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecrypt'{..}
          = go _plkrckckvadName _plkrckckvadXgafv
              _plkrckckvadUploadProtocol
              _plkrckckvadAccessToken
              _plkrckckvadUploadType
              _plkrckckvadCallback
              (Just AltJSON)
              _plkrckckvadPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricDecryptResource)
                      mempty

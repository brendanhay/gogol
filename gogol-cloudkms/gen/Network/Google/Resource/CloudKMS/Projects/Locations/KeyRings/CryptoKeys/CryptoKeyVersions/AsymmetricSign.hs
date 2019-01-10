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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricSign
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs data using a CryptoKeyVersion with CryptoKey.purpose
-- ASYMMETRIC_SIGN, producing a signature that can be verified with the
-- public key retrieved from GetPublicKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.AsymmetricSign
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSignResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign

    -- * Request Lenses
    , plkrckckvasXgafv
    , plkrckckvasUploadProtocol
    , plkrckckvasAccessToken
    , plkrckckvasUploadType
    , plkrckckvasPayload
    , plkrckckvasName
    , plkrckckvasCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSignResource
     =
     "v1" :>
       CaptureMode "name" "asymmetricSign" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AsymmetricSignRequest :>
                       Post '[JSON] AsymmetricSignResponse

-- | Signs data using a CryptoKeyVersion with CryptoKey.purpose
-- ASYMMETRIC_SIGN, producing a signature that can be verified with the
-- public key retrieved from GetPublicKey.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign'
    { _plkrckckvasXgafv          :: !(Maybe Xgafv)
    , _plkrckckvasUploadProtocol :: !(Maybe Text)
    , _plkrckckvasAccessToken    :: !(Maybe Text)
    , _plkrckckvasUploadType     :: !(Maybe Text)
    , _plkrckckvasPayload        :: !AsymmetricSignRequest
    , _plkrckckvasName           :: !Text
    , _plkrckckvasCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvasXgafv'
--
-- * 'plkrckckvasUploadProtocol'
--
-- * 'plkrckckvasAccessToken'
--
-- * 'plkrckckvasUploadType'
--
-- * 'plkrckckvasPayload'
--
-- * 'plkrckckvasName'
--
-- * 'plkrckckvasCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
    :: AsymmetricSignRequest -- ^ 'plkrckckvasPayload'
    -> Text -- ^ 'plkrckckvasName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign pPlkrckckvasPayload_ pPlkrckckvasName_ =
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign'
    { _plkrckckvasXgafv = Nothing
    , _plkrckckvasUploadProtocol = Nothing
    , _plkrckckvasAccessToken = Nothing
    , _plkrckckvasUploadType = Nothing
    , _plkrckckvasPayload = pPlkrckckvasPayload_
    , _plkrckckvasName = pPlkrckckvasName_
    , _plkrckckvasCallback = Nothing
    }

-- | V1 error format.
plkrckckvasXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign (Maybe Xgafv)
plkrckckvasXgafv
  = lens _plkrckckvasXgafv
      (\ s a -> s{_plkrckckvasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvasUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign (Maybe Text)
plkrckckvasUploadProtocol
  = lens _plkrckckvasUploadProtocol
      (\ s a -> s{_plkrckckvasUploadProtocol = a})

-- | OAuth access token.
plkrckckvasAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign (Maybe Text)
plkrckckvasAccessToken
  = lens _plkrckckvasAccessToken
      (\ s a -> s{_plkrckckvasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvasUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign (Maybe Text)
plkrckckvasUploadType
  = lens _plkrckckvasUploadType
      (\ s a -> s{_plkrckckvasUploadType = a})

-- | Multipart request metadata.
plkrckckvasPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign AsymmetricSignRequest
plkrckckvasPayload
  = lens _plkrckckvasPayload
      (\ s a -> s{_plkrckckvasPayload = a})

-- | Required. The resource name of the CryptoKeyVersion to use for signing.
plkrckckvasName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign Text
plkrckckvasName
  = lens _plkrckckvasName
      (\ s a -> s{_plkrckckvasName = a})

-- | JSONP
plkrckckvasCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign (Maybe Text)
plkrckckvasCallback
  = lens _plkrckckvasCallback
      (\ s a -> s{_plkrckckvasCallback = a})

instance GoogleRequest
         ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
             = AsymmetricSignResponse
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSign'{..}
          = go _plkrckckvasName _plkrckckvasXgafv
              _plkrckckvasUploadProtocol
              _plkrckckvasAccessToken
              _plkrckckvasUploadType
              _plkrckckvasCallback
              (Just AltJSON)
              _plkrckckvasPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsAsymmetricSignResource)
                      mempty

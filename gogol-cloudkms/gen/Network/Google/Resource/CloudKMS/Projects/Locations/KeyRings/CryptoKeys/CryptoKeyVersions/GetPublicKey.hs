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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the public key for the given CryptoKeyVersion. The
-- CryptoKey.purpose must be ASYMMETRIC_SIGN or ASYMMETRIC_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey

    -- * Request Lenses
    , plkrckckvgpkXgafv
    , plkrckckvgpkUploadProtocol
    , plkrckckvgpkAccessToken
    , plkrckckvgpkUploadType
    , plkrckckvgpkName
    , plkrckckvgpkCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource
     =
     "v1" :>
       Capture "name" Text :>
         "publicKey" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] PublicKey

-- | Returns the public key for the given CryptoKeyVersion. The
-- CryptoKey.purpose must be ASYMMETRIC_SIGN or ASYMMETRIC_DECRYPT.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey = ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey'
    { _plkrckckvgpkXgafv          :: !(Maybe Xgafv)
    , _plkrckckvgpkUploadProtocol :: !(Maybe Text)
    , _plkrckckvgpkAccessToken    :: !(Maybe Text)
    , _plkrckckvgpkUploadType     :: !(Maybe Text)
    , _plkrckckvgpkName           :: !Text
    , _plkrckckvgpkCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvgpkXgafv'
--
-- * 'plkrckckvgpkUploadProtocol'
--
-- * 'plkrckckvgpkAccessToken'
--
-- * 'plkrckckvgpkUploadType'
--
-- * 'plkrckckvgpkName'
--
-- * 'plkrckckvgpkCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    :: Text -- ^ 'plkrckckvgpkName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey pPlkrckckvgpkName_ =
    ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey'
    { _plkrckckvgpkXgafv = Nothing
    , _plkrckckvgpkUploadProtocol = Nothing
    , _plkrckckvgpkAccessToken = Nothing
    , _plkrckckvgpkUploadType = Nothing
    , _plkrckckvgpkName = pPlkrckckvgpkName_
    , _plkrckckvgpkCallback = Nothing
    }

-- | V1 error format.
plkrckckvgpkXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey (Maybe Xgafv)
plkrckckvgpkXgafv
  = lens _plkrckckvgpkXgafv
      (\ s a -> s{_plkrckckvgpkXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvgpkUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey (Maybe Text)
plkrckckvgpkUploadProtocol
  = lens _plkrckckvgpkUploadProtocol
      (\ s a -> s{_plkrckckvgpkUploadProtocol = a})

-- | OAuth access token.
plkrckckvgpkAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey (Maybe Text)
plkrckckvgpkAccessToken
  = lens _plkrckckvgpkAccessToken
      (\ s a -> s{_plkrckckvgpkAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvgpkUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey (Maybe Text)
plkrckckvgpkUploadType
  = lens _plkrckckvgpkUploadType
      (\ s a -> s{_plkrckckvgpkUploadType = a})

-- | The name of the CryptoKeyVersion public key to get.
plkrckckvgpkName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey Text
plkrckckvgpkName
  = lens _plkrckckvgpkName
      (\ s a -> s{_plkrckckvgpkName = a})

-- | JSONP
plkrckckvgpkCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey (Maybe Text)
plkrckckvgpkCallback
  = lens _plkrckckvgpkCallback
      (\ s a -> s{_plkrckckvgpkCallback = a})

instance GoogleRequest
         ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
             = PublicKey
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey'{..}
          = go _plkrckckvgpkName _plkrckckvgpkXgafv
              _plkrckckvgpkUploadProtocol
              _plkrckckvgpkAccessToken
              _plkrckckvgpkUploadType
              _plkrckckvgpkCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource)
                      mempty

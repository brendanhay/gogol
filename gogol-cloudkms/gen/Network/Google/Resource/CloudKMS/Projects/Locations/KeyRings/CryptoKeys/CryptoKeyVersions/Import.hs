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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports a new CryptoKeyVersion into an existing CryptoKey using the
-- wrapped key material provided in the request. The version ID will be
-- assigned the next sequential id within the CryptoKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport

    -- * Request Lenses
    , plkrckckviParent
    , plkrckckviXgafv
    , plkrckckviUploadProtocol
    , plkrckckviAccessToken
    , plkrckckviUploadType
    , plkrckckviPayload
    , plkrckckviCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource
     =
     "v1" :>
       Capture "parent" Text :>
         "cryptoKeyVersions:import" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ImportCryptoKeyVersionRequest :>
                         Post '[JSON] CryptoKeyVersion

-- | Imports a new CryptoKeyVersion into an existing CryptoKey using the
-- wrapped key material provided in the request. The version ID will be
-- assigned the next sequential id within the CryptoKey.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport'
    { _plkrckckviParent :: !Text
    , _plkrckckviXgafv :: !(Maybe Xgafv)
    , _plkrckckviUploadProtocol :: !(Maybe Text)
    , _plkrckckviAccessToken :: !(Maybe Text)
    , _plkrckckviUploadType :: !(Maybe Text)
    , _plkrckckviPayload :: !ImportCryptoKeyVersionRequest
    , _plkrckckviCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckviParent'
--
-- * 'plkrckckviXgafv'
--
-- * 'plkrckckviUploadProtocol'
--
-- * 'plkrckckviAccessToken'
--
-- * 'plkrckckviUploadType'
--
-- * 'plkrckckviPayload'
--
-- * 'plkrckckviCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
    :: Text -- ^ 'plkrckckviParent'
    -> ImportCryptoKeyVersionRequest -- ^ 'plkrckckviPayload'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport pPlkrckckviParent_ pPlkrckckviPayload_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport'
    { _plkrckckviParent = pPlkrckckviParent_
    , _plkrckckviXgafv = Nothing
    , _plkrckckviUploadProtocol = Nothing
    , _plkrckckviAccessToken = Nothing
    , _plkrckckviUploadType = Nothing
    , _plkrckckviPayload = pPlkrckckviPayload_
    , _plkrckckviCallback = Nothing
    }


-- | Required. The name of the CryptoKey to be imported into.
plkrckckviParent :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport Text
plkrckckviParent
  = lens _plkrckckviParent
      (\ s a -> s{_plkrckckviParent = a})

-- | V1 error format.
plkrckckviXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (Maybe Xgafv)
plkrckckviXgafv
  = lens _plkrckckviXgafv
      (\ s a -> s{_plkrckckviXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckviUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (Maybe Text)
plkrckckviUploadProtocol
  = lens _plkrckckviUploadProtocol
      (\ s a -> s{_plkrckckviUploadProtocol = a})

-- | OAuth access token.
plkrckckviAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (Maybe Text)
plkrckckviAccessToken
  = lens _plkrckckviAccessToken
      (\ s a -> s{_plkrckckviAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckviUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (Maybe Text)
plkrckckviUploadType
  = lens _plkrckckviUploadType
      (\ s a -> s{_plkrckckviUploadType = a})

-- | Multipart request metadata.
plkrckckviPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport ImportCryptoKeyVersionRequest
plkrckckviPayload
  = lens _plkrckckviPayload
      (\ s a -> s{_plkrckckviPayload = a})

-- | JSONP
plkrckckviCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (Maybe Text)
plkrckckviCallback
  = lens _plkrckckviCallback
      (\ s a -> s{_plkrckckviCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
             = CryptoKeyVersion
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport'{..}
          = go _plkrckckviParent _plkrckckviXgafv
              _plkrckckviUploadProtocol
              _plkrckckviAccessToken
              _plkrckckviUploadType
              _plkrckckviCallback
              (Just AltJSON)
              _plkrckckviPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource)
                      mempty

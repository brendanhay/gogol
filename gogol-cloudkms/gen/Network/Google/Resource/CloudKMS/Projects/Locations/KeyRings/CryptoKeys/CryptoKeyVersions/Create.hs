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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new CryptoKeyVersion in a CryptoKey. The server will assign the
-- next sequential id. If unset, state will be set to ENABLED.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate

    -- * Request Lenses
    , plkrckckvcParent
    , plkrckckvcXgafv
    , plkrckckvcUploadProtocol
    , plkrckckvcAccessToken
    , plkrckckvcUploadType
    , plkrckckvcPayload
    , plkrckckvcCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "cryptoKeyVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CryptoKeyVersion :>
                         Post '[JSON] CryptoKeyVersion

-- | Create a new CryptoKeyVersion in a CryptoKey. The server will assign the
-- next sequential id. If unset, state will be set to ENABLED.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate'
    { _plkrckckvcParent         :: !Text
    , _plkrckckvcXgafv          :: !(Maybe Xgafv)
    , _plkrckckvcUploadProtocol :: !(Maybe Text)
    , _plkrckckvcAccessToken    :: !(Maybe Text)
    , _plkrckckvcUploadType     :: !(Maybe Text)
    , _plkrckckvcPayload        :: !CryptoKeyVersion
    , _plkrckckvcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvcParent'
--
-- * 'plkrckckvcXgafv'
--
-- * 'plkrckckvcUploadProtocol'
--
-- * 'plkrckckvcAccessToken'
--
-- * 'plkrckckvcUploadType'
--
-- * 'plkrckckvcPayload'
--
-- * 'plkrckckvcCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
    :: Text -- ^ 'plkrckckvcParent'
    -> CryptoKeyVersion -- ^ 'plkrckckvcPayload'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate pPlkrckckvcParent_ pPlkrckckvcPayload_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate'
    { _plkrckckvcParent = pPlkrckckvcParent_
    , _plkrckckvcXgafv = Nothing
    , _plkrckckvcUploadProtocol = Nothing
    , _plkrckckvcAccessToken = Nothing
    , _plkrckckvcUploadType = Nothing
    , _plkrckckvcPayload = pPlkrckckvcPayload_
    , _plkrckckvcCallback = Nothing
    }


-- | Required. The name of the CryptoKey associated with the
-- CryptoKeyVersions.
plkrckckvcParent :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate Text
plkrckckvcParent
  = lens _plkrckckvcParent
      (\ s a -> s{_plkrckckvcParent = a})

-- | V1 error format.
plkrckckvcXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (Maybe Xgafv)
plkrckckvcXgafv
  = lens _plkrckckvcXgafv
      (\ s a -> s{_plkrckckvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvcUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (Maybe Text)
plkrckckvcUploadProtocol
  = lens _plkrckckvcUploadProtocol
      (\ s a -> s{_plkrckckvcUploadProtocol = a})

-- | OAuth access token.
plkrckckvcAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (Maybe Text)
plkrckckvcAccessToken
  = lens _plkrckckvcAccessToken
      (\ s a -> s{_plkrckckvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvcUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (Maybe Text)
plkrckckvcUploadType
  = lens _plkrckckvcUploadType
      (\ s a -> s{_plkrckckvcUploadType = a})

-- | Multipart request metadata.
plkrckckvcPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate CryptoKeyVersion
plkrckckvcPayload
  = lens _plkrckckvcPayload
      (\ s a -> s{_plkrckckvcPayload = a})

-- | JSONP
plkrckckvcCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (Maybe Text)
plkrckckvcCallback
  = lens _plkrckckvcCallback
      (\ s a -> s{_plkrckckvcCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
             = CryptoKeyVersion
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate'{..}
          = go _plkrckckvcParent _plkrckckvcXgafv
              _plkrckckvcUploadProtocol
              _plkrckckvcAccessToken
              _plkrckckvcUploadType
              _plkrckckvcCallback
              (Just AltJSON)
              _plkrckckvcPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new CryptoKey within a KeyRing. CryptoKey.purpose and
-- CryptoKey.version_template.algorithm are required.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.create@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Create
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCreateResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCreate
    , ProjectsLocationsKeyRingsCryptoKeysCreate

    -- * Request Lenses
    , plkrckcParent
    , plkrckcXgafv
    , plkrckcUploadProtocol
    , plkrckcAccessToken
    , plkrckcUploadType
    , plkrckcPayload
    , plkrckcCryptoKeyId
    , plkrckcCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.create@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCreate' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "cryptoKeys" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "cryptoKeyId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CryptoKey :> Post '[JSON] CryptoKey

-- | Create a new CryptoKey within a KeyRing. CryptoKey.purpose and
-- CryptoKey.version_template.algorithm are required.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCreate' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCreate =
  ProjectsLocationsKeyRingsCryptoKeysCreate'
    { _plkrckcParent         :: !Text
    , _plkrckcXgafv          :: !(Maybe Xgafv)
    , _plkrckcUploadProtocol :: !(Maybe Text)
    , _plkrckcAccessToken    :: !(Maybe Text)
    , _plkrckcUploadType     :: !(Maybe Text)
    , _plkrckcPayload        :: !CryptoKey
    , _plkrckcCryptoKeyId    :: !(Maybe Text)
    , _plkrckcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckcParent'
--
-- * 'plkrckcXgafv'
--
-- * 'plkrckcUploadProtocol'
--
-- * 'plkrckcAccessToken'
--
-- * 'plkrckcUploadType'
--
-- * 'plkrckcPayload'
--
-- * 'plkrckcCryptoKeyId'
--
-- * 'plkrckcCallback'
projectsLocationsKeyRingsCryptoKeysCreate
    :: Text -- ^ 'plkrckcParent'
    -> CryptoKey -- ^ 'plkrckcPayload'
    -> ProjectsLocationsKeyRingsCryptoKeysCreate
projectsLocationsKeyRingsCryptoKeysCreate pPlkrckcParent_ pPlkrckcPayload_ =
  ProjectsLocationsKeyRingsCryptoKeysCreate'
    { _plkrckcParent = pPlkrckcParent_
    , _plkrckcXgafv = Nothing
    , _plkrckcUploadProtocol = Nothing
    , _plkrckcAccessToken = Nothing
    , _plkrckcUploadType = Nothing
    , _plkrckcPayload = pPlkrckcPayload_
    , _plkrckcCryptoKeyId = Nothing
    , _plkrckcCallback = Nothing
    }


-- | Required. The name of the KeyRing associated with the CryptoKeys.
plkrckcParent :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate Text
plkrckcParent
  = lens _plkrckcParent
      (\ s a -> s{_plkrckcParent = a})

-- | V1 error format.
plkrckcXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate (Maybe Xgafv)
plkrckcXgafv
  = lens _plkrckcXgafv (\ s a -> s{_plkrckcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckcUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate (Maybe Text)
plkrckcUploadProtocol
  = lens _plkrckcUploadProtocol
      (\ s a -> s{_plkrckcUploadProtocol = a})

-- | OAuth access token.
plkrckcAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate (Maybe Text)
plkrckcAccessToken
  = lens _plkrckcAccessToken
      (\ s a -> s{_plkrckcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckcUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate (Maybe Text)
plkrckcUploadType
  = lens _plkrckcUploadType
      (\ s a -> s{_plkrckcUploadType = a})

-- | Multipart request metadata.
plkrckcPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate CryptoKey
plkrckcPayload
  = lens _plkrckcPayload
      (\ s a -> s{_plkrckcPayload = a})

-- | Required. It must be unique within a KeyRing and match the regular
-- expression \`[a-zA-Z0-9_-]{1,63}\`
plkrckcCryptoKeyId :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate (Maybe Text)
plkrckcCryptoKeyId
  = lens _plkrckcCryptoKeyId
      (\ s a -> s{_plkrckcCryptoKeyId = a})

-- | JSONP
plkrckcCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCreate (Maybe Text)
plkrckcCallback
  = lens _plkrckcCallback
      (\ s a -> s{_plkrckcCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCreate
         where
        type Rs ProjectsLocationsKeyRingsCryptoKeysCreate =
             CryptoKey
        type Scopes ProjectsLocationsKeyRingsCryptoKeysCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCreate'{..}
          = go _plkrckcParent _plkrckcXgafv
              _plkrckcUploadProtocol
              _plkrckcAccessToken
              _plkrckcUploadType
              _plkrckcCryptoKeyId
              _plkrckcCallback
              (Just AltJSON)
              _plkrckcPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCreateResource)
                      mempty

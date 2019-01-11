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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the version of a CryptoKey that will be used in Encrypt. Returns
-- an error if called on an asymmetric key.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
    , ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion

    -- * Request Lenses
    , plkrckupvXgafv
    , plkrckupvUploadProtocol
    , plkrckupvAccessToken
    , plkrckupvUploadType
    , plkrckupvPayload
    , plkrckupvName
    , plkrckupvCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource
     =
     "v1" :>
       CaptureMode "name" "updatePrimaryVersion" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateCryptoKeyPrimaryVersionRequest
                       :> Post '[JSON] CryptoKey

-- | Update the version of a CryptoKey that will be used in Encrypt. Returns
-- an error if called on an asymmetric key.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion = ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion'
    { _plkrckupvXgafv          :: !(Maybe Xgafv)
    , _plkrckupvUploadProtocol :: !(Maybe Text)
    , _plkrckupvAccessToken    :: !(Maybe Text)
    , _plkrckupvUploadType     :: !(Maybe Text)
    , _plkrckupvPayload        :: !UpdateCryptoKeyPrimaryVersionRequest
    , _plkrckupvName           :: !Text
    , _plkrckupvCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckupvXgafv'
--
-- * 'plkrckupvUploadProtocol'
--
-- * 'plkrckupvAccessToken'
--
-- * 'plkrckupvUploadType'
--
-- * 'plkrckupvPayload'
--
-- * 'plkrckupvName'
--
-- * 'plkrckupvCallback'
projectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
    :: UpdateCryptoKeyPrimaryVersionRequest -- ^ 'plkrckupvPayload'
    -> Text -- ^ 'plkrckupvName'
    -> ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
projectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion pPlkrckupvPayload_ pPlkrckupvName_ =
    ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion'
    { _plkrckupvXgafv = Nothing
    , _plkrckupvUploadProtocol = Nothing
    , _plkrckupvAccessToken = Nothing
    , _plkrckupvUploadType = Nothing
    , _plkrckupvPayload = pPlkrckupvPayload_
    , _plkrckupvName = pPlkrckupvName_
    , _plkrckupvCallback = Nothing
    }

-- | V1 error format.
plkrckupvXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (Maybe Xgafv)
plkrckupvXgafv
  = lens _plkrckupvXgafv
      (\ s a -> s{_plkrckupvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckupvUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (Maybe Text)
plkrckupvUploadProtocol
  = lens _plkrckupvUploadProtocol
      (\ s a -> s{_plkrckupvUploadProtocol = a})

-- | OAuth access token.
plkrckupvAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (Maybe Text)
plkrckupvAccessToken
  = lens _plkrckupvAccessToken
      (\ s a -> s{_plkrckupvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckupvUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (Maybe Text)
plkrckupvUploadType
  = lens _plkrckupvUploadType
      (\ s a -> s{_plkrckupvUploadType = a})

-- | Multipart request metadata.
plkrckupvPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion UpdateCryptoKeyPrimaryVersionRequest
plkrckupvPayload
  = lens _plkrckupvPayload
      (\ s a -> s{_plkrckupvPayload = a})

-- | The resource name of the CryptoKey to update.
plkrckupvName :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion Text
plkrckupvName
  = lens _plkrckupvName
      (\ s a -> s{_plkrckupvName = a})

-- | JSONP
plkrckupvCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (Maybe Text)
plkrckupvCallback
  = lens _plkrckupvCallback
      (\ s a -> s{_plkrckupvCallback = a})

instance GoogleRequest
         ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
             = CryptoKey
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion'{..}
          = go _plkrckupvName _plkrckupvXgafv
              _plkrckupvUploadProtocol
              _plkrckupvAccessToken
              _plkrckupvUploadType
              _plkrckupvCallback
              (Just AltJSON)
              _plkrckupvPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource)
                      mempty

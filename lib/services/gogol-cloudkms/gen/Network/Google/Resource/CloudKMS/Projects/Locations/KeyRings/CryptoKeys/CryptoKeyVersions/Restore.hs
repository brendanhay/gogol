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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state. Upon
-- restoration of the CryptoKeyVersion, state will be set to DISABLED, and
-- destroy_time will be cleared.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore

    -- * Request Lenses
    , plkrckckvrXgafv
    , plkrckckvrUploadProtocol
    , plkrckckvrAccessToken
    , plkrckckvrUploadType
    , plkrckckvrPayload
    , plkrckckvrName
    , plkrckckvrCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource
     =
     "v1" :>
       CaptureMode "name" "restore" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RestoreCryptoKeyVersionRequest :>
                       Post '[JSON] CryptoKeyVersion

-- | Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state. Upon
-- restoration of the CryptoKeyVersion, state will be set to DISABLED, and
-- destroy_time will be cleared.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore'
    { _plkrckckvrXgafv :: !(Maybe Xgafv)
    , _plkrckckvrUploadProtocol :: !(Maybe Text)
    , _plkrckckvrAccessToken :: !(Maybe Text)
    , _plkrckckvrUploadType :: !(Maybe Text)
    , _plkrckckvrPayload :: !RestoreCryptoKeyVersionRequest
    , _plkrckckvrName :: !Text
    , _plkrckckvrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvrXgafv'
--
-- * 'plkrckckvrUploadProtocol'
--
-- * 'plkrckckvrAccessToken'
--
-- * 'plkrckckvrUploadType'
--
-- * 'plkrckckvrPayload'
--
-- * 'plkrckckvrName'
--
-- * 'plkrckckvrCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
    :: RestoreCryptoKeyVersionRequest -- ^ 'plkrckckvrPayload'
    -> Text -- ^ 'plkrckckvrName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore pPlkrckckvrPayload_ pPlkrckckvrName_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore'
    { _plkrckckvrXgafv = Nothing
    , _plkrckckvrUploadProtocol = Nothing
    , _plkrckckvrAccessToken = Nothing
    , _plkrckckvrUploadType = Nothing
    , _plkrckckvrPayload = pPlkrckckvrPayload_
    , _plkrckckvrName = pPlkrckckvrName_
    , _plkrckckvrCallback = Nothing
    }


-- | V1 error format.
plkrckckvrXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore (Maybe Xgafv)
plkrckckvrXgafv
  = lens _plkrckckvrXgafv
      (\ s a -> s{_plkrckckvrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvrUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore (Maybe Text)
plkrckckvrUploadProtocol
  = lens _plkrckckvrUploadProtocol
      (\ s a -> s{_plkrckckvrUploadProtocol = a})

-- | OAuth access token.
plkrckckvrAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore (Maybe Text)
plkrckckvrAccessToken
  = lens _plkrckckvrAccessToken
      (\ s a -> s{_plkrckckvrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvrUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore (Maybe Text)
plkrckckvrUploadType
  = lens _plkrckckvrUploadType
      (\ s a -> s{_plkrckckvrUploadType = a})

-- | Multipart request metadata.
plkrckckvrPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore RestoreCryptoKeyVersionRequest
plkrckckvrPayload
  = lens _plkrckckvrPayload
      (\ s a -> s{_plkrckckvrPayload = a})

-- | Required. The resource name of the CryptoKeyVersion to restore.
plkrckckvrName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore Text
plkrckckvrName
  = lens _plkrckckvrName
      (\ s a -> s{_plkrckckvrName = a})

-- | JSONP
plkrckckvrCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore (Maybe Text)
plkrckckvrCallback
  = lens _plkrckckvrCallback
      (\ s a -> s{_plkrckckvrCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
             = CryptoKeyVersion
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore'{..}
          = go _plkrckckvrName _plkrckckvrXgafv
              _plkrckckvrUploadProtocol
              _plkrckckvrAccessToken
              _plkrckckvrUploadType
              _plkrckckvrCallback
              (Just AltJSON)
              _plkrckckvrPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource)
                      mempty

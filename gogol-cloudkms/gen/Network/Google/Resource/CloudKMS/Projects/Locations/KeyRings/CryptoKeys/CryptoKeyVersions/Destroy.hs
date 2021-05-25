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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedule a CryptoKeyVersion for destruction. Upon calling this method,
-- CryptoKeyVersion.state will be set to DESTROY_SCHEDULED and destroy_time
-- will be set to a time 24 hours in the future, at which point the state
-- will be changed to DESTROYED, and the key material will be irrevocably
-- destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion
-- may be called to reverse the process.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy

    -- * Request Lenses
    , plkrckckvdXgafv
    , plkrckckvdUploadProtocol
    , plkrckckvdAccessToken
    , plkrckckvdUploadType
    , plkrckckvdPayload
    , plkrckckvdName
    , plkrckckvdCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource
     =
     "v1" :>
       CaptureMode "name" "destroy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DestroyCryptoKeyVersionRequest :>
                       Post '[JSON] CryptoKeyVersion

-- | Schedule a CryptoKeyVersion for destruction. Upon calling this method,
-- CryptoKeyVersion.state will be set to DESTROY_SCHEDULED and destroy_time
-- will be set to a time 24 hours in the future, at which point the state
-- will be changed to DESTROYED, and the key material will be irrevocably
-- destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion
-- may be called to reverse the process.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy'
    { _plkrckckvdXgafv :: !(Maybe Xgafv)
    , _plkrckckvdUploadProtocol :: !(Maybe Text)
    , _plkrckckvdAccessToken :: !(Maybe Text)
    , _plkrckckvdUploadType :: !(Maybe Text)
    , _plkrckckvdPayload :: !DestroyCryptoKeyVersionRequest
    , _plkrckckvdName :: !Text
    , _plkrckckvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvdXgafv'
--
-- * 'plkrckckvdUploadProtocol'
--
-- * 'plkrckckvdAccessToken'
--
-- * 'plkrckckvdUploadType'
--
-- * 'plkrckckvdPayload'
--
-- * 'plkrckckvdName'
--
-- * 'plkrckckvdCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
    :: DestroyCryptoKeyVersionRequest -- ^ 'plkrckckvdPayload'
    -> Text -- ^ 'plkrckckvdName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy pPlkrckckvdPayload_ pPlkrckckvdName_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy'
    { _plkrckckvdXgafv = Nothing
    , _plkrckckvdUploadProtocol = Nothing
    , _plkrckckvdAccessToken = Nothing
    , _plkrckckvdUploadType = Nothing
    , _plkrckckvdPayload = pPlkrckckvdPayload_
    , _plkrckckvdName = pPlkrckckvdName_
    , _plkrckckvdCallback = Nothing
    }


-- | V1 error format.
plkrckckvdXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (Maybe Xgafv)
plkrckckvdXgafv
  = lens _plkrckckvdXgafv
      (\ s a -> s{_plkrckckvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvdUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (Maybe Text)
plkrckckvdUploadProtocol
  = lens _plkrckckvdUploadProtocol
      (\ s a -> s{_plkrckckvdUploadProtocol = a})

-- | OAuth access token.
plkrckckvdAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (Maybe Text)
plkrckckvdAccessToken
  = lens _plkrckckvdAccessToken
      (\ s a -> s{_plkrckckvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvdUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (Maybe Text)
plkrckckvdUploadType
  = lens _plkrckckvdUploadType
      (\ s a -> s{_plkrckckvdUploadType = a})

-- | Multipart request metadata.
plkrckckvdPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy DestroyCryptoKeyVersionRequest
plkrckckvdPayload
  = lens _plkrckckvdPayload
      (\ s a -> s{_plkrckckvdPayload = a})

-- | Required. The resource name of the CryptoKeyVersion to destroy.
plkrckckvdName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy Text
plkrckckvdName
  = lens _plkrckckvdName
      (\ s a -> s{_plkrckckvdName = a})

-- | JSONP
plkrckckvdCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (Maybe Text)
plkrckckvdCallback
  = lens _plkrckckvdCallback
      (\ s a -> s{_plkrckckvdCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
             = CryptoKeyVersion
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy'{..}
          = go _plkrckckvdName _plkrckckvdXgafv
              _plkrckckvdUploadProtocol
              _plkrckckvdAccessToken
              _plkrckckvdUploadType
              _plkrckckvdCallback
              (Just AltJSON)
              _plkrckckvdPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource)
                      mempty

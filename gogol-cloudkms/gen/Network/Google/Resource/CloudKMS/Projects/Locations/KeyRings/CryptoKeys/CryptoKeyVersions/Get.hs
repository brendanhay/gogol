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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a given CryptoKeyVersion.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Get
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet

    -- * Request Lenses
    , plkrckckvgXgafv
    , plkrckckvgUploadProtocol
    , plkrckckvgAccessToken
    , plkrckckvgUploadType
    , plkrckckvgName
    , plkrckckvgCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] CryptoKeyVersion

-- | Returns metadata for a given CryptoKeyVersion.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet'
    { _plkrckckvgXgafv :: !(Maybe Xgafv)
    , _plkrckckvgUploadProtocol :: !(Maybe Text)
    , _plkrckckvgAccessToken :: !(Maybe Text)
    , _plkrckckvgUploadType :: !(Maybe Text)
    , _plkrckckvgName :: !Text
    , _plkrckckvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvgXgafv'
--
-- * 'plkrckckvgUploadProtocol'
--
-- * 'plkrckckvgAccessToken'
--
-- * 'plkrckckvgUploadType'
--
-- * 'plkrckckvgName'
--
-- * 'plkrckckvgCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
    :: Text -- ^ 'plkrckckvgName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet pPlkrckckvgName_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet'
    { _plkrckckvgXgafv = Nothing
    , _plkrckckvgUploadProtocol = Nothing
    , _plkrckckvgAccessToken = Nothing
    , _plkrckckvgUploadType = Nothing
    , _plkrckckvgName = pPlkrckckvgName_
    , _plkrckckvgCallback = Nothing
    }


-- | V1 error format.
plkrckckvgXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet (Maybe Xgafv)
plkrckckvgXgafv
  = lens _plkrckckvgXgafv
      (\ s a -> s{_plkrckckvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvgUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet (Maybe Text)
plkrckckvgUploadProtocol
  = lens _plkrckckvgUploadProtocol
      (\ s a -> s{_plkrckckvgUploadProtocol = a})

-- | OAuth access token.
plkrckckvgAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet (Maybe Text)
plkrckckvgAccessToken
  = lens _plkrckckvgAccessToken
      (\ s a -> s{_plkrckckvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvgUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet (Maybe Text)
plkrckckvgUploadType
  = lens _plkrckckvgUploadType
      (\ s a -> s{_plkrckckvgUploadType = a})

-- | Required. The name of the CryptoKeyVersion to get.
plkrckckvgName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet Text
plkrckckvgName
  = lens _plkrckckvgName
      (\ s a -> s{_plkrckckvgName = a})

-- | JSONP
plkrckckvgCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet (Maybe Text)
plkrckckvgCallback
  = lens _plkrckckvgCallback
      (\ s a -> s{_plkrckckvgCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
             = CryptoKeyVersion
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGet'{..}
          = go _plkrckckvgName _plkrckckvgXgafv
              _plkrckckvgUploadProtocol
              _plkrckckvgAccessToken
              _plkrckckvgUploadType
              _plkrckckvgCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetResource)
                      mempty

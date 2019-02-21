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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a given CryptoKey, as well as its primary
-- CryptoKeyVersion.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.get@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Get
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysGetResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysGet
    , ProjectsLocationsKeyRingsCryptoKeysGet

    -- * Request Lenses
    , plkrckgXgafv
    , plkrckgUploadProtocol
    , plkrckgAccessToken
    , plkrckgUploadType
    , plkrckgName
    , plkrckgCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.get@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysGet' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] CryptoKey

-- | Returns metadata for a given CryptoKey, as well as its primary
-- CryptoKeyVersion.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysGet' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysGet =
  ProjectsLocationsKeyRingsCryptoKeysGet'
    { _plkrckgXgafv          :: !(Maybe Xgafv)
    , _plkrckgUploadProtocol :: !(Maybe Text)
    , _plkrckgAccessToken    :: !(Maybe Text)
    , _plkrckgUploadType     :: !(Maybe Text)
    , _plkrckgName           :: !Text
    , _plkrckgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckgXgafv'
--
-- * 'plkrckgUploadProtocol'
--
-- * 'plkrckgAccessToken'
--
-- * 'plkrckgUploadType'
--
-- * 'plkrckgName'
--
-- * 'plkrckgCallback'
projectsLocationsKeyRingsCryptoKeysGet
    :: Text -- ^ 'plkrckgName'
    -> ProjectsLocationsKeyRingsCryptoKeysGet
projectsLocationsKeyRingsCryptoKeysGet pPlkrckgName_ =
  ProjectsLocationsKeyRingsCryptoKeysGet'
    { _plkrckgXgafv = Nothing
    , _plkrckgUploadProtocol = Nothing
    , _plkrckgAccessToken = Nothing
    , _plkrckgUploadType = Nothing
    , _plkrckgName = pPlkrckgName_
    , _plkrckgCallback = Nothing
    }


-- | V1 error format.
plkrckgXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysGet (Maybe Xgafv)
plkrckgXgafv
  = lens _plkrckgXgafv (\ s a -> s{_plkrckgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckgUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysGet (Maybe Text)
plkrckgUploadProtocol
  = lens _plkrckgUploadProtocol
      (\ s a -> s{_plkrckgUploadProtocol = a})

-- | OAuth access token.
plkrckgAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysGet (Maybe Text)
plkrckgAccessToken
  = lens _plkrckgAccessToken
      (\ s a -> s{_plkrckgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckgUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysGet (Maybe Text)
plkrckgUploadType
  = lens _plkrckgUploadType
      (\ s a -> s{_plkrckgUploadType = a})

-- | The name of the CryptoKey to get.
plkrckgName :: Lens' ProjectsLocationsKeyRingsCryptoKeysGet Text
plkrckgName
  = lens _plkrckgName (\ s a -> s{_plkrckgName = a})

-- | JSONP
plkrckgCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysGet (Maybe Text)
plkrckgCallback
  = lens _plkrckgCallback
      (\ s a -> s{_plkrckgCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysGet
         where
        type Rs ProjectsLocationsKeyRingsCryptoKeysGet =
             CryptoKey
        type Scopes ProjectsLocationsKeyRingsCryptoKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysGet'{..}
          = go _plkrckgName _plkrckgXgafv
              _plkrckgUploadProtocol
              _plkrckgAccessToken
              _plkrckgUploadType
              _plkrckgCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsKeyRingsCryptoKeysGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists CryptoKeys.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.list@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.List
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysListResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysList
    , ProjectsLocationsKeyRingsCryptoKeysList

    -- * Request Lenses
    , plkrcklParent
    , plkrcklXgafv
    , plkrcklVersionView
    , plkrcklUploadProtocol
    , plkrcklAccessToken
    , plkrcklUploadType
    , plkrcklPageToken
    , plkrcklPageSize
    , plkrcklCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.list@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysList' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "cryptoKeys" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "versionView" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCryptoKeysResponse

-- | Lists CryptoKeys.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysList' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysList =
  ProjectsLocationsKeyRingsCryptoKeysList'
    { _plkrcklParent         :: !Text
    , _plkrcklXgafv          :: !(Maybe Xgafv)
    , _plkrcklVersionView    :: !(Maybe Text)
    , _plkrcklUploadProtocol :: !(Maybe Text)
    , _plkrcklAccessToken    :: !(Maybe Text)
    , _plkrcklUploadType     :: !(Maybe Text)
    , _plkrcklPageToken      :: !(Maybe Text)
    , _plkrcklPageSize       :: !(Maybe (Textual Int32))
    , _plkrcklCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrcklParent'
--
-- * 'plkrcklXgafv'
--
-- * 'plkrcklVersionView'
--
-- * 'plkrcklUploadProtocol'
--
-- * 'plkrcklAccessToken'
--
-- * 'plkrcklUploadType'
--
-- * 'plkrcklPageToken'
--
-- * 'plkrcklPageSize'
--
-- * 'plkrcklCallback'
projectsLocationsKeyRingsCryptoKeysList
    :: Text -- ^ 'plkrcklParent'
    -> ProjectsLocationsKeyRingsCryptoKeysList
projectsLocationsKeyRingsCryptoKeysList pPlkrcklParent_ =
  ProjectsLocationsKeyRingsCryptoKeysList'
    { _plkrcklParent = pPlkrcklParent_
    , _plkrcklXgafv = Nothing
    , _plkrcklVersionView = Nothing
    , _plkrcklUploadProtocol = Nothing
    , _plkrcklAccessToken = Nothing
    , _plkrcklUploadType = Nothing
    , _plkrcklPageToken = Nothing
    , _plkrcklPageSize = Nothing
    , _plkrcklCallback = Nothing
    }

-- | Required. The resource name of the KeyRing to list, in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\`.
plkrcklParent :: Lens' ProjectsLocationsKeyRingsCryptoKeysList Text
plkrcklParent
  = lens _plkrcklParent
      (\ s a -> s{_plkrcklParent = a})

-- | V1 error format.
plkrcklXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Xgafv)
plkrcklXgafv
  = lens _plkrcklXgafv (\ s a -> s{_plkrcklXgafv = a})

-- | The fields of the primary version to include in the response.
plkrcklVersionView :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Text)
plkrcklVersionView
  = lens _plkrcklVersionView
      (\ s a -> s{_plkrcklVersionView = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrcklUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Text)
plkrcklUploadProtocol
  = lens _plkrcklUploadProtocol
      (\ s a -> s{_plkrcklUploadProtocol = a})

-- | OAuth access token.
plkrcklAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Text)
plkrcklAccessToken
  = lens _plkrcklAccessToken
      (\ s a -> s{_plkrcklAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrcklUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Text)
plkrcklUploadType
  = lens _plkrcklUploadType
      (\ s a -> s{_plkrcklUploadType = a})

-- | Optional pagination token, returned earlier via
-- ListCryptoKeysResponse.next_page_token.
plkrcklPageToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Text)
plkrcklPageToken
  = lens _plkrcklPageToken
      (\ s a -> s{_plkrcklPageToken = a})

-- | Optional limit on the number of CryptoKeys to include in the response.
-- Further CryptoKeys can subsequently be obtained by including the
-- ListCryptoKeysResponse.next_page_token in a subsequent request. If
-- unspecified, the server will pick an appropriate default.
plkrcklPageSize :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Int32)
plkrcklPageSize
  = lens _plkrcklPageSize
      (\ s a -> s{_plkrcklPageSize = a})
      . mapping _Coerce

-- | JSONP
plkrcklCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysList (Maybe Text)
plkrcklCallback
  = lens _plkrcklCallback
      (\ s a -> s{_plkrcklCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysList
         where
        type Rs ProjectsLocationsKeyRingsCryptoKeysList =
             ListCryptoKeysResponse
        type Scopes ProjectsLocationsKeyRingsCryptoKeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysList'{..}
          = go _plkrcklParent _plkrcklXgafv _plkrcklVersionView
              _plkrcklUploadProtocol
              _plkrcklAccessToken
              _plkrcklUploadType
              _plkrcklPageToken
              _plkrcklPageSize
              _plkrcklCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysListResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a CryptoKeyVersion\'s metadata. state may be changed between
-- ENABLED and DISABLED using this method. See DestroyCryptoKeyVersion and
-- RestoreCryptoKeyVersion to move between other states.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Patch
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatchResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
    , ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch

    -- * Request Lenses
    , plkrckckvpXgafv
    , plkrckckvpUploadProtocol
    , plkrckckvpUpdateMask
    , plkrckckvpAccessToken
    , plkrckckvpUploadType
    , plkrckckvpPayload
    , plkrckckvpName
    , plkrckckvpCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CryptoKeyVersion :>
                         Patch '[JSON] CryptoKeyVersion

-- | Update a CryptoKeyVersion\'s metadata. state may be changed between
-- ENABLED and DISABLED using this method. See DestroyCryptoKeyVersion and
-- RestoreCryptoKeyVersion to move between other states.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch'
    { _plkrckckvpXgafv          :: !(Maybe Xgafv)
    , _plkrckckvpUploadProtocol :: !(Maybe Text)
    , _plkrckckvpUpdateMask     :: !(Maybe GFieldMask)
    , _plkrckckvpAccessToken    :: !(Maybe Text)
    , _plkrckckvpUploadType     :: !(Maybe Text)
    , _plkrckckvpPayload        :: !CryptoKeyVersion
    , _plkrckckvpName           :: !Text
    , _plkrckckvpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckckvpXgafv'
--
-- * 'plkrckckvpUploadProtocol'
--
-- * 'plkrckckvpUpdateMask'
--
-- * 'plkrckckvpAccessToken'
--
-- * 'plkrckckvpUploadType'
--
-- * 'plkrckckvpPayload'
--
-- * 'plkrckckvpName'
--
-- * 'plkrckckvpCallback'
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
    :: CryptoKeyVersion -- ^ 'plkrckckvpPayload'
    -> Text -- ^ 'plkrckckvpName'
    -> ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
projectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch pPlkrckckvpPayload_ pPlkrckckvpName_ =
  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch'
    { _plkrckckvpXgafv = Nothing
    , _plkrckckvpUploadProtocol = Nothing
    , _plkrckckvpUpdateMask = Nothing
    , _plkrckckvpAccessToken = Nothing
    , _plkrckckvpUploadType = Nothing
    , _plkrckckvpPayload = pPlkrckckvpPayload_
    , _plkrckckvpName = pPlkrckckvpName_
    , _plkrckckvpCallback = Nothing
    }

-- | V1 error format.
plkrckckvpXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (Maybe Xgafv)
plkrckckvpXgafv
  = lens _plkrckckvpXgafv
      (\ s a -> s{_plkrckckvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckckvpUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (Maybe Text)
plkrckckvpUploadProtocol
  = lens _plkrckckvpUploadProtocol
      (\ s a -> s{_plkrckckvpUploadProtocol = a})

-- | Required list of fields to be updated in this request.
plkrckckvpUpdateMask :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (Maybe GFieldMask)
plkrckckvpUpdateMask
  = lens _plkrckckvpUpdateMask
      (\ s a -> s{_plkrckckvpUpdateMask = a})

-- | OAuth access token.
plkrckckvpAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (Maybe Text)
plkrckckvpAccessToken
  = lens _plkrckckvpAccessToken
      (\ s a -> s{_plkrckckvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckckvpUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (Maybe Text)
plkrckckvpUploadType
  = lens _plkrckckvpUploadType
      (\ s a -> s{_plkrckckvpUploadType = a})

-- | Multipart request metadata.
plkrckckvpPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch CryptoKeyVersion
plkrckckvpPayload
  = lens _plkrckckvpPayload
      (\ s a -> s{_plkrckckvpPayload = a})

-- | Output only. The resource name for this CryptoKeyVersion in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\/cryptoKeyVersions\/*\`.
plkrckckvpName :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch Text
plkrckckvpName
  = lens _plkrckckvpName
      (\ s a -> s{_plkrckckvpName = a})

-- | JSONP
plkrckckvpCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch (Maybe Text)
plkrckckvpCallback
  = lens _plkrckckvpCallback
      (\ s a -> s{_plkrckckvpCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
         where
        type Rs
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
             = CryptoKeyVersion
        type Scopes
               ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatch'{..}
          = go _plkrckckvpName _plkrckckvpXgafv
              _plkrckckvpUploadProtocol
              _plkrckckvpUpdateMask
              _plkrckckvpAccessToken
              _plkrckckvpUploadType
              _plkrckckvpCallback
              (Just AltJSON)
              _plkrckckvpPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsPatchResource)
                      mempty

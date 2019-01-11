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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a CryptoKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.patch@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsCryptoKeysPatchResource

    -- * Creating a Request
    , projectsLocationsKeyRingsCryptoKeysPatch
    , ProjectsLocationsKeyRingsCryptoKeysPatch

    -- * Request Lenses
    , plkrckpXgafv
    , plkrckpUploadProtocol
    , plkrckpUpdateMask
    , plkrckpAccessToken
    , plkrckpUploadType
    , plkrckpPayload
    , plkrckpName
    , plkrckpCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.patch@ method which the
-- 'ProjectsLocationsKeyRingsCryptoKeysPatch' request conforms to.
type ProjectsLocationsKeyRingsCryptoKeysPatchResource
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
                       ReqBody '[JSON] CryptoKey :> Patch '[JSON] CryptoKey

-- | Update a CryptoKey.
--
-- /See:/ 'projectsLocationsKeyRingsCryptoKeysPatch' smart constructor.
data ProjectsLocationsKeyRingsCryptoKeysPatch = ProjectsLocationsKeyRingsCryptoKeysPatch'
    { _plkrckpXgafv          :: !(Maybe Xgafv)
    , _plkrckpUploadProtocol :: !(Maybe Text)
    , _plkrckpUpdateMask     :: !(Maybe GFieldMask)
    , _plkrckpAccessToken    :: !(Maybe Text)
    , _plkrckpUploadType     :: !(Maybe Text)
    , _plkrckpPayload        :: !CryptoKey
    , _plkrckpName           :: !Text
    , _plkrckpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsKeyRingsCryptoKeysPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrckpXgafv'
--
-- * 'plkrckpUploadProtocol'
--
-- * 'plkrckpUpdateMask'
--
-- * 'plkrckpAccessToken'
--
-- * 'plkrckpUploadType'
--
-- * 'plkrckpPayload'
--
-- * 'plkrckpName'
--
-- * 'plkrckpCallback'
projectsLocationsKeyRingsCryptoKeysPatch
    :: CryptoKey -- ^ 'plkrckpPayload'
    -> Text -- ^ 'plkrckpName'
    -> ProjectsLocationsKeyRingsCryptoKeysPatch
projectsLocationsKeyRingsCryptoKeysPatch pPlkrckpPayload_ pPlkrckpName_ =
    ProjectsLocationsKeyRingsCryptoKeysPatch'
    { _plkrckpXgafv = Nothing
    , _plkrckpUploadProtocol = Nothing
    , _plkrckpUpdateMask = Nothing
    , _plkrckpAccessToken = Nothing
    , _plkrckpUploadType = Nothing
    , _plkrckpPayload = pPlkrckpPayload_
    , _plkrckpName = pPlkrckpName_
    , _plkrckpCallback = Nothing
    }

-- | V1 error format.
plkrckpXgafv :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch (Maybe Xgafv)
plkrckpXgafv
  = lens _plkrckpXgafv (\ s a -> s{_plkrckpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrckpUploadProtocol :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch (Maybe Text)
plkrckpUploadProtocol
  = lens _plkrckpUploadProtocol
      (\ s a -> s{_plkrckpUploadProtocol = a})

-- | Required list of fields to be updated in this request.
plkrckpUpdateMask :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch (Maybe GFieldMask)
plkrckpUpdateMask
  = lens _plkrckpUpdateMask
      (\ s a -> s{_plkrckpUpdateMask = a})

-- | OAuth access token.
plkrckpAccessToken :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch (Maybe Text)
plkrckpAccessToken
  = lens _plkrckpAccessToken
      (\ s a -> s{_plkrckpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrckpUploadType :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch (Maybe Text)
plkrckpUploadType
  = lens _plkrckpUploadType
      (\ s a -> s{_plkrckpUploadType = a})

-- | Multipart request metadata.
plkrckpPayload :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch CryptoKey
plkrckpPayload
  = lens _plkrckpPayload
      (\ s a -> s{_plkrckpPayload = a})

-- | Output only. The resource name for this CryptoKey in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\`.
plkrckpName :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch Text
plkrckpName
  = lens _plkrckpName (\ s a -> s{_plkrckpName = a})

-- | JSONP
plkrckpCallback :: Lens' ProjectsLocationsKeyRingsCryptoKeysPatch (Maybe Text)
plkrckpCallback
  = lens _plkrckpCallback
      (\ s a -> s{_plkrckpCallback = a})

instance GoogleRequest
         ProjectsLocationsKeyRingsCryptoKeysPatch where
        type Rs ProjectsLocationsKeyRingsCryptoKeysPatch =
             CryptoKey
        type Scopes ProjectsLocationsKeyRingsCryptoKeysPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsKeyRingsCryptoKeysPatch'{..}
          = go _plkrckpName _plkrckpXgafv
              _plkrckpUploadProtocol
              _plkrckpUpdateMask
              _plkrckpAccessToken
              _plkrckpUploadType
              _plkrckpCallback
              (Just AltJSON)
              _plkrckpPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsCryptoKeysPatchResource)
                      mempty

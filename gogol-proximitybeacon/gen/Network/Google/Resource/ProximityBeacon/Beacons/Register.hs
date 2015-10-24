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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Register
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a previously unregistered beacon given its \`advertisedId\`.
-- These IDs are unique within the system. An ID can be registered only
-- once.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.register@.
module Network.Google.Resource.ProximityBeacon.Beacons.Register
    (
    -- * REST Resource
      BeaconsRegisterResource

    -- * Creating a Request
    , beaconsRegister
    , BeaconsRegister

    -- * Request Lenses
    , brXgafv
    , brUploadProtocol
    , brPp
    , brAccessToken
    , brUploadType
    , brPayload
    , brBearerToken
    , brCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.register@ method which the
-- 'BeaconsRegister' request conforms to.
type BeaconsRegisterResource =
     "v1beta1" :>
       "beacons:register" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Beacon :> Post '[JSON] Beacon

-- | Registers a previously unregistered beacon given its \`advertisedId\`.
-- These IDs are unique within the system. An ID can be registered only
-- once.
--
-- /See:/ 'beaconsRegister' smart constructor.
data BeaconsRegister = BeaconsRegister
    { _brXgafv          :: !(Maybe Text)
    , _brUploadProtocol :: !(Maybe Text)
    , _brPp             :: !Bool
    , _brAccessToken    :: !(Maybe Text)
    , _brUploadType     :: !(Maybe Text)
    , _brPayload        :: !Beacon
    , _brBearerToken    :: !(Maybe Text)
    , _brCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsRegister' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brXgafv'
--
-- * 'brUploadProtocol'
--
-- * 'brPp'
--
-- * 'brAccessToken'
--
-- * 'brUploadType'
--
-- * 'brPayload'
--
-- * 'brBearerToken'
--
-- * 'brCallback'
beaconsRegister
    :: Beacon -- ^ 'brPayload'
    -> BeaconsRegister
beaconsRegister pBrPayload_ =
    BeaconsRegister
    { _brXgafv = Nothing
    , _brUploadProtocol = Nothing
    , _brPp = True
    , _brAccessToken = Nothing
    , _brUploadType = Nothing
    , _brPayload = pBrPayload_
    , _brBearerToken = Nothing
    , _brCallback = Nothing
    }

-- | V1 error format.
brXgafv :: Lens' BeaconsRegister (Maybe Text)
brXgafv = lens _brXgafv (\ s a -> s{_brXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brUploadProtocol :: Lens' BeaconsRegister (Maybe Text)
brUploadProtocol
  = lens _brUploadProtocol
      (\ s a -> s{_brUploadProtocol = a})

-- | Pretty-print response.
brPp :: Lens' BeaconsRegister Bool
brPp = lens _brPp (\ s a -> s{_brPp = a})

-- | OAuth access token.
brAccessToken :: Lens' BeaconsRegister (Maybe Text)
brAccessToken
  = lens _brAccessToken
      (\ s a -> s{_brAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brUploadType :: Lens' BeaconsRegister (Maybe Text)
brUploadType
  = lens _brUploadType (\ s a -> s{_brUploadType = a})

-- | Multipart request metadata.
brPayload :: Lens' BeaconsRegister Beacon
brPayload
  = lens _brPayload (\ s a -> s{_brPayload = a})

-- | OAuth bearer token.
brBearerToken :: Lens' BeaconsRegister (Maybe Text)
brBearerToken
  = lens _brBearerToken
      (\ s a -> s{_brBearerToken = a})

-- | JSONP
brCallback :: Lens' BeaconsRegister (Maybe Text)
brCallback
  = lens _brCallback (\ s a -> s{_brCallback = a})

instance GoogleRequest BeaconsRegister where
        type Rs BeaconsRegister = Beacon
        requestClient BeaconsRegister{..}
          = go _brXgafv _brUploadProtocol (Just _brPp)
              _brAccessToken
              _brUploadType
              _brBearerToken
              _brCallback
              (Just AltJSON)
              _brPayload
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsRegisterResource)
                      mempty

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
-- Module      : Network.Google.Resource.ProximityBeacon.GetEidparams
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Proximity Beacon API\'s current public key and associated
-- parameters used to initiate the Diffie-Hellman key exchange required to
-- register a beacon that broadcasts the Eddystone-EID format. This key
-- changes periodically; clients may cache it and re-use the same public
-- key to provision and register multiple beacons. However, clients should
-- be prepared to refresh this key when they encounter an error registering
-- an Eddystone-EID beacon.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.getEidparams@.
module Network.Google.Resource.ProximityBeacon.GetEidparams
    (
    -- * REST Resource
      GetEidparamsResource

    -- * Creating a Request
    , getEidparams
    , GetEidparams

    -- * Request Lenses
    , geXgafv
    , geUploadProtocol
    , gePp
    , geAccessToken
    , geUploadType
    , geBearerToken
    , geCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.getEidparams@ method which the
-- 'GetEidparams' request conforms to.
type GetEidparamsResource =
     "v1beta1" :>
       "eidparams" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] EphemeralIdRegistrationParams

-- | Gets the Proximity Beacon API\'s current public key and associated
-- parameters used to initiate the Diffie-Hellman key exchange required to
-- register a beacon that broadcasts the Eddystone-EID format. This key
-- changes periodically; clients may cache it and re-use the same public
-- key to provision and register multiple beacons. However, clients should
-- be prepared to refresh this key when they encounter an error registering
-- an Eddystone-EID beacon.
--
-- /See:/ 'getEidparams' smart constructor.
data GetEidparams = GetEidparams'
    { _geXgafv          :: !(Maybe Text)
    , _geUploadProtocol :: !(Maybe Text)
    , _gePp             :: !Bool
    , _geAccessToken    :: !(Maybe Text)
    , _geUploadType     :: !(Maybe Text)
    , _geBearerToken    :: !(Maybe Text)
    , _geCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetEidparams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geXgafv'
--
-- * 'geUploadProtocol'
--
-- * 'gePp'
--
-- * 'geAccessToken'
--
-- * 'geUploadType'
--
-- * 'geBearerToken'
--
-- * 'geCallback'
getEidparams
    :: GetEidparams
getEidparams =
    GetEidparams'
    { _geXgafv = Nothing
    , _geUploadProtocol = Nothing
    , _gePp = True
    , _geAccessToken = Nothing
    , _geUploadType = Nothing
    , _geBearerToken = Nothing
    , _geCallback = Nothing
    }

-- | V1 error format.
geXgafv :: Lens' GetEidparams (Maybe Text)
geXgafv = lens _geXgafv (\ s a -> s{_geXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
geUploadProtocol :: Lens' GetEidparams (Maybe Text)
geUploadProtocol
  = lens _geUploadProtocol
      (\ s a -> s{_geUploadProtocol = a})

-- | Pretty-print response.
gePp :: Lens' GetEidparams Bool
gePp = lens _gePp (\ s a -> s{_gePp = a})

-- | OAuth access token.
geAccessToken :: Lens' GetEidparams (Maybe Text)
geAccessToken
  = lens _geAccessToken
      (\ s a -> s{_geAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
geUploadType :: Lens' GetEidparams (Maybe Text)
geUploadType
  = lens _geUploadType (\ s a -> s{_geUploadType = a})

-- | OAuth bearer token.
geBearerToken :: Lens' GetEidparams (Maybe Text)
geBearerToken
  = lens _geBearerToken
      (\ s a -> s{_geBearerToken = a})

-- | JSONP
geCallback :: Lens' GetEidparams (Maybe Text)
geCallback
  = lens _geCallback (\ s a -> s{_geCallback = a})

instance GoogleRequest GetEidparams where
        type Rs GetEidparams = EphemeralIdRegistrationParams
        type Scopes GetEidparams =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient GetEidparams'{..}
          = go _geXgafv _geUploadProtocol (Just _gePp)
              _geAccessToken
              _geUploadType
              _geBearerToken
              _geCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy GetEidparamsResource)
                      mempty

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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the information about the specified beacon. **Any field that you
-- do not populate in the submitted beacon will be permanently erased**, so
-- you should follow the \"read, modify, write\" pattern to avoid
-- inadvertently destroying data. Changes to the beacon status via this
-- method will be silently ignored. To update beacon status, use the
-- separate methods on this API for (de)activation and decommissioning.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsUpdate@.
module Network.Google.Resource.ProximityBeacon.Beacons.Update
    (
    -- * REST Resource
      BeaconsUpdateResource

    -- * Creating a Request
    , beaconsUpdate'
    , BeaconsUpdate'

    -- * Request Lenses
    , buXgafv
    , buUploadProtocol
    , buPp
    , buAccessToken
    , buBeaconName
    , buUploadType
    , buPayload
    , buBearerToken
    , buCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsUpdate@ method which the
-- 'BeaconsUpdate'' request conforms to.
type BeaconsUpdateResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Beacon :> Put '[JSON] Beacon

-- | Updates the information about the specified beacon. **Any field that you
-- do not populate in the submitted beacon will be permanently erased**, so
-- you should follow the \"read, modify, write\" pattern to avoid
-- inadvertently destroying data. Changes to the beacon status via this
-- method will be silently ignored. To update beacon status, use the
-- separate methods on this API for (de)activation and decommissioning.
--
-- /See:/ 'beaconsUpdate'' smart constructor.
data BeaconsUpdate' = BeaconsUpdate'
    { _buXgafv          :: !(Maybe Text)
    , _buUploadProtocol :: !(Maybe Text)
    , _buPp             :: !Bool
    , _buAccessToken    :: !(Maybe Text)
    , _buBeaconName     :: !Text
    , _buUploadType     :: !(Maybe Text)
    , _buPayload        :: !Beacon
    , _buBearerToken    :: !(Maybe Text)
    , _buCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buXgafv'
--
-- * 'buUploadProtocol'
--
-- * 'buPp'
--
-- * 'buAccessToken'
--
-- * 'buBeaconName'
--
-- * 'buUploadType'
--
-- * 'buPayload'
--
-- * 'buBearerToken'
--
-- * 'buCallback'
beaconsUpdate'
    :: Text -- ^ 'beaconName'
    -> Beacon -- ^ 'payload'
    -> BeaconsUpdate'
beaconsUpdate' pBuBeaconName_ pBuPayload_ =
    BeaconsUpdate'
    { _buXgafv = Nothing
    , _buUploadProtocol = Nothing
    , _buPp = True
    , _buAccessToken = Nothing
    , _buBeaconName = pBuBeaconName_
    , _buUploadType = Nothing
    , _buPayload = pBuPayload_
    , _buBearerToken = Nothing
    , _buCallback = Nothing
    }

-- | V1 error format.
buXgafv :: Lens' BeaconsUpdate' (Maybe Text)
buXgafv = lens _buXgafv (\ s a -> s{_buXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
buUploadProtocol :: Lens' BeaconsUpdate' (Maybe Text)
buUploadProtocol
  = lens _buUploadProtocol
      (\ s a -> s{_buUploadProtocol = a})

-- | Pretty-print response.
buPp :: Lens' BeaconsUpdate' Bool
buPp = lens _buPp (\ s a -> s{_buPp = a})

-- | OAuth access token.
buAccessToken :: Lens' BeaconsUpdate' (Maybe Text)
buAccessToken
  = lens _buAccessToken
      (\ s a -> s{_buAccessToken = a})

-- | Resource name of this beacon. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone, \`1\` for iBeacon, or \`5\` for AltBeacon. This
-- field must be left empty when registering. After reading a beacon,
-- clients can use the name for future operations.
buBeaconName :: Lens' BeaconsUpdate' Text
buBeaconName
  = lens _buBeaconName (\ s a -> s{_buBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
buUploadType :: Lens' BeaconsUpdate' (Maybe Text)
buUploadType
  = lens _buUploadType (\ s a -> s{_buUploadType = a})

-- | Multipart request metadata.
buPayload :: Lens' BeaconsUpdate' Beacon
buPayload
  = lens _buPayload (\ s a -> s{_buPayload = a})

-- | OAuth bearer token.
buBearerToken :: Lens' BeaconsUpdate' (Maybe Text)
buBearerToken
  = lens _buBearerToken
      (\ s a -> s{_buBearerToken = a})

-- | JSONP
buCallback :: Lens' BeaconsUpdate' (Maybe Text)
buCallback
  = lens _buCallback (\ s a -> s{_buCallback = a})

instance GoogleRequest BeaconsUpdate' where
        type Rs BeaconsUpdate' = Beacon
        requestClient BeaconsUpdate'{..}
          = go _buBeaconName _buXgafv _buUploadProtocol
              (Just _buPp)
              _buAccessToken
              _buUploadType
              _buBearerToken
              _buCallback
              (Just AltJSON)
              _buPayload
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsUpdateResource)
                      mempty

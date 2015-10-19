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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.deactivate@.
module Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
    (
    -- * REST Resource
      BeaconsDeactivateResource

    -- * Creating a Request
    , beaconsDeactivate'
    , BeaconsDeactivate'

    -- * Request Lenses
    , beaXgafv
    , beaUploadProtocol
    , beaPp
    , beaAccessToken
    , beaBeaconName
    , beaUploadType
    , beaBearerToken
    , beaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.deactivate@ method which the
-- 'BeaconsDeactivate'' request conforms to.
type BeaconsDeactivateResource =
     "v1beta1" :>
       CaptureMode "beaconName" "deactivate" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
--
-- /See:/ 'beaconsDeactivate'' smart constructor.
data BeaconsDeactivate' = BeaconsDeactivate'
    { _beaXgafv          :: !(Maybe Text)
    , _beaUploadProtocol :: !(Maybe Text)
    , _beaPp             :: !Bool
    , _beaAccessToken    :: !(Maybe Text)
    , _beaBeaconName     :: !Text
    , _beaUploadType     :: !(Maybe Text)
    , _beaBearerToken    :: !(Maybe Text)
    , _beaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDeactivate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'beaXgafv'
--
-- * 'beaUploadProtocol'
--
-- * 'beaPp'
--
-- * 'beaAccessToken'
--
-- * 'beaBeaconName'
--
-- * 'beaUploadType'
--
-- * 'beaBearerToken'
--
-- * 'beaCallback'
beaconsDeactivate'
    :: Text -- ^ 'beaBeaconName'
    -> BeaconsDeactivate'
beaconsDeactivate' pBeaBeaconName_ =
    BeaconsDeactivate'
    { _beaXgafv = Nothing
    , _beaUploadProtocol = Nothing
    , _beaPp = True
    , _beaAccessToken = Nothing
    , _beaBeaconName = pBeaBeaconName_
    , _beaUploadType = Nothing
    , _beaBearerToken = Nothing
    , _beaCallback = Nothing
    }

-- | V1 error format.
beaXgafv :: Lens' BeaconsDeactivate' (Maybe Text)
beaXgafv = lens _beaXgafv (\ s a -> s{_beaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
beaUploadProtocol :: Lens' BeaconsDeactivate' (Maybe Text)
beaUploadProtocol
  = lens _beaUploadProtocol
      (\ s a -> s{_beaUploadProtocol = a})

-- | Pretty-print response.
beaPp :: Lens' BeaconsDeactivate' Bool
beaPp = lens _beaPp (\ s a -> s{_beaPp = a})

-- | OAuth access token.
beaAccessToken :: Lens' BeaconsDeactivate' (Maybe Text)
beaAccessToken
  = lens _beaAccessToken
      (\ s a -> s{_beaAccessToken = a})

-- | The beacon name of this beacon.
beaBeaconName :: Lens' BeaconsDeactivate' Text
beaBeaconName
  = lens _beaBeaconName
      (\ s a -> s{_beaBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
beaUploadType :: Lens' BeaconsDeactivate' (Maybe Text)
beaUploadType
  = lens _beaUploadType
      (\ s a -> s{_beaUploadType = a})

-- | OAuth bearer token.
beaBearerToken :: Lens' BeaconsDeactivate' (Maybe Text)
beaBearerToken
  = lens _beaBearerToken
      (\ s a -> s{_beaBearerToken = a})

-- | JSONP
beaCallback :: Lens' BeaconsDeactivate' (Maybe Text)
beaCallback
  = lens _beaCallback (\ s a -> s{_beaCallback = a})

instance GoogleRequest BeaconsDeactivate' where
        type Rs BeaconsDeactivate' = Empty
        requestClient BeaconsDeactivate'{..}
          = go _beaBeaconName _beaXgafv _beaUploadProtocol
              (Just _beaPp)
              _beaAccessToken
              _beaUploadType
              _beaBearerToken
              _beaCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsDeactivateResource)
                      mempty

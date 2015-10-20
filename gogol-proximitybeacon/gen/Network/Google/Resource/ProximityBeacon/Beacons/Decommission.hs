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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Decommission
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.decommission@.
module Network.Google.Resource.ProximityBeacon.Beacons.Decommission
    (
    -- * REST Resource
      BeaconsDecommissionResource

    -- * Creating a Request
    , beaconsDecommission
    , BeaconsDecommission

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

-- | A resource alias for @proximitybeacon.beacons.decommission@ method which the
-- 'BeaconsDecommission' request conforms to.
type BeaconsDecommissionResource =
     "v1beta1" :>
       CaptureMode "beaconName" "decommission" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ 'beaconsDecommission' smart constructor.
data BeaconsDecommission = BeaconsDecommission
    { _beaXgafv          :: !(Maybe Text)
    , _beaUploadProtocol :: !(Maybe Text)
    , _beaPp             :: !Bool
    , _beaAccessToken    :: !(Maybe Text)
    , _beaBeaconName     :: !Text
    , _beaUploadType     :: !(Maybe Text)
    , _beaBearerToken    :: !(Maybe Text)
    , _beaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDecommission' with the minimum fields required to make a request.
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
beaconsDecommission
    :: Text -- ^ 'beaBeaconName'
    -> BeaconsDecommission
beaconsDecommission pBeaBeaconName_ =
    BeaconsDecommission
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
beaXgafv :: Lens' BeaconsDecommission (Maybe Text)
beaXgafv = lens _beaXgafv (\ s a -> s{_beaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
beaUploadProtocol :: Lens' BeaconsDecommission (Maybe Text)
beaUploadProtocol
  = lens _beaUploadProtocol
      (\ s a -> s{_beaUploadProtocol = a})

-- | Pretty-print response.
beaPp :: Lens' BeaconsDecommission Bool
beaPp = lens _beaPp (\ s a -> s{_beaPp = a})

-- | OAuth access token.
beaAccessToken :: Lens' BeaconsDecommission (Maybe Text)
beaAccessToken
  = lens _beaAccessToken
      (\ s a -> s{_beaAccessToken = a})

-- | Beacon that should be decommissioned. Required.
beaBeaconName :: Lens' BeaconsDecommission Text
beaBeaconName
  = lens _beaBeaconName
      (\ s a -> s{_beaBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
beaUploadType :: Lens' BeaconsDecommission (Maybe Text)
beaUploadType
  = lens _beaUploadType
      (\ s a -> s{_beaUploadType = a})

-- | OAuth bearer token.
beaBearerToken :: Lens' BeaconsDecommission (Maybe Text)
beaBearerToken
  = lens _beaBearerToken
      (\ s a -> s{_beaBearerToken = a})

-- | JSONP
beaCallback :: Lens' BeaconsDecommission (Maybe Text)
beaCallback
  = lens _beaCallback (\ s a -> s{_beaCallback = a})

instance GoogleRequest BeaconsDecommission where
        type Rs BeaconsDecommission = Empty
        requestClient BeaconsDecommission{..}
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
                      (Proxy :: Proxy BeaconsDecommissionResource)
                      mempty
